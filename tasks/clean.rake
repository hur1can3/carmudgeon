desc "Clean database and reset word count"
task :clean do
  require 'src/util/overrides'
  require 'src/data/data_manager'
  require 'src/config/app_configuration'

  #Destroy all models here
  AppEvent.destroy!
  GeneralEvent.destroy!
  App.destroy!

  AppConfiguration['word_count'] = 0
  AppConfiguration.instance.save_values

end