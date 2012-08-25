require_relative '../models/admin_model'
require_relative '../data/data_manager'
require_relative '../config/admin_configuration'
require_relative '../config/app_configuration'

class AdminController < Qt::Object

  signals "change_screen(int)"

  attr_reader :model, :view, :time_diag, :color_icons

  def initialize(main_view)
    super()

    @model = AdminModel.new(self)
    @view = main_view

    @unit_config = AppConfiguration.instance
    @admin_config = AdminConfiguration.instance

    @color_icons = {}
    AdminConfiguration.instance.color.each do |x|
      color = Qt::Pixmap.new(40, 40)
      color.fill(Qt::Color.new(x))
      icon = Qt::Icon.new(color)
      @color_icons[x] = icon
    end

    setup_view_signals

  end

  def setup_view_signals
    #view -> model signals
    #admin screen side buttons
    #@view.exit_button.connect(SIGNAL("clicked()"), @model, :exit_clicked)
    #@view.remote_help_button.connect(SIGNAL("clicked()"), @model, :help_clicked)
  end

  def setup_signals
    #model -> view signals
    @model.connect(SIGNAL("change_screen(int)"), self, :change_scr)
  end

  # populates all view widgets
  def populate_data
    #@view.scale_conn_drop.addItems(@admin_config.scale_connections)


    @saved_controls = [@view.scale_conn_drop]

    init_data
  end


  # setup the main window for admin page
  def setup_gui(stack_panel)
    @view.setup_gui(stack_panel)
  end


  #show the admin page
  def show()
    setup_signals
    @model.show
  end

  def update_version_info()
    # set version info
    @view.version_num_label.text = @admin_config.version
  end


  def get_value(control)
    case control
      when Qt::ComboBox
        return control.currentIndex
      when Qt::Slider
        return control.value
      else
        p control
    end
  end

  def set_value(control, value)
    case control
      when Qt::ComboBox
        control.currentIndex = value
      when Qt::Slider
        return control.value = value
      else
        p control
    end
  end

  def init_data
    @saved_controls.each do |x|
      set_value(x, AppConfiguration.instance.get_variable(x.objectName))
    end
  end

  def update_data
    if @saved_controls && @saved_controls[0]
      @saved_controls.each do |x|
        AppConfiguration.instance.set_variable(x.objectName, get_value(x))
      end
    end
  end

  def save_values
    AppConfiguration.instance.save_values
  end

  def kill_signals()
    @model.disconnect
    @kp.disconnect
  end


  def change_tab(tab)
    update_data
    init_pump_page
    @view.settings_widget.currentIndex = tab
    GeneralEvent.log("ADMIN_VIEW_SWITCHED", "Switched to ADMIN Settings Tab: #{@view.settings_widget.currentWidget.objectName}")
  end

  def change_scr(screen)
    update_data
    save_values
    emit change_screen(screen)
  end

  def update_status_label(message)
    @view.status_label.text = message
  end


  def get_tab(tab)
    GeneralEvent.log("ADMIN_TAB_SWITCHED", "Admin Tab Switched to #{ @view.settings_tab_widget.currentWidget.objectName}")
    @model.change_settings_tab(tab)
    p tab
    if (tab == 4)
      manifold_selection_changed(tab)
    end
  end


  def toggle_tabs(enabled)
    @view.settings_tab_widget.count.times do |x|
      if x != @view.settings_tab_widget.currentIndex
        @view.settings_tab_widget.setTabEnabled(x, enabled)
      end
    end
  end

  def toggle_buttons(toggle)
    @gui_buttons = [@view.exit_button]

    @gui_buttons.each do |x|
      x.enabled = toggle
    end

    toggle_tabs(toggle)

    toggle ? @view.weight_entry_box.enabled = false : @view.weight_entry_box.enabled = true
  end


  def update_colors_list
    @color_drop_down.clear
    @color_icons.each do |x, y|
      unless Manifold.first(:color => x)
        @color_drop_down.addItem(y, x)
      end
    end
  end

  def create_color_window
    @color_dialog = Qt::Dialog.new
    @color_dialog.setModal(true)
    @color_dialog.styleSheet = "QWidget{font-size: 22px;}"

    grid = Qt::GridLayout.new(@color_dialog)
    name_label = Qt::Label.new("Name:")
    color_label = Qt::Label.new("Color:")
    @current_name_label = Qt::Label.new("")
    @color_drop_down = Qt::ComboBox.new()

    @color_yes_button = Qt::PushButton.new("Yes")
    @color_no_button = Qt::PushButton.new("Cancel")

    grid.addWidget(name_label, 0, 0)
    grid.addWidget(@current_name_label, 0, 1)
    grid.addWidget(color_label, 1, 0)
    grid.addWidget(@color_drop_down, 1, 1)
    grid.addWidget(@color_no_button, 2, 0)
    grid.addWidget(@color_yes_button, 2, 1)

    @color_yes_button.connect(SIGNAL("clicked()")) do
      @color_dialog.accept
      @color_select_block.call(:yes, @color_drop_down.currentText) if @color_select_block
      get_manifold_values
    end

    @color_no_button.connect(SIGNAL("clicked()")) do
      @color_dialog.reject
      @color_select_block.call(:no, @color_drop_down.currentText) if @color_select_block
    end
  end

  def show_color_window(name_to_use, &block)
    @color_select_block = block
    create_color_window unless @color_dialog
    update_colors_list
    @current_name_label.text = name_to_use
    @color_dialog.show
  end


end
