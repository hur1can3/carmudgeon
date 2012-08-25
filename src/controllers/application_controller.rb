require_relative '../models/application_model'

class ApplicationController < Qt::Object

  signals "change_screen(int)"

  attr_accessor :model, :view

  def initialize(main_view)
    super()

    @view = main_view
    @model = ApplicationModel.new(self)

  end

  def setup_signals

    #model -> view signals
    @model.connect(SIGNAL("change_screen(int)"), self, :change_scr)

  end

  def setup_gui(stack_panel)
    @view.setup_gui(stack_panel)
  end

  def show()
    setup_signals
    @model.show
  end

  def kill_signals()
    @model.disconnect
  end

  def change_scr(screen)
    kill_signals()
    emit change_screen(screen)
  end

end