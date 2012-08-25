require 'rubygems'
require "rake"

# We run tests by default
task :default => :run


Dir["tasks/*.rake"].each do |taskfile|
  instance_eval File.read(taskfile), taskfile
end

desc "Run all specs"
task :spec do
  require "rspec/core/rake_task"
  RSpec::Core::RakeTask.new(:spec)
end

#desc "Generate code coverage"
#task :coverage do
#  require "rspec/core/rake_task"
#  RSpec::Core::RakeTask.new(:coverage) do |t|
#    t.rcov = true
#    t.rcov_opts = ['--exclude', 'spec']
#  end
#end
