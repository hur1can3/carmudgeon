require 'date'
require 'time'
require_relative '../data/data_manager'
require_relative '../data/csv_export'
require_relative '../config/admin_configuration'

class AdminModel < Qt::Object


  signals "change_screen(int)"

  def initialize(controlller)
    super()
    @controller = controlller
  end

  def show
    @date = Date.today
    @time = Time.now
    set_page(0)
    # set current values
    @controller.update_month_label(Date::MONTHNAMES[@date.month].dup)
    @controller.update_year_label(@date.year.to_s)
    @controller.update_calendar_widget(@date.year.to_s, @date.month.to_s)
    @controller.update_time_widgets
    @controller.view.update_web_button.visible = false

    @logs_mode = :standard
  end

  def tab_state()
    @tab_state
  end



  #changeds the page when a different admin page is selected
  def set_page(page)
    @tab_state = page
    @controller.change_tab(page)
  end

  #exits the admin page
  def exit_clicked()
    GeneralEvent.log("BUTTON_CLICK", "Admin Exit Button Clicked")
    emit change_screen(Environment::LOGIN)
  end

  def stop_pressed()
    GeneralEvent.log("KEY_PRESSED", "Stop Key Pressed.")
    emit change_screen(Environment::LOGIN)
  end

  def get_time
    @time
  end

  def run_command(cmd, output=nil)
    Thread.new do
      puts "Admin Run Command Thread Start"
      inp, out, pid = PTY.spawn(cmd)
      running = true
      begin
        out.puts(output) unless output.nil?
        while running
          #puts inp.gets
        end
      rescue PTY::ChildExited
        puts "Clean Exit"
        running = false
      rescue
        puts "Command #{cmd} failed: '#{$!}'"
        running = false
      end
      puts "Admin Run Command Thread End"
    end
  end
end
