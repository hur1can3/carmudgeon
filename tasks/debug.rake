desc "Custom debug"
task :debug do
  require "./src/data/data_manager"
  require "thread"
  logs = []
  i = GeneralEvent.count
  loop do
    i += 1
    puts "#{i}" if i % 100 == 0
    log = GeneralEvent.new
    log.event_type = EventType.first
    log.message = "Load test log Load test log Load test log Load test log Load test log Load test log Load test log"
    log.time = Time.now

    s = log.save
    p "Failed" unless s
  end

end
