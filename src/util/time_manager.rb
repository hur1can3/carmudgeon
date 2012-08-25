begin
  #require 'pty'
rescue
  puts "PTY Failed to open"
end
require 'open3'


class TimeManager

  constructor :admin_view,
              :gui_event_handler,
              :unit_configuration

  extend Publisher
  can_fire :time_changed

  def setup
    @gui_event_handler.when(:admin_save_time) do
      set_time
    end
    @gui_event_handler.when(:request_admin_pane) do
      show_time
    end
    @gui_event_handler.when(:admin_load_time) do
      show_time
    end
  end

  def set_time
    hm = @admin_view.get_hm
    date = @admin_view.get_date
    timezone = @admin_view.get_timezone
    timezone = timezone.get_value(0)[2..3]
    @unit_configuration.timezone_offset = timezone.to_i
    # date nnddhhmmyyyy.ss
    final_string = date[1].to_s.rjust(2, "0") +
        date[2].to_s.rjust(2, "0")+
        hm[0].to_i.to_s.rjust(2, "0") +
        hm[1].to_i.to_s.rjust(2, "0") +
        date[0].to_s.rjust(4, "0") + ".00"

    run_command("sudo date #{final_string}")
    @unit_configuration.save_zone
    fire :time_changed
  end

  def show_time
    @unit_configuration.reset_values
    off = @unit_configuration.timezone_offset
    now = Time.new
    parts = [now.hour, now.min, now.day, now.month, now.year, off - 4]
    @admin_view.time_info = parts
  end

  def sync_time
    run_command("ntpdate pool.ntp.org")
  end

  def run_command(cmd, output=nil)
    Thread.new do
      puts "Time Manager Thread Start"
      inp, out, pid = PTY.spawn(cmd)
      running = true
      begin
        out.puts(output) unless output.nil?
        while (running)
          #puts inp.gets
        end
      rescue PTY::ChildExited
        puts "Clean Exit"
        running = false
      rescue
        puts "Command #{cmd} failed: '#{$!}'"
        running = false
      end
      puts "Time Manager Thread Start"
    end
    # stdin, stdout, stderr, wait_thr = Open3.popen3(cmd)
    # stdin.puts(output) unless output.nil?
    # stdin.close
    # stdout.close
    # stderr.close
  end
end