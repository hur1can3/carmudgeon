require 'rubygems'
require 'Qt4'
require 'singleton'

require './src/util/overrides'

require_relative '../main/gui_panel_manager'
require_relative '../util/environment.rb'
require_relative '../data/data_manager'

class Gui
  include Singleton

  attr_reader :manager

  def self.setup(app)
    @@application = app
    Gui.instance
  end

  def initialize

    @@blocks = []
    @@block_lock = Mutex.new

    # Gui setup...

    @@application = Qt::Application.new([]) unless defined?(@@application)
    # Qt.debug_level = Qt::DebugLevel::High

    # install translators at beggining
    #@trans = Qt::Translator.new
    #@trans.load("#{Environment::PROJ_ROOT}/gui/alloc_sp")


    @main_window = Qt::MainWindow.new(nil)
    @main_window.setGeometry(0, 0, 800, 480)
    #@main_window.setFixedSize(800, 480)

    #Qt::Application.installTranslator(@trans)

    @manager = GuiPanelManager.new(@main_window)
    @manager.set_view_index(0)
    @@application.styleSheet = IO.read("#{Environment::PROJ_ROOT}/gui/qtstyle.qss")



    def run
      @main_window.show

      if ($APP_MODE == :local || $REMOTE)
        #@test_panel.show
      end

      block=Proc.new do
        @@block_lock.synchronize do
          @remaining = []
          for block in @@blocks
            if (block[:time] != nil)
              if (Time.now >= block[:time])
                begin
                  block[:block].call
                rescue
                  GeneralEvent.log("APP_CRASH", "#{$!}\n#{$!.backtrace}")
                end
              else
                @remaining << block
              end
            else
              begin
                block[:block].call
              rescue
                GeneralEvent.log("APP_CRASH", "#{$!}\n#{$!.backtrace}")
              end
            end
          end
          @@blocks.clear
          @@blocks << @remaining
          @@blocks.flatten!
        end
        Thread.pass
      end

      block_timer = Qt::Timer.new(@main_window)
      block_invoke = Qt::BlockInvocation.new(block_timer, block, "invoke()")
      Qt::Object.connect(block_timer, SIGNAL("timeout()"), block_invoke, SLOT("invoke()"))
      block_timer.start(20)

      pass_block = Proc.new do
        Thread.pass
      end

      pass_timer = Qt::Timer.new(@main_window)
      pass_invoke = Qt::BlockInvocation.new(pass_timer, pass_block, "invoke()")
      Qt::Object.connect(pass_timer, SIGNAL("timeout()"), pass_invoke, SLOT("invoke()"))
      pass_timer.start(5)

      if $APP_MODE != :local
       # `killall StartupDisplay`
      end
      GeneralEvent.log("APP_STARTUP", "Application Launched")

      begin
        @@application.exec
      rescue
        puts $!
        puts $!.backtrace
        File.open("/root/crashlogs.txt", 'a') do |f|
          f.puts "-"*50
          f.puts "Crash occurred at #{Time.now.to_s}"
          f.puts "Crash Report:"
          f.puts $!.to_s
          f.puts $!.backtrace

        end
        GeneralEvent.log("APP_CRASH", "#{$!}\n#{$!.backtrace}")
        GeneralEvent.save_queue
        Kernel.exec("sleep 0.1;cd /root/allocation-logix/;rake run -t")
      end

    end

    def close
      @application.quit
    end

    def queue(block)
      if (Thread.current == Thread.main)
        @@blocks << block
      else
        @@block_lock.synchronize do
          @@blocks << block
        end
      end
    end

    def self.queue_delay(delay, &block)
      puts "Delay: #{delay}"
      instance.queue({:block => block, :time => Time.now + delay})
    end

    def self.queue(&block)
      instance.queue({:block => block})
    end

    def create_dialog
      @diag = Qt::Dialog.new()
      @diag.objectName = "diag"
      @diag.setModal(true)
      @diag.styleSheet = StringsTable["dialog_stylesheet"]

      verticalLayout = Qt::VBoxLayout.new(@diag)
      verticalLayout.objectName = "verticalLayout"
      @label = Qt::Label.new(@diag)
      @label.objectName = "dialogLabel"
      @font = Qt::Font.new
      @font.pointSize = 22
      @font.bold = true
      @font.weight = 75
      @label.font = @font
      @metrics = Qt::FontMetrics.new(@font)

      verticalLayout.addWidget(@label)
    end

    def blocking_window(text, &block)
      unless (@diag)
        create_dialog
      end
      @label.text = text
      @diag.setFixedSize(@metrics.width(text), 100)

      thread = Thread.new do
        puts "Blocking Window Thread Start"
        block.call
        Gui.queue do
          @diag.accept
        end
        puts "Blocking Window Thread End"
      end
      @diag.show
      thread.abort_on_exception = true
      return thread
    end

    def self.blocking_window(text, &block)
      instance.blocking_window(text, &block)
    end

    def create_prompt_window(text)
      @prompt_diag = Qt::Dialog.new()
      @prompt_diag.setModal(true)
      @prompt_diag.styleSheet = StringsTable["dialog_stylesheet"]

      @verticalLayout1 = Qt::VBoxLayout.new(@prompt_diag)

      @box = Qt::GroupBox.new()
      #@box.title = "Syncing:"
      @box.setStyleSheet("QGroupBox{
    font: bold 24px;
}")

      @verticalLayout1.addWidget(@box)

      grid = Qt::GridLayout.new(@box)
      @prompt_label = Qt::Label.new()

      @yes_button = Qt::PushButton.new("Yes")
      @no_button = Qt::PushButton.new("No")

      grid.addWidget(@prompt_label, 1, 0, 1, 2)
      grid.addWidget(@yes_button, 2, 0)
      grid.addWidget(@no_button, 2, 1)


      @yes_button.connect(SIGNAL("clicked()")) do
        @prompt_block.call(:yes)
        @prompt_diag.accept
      end
      @no_button.connect(SIGNAL("clicked()")) do
        @prompt_block.call(:no)
        @prompt_diag.reject
      end
    end

    def show_prompt_window(text, type, &block)
      create_prompt_window(text) unless @prompt_diag
      if (type == :yes_no)
        @yes_button.text = "Yes"
        @no_button.text = "No"
        @yes_button.show
        @no_button.show
      elsif (type == :prompt)
        @yes_button.text = "OK"
        @yes_button.show
        @no_button.hide
      end
      @prompt_block = block
      @prompt_label.text = text
      @prompt_diag.show
    end

    def self.show_prompt_window(text, type = :yes_no, &block)
      Gui.instance.show_prompt_window(text, type, &block)
    end

  end
end
