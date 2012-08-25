module Kernel

  #alias :require_old :require
  #
  #def require(gem)
  #  start = Time.now
  #  new = require_old(gem)
  #  puts "File: #{gem} took #{Time.now - start} seconds" if new
  #end

  def require_relative(relative_feature)
    file = caller.first.split(/:\d/, 2).first
    if /\A\((.*)\)/ =~ file # eval, etc.
      raise LoadError, "require_relative is called in #{$1}"
    end
    file = File.expand_path(relative_feature, File.dirname(file))
    require file
  end

  def every(time, &block)
    ret = true
    while (ret)
      ret = block.call
      sleep(time)
    end
  end

  #translates using qt translator
  def tr(string)
    Qt::Application.translate("MainWindow", string)
  end

  def trim_decimals(value, count)
    if value != nil
      sprintf("%.#{count}f", value)
    end
  end


end