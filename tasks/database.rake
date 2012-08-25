namespace :db do
  task :env do
    Dir.chdir("data")
  end

  desc "Load"
  task :load => :env do
    puts "Loading"
    puts `sqlite3 -bail data.db < data.sql`
  end
  desc "Delete"
  task :delete => :env do
    puts "Delete data.db"
    `rm data.db`
  end
  desc "Reload Database"
  task :reload => [:delete, :load]
  desc "Dump"
  task :dump => :env do
    puts "dumping"
    `sqlite3 data.db .dump > data.sql`
  end
  desc "Console"
  task :console => :env do
    exec('sqlite3 data/data.db')
  end
end