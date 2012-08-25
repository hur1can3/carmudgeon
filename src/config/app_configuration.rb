require 'time'
require 'singleton'

class AppConfiguration
  include Singleton

  attr_accessor :config

  def initialize
    @config_path = Environment::PROJ_ROOT + "/data/app_configuration.yml"

    File.open(@config_path) do |f|
      @config = YAML.load(f)
    end
  end


  def word_count
    @config["word_count"]
  end

  def word_count=(value)
    @config["word_count"] = value
  end

  def get_variable(name)
    if @config.has_key?(name)
      @config[name]
    else
      @config[name] = 0
      0
    end
  end

  def set_variable(name, value)
    @config[name] = value
  end

  def [](name)
    @config[name]
  end

  def []=(name, value)
    @config[name] = value
  end

  def self.[](name)
    return AppConfiguration.instance[name]
  end

  def self.[]=(name, value)
    AppConfiguration.instance[name] = value
  end

  def save_values
    File.open(@config_path, "w") do |f|
      YAML.dump(@config, f)
    end
  end

  def reset_values
    File.open(@config_path) do |f|
      @config = YAML.load(f)
    end
  end

end