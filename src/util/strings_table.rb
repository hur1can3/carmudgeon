class StringsTable

  def self.[](key)
    if !@table
      init_table
    end

    return @table[key][0].chomp.tr("~", "\n") if @table.has_key?(key)
    return nil
  end

  def self.init_table
    @table = {}
    File.open("./data/strings_table.csv").each_line do |x|
      if x[0] != "#"
        parts = x.split(",")
        if parts.length >= 2
          @table[parts[0]] = parts[1 .. -1]
        end
      end
    end
  end

end