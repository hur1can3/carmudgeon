require_relative '../data/data_manager'
#require_relative '../logging/application_log'

class ApplicationModel < Qt::Object

  signals "change_screen(int)"

  def initialize(controller)
    super
    @controller = controller
  end

  def show
    @app = nil
  end

  def key_pressed(key)
    GeneralEvent.log("KEY_PRESSED", "Keypad: #{key} Pressed.")

    @controller.update_input(@current_pin)
  end

  def entered_app(new_app)
    @app = new_app
  end

end
