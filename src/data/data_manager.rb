require "rubygems"

require 'data_mapper'
require_relative '../util/environment'


DataMapper::Logger.new($stdout, :debug) if $SQL_DEBUG

DataMapper.setup(:default, "sqlite://#{Environment::DATA_DIR}/data.db")
#DataMapper.setup(:default, "sqlite::memory:")

class EventType
  include DataMapper::Resource
  property :id, Serial
  property :type_name, String
  has n, :general_events

  FILE_OPEN = 1
  FILE_CLOSE = 2
  SETTINGS = 3
end

class GeneralEvent
  include DataMapper::Resource
  property :id, Serial
  property :message, String
  property :time, EpochTime

  belongs_to :event_type

  def self.log(type, message)
    GeneralEvent.create :message => message,
                        :event_type => EventType.first_or_create(:type_name => type),
                        :time => Time.now
  end

  @@save_queue = []

  alias :real_save :save

  def save(deferred = true)
    #puts self.message
    if deferred
      @@save_queue.push self
    else
      save!
    end
  end

  def self.save_queue
    @@save_queue.each do |ev|
      ev.save(false)
    end
  end

end

DataMapper.finalize
