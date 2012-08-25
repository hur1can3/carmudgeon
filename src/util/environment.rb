require 'rubygems'
require "sqlite3"
require "monitor"

class Environment
  unless (defined?(PROJ_ROOT))
    PROJ_ROOT = File.expand_path(File.join(File.dirname(__FILE__), "../.."))
    SRC_DIR = File.join(PROJ_ROOT, 'src')
    DATA_DIR = File.join(PROJ_ROOT, 'data')
    TEST_DIR = File.join(PROJ_ROOT, 'tests')
    DATA_DB = SQLite3::Database.open(File.join(DATA_DIR, "data.db"))
    DATA_LOCK = Monitor.new

    #INPUT TYPE
    NO_INPUT = 0
    KEYPAD_INPUT = 1

    #GENERAL
    GENERAL = 0
    DATE = 1
    TUNE = 2

    #KEYPAD TYPE
    KEY_1 = 1
    KEY_2 = 2
    KEY_3 = 3
    KEY_4 = 4
    KEY_5 = 5
    KEY_6 = 6
    KEY_7 = 7
    KEY_8 = 8
    KEY_9 = 9
    KEY_0 = 0
    KEY_PER = -1
    KEY_DEL = -2

    #VIEWS
    LOGIN = 0
    APPLICATION = 1
    ADMIN = 2

    #ERROR TYPE
    ERROR_VALID = 0
    ERROR_CANCEL = 1
    ERROR_STOP = 2
  end
end