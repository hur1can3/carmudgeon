require "rubygems"
require "fastercsv"
require_relative "data_manager"

class CSVExport
  def self.app_logs

    if CSV.const_defined? :Reader
      FasterCSV.generate(:write_headers => true) do |csv|
        csv << %w(event_id login_time start_dispense stop_dispense app user jug total_weight)
        csv << AppEvent.each do |ae|
          csv << [ae.id, ae.login_time,
                  ae.start_dispense_time, ae.stop_dispense_time,
                  ae.app.name, ae.user.name, ae.jug.name, ae.total_weight]
        end
      end
    else
      CSV.generate(:write_headers => true) do |csv|
        csv << %w(event_id login_time start_dispense stop_dispense app user jug total_weight)
        AppEvent.each do |ae|
          csv << [ae.id, ae.login_time,
                  ae.start_dispense_time, ae.stop_dispense_time,
                  ae.app ? ae.app.name : "deleted", ae.user ? ae.user.name : "deleted", ae.jug ? ae.jug.name : "deleted", ae.total_weight]
        end
      end
    end
  end

  def self.chemical_logs
    if CSV.const_defined? :Reader
      FasterCSV.generate(:write_headers => true) do |csv|
        csv << %w(app_code dispense_id time chemical weight)
        ChemEvent.each do |ce|
          csv << [ce.app_event.app.code, ce.app_event.id,
                  ce.app_event.start_dispense_time, ce.chemical.name, ce.weight]
        end
      end
    else
      CSV.generate(:write_headers => true) do |csv|
        csv << %w(app_code dispense_id time chemical weight)
        ChemEvent.each do |ce|
          unless ce.app_event.nil?
            csv << [ce.app_event.app ? ce.app_event.app.code : "deleted", ce.app_event ? ce.app_event.id : "deleted",
                    ce.app_event ? ce.app_event.start_dispense_time : "deleted", ce.chemical ? ce.chemical.name : "deleted", ce.weight ? ce.weight : "deleted"]
          end
        end
      end
    end
  end

  def self.general_logs
    if CSV.const_defined? :Reader
      FasterCSV.generate(:write_headers => true) do |csv|
        csv << %w(id time event_type message)
        GeneralEvent.all do |event|
          csv << [event.id, event.time, event.event_type.type_name, event.message]
        end
      end
    else
      CSV.generate(:write_headers => true) do |csv|
        csv << %w(id time event_type message)
        GeneralEvent.all do |event|
          csv << [event.id, event.time, event.event_type.type_name, event.message]
        end
      end
    end
  end
end
if $0 == __FILE__
  #puts CSVExport.app_logs
  #puts CSVExport.chemical_logs
  #puts CSVExport.general_logs
end