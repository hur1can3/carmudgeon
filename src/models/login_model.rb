require_relative '../data/data_manager'
require_relative '../main/gui_panel_manager'
#require_relative '../logging/application_log'

class LoginModel < Qt::Object

  signals "change_screen(int)"

  def initialize(controller)
    super()
    @controller = controller
  end

  def show
  end


  def proceed_clicked()
    GeneralEvent.log("BUTTON_CLICK", "Proceed Button Clicked")
    emit change_screen(Environment::APPLICATION)
  end

  def key_pressed(key)
    GeneralEvent.log("KEY_PRESSED", "Keypad: #{key} Pressed.")
  end

end