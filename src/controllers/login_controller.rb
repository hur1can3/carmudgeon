require_relative '../models/login_model'

class LoginController < Qt::Object

  signals "change_screen(int)"

  attr_reader :model, :view

  def initialize(main_view)
    super()
    self.objectName = "LoginController"

    @model = LoginModel.new(self)
    @view = main_view
  end


  def setup_signals
    #view -> model signals
    @view.proceed_button.connect(SIGNAL("clicked()"), @model, :proceed_clicked)

    #model -> view signals
    @model.connect(SIGNAL("change_screen(int)"), self, :change_scr)

  end

  def setup_gui(stack_panel)
    return @view.setup_gui(stack_panel)
  end

  def show()
    setup_signals()
    @model.show
  end

  def kill_signals
    @model.disconnect
  end

  def change_scr(screen)
    kill_signals
    emit change_screen(screen)
  end

end
