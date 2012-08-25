desc "Local"
task :local do
  $APP_MODE = :local
  Rake::Task['exec'].invoke
end

desc "Run"
task :run do
  $APP_MODE = :release
  Rake::Task['exec'].invoke
end

desc "Remote Run"
task :remote do
  $APP_MODE = :release
  $REMOTE = true
  Rake::Task['exec'].invoke
end

task :exec do
  $NET_DEBUG = false
  $CAN_DEBUG = false
  $SQL_DEBUG = false
  require './src/util/carmudgeon.rb'
end
