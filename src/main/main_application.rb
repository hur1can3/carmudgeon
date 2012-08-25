
class MainApplication
    attr_reader :actionAbout
    attr_reader :actionNew
    attr_reader :actionOpen
    attr_reader :actionClose
    attr_reader :actionQuit
    attr_reader :actionSave
    attr_reader :actionPreferences
    attr_reader :centralwidget
    attr_reader :gridLayout_2
    attr_reader :main_stacked_widget
    attr_reader :login_page
    attr_reader :gridLayout
    attr_reader :proceed_button
    attr_reader :application_page
    attr_reader :horizontalLayout
    attr_reader :list_frame
    attr_reader :horizontalLayout_3
    attr_reader :bullet_widget
    attr_reader :list_item
    attr_reader :admin_page
    attr_reader :horizontalLayout_2
    attr_reader :settings_tab_widget
    attr_reader :general_tab_2
    attr_reader :horizontalLayout_12
    attr_reader :network_test_Frame_2
    attr_reader :verticalLayout_36
    attr_reader :unit_info_box_2
    attr_reader :gridLayout_14
    attr_reader :version_info_label_2
    attr_reader :version_num_label_2
    attr_reader :model_info_box_2
    attr_reader :model_num_label_2
    attr_reader :serial_info_box_2
    attr_reader :serial_num_label_2
    attr_reader :net_status_box_2
    attr_reader :gridLayout_15
    attr_reader :cable_label_2
    attr_reader :cable_status_2
    attr_reader :inet_label_2
    attr_reader :inet_status_2
    attr_reader :test_network_button_2
    attr_reader :reset_network_button_2
    attr_reader :widget_9
    attr_reader :verticalLayout_40
    attr_reader :unit_config_box_2
    attr_reader :formLayout_9
    attr_reader :label_9
    attr_reader :scale_conn_drop_2
    attr_reader :label_10
    attr_reader :jug_select_drop_2
    attr_reader :label_11
    attr_reader :pump_conn_drop_2
    attr_reader :label_12
    attr_reader :dispense_type_drop_2
    attr_reader :remote_help_button_2
    attr_reader :date_tab_2
    attr_reader :gridLayout_16
    attr_reader :calendar_frame_2
    attr_reader :verticalLayout_41
    attr_reader :widget_10
    attr_reader :horizontalLayout_13
    attr_reader :prev_month_button_2
    attr_reader :month_label_2
    attr_reader :year_label_2
    attr_reader :next_month_button_2
    attr_reader :calendar_widget_2
    attr_reader :frame_6
    attr_reader :verticalLayout_42
    attr_reader :label_17
    attr_reader :timezone_pulldown_2
    attr_reader :label_18
    attr_reader :hour_edit_2
    attr_reader :label_19
    attr_reader :minute_edit_2
    attr_reader :apply_time_button_2
    attr_reader :tuning_tab_2
    attr_reader :verticalLayout_43
    attr_reader :flush_timing_box_air_2
    attr_reader :gridLayout_22
    attr_reader :flush_sub_1_air_2
    attr_reader :flush_sub_10_air_2
    attr_reader :flush_slider_air_2
    attr_reader :flush_add_1_air_2
    attr_reader :flush_add_10_air_2
    attr_reader :flush_time_label_air_2
    attr_reader :flush_timing_box_water_2
    attr_reader :gridLayout_23
    attr_reader :flush_sub_10_water_2
    attr_reader :flush_slider_water_2
    attr_reader :flush_add_1_water_2
    attr_reader :flush_add_10_water_2
    attr_reader :flush_time_label_water_2
    attr_reader :flush_sub_1_water_2
    attr_reader :pump_config_tab_2
    attr_reader :horizontalLayout_16
    attr_reader :relay_table_2
    attr_reader :assignment_widget_2
    attr_reader :verticalLayout_44
    attr_reader :bus_widget_2
    attr_reader :can_tab_2
    attr_reader :verticalLayout_45
    attr_reader :can_title_2
    attr_reader :can_detect_button_2
    attr_reader :pump_delete_button_2
    attr_reader :serial_tab_2
    attr_reader :formLayout_2
    attr_reader :serial_title_2
    attr_reader :serial_num_drop_2
    attr_reader :assignmentbar_2
    attr_reader :verticalLayout_46
    attr_reader :assigned_label_2
    attr_reader :assignment_drop_2
    attr_reader :manifold_drop_2
    attr_reader :pump_apply_button_2
    attr_reader :pump_identify_button_2
    attr_reader :bottom_bar_5
    attr_reader :horizontalLayout_14
    attr_reader :pump_on_button_2
    attr_reader :pump_off_button_2
    attr_reader :manifold_tab_2
    attr_reader :verticalLayout_47
    attr_reader :widget_2
    attr_reader :gridLayout_24
    attr_reader :manifold_add_button_2
    attr_reader :manifold_edit_button_2
    attr_reader :manifold_delete_button_2
    attr_reader :manifold_settings_drop_2
    attr_reader :label_23
    attr_reader :manifold_chemical_list_2
    attr_reader :manifold_valid_status_2
    attr_reader :menubar
    attr_reader :menuFile
    attr_reader :menuHelp
    attr_reader :menuSettings
    attr_reader :statusbar

	def initialize
	end

	def setup_gui(mainWindow)
    if mainWindow.objectName.nil?
        mainWindow.objectName = "mainWindow"
    end
    mainWindow.windowModality = Qt::ApplicationModal
    mainWindow.resize(800, 567)
    mainWindow.mouseTracking = false
    mainWindow.documentMode = false
    mainWindow.dockOptions = Qt::MainWindow::AllowTabbedDocks|Qt::MainWindow::AnimatedDocks
    @actionAbout = Qt::Action.new(mainWindow)
    @actionAbout.objectName = "actionAbout"
    @actionNew = Qt::Action.new(mainWindow)
    @actionNew.objectName = "actionNew"
    @actionOpen = Qt::Action.new(mainWindow)
    @actionOpen.objectName = "actionOpen"
    @actionClose = Qt::Action.new(mainWindow)
    @actionClose.objectName = "actionClose"
    @actionQuit = Qt::Action.new(mainWindow)
    @actionQuit.objectName = "actionQuit"
    @actionSave = Qt::Action.new(mainWindow)
    @actionSave.objectName = "actionSave"
    @actionPreferences = Qt::Action.new(mainWindow)
    @actionPreferences.objectName = "actionPreferences"
    @centralwidget = Qt::Widget.new(mainWindow)
    @centralwidget.objectName = "centralwidget"
    @gridLayout_2 = Qt::GridLayout.new(@centralwidget)
    @gridLayout_2.margin = 0
    @gridLayout_2.objectName = "gridLayout_2"
    @main_stacked_widget = Qt::StackedWidget.new(@centralwidget)
    @main_stacked_widget.objectName = "main_stacked_widget"
    @sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Preferred)
    @sizePolicy.setHorizontalStretch(0)
    @sizePolicy.setVerticalStretch(0)
    @sizePolicy.heightForWidth = @main_stacked_widget.sizePolicy.hasHeightForWidth
    @main_stacked_widget.sizePolicy = @sizePolicy
    @login_page = Qt::Widget.new()
    @login_page.objectName = "login_page"
    @gridLayout = Qt::GridLayout.new(@login_page)
    @gridLayout.objectName = "gridLayout"
    @proceed_button = Qt::PushButton.new(@login_page)
    @proceed_button.objectName = "proceed_button"
    @sizePolicy1 = Qt::SizePolicy.new(Qt::SizePolicy::Minimum, Qt::SizePolicy::Fixed)
    @sizePolicy1.setHorizontalStretch(0)
    @sizePolicy1.setVerticalStretch(0)
    @sizePolicy1.heightForWidth = @proceed_button.sizePolicy.hasHeightForWidth
    @proceed_button.sizePolicy = @sizePolicy1
    @proceed_button.minimumSize = Qt::Size.new(0, 40)
    @font = Qt::Font.new
    @font.pointSize = 14
    @font.bold = true
    @font.weight = 75
    @proceed_button.font = @font

    @gridLayout.addWidget(@proceed_button, 0, 0, 1, 1)

    @main_stacked_widget.addWidget(@login_page)
    @application_page = Qt::Widget.new()
    @application_page.objectName = "application_page"
    @horizontalLayout = Qt::HBoxLayout.new(@application_page)
    @horizontalLayout.spacing = 0
    @horizontalLayout.margin = 0
    @horizontalLayout.objectName = "horizontalLayout"
    @list_frame = Qt::Frame.new(@application_page)
    @list_frame.objectName = "list_frame"
    @sizePolicy2 = Qt::SizePolicy.new(Qt::SizePolicy::MinimumExpanding, Qt::SizePolicy::Preferred)
    @sizePolicy2.setHorizontalStretch(0)
    @sizePolicy2.setVerticalStretch(0)
    @sizePolicy2.heightForWidth = @list_frame.sizePolicy.hasHeightForWidth
    @list_frame.sizePolicy = @sizePolicy2
    @list_frame.layoutDirection = Qt::LeftToRight
    @list_frame.frameShape = Qt::Frame::StyledPanel
    @list_frame.frameShadow = Qt::Frame::Sunken
    @list_frame.midLineWidth = 0
    @horizontalLayout_3 = Qt::HBoxLayout.new(@list_frame)
    @horizontalLayout_3.spacing = 0
    @horizontalLayout_3.margin = 2
    @horizontalLayout_3.objectName = "horizontalLayout_3"
    @bullet_widget = Qt::ListWidget.new(@list_frame)
    Qt::ListWidgetItem.new(@bullet_widget)
    Qt::ListWidgetItem.new(@bullet_widget)
    Qt::ListWidgetItem.new(@bullet_widget)
    @bullet_widget.objectName = "bullet_widget"
    @sizePolicy3 = Qt::SizePolicy.new(Qt::SizePolicy::Maximum, Qt::SizePolicy::Preferred)
    @sizePolicy3.setHorizontalStretch(0)
    @sizePolicy3.setVerticalStretch(0)
    @sizePolicy3.heightForWidth = @bullet_widget.sizePolicy.hasHeightForWidth
    @bullet_widget.sizePolicy = @sizePolicy3
    @bullet_widget.maximumSize = Qt::Size.new(20, 16777215)
    @bullet_widget.baseSize = Qt::Size.new(0, 0)
    @bullet_widget.mouseTracking = true
    @bullet_widget.frameShape = Qt::Frame::StyledPanel

    @horizontalLayout_3.addWidget(@bullet_widget)

    @list_item = Qt::PlainTextEdit.new(@list_frame)
    @list_item.objectName = "list_item"
    @list_item.maximumSize = Qt::Size.new(16777215, 16777215)

    @horizontalLayout_3.addWidget(@list_item)


    @horizontalLayout.addWidget(@list_frame)

    @main_stacked_widget.addWidget(@application_page)
    @admin_page = Qt::Widget.new()
    @admin_page.objectName = "admin_page"
    @horizontalLayout_2 = Qt::HBoxLayout.new(@admin_page)
    @horizontalLayout_2.spacing = 2
    @horizontalLayout_2.margin = 2
    @horizontalLayout_2.objectName = "horizontalLayout_2"
    @settings_tab_widget = Qt::TabWidget.new(@admin_page)
    @settings_tab_widget.objectName = "settings_tab_widget"
    @font1 = Qt::Font.new
    @font1.pointSize = 12
    @font1.bold = true
    @font1.weight = 75
    @settings_tab_widget.font = @font1
    @settings_tab_widget.styleSheet = ""
    @settings_tab_widget.iconSize = Qt::Size.new(20, 20)
    @general_tab_2 = Qt::Widget.new()
    @general_tab_2.objectName = "general_tab_2"
    @sizePolicy2.heightForWidth = @general_tab_2.sizePolicy.hasHeightForWidth
    @general_tab_2.sizePolicy = @sizePolicy2
    @general_tab_2.font = @font
    @horizontalLayout_12 = Qt::HBoxLayout.new(@general_tab_2)
    @horizontalLayout_12.spacing = 0
    @horizontalLayout_12.margin = 0
    @horizontalLayout_12.objectName = "horizontalLayout_12"
    @network_test_Frame_2 = Qt::Frame.new(@general_tab_2)
    @network_test_Frame_2.objectName = "network_test_Frame_2"
    @sizePolicy3.heightForWidth = @network_test_Frame_2.sizePolicy.hasHeightForWidth
    @network_test_Frame_2.sizePolicy = @sizePolicy3
    @network_test_Frame_2.minimumSize = Qt::Size.new(0, 40)
    @network_test_Frame_2.frameShape = Qt::Frame::NoFrame
    @network_test_Frame_2.frameShadow = Qt::Frame::Plain
    @verticalLayout_36 = Qt::VBoxLayout.new(@network_test_Frame_2)
    @verticalLayout_36.spacing = 0
    @verticalLayout_36.margin = 0
    @verticalLayout_36.objectName = "verticalLayout_36"
    @unit_info_box_2 = Qt::GroupBox.new(@network_test_Frame_2)
    @unit_info_box_2.objectName = "unit_info_box_2"
    @sizePolicy4 = Qt::SizePolicy.new(Qt::SizePolicy::Minimum, Qt::SizePolicy::MinimumExpanding)
    @sizePolicy4.setHorizontalStretch(0)
    @sizePolicy4.setVerticalStretch(0)
    @sizePolicy4.heightForWidth = @unit_info_box_2.sizePolicy.hasHeightForWidth
    @unit_info_box_2.sizePolicy = @sizePolicy4
    @font2 = Qt::Font.new
    @font2.pointSize = 12
    @unit_info_box_2.font = @font2
    @gridLayout_14 = Qt::GridLayout.new(@unit_info_box_2)
    @gridLayout_14.objectName = "gridLayout_14"
    @gridLayout_14.verticalSpacing = 23
    @version_info_label_2 = Qt::Label.new(@unit_info_box_2)
    @version_info_label_2.objectName = "version_info_label_2"
    @version_info_label_2.font = @font
    @version_info_label_2.alignment = Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter

    @gridLayout_14.addWidget(@version_info_label_2, 0, 0, 1, 1)

    @version_num_label_2 = Qt::Label.new(@unit_info_box_2)
    @version_num_label_2.objectName = "version_num_label_2"
    @version_num_label_2.font = @font
    @version_num_label_2.alignment = Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter

    @gridLayout_14.addWidget(@version_num_label_2, 0, 1, 1, 1)

    @model_info_box_2 = Qt::Label.new(@unit_info_box_2)
    @model_info_box_2.objectName = "model_info_box_2"
    @model_info_box_2.font = @font
    @model_info_box_2.alignment = Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter

    @gridLayout_14.addWidget(@model_info_box_2, 1, 0, 1, 1)

    @model_num_label_2 = Qt::Label.new(@unit_info_box_2)
    @model_num_label_2.objectName = "model_num_label_2"
    @model_num_label_2.font = @font
    @model_num_label_2.alignment = Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter

    @gridLayout_14.addWidget(@model_num_label_2, 1, 1, 1, 1)

    @serial_info_box_2 = Qt::Label.new(@unit_info_box_2)
    @serial_info_box_2.objectName = "serial_info_box_2"
    @serial_info_box_2.font = @font
    @serial_info_box_2.alignment = Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter

    @gridLayout_14.addWidget(@serial_info_box_2, 2, 0, 1, 1)

    @serial_num_label_2 = Qt::Label.new(@unit_info_box_2)
    @serial_num_label_2.objectName = "serial_num_label_2"
    @serial_num_label_2.font = @font
    @serial_num_label_2.alignment = Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter

    @gridLayout_14.addWidget(@serial_num_label_2, 2, 1, 1, 1)


    @verticalLayout_36.addWidget(@unit_info_box_2)

    @net_status_box_2 = Qt::GroupBox.new(@network_test_Frame_2)
    @net_status_box_2.objectName = "net_status_box_2"
    @sizePolicy5 = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::MinimumExpanding)
    @sizePolicy5.setHorizontalStretch(0)
    @sizePolicy5.setVerticalStretch(0)
    @sizePolicy5.heightForWidth = @net_status_box_2.sizePolicy.hasHeightForWidth
    @net_status_box_2.sizePolicy = @sizePolicy5
    @gridLayout_15 = Qt::GridLayout.new(@net_status_box_2)
    @gridLayout_15.spacing = 2
    @gridLayout_15.margin = 2
    @gridLayout_15.objectName = "gridLayout_15"
    @cable_label_2 = Qt::Label.new(@net_status_box_2)
    @cable_label_2.objectName = "cable_label_2"
    @cable_label_2.font = @font1
    @cable_label_2.alignment = Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter

    @gridLayout_15.addWidget(@cable_label_2, 0, 0, 1, 1)

    @cable_status_2 = Qt::Label.new(@net_status_box_2)
    @cable_status_2.objectName = "cable_status_2"
    @cable_status_2.font = @font1

    @gridLayout_15.addWidget(@cable_status_2, 0, 1, 1, 1)

    @inet_label_2 = Qt::Label.new(@net_status_box_2)
    @inet_label_2.objectName = "inet_label_2"
    @inet_label_2.font = @font1
    @inet_label_2.alignment = Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter

    @gridLayout_15.addWidget(@inet_label_2, 1, 0, 1, 1)

    @inet_status_2 = Qt::Label.new(@net_status_box_2)
    @inet_status_2.objectName = "inet_status_2"
    @inet_status_2.font = @font1

    @gridLayout_15.addWidget(@inet_status_2, 1, 1, 1, 1)

    @test_network_button_2 = Qt::PushButton.new(@net_status_box_2)
    @test_network_button_2.objectName = "test_network_button_2"
    @sizePolicy1.heightForWidth = @test_network_button_2.sizePolicy.hasHeightForWidth
    @test_network_button_2.sizePolicy = @sizePolicy1
    @test_network_button_2.minimumSize = Qt::Size.new(0, 20)
    @test_network_button_2.font = @font1

    @gridLayout_15.addWidget(@test_network_button_2, 2, 0, 1, 1)

    @reset_network_button_2 = Qt::PushButton.new(@net_status_box_2)
    @reset_network_button_2.objectName = "reset_network_button_2"
    @sizePolicy1.heightForWidth = @reset_network_button_2.sizePolicy.hasHeightForWidth
    @reset_network_button_2.sizePolicy = @sizePolicy1
    @reset_network_button_2.minimumSize = Qt::Size.new(0, 20)
    @reset_network_button_2.font = @font1

    @gridLayout_15.addWidget(@reset_network_button_2, 2, 1, 1, 1)


    @verticalLayout_36.addWidget(@net_status_box_2)


    @horizontalLayout_12.addWidget(@network_test_Frame_2)

    @widget_9 = Qt::Widget.new(@general_tab_2)
    @widget_9.objectName = "widget_9"
    @verticalLayout_40 = Qt::VBoxLayout.new(@widget_9)
    @verticalLayout_40.spacing = 0
    @verticalLayout_40.margin = 4
    @verticalLayout_40.objectName = "verticalLayout_40"
    @unit_config_box_2 = Qt::GroupBox.new(@widget_9)
    @unit_config_box_2.objectName = "unit_config_box_2"
    @font3 = Qt::Font.new
    @font3.pointSize = 12
    @font3.bold = true
    @font3.italic = false
    @font3.weight = 75
    @unit_config_box_2.font = @font3
    @unit_config_box_2.alignment = Qt::AlignCenter
    @formLayout_9 = Qt::FormLayout.new(@unit_config_box_2)
    @formLayout_9.margin = 4
    @formLayout_9.objectName = "formLayout_9"
    @formLayout_9.fieldGrowthPolicy = Qt::FormLayout::AllNonFixedFieldsGrow
    @formLayout_9.formAlignment = Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter
    @formLayout_9.horizontalSpacing = 4
    @formLayout_9.verticalSpacing = 6
    @label_9 = Qt::Label.new(@unit_config_box_2)
    @label_9.objectName = "label_9"
    @label_9.font = @font1

    @formLayout_9.setWidget(1, Qt::FormLayout::FieldRole, @label_9)

    @scale_conn_drop_2 = Qt::ComboBox.new(@unit_config_box_2)
    @scale_conn_drop_2.objectName = "scale_conn_drop_2"
    @scale_conn_drop_2.minimumSize = Qt::Size.new(0, 20)
    @font4 = Qt::Font.new
    @font4.pointSize = 9
    @font4.bold = true
    @font4.weight = 75
    @scale_conn_drop_2.font = @font4

    @formLayout_9.setWidget(2, Qt::FormLayout::FieldRole, @scale_conn_drop_2)

    @label_10 = Qt::Label.new(@unit_config_box_2)
    @label_10.objectName = "label_10"
    @label_10.font = @font1

    @formLayout_9.setWidget(3, Qt::FormLayout::FieldRole, @label_10)

    @jug_select_drop_2 = Qt::ComboBox.new(@unit_config_box_2)
    @jug_select_drop_2.objectName = "jug_select_drop_2"
    @jug_select_drop_2.minimumSize = Qt::Size.new(0, 20)
    @jug_select_drop_2.font = @font4

    @formLayout_9.setWidget(4, Qt::FormLayout::FieldRole, @jug_select_drop_2)

    @label_11 = Qt::Label.new(@unit_config_box_2)
    @label_11.objectName = "label_11"
    @label_11.enabled = false
    @label_11.font = @font1

    @formLayout_9.setWidget(5, Qt::FormLayout::FieldRole, @label_11)

    @pump_conn_drop_2 = Qt::ComboBox.new(@unit_config_box_2)
    @pump_conn_drop_2.objectName = "pump_conn_drop_2"
    @pump_conn_drop_2.enabled = false
    @pump_conn_drop_2.minimumSize = Qt::Size.new(0, 20)
    @pump_conn_drop_2.font = @font4
    @pump_conn_drop_2.insertPolicy = Qt::ComboBox::NoInsert

    @formLayout_9.setWidget(6, Qt::FormLayout::FieldRole, @pump_conn_drop_2)

    @label_12 = Qt::Label.new(@unit_config_box_2)
    @label_12.objectName = "label_12"
    @label_12.font = @font1

    @formLayout_9.setWidget(8, Qt::FormLayout::FieldRole, @label_12)

    @dispense_type_drop_2 = Qt::ComboBox.new(@unit_config_box_2)
    @dispense_type_drop_2.objectName = "dispense_type_drop_2"
    @dispense_type_drop_2.minimumSize = Qt::Size.new(0, 20)
    @dispense_type_drop_2.font = @font4

    @formLayout_9.setWidget(9, Qt::FormLayout::FieldRole, @dispense_type_drop_2)


    @verticalLayout_40.addWidget(@unit_config_box_2)

    @remote_help_button_2 = Qt::PushButton.new(@widget_9)
    @remote_help_button_2.objectName = "remote_help_button_2"
    @remote_help_button_2.enabled = false
    @sizePolicy6 = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Maximum)
    @sizePolicy6.setHorizontalStretch(0)
    @sizePolicy6.setVerticalStretch(0)
    @sizePolicy6.heightForWidth = @remote_help_button_2.sizePolicy.hasHeightForWidth
    @remote_help_button_2.sizePolicy = @sizePolicy6
    @remote_help_button_2.minimumSize = Qt::Size.new(0, 20)
    @remote_help_button_2.baseSize = Qt::Size.new(0, 0)
    @remote_help_button_2.font = @font2

    @verticalLayout_40.addWidget(@remote_help_button_2)


    @horizontalLayout_12.addWidget(@widget_9)

    @settings_tab_widget.addTab(@general_tab_2, Qt::Application.translate("MainWindow", "General", nil, Qt::Application::UnicodeUTF8))
    @date_tab_2 = Qt::Widget.new()
    @date_tab_2.objectName = "date_tab_2"
    @sizePolicy2.heightForWidth = @date_tab_2.sizePolicy.hasHeightForWidth
    @date_tab_2.sizePolicy = @sizePolicy2
    @date_tab_2.font = @font
    @gridLayout_16 = Qt::GridLayout.new(@date_tab_2)
    @gridLayout_16.spacing = 2
    @gridLayout_16.margin = 2
    @gridLayout_16.objectName = "gridLayout_16"
    @calendar_frame_2 = Qt::Frame.new(@date_tab_2)
    @calendar_frame_2.objectName = "calendar_frame_2"
    @sizePolicy7 = Qt::SizePolicy.new(Qt::SizePolicy::MinimumExpanding, Qt::SizePolicy::MinimumExpanding)
    @sizePolicy7.setHorizontalStretch(0)
    @sizePolicy7.setVerticalStretch(0)
    @sizePolicy7.heightForWidth = @calendar_frame_2.sizePolicy.hasHeightForWidth
    @calendar_frame_2.sizePolicy = @sizePolicy7
    @calendar_frame_2.frameShape = Qt::Frame::StyledPanel
    @calendar_frame_2.frameShadow = Qt::Frame::Plain
    @verticalLayout_41 = Qt::VBoxLayout.new(@calendar_frame_2)
    @verticalLayout_41.spacing = 0
    @verticalLayout_41.margin = 0
    @verticalLayout_41.objectName = "verticalLayout_41"
    @widget_10 = Qt::Widget.new(@calendar_frame_2)
    @widget_10.objectName = "widget_10"
    @horizontalLayout_13 = Qt::HBoxLayout.new(@widget_10)
    @horizontalLayout_13.spacing = 2
    @horizontalLayout_13.margin = 0
    @horizontalLayout_13.objectName = "horizontalLayout_13"
    @prev_month_button_2 = Qt::PushButton.new(@widget_10)
    @prev_month_button_2.objectName = "prev_month_button_2"
    @sizePolicy8 = Qt::SizePolicy.new(Qt::SizePolicy::MinimumExpanding, Qt::SizePolicy::Fixed)
    @sizePolicy8.setHorizontalStretch(0)
    @sizePolicy8.setVerticalStretch(0)
    @sizePolicy8.heightForWidth = @prev_month_button_2.sizePolicy.hasHeightForWidth
    @prev_month_button_2.sizePolicy = @sizePolicy8
    @prev_month_button_2.minimumSize = Qt::Size.new(0, 40)
    @font5 = Qt::Font.new
    @font5.pointSize = 24
    @font5.bold = true
    @font5.italic = false
    @font5.weight = 75
    @prev_month_button_2.font = @font5

    @horizontalLayout_13.addWidget(@prev_month_button_2)

    @month_label_2 = Qt::Label.new(@widget_10)
    @month_label_2.objectName = "month_label_2"
    @sizePolicy2.heightForWidth = @month_label_2.sizePolicy.hasHeightForWidth
    @month_label_2.sizePolicy = @sizePolicy2
    @font6 = Qt::Font.new
    @font6.pointSize = 20
    @font6.bold = true
    @font6.italic = false
    @font6.weight = 75
    @month_label_2.font = @font6
    @month_label_2.alignment = Qt::AlignCenter

    @horizontalLayout_13.addWidget(@month_label_2)

    @year_label_2 = Qt::Label.new(@widget_10)
    @year_label_2.objectName = "year_label_2"
    @sizePolicy3.heightForWidth = @year_label_2.sizePolicy.hasHeightForWidth
    @year_label_2.sizePolicy = @sizePolicy3
    @year_label_2.font = @font6
    @year_label_2.alignment = Qt::AlignCenter

    @horizontalLayout_13.addWidget(@year_label_2)

    @next_month_button_2 = Qt::PushButton.new(@widget_10)
    @next_month_button_2.objectName = "next_month_button_2"
    @sizePolicy8.heightForWidth = @next_month_button_2.sizePolicy.hasHeightForWidth
    @next_month_button_2.sizePolicy = @sizePolicy8
    @next_month_button_2.minimumSize = Qt::Size.new(0, 40)
    @next_month_button_2.font = @font5

    @horizontalLayout_13.addWidget(@next_month_button_2)


    @verticalLayout_41.addWidget(@widget_10)

    @calendar_widget_2 = Qt::CalendarWidget.new(@calendar_frame_2)
    @calendar_widget_2.objectName = "calendar_widget_2"
    @sizePolicy7.heightForWidth = @calendar_widget_2.sizePolicy.hasHeightForWidth
    @calendar_widget_2.sizePolicy = @sizePolicy7
    @font7 = Qt::Font.new
    @font7.pointSize = 16
    @font7.bold = true
    @font7.italic = false
    @font7.weight = 75
    @calendar_widget_2.font = @font7
    @calendar_widget_2.gridVisible = true
    @calendar_widget_2.selectionMode = Qt::CalendarWidget::SingleSelection
    @calendar_widget_2.horizontalHeaderFormat = Qt::CalendarWidget::ShortDayNames
    @calendar_widget_2.verticalHeaderFormat = Qt::CalendarWidget::NoVerticalHeader
    @calendar_widget_2.navigationBarVisible = false
    @calendar_widget_2.dateEditEnabled = true
    @calendar_widget_2.dateEditAcceptDelay = 200

    @verticalLayout_41.addWidget(@calendar_widget_2)


    @gridLayout_16.addWidget(@calendar_frame_2, 0, 0, 1, 1)

    @frame_6 = Qt::Frame.new(@date_tab_2)
    @frame_6.objectName = "frame_6"
    @frame_6.frameShape = Qt::Frame::NoFrame
    @frame_6.frameShadow = Qt::Frame::Raised
    @verticalLayout_42 = Qt::VBoxLayout.new(@frame_6)
    @verticalLayout_42.spacing = 0
    @verticalLayout_42.margin = 0
    @verticalLayout_42.objectName = "verticalLayout_42"
    @label_17 = Qt::Label.new(@frame_6)
    @label_17.objectName = "label_17"
    @font8 = Qt::Font.new
    @font8.pointSize = 14
    @font8.bold = true
    @font8.italic = false
    @font8.weight = 75
    @label_17.font = @font8
    @label_17.alignment = Qt::AlignCenter

    @verticalLayout_42.addWidget(@label_17)

    @timezone_pulldown_2 = Qt::ComboBox.new(@frame_6)
    @timezone_pulldown_2.objectName = "timezone_pulldown_2"
    @sizePolicy9 = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Fixed)
    @sizePolicy9.setHorizontalStretch(0)
    @sizePolicy9.setVerticalStretch(0)
    @sizePolicy9.heightForWidth = @timezone_pulldown_2.sizePolicy.hasHeightForWidth
    @timezone_pulldown_2.sizePolicy = @sizePolicy9
    @timezone_pulldown_2.minimumSize = Qt::Size.new(0, 40)
    @timezone_pulldown_2.font = @font1

    @verticalLayout_42.addWidget(@timezone_pulldown_2)

    @label_18 = Qt::Label.new(@frame_6)
    @label_18.objectName = "label_18"
    @sizePolicy.heightForWidth = @label_18.sizePolicy.hasHeightForWidth
    @label_18.sizePolicy = @sizePolicy
    @label_18.font = @font8
    @label_18.alignment = Qt::AlignCenter

    @verticalLayout_42.addWidget(@label_18)

    @hour_edit_2 = Qt::TimeEdit.new(@frame_6)
    @hour_edit_2.objectName = "hour_edit_2"
    @hour_edit_2.minimumSize = Qt::Size.new(0, 40)
    @hour_edit_2.alignment = Qt::AlignCenter
    @hour_edit_2.buttonSymbols = Qt::AbstractSpinBox::UpDownArrows
    @hour_edit_2.accelerated = true
    @hour_edit_2.date = Qt::Date.new(2000, 1, 1)
    @hour_edit_2.minimumDate = Qt::Date.new(2000, 1, 1)

    @verticalLayout_42.addWidget(@hour_edit_2)

    @label_19 = Qt::Label.new(@frame_6)
    @label_19.objectName = "label_19"
    @label_19.font = @font8
    @label_19.alignment = Qt::AlignCenter

    @verticalLayout_42.addWidget(@label_19)

    @minute_edit_2 = Qt::TimeEdit.new(@frame_6)
    @minute_edit_2.objectName = "minute_edit_2"
    @minute_edit_2.minimumSize = Qt::Size.new(0, 40)
    @minute_edit_2.alignment = Qt::AlignCenter
    @minute_edit_2.buttonSymbols = Qt::AbstractSpinBox::UpDownArrows
    @minute_edit_2.accelerated = true
    @minute_edit_2.currentSection = Qt::DateTimeEdit::MinuteSection

    @verticalLayout_42.addWidget(@minute_edit_2)

    @apply_time_button_2 = Qt::PushButton.new(@frame_6)
    @apply_time_button_2.objectName = "apply_time_button_2"
    @apply_time_button_2.minimumSize = Qt::Size.new(0, 40)
    @apply_time_button_2.font = @font

    @verticalLayout_42.addWidget(@apply_time_button_2)


    @gridLayout_16.addWidget(@frame_6, 0, 1, 1, 1)

    @settings_tab_widget.addTab(@date_tab_2, Qt::Application.translate("MainWindow", "Date/Time", nil, Qt::Application::UnicodeUTF8))
    @tuning_tab_2 = Qt::Widget.new()
    @tuning_tab_2.objectName = "tuning_tab_2"
    @sizePolicy2.heightForWidth = @tuning_tab_2.sizePolicy.hasHeightForWidth
    @tuning_tab_2.sizePolicy = @sizePolicy2
    @tuning_tab_2.font = @font
    @tuning_tab_2.styleSheet = ""
    @verticalLayout_43 = Qt::VBoxLayout.new(@tuning_tab_2)
    @verticalLayout_43.objectName = "verticalLayout_43"
    @flush_timing_box_air_2 = Qt::GroupBox.new(@tuning_tab_2)
    @flush_timing_box_air_2.objectName = "flush_timing_box_air_2"
    @flush_timing_box_air_2.styleSheet = ""
    @flush_timing_box_air_2.alignment = Qt::AlignCenter
    @flush_timing_box_air_2.flat = false
    @gridLayout_22 = Qt::GridLayout.new(@flush_timing_box_air_2)
    @gridLayout_22.spacing = 2
    @gridLayout_22.margin = 2
    @gridLayout_22.objectName = "gridLayout_22"
    @flush_sub_1_air_2 = Qt::PushButton.new(@flush_timing_box_air_2)
    @flush_sub_1_air_2.objectName = "flush_sub_1_air_2"

    @gridLayout_22.addWidget(@flush_sub_1_air_2, 1, 1, 1, 1)

    @flush_sub_10_air_2 = Qt::PushButton.new(@flush_timing_box_air_2)
    @flush_sub_10_air_2.objectName = "flush_sub_10_air_2"

    @gridLayout_22.addWidget(@flush_sub_10_air_2, 1, 0, 1, 1)

    @flush_slider_air_2 = Qt::Slider.new(@flush_timing_box_air_2)
    @flush_slider_air_2.objectName = "flush_slider_air_2"
    @flush_slider_air_2.minimumSize = Qt::Size.new(0, 60)
    @font9 = Qt::Font.new
    @font9.pointSize = 14
    @font9.bold = false
    @font9.weight = 50
    @flush_slider_air_2.font = @font9
    @flush_slider_air_2.maximum = 199
    @flush_slider_air_2.orientation = Qt::Horizontal
    @flush_slider_air_2.invertedAppearance = false
    @flush_slider_air_2.invertedControls = false
    @flush_slider_air_2.tickPosition = Qt::Slider::TicksBelow
    @flush_slider_air_2.tickInterval = 10

    @gridLayout_22.addWidget(@flush_slider_air_2, 0, 0, 1, 5)

    @flush_add_1_air_2 = Qt::PushButton.new(@flush_timing_box_air_2)
    @flush_add_1_air_2.objectName = "flush_add_1_air_2"

    @gridLayout_22.addWidget(@flush_add_1_air_2, 1, 3, 1, 1)

    @flush_add_10_air_2 = Qt::PushButton.new(@flush_timing_box_air_2)
    @flush_add_10_air_2.objectName = "flush_add_10_air_2"

    @gridLayout_22.addWidget(@flush_add_10_air_2, 1, 4, 1, 1)

    @flush_time_label_air_2 = Qt::Label.new(@flush_timing_box_air_2)
    @flush_time_label_air_2.objectName = "flush_time_label_air_2"
    @flush_time_label_air_2.font = @font
    @flush_time_label_air_2.alignment = Qt::AlignCenter

    @gridLayout_22.addWidget(@flush_time_label_air_2, 1, 2, 1, 1)


    @verticalLayout_43.addWidget(@flush_timing_box_air_2)

    @flush_timing_box_water_2 = Qt::GroupBox.new(@tuning_tab_2)
    @flush_timing_box_water_2.objectName = "flush_timing_box_water_2"
    @flush_timing_box_water_2.styleSheet = ""
    @flush_timing_box_water_2.alignment = Qt::AlignCenter
    @gridLayout_23 = Qt::GridLayout.new(@flush_timing_box_water_2)
    @gridLayout_23.spacing = 2
    @gridLayout_23.margin = 2
    @gridLayout_23.objectName = "gridLayout_23"
    @flush_sub_10_water_2 = Qt::PushButton.new(@flush_timing_box_water_2)
    @flush_sub_10_water_2.objectName = "flush_sub_10_water_2"

    @gridLayout_23.addWidget(@flush_sub_10_water_2, 1, 0, 1, 1)

    @flush_slider_water_2 = Qt::Slider.new(@flush_timing_box_water_2)
    @flush_slider_water_2.objectName = "flush_slider_water_2"
    @flush_slider_water_2.minimumSize = Qt::Size.new(0, 60)
    @flush_slider_water_2.font = @font9
    @flush_slider_water_2.maximum = 199
    @flush_slider_water_2.orientation = Qt::Horizontal
    @flush_slider_water_2.invertedAppearance = false
    @flush_slider_water_2.invertedControls = false
    @flush_slider_water_2.tickPosition = Qt::Slider::TicksBelow
    @flush_slider_water_2.tickInterval = 10

    @gridLayout_23.addWidget(@flush_slider_water_2, 0, 0, 1, 5)

    @flush_add_1_water_2 = Qt::PushButton.new(@flush_timing_box_water_2)
    @flush_add_1_water_2.objectName = "flush_add_1_water_2"

    @gridLayout_23.addWidget(@flush_add_1_water_2, 1, 3, 1, 1)

    @flush_add_10_water_2 = Qt::PushButton.new(@flush_timing_box_water_2)
    @flush_add_10_water_2.objectName = "flush_add_10_water_2"

    @gridLayout_23.addWidget(@flush_add_10_water_2, 1, 4, 1, 1)

    @flush_time_label_water_2 = Qt::Label.new(@flush_timing_box_water_2)
    @flush_time_label_water_2.objectName = "flush_time_label_water_2"
    @flush_time_label_water_2.font = @font
    @flush_time_label_water_2.alignment = Qt::AlignCenter

    @gridLayout_23.addWidget(@flush_time_label_water_2, 1, 2, 1, 1)

    @flush_sub_1_water_2 = Qt::PushButton.new(@flush_timing_box_water_2)
    @flush_sub_1_water_2.objectName = "flush_sub_1_water_2"

    @gridLayout_23.addWidget(@flush_sub_1_water_2, 1, 1, 1, 1)


    @verticalLayout_43.addWidget(@flush_timing_box_water_2)

    @settings_tab_widget.addTab(@tuning_tab_2, Qt::Application.translate("MainWindow", "Tuning", nil, Qt::Application::UnicodeUTF8))
    @pump_config_tab_2 = Qt::Widget.new()
    @pump_config_tab_2.objectName = "pump_config_tab_2"
    @horizontalLayout_16 = Qt::HBoxLayout.new(@pump_config_tab_2)
    @horizontalLayout_16.spacing = 0
    @horizontalLayout_16.margin = 0
    @horizontalLayout_16.objectName = "horizontalLayout_16"
    @relay_table_2 = Qt::TableView.new(@pump_config_tab_2)
    @relay_table_2.objectName = "relay_table_2"
    @sizePolicy10 = Qt::SizePolicy.new(Qt::SizePolicy::Fixed, Qt::SizePolicy::Preferred)
    @sizePolicy10.setHorizontalStretch(0)
    @sizePolicy10.setVerticalStretch(0)
    @sizePolicy10.heightForWidth = @relay_table_2.sizePolicy.hasHeightForWidth
    @relay_table_2.sizePolicy = @sizePolicy10
    @relay_table_2.minimumSize = Qt::Size.new(475, 0)
    @relay_table_2.font = @font2
    @relay_table_2.frameShadow = Qt::Frame::Sunken
    @relay_table_2.editTriggers = Qt::AbstractItemView::NoEditTriggers
    @relay_table_2.alternatingRowColors = true
    @relay_table_2.selectionMode = Qt::AbstractItemView::SingleSelection
    @relay_table_2.selectionBehavior = Qt::AbstractItemView::SelectRows
    @relay_table_2.cornerButtonEnabled = false

    @horizontalLayout_16.addWidget(@relay_table_2)

    @assignment_widget_2 = Qt::Widget.new(@pump_config_tab_2)
    @assignment_widget_2.objectName = "assignment_widget_2"
    @sizePolicy3.heightForWidth = @assignment_widget_2.sizePolicy.hasHeightForWidth
    @assignment_widget_2.sizePolicy = @sizePolicy3
    @assignment_widget_2.minimumSize = Qt::Size.new(160, 0)
    @verticalLayout_44 = Qt::VBoxLayout.new(@assignment_widget_2)
    @verticalLayout_44.spacing = 0
    @verticalLayout_44.margin = 0
    @verticalLayout_44.objectName = "verticalLayout_44"
    @bus_widget_2 = Qt::StackedWidget.new(@assignment_widget_2)
    @bus_widget_2.objectName = "bus_widget_2"
    @sizePolicy6.heightForWidth = @bus_widget_2.sizePolicy.hasHeightForWidth
    @bus_widget_2.sizePolicy = @sizePolicy6
    @font10 = Qt::Font.new
    @font10.pointSize = 11
    @bus_widget_2.font = @font10
    @can_tab_2 = Qt::Widget.new()
    @can_tab_2.objectName = "can_tab_2"
    @verticalLayout_45 = Qt::VBoxLayout.new(@can_tab_2)
    @verticalLayout_45.margin = 0
    @verticalLayout_45.objectName = "verticalLayout_45"
    @can_title_2 = Qt::Label.new(@can_tab_2)
    @can_title_2.objectName = "can_title_2"
    @sizePolicy6.heightForWidth = @can_title_2.sizePolicy.hasHeightForWidth
    @can_title_2.sizePolicy = @sizePolicy6
    @font11 = Qt::Font.new
    @font11.pointSize = 22
    @font11.bold = true
    @font11.weight = 75
    @can_title_2.font = @font11
    @can_title_2.alignment = Qt::AlignCenter
    @can_title_2.margin = 0
    @can_title_2.indent = -1

    @verticalLayout_45.addWidget(@can_title_2)

    @can_detect_button_2 = Qt::PushButton.new(@can_tab_2)
    @can_detect_button_2.objectName = "can_detect_button_2"
    @sizePolicy11 = Qt::SizePolicy.new(Qt::SizePolicy::MinimumExpanding, Qt::SizePolicy::Maximum)
    @sizePolicy11.setHorizontalStretch(0)
    @sizePolicy11.setVerticalStretch(0)
    @sizePolicy11.heightForWidth = @can_detect_button_2.sizePolicy.hasHeightForWidth
    @can_detect_button_2.sizePolicy = @sizePolicy11
    @can_detect_button_2.minimumSize = Qt::Size.new(0, 40)
    @can_detect_button_2.font = @font1

    @verticalLayout_45.addWidget(@can_detect_button_2)

    @pump_delete_button_2 = Qt::PushButton.new(@can_tab_2)
    @pump_delete_button_2.objectName = "pump_delete_button_2"
    @sizePolicy8.heightForWidth = @pump_delete_button_2.sizePolicy.hasHeightForWidth
    @pump_delete_button_2.sizePolicy = @sizePolicy8
    @pump_delete_button_2.minimumSize = Qt::Size.new(0, 40)

    @verticalLayout_45.addWidget(@pump_delete_button_2)

    @bus_widget_2.addWidget(@can_tab_2)
    @serial_tab_2 = Qt::Widget.new()
    @serial_tab_2.objectName = "serial_tab_2"
    @serial_tab_2.enabled = false
    @formLayout_2 = Qt::FormLayout.new(@serial_tab_2)
    @formLayout_2.margin = 0
    @formLayout_2.objectName = "formLayout_2"
    @formLayout_2.fieldGrowthPolicy = Qt::FormLayout::AllNonFixedFieldsGrow
    @formLayout_2.horizontalSpacing = 0
    @formLayout_2.verticalSpacing = 0
    @serial_title_2 = Qt::Label.new(@serial_tab_2)
    @serial_title_2.objectName = "serial_title_2"
    @sizePolicy6.heightForWidth = @serial_title_2.sizePolicy.hasHeightForWidth
    @serial_title_2.sizePolicy = @sizePolicy6
    @serial_title_2.font = @font11
    @serial_title_2.alignment = Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter

    @formLayout_2.setWidget(0, Qt::FormLayout::LabelRole, @serial_title_2)

    @serial_num_drop_2 = Qt::ComboBox.new(@serial_tab_2)
    @serial_num_drop_2.objectName = "serial_num_drop_2"
    @sizePolicy2.heightForWidth = @serial_num_drop_2.sizePolicy.hasHeightForWidth
    @serial_num_drop_2.sizePolicy = @sizePolicy2
    @serial_num_drop_2.minimumSize = Qt::Size.new(0, 40)
    @serial_num_drop_2.font = @font

    @formLayout_2.setWidget(1, Qt::FormLayout::LabelRole, @serial_num_drop_2)

    @bus_widget_2.addWidget(@serial_tab_2)

    @verticalLayout_44.addWidget(@bus_widget_2)

    @assignmentbar_2 = Qt::Widget.new(@assignment_widget_2)
    @assignmentbar_2.objectName = "assignmentbar_2"
    @sizePolicy5.heightForWidth = @assignmentbar_2.sizePolicy.hasHeightForWidth
    @assignmentbar_2.sizePolicy = @sizePolicy5
    @verticalLayout_46 = Qt::VBoxLayout.new(@assignmentbar_2)
    @verticalLayout_46.spacing = 0
    @verticalLayout_46.margin = 0
    @verticalLayout_46.objectName = "verticalLayout_46"
    @assigned_label_2 = Qt::Label.new(@assignmentbar_2)
    @assigned_label_2.objectName = "assigned_label_2"
    @sizePolicy.heightForWidth = @assigned_label_2.sizePolicy.hasHeightForWidth
    @assigned_label_2.sizePolicy = @sizePolicy
    @assigned_label_2.font = @font
    @assigned_label_2.alignment = Qt::AlignCenter

    @verticalLayout_46.addWidget(@assigned_label_2)

    @assignment_drop_2 = Qt::ComboBox.new(@assignmentbar_2)
    @assignment_drop_2.objectName = "assignment_drop_2"
    @sizePolicy.heightForWidth = @assignment_drop_2.sizePolicy.hasHeightForWidth
    @assignment_drop_2.sizePolicy = @sizePolicy
    @assignment_drop_2.minimumSize = Qt::Size.new(0, 40)
    @assignment_drop_2.font = @font
    @assignment_drop_2.editable = false
    @assignment_drop_2.maxVisibleItems = 16

    @verticalLayout_46.addWidget(@assignment_drop_2)

    @manifold_drop_2 = Qt::ComboBox.new(@assignmentbar_2)
    @manifold_drop_2.objectName = "manifold_drop_2"
    @sizePolicy.heightForWidth = @manifold_drop_2.sizePolicy.hasHeightForWidth
    @manifold_drop_2.sizePolicy = @sizePolicy
    @manifold_drop_2.minimumSize = Qt::Size.new(0, 40)
    @font12 = Qt::Font.new
    @font12.pointSize = 14
    @manifold_drop_2.font = @font12

    @verticalLayout_46.addWidget(@manifold_drop_2)

    @pump_apply_button_2 = Qt::PushButton.new(@assignmentbar_2)
    @pump_apply_button_2.objectName = "pump_apply_button_2"
    @sizePolicy.heightForWidth = @pump_apply_button_2.sizePolicy.hasHeightForWidth
    @pump_apply_button_2.sizePolicy = @sizePolicy
    @pump_apply_button_2.minimumSize = Qt::Size.new(0, 40)
    @pump_apply_button_2.font = @font1

    @verticalLayout_46.addWidget(@pump_apply_button_2)

    @pump_identify_button_2 = Qt::PushButton.new(@assignmentbar_2)
    @pump_identify_button_2.objectName = "pump_identify_button_2"
    @sizePolicy.heightForWidth = @pump_identify_button_2.sizePolicy.hasHeightForWidth
    @pump_identify_button_2.sizePolicy = @sizePolicy
    @pump_identify_button_2.minimumSize = Qt::Size.new(0, 40)
    @pump_identify_button_2.font = @font1

    @verticalLayout_46.addWidget(@pump_identify_button_2)

    @bottom_bar_5 = Qt::Widget.new(@assignmentbar_2)
    @bottom_bar_5.objectName = "bottom_bar_5"
    @sizePolicy.heightForWidth = @bottom_bar_5.sizePolicy.hasHeightForWidth
    @bottom_bar_5.sizePolicy = @sizePolicy
    @horizontalLayout_14 = Qt::HBoxLayout.new(@bottom_bar_5)
    @horizontalLayout_14.spacing = 0
    @horizontalLayout_14.margin = 0
    @horizontalLayout_14.objectName = "horizontalLayout_14"
    @pump_on_button_2 = Qt::PushButton.new(@bottom_bar_5)
    @pump_on_button_2.objectName = "pump_on_button_2"
    @sizePolicy.heightForWidth = @pump_on_button_2.sizePolicy.hasHeightForWidth
    @pump_on_button_2.sizePolicy = @sizePolicy
    @pump_on_button_2.minimumSize = Qt::Size.new(0, 40)
    @pump_on_button_2.font = @font1

    @horizontalLayout_14.addWidget(@pump_on_button_2)

    @pump_off_button_2 = Qt::PushButton.new(@bottom_bar_5)
    @pump_off_button_2.objectName = "pump_off_button_2"
    @sizePolicy.heightForWidth = @pump_off_button_2.sizePolicy.hasHeightForWidth
    @pump_off_button_2.sizePolicy = @sizePolicy
    @pump_off_button_2.minimumSize = Qt::Size.new(0, 40)
    @pump_off_button_2.font = @font1

    @horizontalLayout_14.addWidget(@pump_off_button_2)


    @verticalLayout_46.addWidget(@bottom_bar_5)


    @verticalLayout_44.addWidget(@assignmentbar_2)


    @horizontalLayout_16.addWidget(@assignment_widget_2)

    @settings_tab_widget.addTab(@pump_config_tab_2, Qt::Application.translate("MainWindow", "Pumps", nil, Qt::Application::UnicodeUTF8))
    @manifold_tab_2 = Qt::Widget.new()
    @manifold_tab_2.objectName = "manifold_tab_2"
    @verticalLayout_47 = Qt::VBoxLayout.new(@manifold_tab_2)
    @verticalLayout_47.spacing = 0
    @verticalLayout_47.margin = 0
    @verticalLayout_47.objectName = "verticalLayout_47"
    @widget_2 = Qt::Widget.new(@manifold_tab_2)
    @widget_2.objectName = "widget_2"
    @sizePolicy6.heightForWidth = @widget_2.sizePolicy.hasHeightForWidth
    @widget_2.sizePolicy = @sizePolicy6
    @gridLayout_24 = Qt::GridLayout.new(@widget_2)
    @gridLayout_24.spacing = 0
    @gridLayout_24.margin = 0
    @gridLayout_24.objectName = "gridLayout_24"
    @manifold_add_button_2 = Qt::PushButton.new(@widget_2)
    @manifold_add_button_2.objectName = "manifold_add_button_2"
    @manifold_add_button_2.minimumSize = Qt::Size.new(0, 40)

    @gridLayout_24.addWidget(@manifold_add_button_2, 1, 1, 1, 1)

    @manifold_edit_button_2 = Qt::PushButton.new(@widget_2)
    @manifold_edit_button_2.objectName = "manifold_edit_button_2"
    @manifold_edit_button_2.minimumSize = Qt::Size.new(0, 40)

    @gridLayout_24.addWidget(@manifold_edit_button_2, 1, 2, 1, 1)

    @manifold_delete_button_2 = Qt::PushButton.new(@widget_2)
    @manifold_delete_button_2.objectName = "manifold_delete_button_2"
    @sizePolicy9.heightForWidth = @manifold_delete_button_2.sizePolicy.hasHeightForWidth
    @manifold_delete_button_2.sizePolicy = @sizePolicy9
    @manifold_delete_button_2.minimumSize = Qt::Size.new(0, 40)

    @gridLayout_24.addWidget(@manifold_delete_button_2, 1, 3, 1, 1)

    @manifold_settings_drop_2 = Qt::ComboBox.new(@widget_2)
    @manifold_settings_drop_2.objectName = "manifold_settings_drop_2"
    @manifold_settings_drop_2.minimumSize = Qt::Size.new(0, 40)
    @manifold_settings_drop_2.font = @font12

    @gridLayout_24.addWidget(@manifold_settings_drop_2, 1, 0, 1, 1)


    @verticalLayout_47.addWidget(@widget_2)

    @label_23 = Qt::Label.new(@manifold_tab_2)
    @label_23.objectName = "label_23"
    @sizePolicy12 = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Minimum)
    @sizePolicy12.setHorizontalStretch(0)
    @sizePolicy12.setVerticalStretch(0)
    @sizePolicy12.heightForWidth = @label_23.sizePolicy.hasHeightForWidth
    @label_23.sizePolicy = @sizePolicy12
    @label_23.minimumSize = Qt::Size.new(0, 30)
    @label_23.font = @font12
    @label_23.alignment = Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter

    @verticalLayout_47.addWidget(@label_23)

    @manifold_chemical_list_2 = Qt::TableView.new(@manifold_tab_2)
    @manifold_chemical_list_2.objectName = "manifold_chemical_list_2"
    @manifold_chemical_list_2.font = @font2
    @manifold_chemical_list_2.tabKeyNavigation = false
    @manifold_chemical_list_2.setProperty("showDropIndicator", Qt::Variant.new(false))
    @manifold_chemical_list_2.dragDropOverwriteMode = false
    @manifold_chemical_list_2.alternatingRowColors = true
    @manifold_chemical_list_2.selectionMode = Qt::AbstractItemView::SingleSelection
    @manifold_chemical_list_2.selectionBehavior = Qt::AbstractItemView::SelectRows

    @verticalLayout_47.addWidget(@manifold_chemical_list_2)

    @manifold_valid_status_2 = Qt::Label.new(@manifold_tab_2)
    @manifold_valid_status_2.objectName = "manifold_valid_status_2"
    @manifold_valid_status_2.font = @font12

    @verticalLayout_47.addWidget(@manifold_valid_status_2)

    @settings_tab_widget.addTab(@manifold_tab_2, Qt::Application.translate("MainWindow", "Manifolds", nil, Qt::Application::UnicodeUTF8))

    @horizontalLayout_2.addWidget(@settings_tab_widget)

    @main_stacked_widget.addWidget(@admin_page)

    @gridLayout_2.addWidget(@main_stacked_widget, 0, 0, 1, 1)

    mainWindow.centralWidget = @centralwidget
    @menubar = Qt::MenuBar.new(mainWindow)
    @menubar.objectName = "menubar"
    @menubar.geometry = Qt::Rect.new(0, 0, 800, 23)
    @menuFile = Qt::Menu.new(@menubar)
    @menuFile.objectName = "menuFile"
    @menuHelp = Qt::Menu.new(@menubar)
    @menuHelp.objectName = "menuHelp"
    @menuSettings = Qt::Menu.new(@menubar)
    @menuSettings.objectName = "menuSettings"
    mainWindow.setMenuBar(@menubar)
    @statusbar = Qt::StatusBar.new(mainWindow)
    @statusbar.objectName = "statusbar"
    mainWindow.statusBar = @statusbar

    @menubar.addAction(@menuFile.menuAction())
    @menubar.addAction(@menuSettings.menuAction())
    @menubar.addAction(@menuHelp.menuAction())
    @menuFile.addAction(@actionNew)
    @menuFile.addAction(@actionOpen)
    @menuFile.addSeparator()
    @menuFile.addAction(@actionSave)
    @menuFile.addSeparator()
    @menuFile.addAction(@actionClose)
    @menuFile.addSeparator()
    @menuFile.addAction(@actionQuit)
    @menuHelp.addAction(@actionAbout)
    @menuSettings.addAction(@actionPreferences)

		retranslate(mainWindow)

    @main_stacked_widget.setCurrentIndex(1)
    @settings_tab_widget.setCurrentIndex(0)
    @bus_widget_2.setCurrentIndex(0)


    Qt::MetaObject.connectSlotsByName(mainWindow)
    end # setupUi


	def retranslate(mainWindow)
    mainWindow.windowTitle = Qt::Application.translate("MainWindow", "Carmudgeon", nil, Qt::Application::UnicodeUTF8)
    @actionAbout.text = Qt::Application.translate("MainWindow", "About", nil, Qt::Application::UnicodeUTF8)
    @actionNew.text = Qt::Application.translate("MainWindow", "New", nil, Qt::Application::UnicodeUTF8)
    @actionOpen.text = Qt::Application.translate("MainWindow", "Open", nil, Qt::Application::UnicodeUTF8)
    @actionClose.text = Qt::Application.translate("MainWindow", "Close", nil, Qt::Application::UnicodeUTF8)
    @actionQuit.text = Qt::Application.translate("MainWindow", "Quit", nil, Qt::Application::UnicodeUTF8)
    @actionSave.text = Qt::Application.translate("MainWindow", "Save", nil, Qt::Application::UnicodeUTF8)
    @actionPreferences.text = Qt::Application.translate("MainWindow", "Preferences", nil, Qt::Application::UnicodeUTF8)
    @proceed_button.text = Qt::Application.translate("MainWindow", "Proceed", nil, Qt::Application::UnicodeUTF8)

    __sortingEnabled = @bullet_widget.sortingEnabled?
    @bullet_widget.sortingEnabled = false
    @bullet_widget.item(0).text = Qt::Application.translate("MainWindow", "0", nil, Qt::Application::UnicodeUTF8)
    @bullet_widget.item(1).text = Qt::Application.translate("MainWindow", "1", nil, Qt::Application::UnicodeUTF8)
    @bullet_widget.item(2).text = Qt::Application.translate("MainWindow", "2", nil, Qt::Application::UnicodeUTF8)

    @bullet_widget.sortingEnabled = __sortingEnabled
    @list_item.plainText = Qt::Application.translate("MainWindow", "Line 1\n" \
"Line 2\n" \
"Line 3", nil, Qt::Application::UnicodeUTF8)
    @unit_info_box_2.title = Qt::Application.translate("MainWindow", "Unit Information", nil, Qt::Application::UnicodeUTF8)
    @version_info_label_2.text = Qt::Application.translate("MainWindow", "Version:", nil, Qt::Application::UnicodeUTF8)
    @version_num_label_2.text = Qt::Application.translate("MainWindow", "1.0", nil, Qt::Application::UnicodeUTF8)
    @model_info_box_2.text = Qt::Application.translate("MainWindow", "Model:", nil, Qt::Application::UnicodeUTF8)
    @model_num_label_2.text = Qt::Application.translate("MainWindow", "A1", nil, Qt::Application::UnicodeUTF8)
    @serial_info_box_2.text = Qt::Application.translate("MainWindow", "Serial:", nil, Qt::Application::UnicodeUTF8)
    @serial_num_label_2.text = Qt::Application.translate("MainWindow", "0001", nil, Qt::Application::UnicodeUTF8)
    @net_status_box_2.title = Qt::Application.translate("MainWindow", "Network Status", nil, Qt::Application::UnicodeUTF8)
    @cable_label_2.text = Qt::Application.translate("MainWindow", "Cable:", nil, Qt::Application::UnicodeUTF8)
    @cable_status_2.text = Qt::Application.translate("MainWindow", "Untested", nil, Qt::Application::UnicodeUTF8)
    @inet_label_2.text = Qt::Application.translate("MainWindow", "Internet:", nil, Qt::Application::UnicodeUTF8)
    @inet_status_2.text = Qt::Application.translate("MainWindow", "Untested", nil, Qt::Application::UnicodeUTF8)
    @test_network_button_2.text = Qt::Application.translate("MainWindow", "Test", nil, Qt::Application::UnicodeUTF8)
    @reset_network_button_2.text = Qt::Application.translate("MainWindow", "Reset", nil, Qt::Application::UnicodeUTF8)
    @unit_config_box_2.title = Qt::Application.translate("MainWindow", "Unit Config", nil, Qt::Application::UnicodeUTF8)
    @label_9.text = Qt::Application.translate("MainWindow", "Scale Connection", nil, Qt::Application::UnicodeUTF8)
    @label_10.text = Qt::Application.translate("MainWindow", "Jug Selection", nil, Qt::Application::UnicodeUTF8)
    @label_11.text = Qt::Application.translate("MainWindow", "Pump Selection", nil, Qt::Application::UnicodeUTF8)
    @label_12.text = Qt::Application.translate("MainWindow", "Dispense Type", nil, Qt::Application::UnicodeUTF8)
    @remote_help_button_2.text = Qt::Application.translate("MainWindow", "Remote HELP", nil, Qt::Application::UnicodeUTF8)
    @settings_tab_widget.setTabText(@settings_tab_widget.indexOf(@general_tab_2), Qt::Application.translate("MainWindow", "General", nil, Qt::Application::UnicodeUTF8))
    @prev_month_button_2.text = Qt::Application.translate("MainWindow", "<", nil, Qt::Application::UnicodeUTF8)
    @month_label_2.text = Qt::Application.translate("MainWindow", "December", nil, Qt::Application::UnicodeUTF8)
    @year_label_2.text = Qt::Application.translate("MainWindow", "2011", nil, Qt::Application::UnicodeUTF8)
    @next_month_button_2.text = Qt::Application.translate("MainWindow", ">", nil, Qt::Application::UnicodeUTF8)
    @label_17.text = Qt::Application.translate("MainWindow", "TimeZone", nil, Qt::Application::UnicodeUTF8)
    @label_18.text = Qt::Application.translate("MainWindow", "Hour", nil, Qt::Application::UnicodeUTF8)
    @hour_edit_2.displayFormat = Qt::Application.translate("MainWindow", "h AP", nil, Qt::Application::UnicodeUTF8)
    @label_19.text = Qt::Application.translate("MainWindow", "Minute", nil, Qt::Application::UnicodeUTF8)
    @minute_edit_2.displayFormat = Qt::Application.translate("MainWindow", "mm", nil, Qt::Application::UnicodeUTF8)
    @apply_time_button_2.text = Qt::Application.translate("MainWindow", "Apply", nil, Qt::Application::UnicodeUTF8)
    @settings_tab_widget.setTabText(@settings_tab_widget.indexOf(@date_tab_2), Qt::Application.translate("MainWindow", "Date/Time", nil, Qt::Application::UnicodeUTF8))
    @flush_timing_box_air_2.title = Qt::Application.translate("MainWindow", "Post Dispense Air Flush Time", nil, Qt::Application::UnicodeUTF8)
    @flush_sub_1_air_2.text = Qt::Application.translate("MainWindow", "-.1", nil, Qt::Application::UnicodeUTF8)
    @flush_sub_10_air_2.text = Qt::Application.translate("MainWindow", "-.10", nil, Qt::Application::UnicodeUTF8)
    @flush_add_1_air_2.text = Qt::Application.translate("MainWindow", "+.1", nil, Qt::Application::UnicodeUTF8)
    @flush_add_10_air_2.text = Qt::Application.translate("MainWindow", "+.10", nil, Qt::Application::UnicodeUTF8)
    @flush_time_label_air_2.text = Qt::Application.translate("MainWindow", "0 s", nil, Qt::Application::UnicodeUTF8)
    @flush_timing_box_water_2.title = Qt::Application.translate("MainWindow", "Post Dispense Water Flush Time", nil, Qt::Application::UnicodeUTF8)
    @flush_sub_10_water_2.text = Qt::Application.translate("MainWindow", "-.10", nil, Qt::Application::UnicodeUTF8)
    @flush_add_1_water_2.text = Qt::Application.translate("MainWindow", "+.1", nil, Qt::Application::UnicodeUTF8)
    @flush_add_10_water_2.text = Qt::Application.translate("MainWindow", "+.10", nil, Qt::Application::UnicodeUTF8)
    @flush_time_label_water_2.text = Qt::Application.translate("MainWindow", "0 s", nil, Qt::Application::UnicodeUTF8)
    @flush_sub_1_water_2.text = Qt::Application.translate("MainWindow", "-.1", nil, Qt::Application::UnicodeUTF8)
    @settings_tab_widget.setTabText(@settings_tab_widget.indexOf(@tuning_tab_2), Qt::Application.translate("MainWindow", "Tuning", nil, Qt::Application::UnicodeUTF8))
    @can_title_2.text = Qt::Application.translate("MainWindow", "Can Pumps", nil, Qt::Application::UnicodeUTF8)
    @can_detect_button_2.text = Qt::Application.translate("MainWindow", "Detect", nil, Qt::Application::UnicodeUTF8)
    @pump_delete_button_2.text = Qt::Application.translate("MainWindow", "Delete Pump", nil, Qt::Application::UnicodeUTF8)
    @serial_title_2.text = Qt::Application.translate("MainWindow", "# Serials", nil, Qt::Application::UnicodeUTF8)
    @assigned_label_2.text = Qt::Application.translate("MainWindow", "Assignments:", nil, Qt::Application::UnicodeUTF8)
    @pump_apply_button_2.text = Qt::Application.translate("MainWindow", "Apply", nil, Qt::Application::UnicodeUTF8)
    @pump_identify_button_2.text = Qt::Application.translate("MainWindow", "Identify", nil, Qt::Application::UnicodeUTF8)
    @pump_on_button_2.text = Qt::Application.translate("MainWindow", "On", nil, Qt::Application::UnicodeUTF8)
    @pump_off_button_2.text = Qt::Application.translate("MainWindow", "Off", nil, Qt::Application::UnicodeUTF8)
    @settings_tab_widget.setTabText(@settings_tab_widget.indexOf(@pump_config_tab_2), Qt::Application.translate("MainWindow", "Pumps", nil, Qt::Application::UnicodeUTF8))
    @manifold_add_button_2.text = Qt::Application.translate("MainWindow", "Add", nil, Qt::Application::UnicodeUTF8)
    @manifold_edit_button_2.text = Qt::Application.translate("MainWindow", "Edit", nil, Qt::Application::UnicodeUTF8)
    @manifold_delete_button_2.text = Qt::Application.translate("MainWindow", "Delete", nil, Qt::Application::UnicodeUTF8)
    @label_23.text = Qt::Application.translate("MainWindow", "Chemicals Assigned", nil, Qt::Application::UnicodeUTF8)
    @manifold_valid_status_2.text = Qt::Application.translate("MainWindow", "Manifold Status", nil, Qt::Application::UnicodeUTF8)
    @settings_tab_widget.setTabText(@settings_tab_widget.indexOf(@manifold_tab_2), Qt::Application.translate("MainWindow", "Manifolds", nil, Qt::Application::UnicodeUTF8))
    @menuFile.title = Qt::Application.translate("MainWindow", "File", nil, Qt::Application::UnicodeUTF8)
    @menuHelp.title = Qt::Application.translate("MainWindow", "Help", nil, Qt::Application::UnicodeUTF8)
    @menuSettings.title = Qt::Application.translate("MainWindow", "Settings", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi


	def teardown_gui
		@centralwidget.dispose
	end
end

