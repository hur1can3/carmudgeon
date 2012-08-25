require 'rubygems'

require_relative '../controllers/login_controller.rb'
require_relative '../controllers/application_controller.rb'
require_relative '../controllers/admin_controller.rb'

require_relative 'main_application.rb'
require_relative '../util/strings_table'

class GuiPanelManager < Qt::Object

  attr_reader :main_view, :views

  def initialize(main_window)
    super

    @main_window = main_window

    @main_view = MainApplication.new
    @main_view.setup_gui(@main_window)

    @views = [LoginController.new(@main_view),
              ApplicationController.new(@main_view),
              AdminController.new(@main_view)]

    @old_index = -1

    @views.each do |x|
      x.connect(SIGNAL("change_screen(int)"), self, :set_view_index)
    end

    #TODO Add a function to check if the month part of timer has changed and then backup and clear logs
    last_minute = 0
    # last_hour = 0
    @sync_queued = false
    @time_thread = Thread.new do
      puts "Main Timer Thread Start"
      every(1) do

        now_minute = Time.now.min
        if last_minute == 59 && now_minute == 0
          @sync_queued = true
        end
        last_minute = now_minute

        if @old_index == 0 && @sync_queued
          begin
            @sync_queued = false
            Gui.queue do
              @views[Environment::LOGIN].model.do_sync
            end
          rescue
            puts "Error Syncing!"
            puts $!
            puts $!.backtrace
          end
        end

        true
      end
      puts "Main Timer Thread End"
    end
    @time_thread.abort_on_exception = true
  end

  def set_view_index(index)
    if (@old_index != -1)
      @views[@old_index].kill_signals
    end
    @views[index].show
    @main_view.main_stacked_widget.setCurrentIndex(index)
    GeneralEvent.log("VIEW_SWITCHED", "View: #{@views[index]}")
    @old_index = index
  end

end