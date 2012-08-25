desc "Compile Interface Files"
task :parse do

  require "pp"
  require "./src/util/environment"

  file = Environment::PROJ_ROOT + '/gui/main_window.ui'

  puts "parsing: " + file

  `rbuic4 -o temp.rb #{file}`

  f = File.open("temp.rb")

  lines = f.readlines
  f.close

  lines = lines - lines.take(8)

  klass = "MainApplication"

  lines[1] = "class #{klass}"

  lines = lines.take(lines.length-5)

  lines.collect! do |x|
    y = x
    if x
      if x.include?("def setupUi")
        y = "\tdef setup_gui(mainWindow)"
        @index = lines.index(x)
      end
      if x.include?("setup_ui")
        y = nil
        lines[lines.index(x) + 1] = nil
        lines[lines.index(x) + 2] = nil
      end
      if x.include?("def retranslateUi")
        y = "\tdef retranslate(mainWindow)"
      end
      if x.include?("retranslate_ui")
        y = nil
        lines[lines.index(x) + 1] = nil
        lines[lines.index(x) + 2] = nil
      end
      if x.include?("retranslateUi") && !x.include?("def") && !x.include?("end")
        y = "\t\tretranslate(mainWindow)"
      end
    end
    y
  end

  lines.insert(-3,
               "	def teardown_gui",
               "		@centralwidget.dispose",
               "	end")

  lines.insert(@index,
               "	def initialize",
               "	end",
               "")

  lines = lines.compact

  out = Environment::PROJ_ROOT + '/src/main/main_application.rb'

  puts "writing to: " + out

  # write to file
  File.open("#{out}", "w+") do |f|
    lines.each do |x|
      f.puts x
    end
  end

  #clean up
  `rm temp.rb`


end