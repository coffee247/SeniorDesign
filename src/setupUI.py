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

    # identify Settings Page Buttons
    self.addGrainsButton = self.findChild(QtWidgets.QPushButton, 'addGrain_PushButton')
    self.rmvGrainsButton = self.findChild(QtWidgets.QPushButton, 'rmvGrains_pushButton')
    self.addPowdersButton = self.findChild(QtWidgets.QPushButton, 'addPowders_PushButton')
    self.rmvPowdersButton = self.findChild(QtWidgets.QPushButton, 'rmvPowder_pushButton')
    self.addProjosButton = self.findChild(QtWidgets.QPushButton, 'addProjectiles_pushButton')
    self.rmvProjosButton = self.findChild(QtWidgets.QPushButton, 'rmvProjectiles_pushButton')
    self.SaveRangeButton = self.findChild(QtWidgets.QPushButton, 'SaveRange_pushButton')
    self.rmvBallisticianButton = self.findChild(QtWidgets.QPushButton, 'rmv_Ballistician_pushButton')
    self.addBallisticianButton = self.findChild(QtWidgets.QPushButton, 'add_Ballistician_pushButton')
    self.editProjosButton = self.findChild(QtWidgets.QPushButton, 'editProjosButton')

    # Set up language support button
    self.langCombo = self.stacks.findChild(QtWidgets.QComboBox, 'combo')
    self.langCombo.setToolTip('<html><head><style> body {background-color: white;} </style></head>'
                              '<body><p>Set language then re-start application</p></body></html>')
    self.langCombo.setToolTipDuration(5000)


    # identify Settings Page LineEdits
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


    # identify Measure Page UI elements
    self.grainsComboBox = self.findChild(QtWidgets.QComboBox, 'Measure_Grains_comboBox')
    self.powdersComboBox = self.findChild(QtWidgets.QComboBox, 'Measure_Powder_comboBox')
    self.projoComboBox = self.findChild(QtWidgets.QComboBox, 'Measure_Projo_comboBox')
    self.standbyLabel = self.findChild(QtWidgets.QLabel, 'Standby_label_5')
    self.velocityDataLabel = self.findChild(QtWidgets.QLabel, 'VelocityDataLabel')
    self.shootButton = self.findChild(QtWidgets.QPushButton, 'FIRE_shot_pushButton')
    self.ballisticianComboBox = self.findChild(QtWidgets.QComboBox, 'ballistician_comboBox')

    # identify History Page UI elements
    self.QuerryTextLabel = self.stacks.findChild(QtWidgets.QLabel, 'QueryText_Label')
    self.HistExecuteButton = self.stacks.findChild(QtWidgets.QPushButton, 'HistoryExecute_Button')
    self.TempResult = self.stacks.findChild(QtWidgets.QLabel, 'label_15')

    # link Models to Measure Page ComboBoxes
    self.grainsComboBox.setModel(self.grainsModel)
    self.projoComboBox.setModel(self.projectilesModel)
    self.powdersComboBox.setModel(self.powdersModel)
 #   self.HistProjectilesComboBox.setModel(self.projectilesModel)
    self.ballisticianComboBox.setModel(self.ballModel)



    # connect left menubar buttons
    self.homeButton.clicked.connect(self.goHome)
    self.historyButton.clicked.connect(self.goHistory)
    self.measureButton.clicked.connect(self.goMeasure)
    self.settingsButton.clicked.connect(self.goSettings)
    self.projectsButton.clicked.connect(self.goProjects)
    self.quitButton.clicked.connect(self.doQuit)

    # connect settings page buttons
    self.addGrainsButton.clicked.connect(self.addGrains)
    self.rmvGrainsButton.clicked.connect(self.removeGrains)
    self.addPowdersButton.clicked.connect(self.addPowders)
    self.rmvPowdersButton.clicked.connect(self.removePowders)
    self.addProjosButton.clicked.connect(self.addProjos)
    self.rmvProjosButton.clicked.connect(self.removeProjo)
    self.SaveRangeButton.clicked.connect(self.saveRange)
    self.addBallisticianButton.clicked.connect(self.addBallistician)
    self.rmvBallisticianButton.clicked.connect(self.removeBallistician)
    self.editProjosButton.clicked.connect(self.editProjos)

    # connect measure page buttons
    self.shootButton.clicked.connect(self.shoot)

    # connect history page buttons
    self.HistExecuteButton.clicked.connect(self.DoHistoryQuery)


    # identify views
    self.GrainsView = self.stacks.findChild(QtWidgets.QListView, 'Grains_listView')
    self.BallisticiansView = self.stacks.findChild(QtWidgets.QListView, 'Ballisticians_listView')
    self.PowdersView = self.stacks.findChild(QtWidgets.QListView, 'Powders_listView')
    self.ProjectilesView = self.stacks.findChild(QtWidgets.QTableView, 'Projectiles_tableView')
    self.RangeView = self.stacks.findChild(QtWidgets.QTableView, 'Ranges_tableView')
    self.EnvironView = self.stacks.findChild(QtWidgets.QTableView, 'environ_tableView')
    self.QuerySelView = self.stacks.findChild(QtWidgets.QTableView, 'QuerySelector_tableView')
    self.HistView = self.stacks.findChild(QtWidgets.QTableView, 'History_tableView')



    self.RangeView.verticalHeader().hide()  # Hide the Vertical Header in RangeView

    self.ProjectilesView.verticalHeader().hide()  # Hide the Vertical Header in ProjectilesView
    self.ProjectilesView.setSelectionBehavior(QAbstractItemView.SelectRows)  # Select by entire row (not by individual cell)

    self.QuerySelView.verticalHeader().hide()  # Hide the Vertical Header in ProjectilesView
    self.QuerySelView.setSelectionBehavior(QAbstractItemView.SelectRows)  # Select by entire row (not by individual cell)

    self.RangeView.verticalHeader().hide()  # Hide the Vertical Header
    RangesHeader = self.RangeView.horizontalHeader()
    RangesHeader.setDefaultSectionSize(20)


    # identify lineEdit fields
    self.grainsLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'Settings_AddGrain_lineEdit')
    self.powdersLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'Settings_AddPowder_lineEdit')
    self.projosLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'Settings_AddProjectile_lineEdit')
    self.projosMassLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'ProjoMass_lineEdit')
    self.projosDragLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'DragCoef_lineEdit')
    self.ballisticianLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'Ballistician_lineEdit')
    self.grainsLabel = self.stacks.findChild(QtWidgets.QLabel, 'grainsLabel')

    # connect language selection comboBox (selection changed behavior) to mainwindow's dolanguageChangeRequest method
    self.langCombo.currentIndexChanged.connect(self.dolanguageChangeRequest)

    # set up QuerySelectorView (on History page)
    self.QuerySelView.setModel(self.QuerriesModel)
    self.QuerySelView.clicked.connect(self.doQuerySelect_clicked)

    # set up grainsView
    self.GrainsView.setModel(self.grainsModel)
    self.GrainsView.clicked.connect(self.on_grainslistView_clicked)

    # set up PowdersView
    self.PowdersView.setModel(self.powdersModel)
    self.PowdersView.clicked.connect(self.on_powderslistView_clicked)

    # set up ProjectilesView
    self.ProjectilesView.setModel(self.projectilesModel)
    self.ProjectilesView.clicked.connect(self.on_projoslistView_clicked)

    # set up RangeView
    self.RangeView.setModel(self.rangeModel)
    self.RangeView.clicked.connect(self.on_rangetableView_clicked)

    # set up BallisticiansView
    self.BallisticiansView.setModel(self.ballModel)
    self.BallisticiansView.clicked.connect(self.on_BallisticiansModel_clicked)

    # set up HistoryView
    self.HistView.setModel(self.HistoryModel)

    # connect Hardware LineEdits to Harware setting functions
    self.HWscreenEdit.editingFinished.connect(self.ScreensChanged)
    self.HWmagEdit.editingFinished.connect(self.MagChanged)
    self.TimeoutEdit.editingFinished.connect(self.TimoutChanged)
    self.HWchangeLabel = self.stacks.findChild(QtWidgets.QLabel,'HWchangeLabel')
    self.HWchangeLabel.setText("")
