require 'time'
require 'singleton'

class AdminConfiguration
  include Singleton

  attr_reader :config

  def initialize
    @config_path = Environment::PROJ_ROOT + "/data/admin_configuration.yml"

    File.open(@config_path) do |f|
      @config = YAML.load(f)
    end
  end

  def colors
    @config["color"]
  end

  def version
    @config["version"]
  end

  alias :method_missing_old :method_missing

  def method_missing(meth)
    val = @config[meth.to_s]
    return val if val
    method_missing_old(meth)
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