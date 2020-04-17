from PyQt5 import QtWidgets
from PyQt5.QtCore import Qt
from PyQt5.QtWidgets import QAbstractItemView


def doSetup(caller):
    self = caller

    self.stacks = self.findChild(QtWidgets.QStackedWidget, 'stackedWidget')

    # identify left menubar buttons
    self.homeButton = self.findChild(QtWidgets.QPushButton, 'homeButton')
    self.measureButton = self.findChild(QtWidgets.QPushButton, 'measureButton')
    self.historyButton = self.findChild(QtWidgets.QPushButton, 'historyButton')
    self.settingsButton = self.findChild(QtWidgets.QPushButton, 'settingsButton')
    self.projectsButton = self.findChild(QtWidgets.QPushButton, 'projectsButton')
    self.quitButton = self.findChild(QtWidgets.QPushButton, 'quitButton')

    # UI Plies Elements
    self.ply_description_plainTextEdit = self.stacks.findChild(QtWidgets.QPlainTextEdit, 'ply_description_plainTextEdit')
    self.fabric_plies_tableView = self.stacks.findChild(QtWidgets.QTableView, 'fabric_plies_tableView')
    self.ply_weight_spinBox = self.stacks.findChild(QtWidgets.QSpinBox, 'ply_weight_spinBox')
    self.fiberType_comboBox = self.stacks.findChild(QtWidgets.QComboBox, 'fiberType_comboBox')
    self.Fabric_Style_ComboBox = self.stacks.findChild(QtWidgets.QComboBox,'Fabric_Style_ComboBox')
    self.fabric_plies_tableView.setModel(self.pliesProxyModel)



    #UI Fabrics Elemenst
    self.existing_fabrics_comboBox = self.stacks.findChild(QtWidgets.QComboBox, 'existing_fabrics_comboBox')
    self.fabric_ID_lineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'fabric_ID_lineEdit')
    self.existing_fabrics_comboBox.setModel(self.fabricsModel)
    self.existing_fabrics_comboBox.currentIndexChanged.connect(self.on_FabricChanged)
    self.add_fabric_pushButton = self.stacks.findChild(QtWidgets.QPushButton, 'add_fabric_pushButton')
    self.add_fabric_pushButton.clicked.connect(self.on_add_fabrics_pushbutton_clicked)


    # UI Grains elements
    self.grainsLabel = self.stacks.findChild(QtWidgets.QLabel, 'grainsLabel')
    self.addGrainsButton = self.findChild(QtWidgets.QPushButton, 'addGrain_PushButton')
    self.rmvGrainsButton = self.findChild(QtWidgets.QPushButton, 'rmvGrains_pushButton')
    self.grainsComboBox = self.findChild(QtWidgets.QComboBox, 'Measure_Grains_comboBox')
    self.GrainsView = self.stacks.findChild(QtWidgets.QListView, 'Grains_listView')
    self.grainsLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'Settings_AddGrain_lineEdit')
    self.addGrainsButton.clicked.connect(self.addGrains)
    self.rmvGrainsButton.clicked.connect(self.removeGrains)
    self.GrainsView.setModel(self.grainsModel)
    self.grainsComboBox.setModel(self.grainsModel)
    self.GrainsView.clicked.connect(self.on_grainslistView_clicked)

    # UI Powders elements
    self.addPowdersButton = self.findChild(QtWidgets.QPushButton, 'addPowders_PushButton')
    self.rmvPowdersButton = self.findChild(QtWidgets.QPushButton, 'rmvPowder_pushButton')
    self.powdersComboBox = self.findChild(QtWidgets.QComboBox, 'Measure_Powder_comboBox')
    self.powdersLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'Settings_AddPowder_lineEdit')
    self.PowdersView = self.stacks.findChild(QtWidgets.QListView, 'Powders_listView')
    self.powdersComboBox.setModel(self.powdersModel)
    self.addPowdersButton.clicked.connect(self.addPowders)
    self.rmvPowdersButton.clicked.connect(self.removePowders)
    self.PowdersView.setModel(self.powdersModel)
    self.PowdersView.clicked.connect(self.on_powderslistView_clicked)

    # UI Projectiles elements
    self.addProjosButton = self.findChild(QtWidgets.QPushButton, 'addProjectiles_pushButton')
    self.rmvProjosButton = self.findChild(QtWidgets.QPushButton, 'rmvProjectiles_pushButton')
    self.editProjosButton = self.findChild(QtWidgets.QPushButton, 'editProjosButton')
    self.projoComboBox = self.findChild(QtWidgets.QComboBox, 'Measure_Projo_comboBox')
    self.projosLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'Settings_AddProjectile_lineEdit')
    self.projosMassLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'ProjoMass_lineEdit')
    self.projosDragLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'DragCoef_lineEdit')
    self.ProjectilesView = self.stacks.findChild(QtWidgets.QTableView, 'Projectiles_tableView')
    self.projoComboBox.setModel(self.projectilesModel)
    self.editProjosButton.clicked.connect(self.editProjos)
    self.addProjosButton.clicked.connect(self.addProjos)
    self.rmvProjosButton.clicked.connect(self.removeProjo)
    self.ProjectilesView.setModel(self.projectilesModel)
    self.ProjectilesView.clicked.connect(self.on_projoslistView_clicked)

    # UI Ballisticians elements
    self.rmvBallisticianButton = self.findChild(QtWidgets.QPushButton, 'rmv_Ballistician_pushButton')
    self.addBallisticianButton = self.findChild(QtWidgets.QPushButton, 'add_Ballistician_pushButton')
    self.ballisticianComboBox = self.findChild(QtWidgets.QComboBox, 'ballistician_comboBox')
    self.ballisticianLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'Ballistician_lineEdit')
    self.BallisticiansView = self.stacks.findChild(QtWidgets.QListView, 'Ballisticians_listView')
    self.ballisticianComboBox.setModel(self.ballModel)
    self.addBallisticianButton.clicked.connect(self.addBallistician)
    self.rmvBallisticianButton.clicked.connect(self.removeBallistician)
    self.BallisticiansView.setModel(self.ballModel)
    self.BallisticiansView.clicked.connect(self.on_BallisticianView_clicked)


    # UI Fiber_Types elements
    self.add_fiber_pushButton = self.findChild(QtWidgets.QPushButton, 'add_fiber_pushButton')
    self.remove_fiber_pushButton = self.findChild(QtWidgets.QPushButton, 'remove_fiber_pushButton')
    self.fiberType_lineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'fiberType_lineEdit')
    self.fiberTypesView = self.stacks.findChild(QtWidgets.QListView, 'fibers_listView')
    self.fiberType_comboBox = self.stacks.findChild(QtWidgets.QComboBox, 'fiberType_comboBox')
    self.remove_fiber_pushButton.clicked.connect(self.removeFiber)
    self.add_fiber_pushButton.clicked.connect(self.addFiber)
    self.fiberTypesView.setModel(self.fiberTypesModel)
    self.fiberType_comboBox.setModel(self.fiberTypesModel)
    self.fiberTypesView.clicked.connect(self.on_fiber_Types_listView_clicked)

    self.fabric_plies_tableView = self.stacks.findChild(QtWidgets.QTableView, 'fabric_plies_tableView')
    self.fabric_plies_tableView.clicked.connect(self.on_plieslistView_clicked)


    # UI Sample_Types elements
    self.sampTypes_listView = self.stacks.findChild(QtWidgets.QListView, 'sampTypes_listView')
    self.sampTypes_lineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'sampTypes_lineEdit')
    self.remove_sampTypes_pushButton = self.stacks.findChild(QtWidgets.QPushButton, 'remove_sampTypes_pushButton')
    self.add_sampTypes_pushButton = self.stacks.findChild(QtWidgets.QPushButton, 'add_sampTypes_pushButton')
    self.sample_types_comboBox = self.stacks.findChild(QtWidgets.QComboBox, 'SampleType_comboBox')
    self.sampTypes_listView.setModel(self.sample_types_Model)
    self.sample_types_comboBox.setModel(self.sample_types_Model)
    self.sampTypes_listView.clicked.connect(self.on_sample_types_view_clicked)
    self.remove_sampTypes_pushButton.clicked.connect(self.on_remove_sampleTypes)
    self.add_sampTypes_pushButton.clicked.connect(self.on_add_sampleTypes)

    # UI Manufacturers elements
    self.manufacturer_listView = self.stacks.findChild(QtWidgets.QListView, 'manufacturer_listView')
    self.manufacturer_lineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'manufacturer_lineEdit')
    self.remove_manufacturer_pushButton = self.stacks.findChild(QtWidgets.QPushButton, 'remove_manufacturer_pushButton')
    self.add_manufacturer_pushButton = self.stacks.findChild(QtWidgets.QPushButton, 'add_manufacturer_pushButton')
    self.Manufacturer_comboBox = self.stacks.findChild(QtWidgets.QComboBox, 'Manufacturer_comboBox')
    self.Manufacturer_comboBox.setModel(self.manufactModel)
    self.remove_manufacturer_pushButton.clicked.connect(self.on_remove_Manufacturer_clicked)
    self.add_manufacturer_pushButton.clicked.connect(self.on_add_manufacturer_clicked)
    self.manufacturer_listView.setModel(self.manufactModel)
    self.manufacturer_listView.clicked.connect(self.on_manufacturer_listView_clicked)

    # UI Fabric Styles elements
    self.remove_fabric_style_pushButton = self.stacks.findChild(QtWidgets.QPushButton, 'remove_fabric_style_pushButton')
    self.add_fabric_style_pushButton = self.stacks.findChild(QtWidgets.QPushButton, 'add_fabric_style_pushButton')
    self.Fabric_Style_ComboBox = self.stacks.findChild(QtWidgets.QComboBox, 'Fabric_Style_ComboBox')
    self.fabric_styles_LineEdit = self.stacks.findChild(QtWidgets.QLineEdit,'fabric_styles_lineEdit')
    self.fabricStylesView = self.stacks.findChild(QtWidgets.QListView, 'fabric_styles_listView')
    self.Fabric_Style_ComboBox.setModel(self.fabricStylesModel)
    self.add_fabric_style_pushButton.clicked.connect(self.on_add_fabric_style_pushButton_clicked)
    self.remove_fabric_style_pushButton.clicked.connect(self.on_remove_fabric_style_pushButton_clicked)
    self.fabricStylesView.setModel(self.fabricStylesModel)
    self.fabricStylesView.clicked.connect(self.on_fabric_styles_clicked)

    # UI Backings elements
    self.sample_backing_comboBox = self.stacks.findChild(QtWidgets.QComboBox, 'sample_backing_comboBox')
    self.BackingLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'backing_lineEdit')
    self.add_backing_pushButton = self.findChild(QtWidgets.QPushButton, 'add_backing_pushButton')
    self.remove_backing_pushButton = self.findChild(QtWidgets.QPushButton, 'remove_backing_pushButton')
    self.backing_combobox = self.findChild(QtWidgets.QComboBox, 'backing_comboBox')
    self.backingsView = self.stacks.findChild(QtWidgets.QListView, 'backing_listView')
    self.sample_backing_comboBox.setModel(self.backingModel)
    self.backing_comboBox.setModel(self.backingModel)
    self.remove_backing_pushButton.clicked.connect(self.remove_backing)
    self.add_backing_pushButton.clicked.connect(self.add_backing)
    self.backingsView.setModel(self.backingModel)
    self.backingsView.clicked.connect(self.on_BackingView_clicked)

    # UI Range elements
    self.SaveRangeButton = self.findChild(QtWidgets.QPushButton, 'SaveRange_pushButton')
    self.RangeView = self.stacks.findChild(QtWidgets.QTableView, 'Ranges_tableView')
    self.SaveRangeButton.clicked.connect(self.saveRange)
    self.RangeView.setModel(self.rangeModel)
    self.RangeView.clicked.connect(self.on_rangetableView_clicked)



    self.EnvironView = self.stacks.findChild(QtWidgets.QTableView, 'environ_tableView')
    self.QuerySelView = self.stacks.findChild(QtWidgets.QTableView, 'QuerySelector_tableView')
    self.HistView = self.stacks.findChild(QtWidgets.QTableView, 'History_tableView')


    # identify Hardware  LineEdit fields
    self.S1S2LineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'lineEdit_S1S2')
    self.S2TargLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'lineEdit_S2Targ')
    self.MidS2LineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'lineEdit_MidS2')
    self.MuzMidLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'lineEdit_MuzMid')
    self.SDeviceLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'lineEdit_SDevice')
    self.MDeviceLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'lineEdit_MDevice')
    self.TimeoutLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'lineEdit_Timeout')
    self.HWscreenEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'scrDev_LineEdit')
    self.HWmagEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'magDev_LineEdit')
    self.TimeoutEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'timeout_LineEdit')



    # Set up language support button
    self.langCombo = self.stacks.findChild(QtWidgets.QComboBox, 'combo')
    self.langCombo.setToolTip('<html><head><style> body {background-color: white;} </style></head>'
                              '<body><p>Set language then re-start application</p></body></html>')
    self.langCombo.setToolTipDuration(5000)
    self.langCombo.currentIndexChanged.connect(self.dolanguageChangeRequest)

    # identify Measure Page UI elements
    self.standbyLabel = self.findChild(QtWidgets.QLabel, 'Standby_label_5')
    self.velocityDataLabel = self.findChild(QtWidgets.QLabel, 'VelocityDataLabel')
    self.shootButton = self.findChild(QtWidgets.QPushButton, 'FIRE_shot_pushButton')

    # identify History Page UI elements
    self.QuerryTextLabel = self.stacks.findChild(QtWidgets.QLabel, 'QueryText_Label')
    self.HistExecuteButton = self.stacks.findChild(QtWidgets.QPushButton, 'HistoryExecute_Button')
    self.TempResult = self.stacks.findChild(QtWidgets.QLabel, 'label_15')

    # connect left menubar buttons
    self.homeButton.clicked.connect(self.goHome)
    self.historyButton.clicked.connect(self.goHistory)
    self.measureButton.clicked.connect(self.goMeasure)
    self.settingsButton.clicked.connect(self.goSettings)
    self.projectsButton.clicked.connect(self.goProjects)
    self.quitButton.clicked.connect(self.doQuit)

    # connect measure page buttons
    self.shootButton.clicked.connect(self.shoot)

    # connect history page buttons
    self.HistExecuteButton.clicked.connect(self.DoHistoryQuery)


    # set up table headers
    self.RangeView.verticalHeader().hide()  # Hide the Vertical Header in RangeView
    self.RangeView.setSelectionBehavior(QAbstractItemView.SelectRows) # Select by entire row (not by individual cell)
    RangesHeader = self.RangeView.horizontalHeader()
    RangesHeader.setDefaultSectionSize(20)

    self.ProjectilesView.verticalHeader().hide()  # Hide the Vertical Header in ProjectilesView
    self.ProjectilesView.setSelectionBehavior(QAbstractItemView.SelectRows)  # Select by entire row (not by individual cell)

    self.fabric_plies_tableView.verticalHeader().hide()
    self.fabric_plies_tableView.setSelectionBehavior(QAbstractItemView.SelectRows) # Select by entire row (not by individual cell)

    self.QuerySelView.verticalHeader().hide()  # Hide the Vertical Header in ProjectilesView
    self.QuerySelView.setSelectionBehavior(QAbstractItemView.SelectRows)  # Select by entire row (not by individual cell)




    # set up QuerySelectorView (on History page)
    self.QuerySelView.setModel(self.QuerriesModel)
    self.QuerySelView.clicked.connect(self.doQuerySelect_clicked)

    # set up HistoryView
    self.HistView.setModel(self.HistoryModel)

    # connect Hardware LineEdits to Harware setting functions
    self.HWscreenEdit.editingFinished.connect(self.ScreensChanged)
    self.HWmagEdit.editingFinished.connect(self.MagChanged)
    self.TimeoutEdit.editingFinished.connect(self.TimoutChanged)
    self.HWchangeLabel = self.stacks.findChild(QtWidgets.QLabel,'HWchangeLabel')
    self.HWchangeLabel.setText("")
