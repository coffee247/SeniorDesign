from PyQt5 import QtWidgets
from PyQt5.QtCore import Qt
from PyQt5.QtWidgets import QAction, QHeaderView, QAbstractItemView, QDataWidgetMapper


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

    # Set up language support button
    self.langCombo = self.stacks.findChild(QtWidgets.QComboBox, 'combo')
    self.langCombo.currentIndexChanged.connect(self.langChange)

    # identify Settings Page LineEdits
    self.S1S2LineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'lineEdit_S1S2')
    self.S2TargLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'lineEdit_S2Targ')
    self.MidS2LineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'lineEdit_MidS2')
    self.MuzMidLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'lineEdit_MuzMid')
    self.SDeviceLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'lineEdit_SDevice')
    self.MDeviceLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'lineEdit_MDevice')
    self.TimeoutLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'lineEdit_Timeout')

    # identify Measure Page UI elements
    self.grainsComboBox = self.findChild(QtWidgets.QComboBox, 'Measure_Grains_comboBox')
    self.powdersComboBox = self.findChild(QtWidgets.QComboBox, 'Measure_Powder_comboBox')
    self.projoComboBox = self.findChild(QtWidgets.QComboBox, 'Measure_Projo_comboBox')
    self.standbyLabel = self.findChild(QtWidgets.QLabel, 'Standby_label_5')
    self.velocityDataLabel = self.findChild(QtWidgets.QLabel, 'VelocityDataLabel')
    self.shootButton = self.findChild(QtWidgets.QPushButton, 'FIRE_shot_pushButton')

    # identify History Page UI elements
    self.HistProjectilesComboBox = self.findChild(QtWidgets.QComboBox, 'History_Projo_comboBox')

    # link Models to Measure Page ComboBoxes
    self.grainsComboBox.setModel(self.grainsModel)
    self.projoComboBox.setModel(self.projectilesModel)
    self.powdersComboBox.setModel(self.powdersModel)
    self.HistProjectilesComboBox.setModel(self.projectilesModel)


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

    # connect measure page buttons
    self.shootButton.clicked.connect(self.shoot)


    # identify views
    self.GrainsView = self.stacks.findChild(QtWidgets.QListView, 'Grains_listView')
    self.PowdersView = self.stacks.findChild(QtWidgets.QListView, 'Powders_listView')
    self.ProjectilesView = self.stacks.findChild(QtWidgets.QTableView, 'Projectiles_tableView')
    self.RangeView = self.stacks.findChild(QtWidgets.QTableView, 'Ranges_tableView')
    self.EnvironView = self.stacks.findChild(QtWidgets.QTableView, 'environ_tableView')


    self.RangeView.verticalHeader().hide()  # Hide the Vertical Header in RangeView

    self.ProjectilesView.verticalHeader().hide()  # Hide the Vertical Header in ProjectilesView
    self.ProjectilesView.setSelectionBehavior(QAbstractItemView.SelectRows)  # Select by entire row (not by individual cell)


    self.RangeView.verticalHeader().hide()  # Hide the Vertical Header
    RangesHeader = self.RangeView.horizontalHeader()  #
    # RangesHeader.setSectionResizeMode(1, QHeaderView.Stretch)
    # # RangesHeader.setSectionResizeMode(2, QHeaderView.Stretch)
    # # RangesHeader.setSectionResizeMode(3, QHeaderView.Stretch)
    # # RangesHeader.setSectionResizeMode(4, QHeaderView.Stretch)
    RangesHeader.setDefaultSectionSize(20)


    # identify lineEdit fields
    self.grainsLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'Settings_AddGrain_lineEdit')
    self.powdersLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'Settings_AddPowder_lineEdit')
    self.projosLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'Settings_AddProjectile_lineEdit')
    self.projosMassLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'ProjoMass_lineEdit')
    self.projosDragLineEdit = self.stacks.findChild(QtWidgets.QLineEdit, 'DragCoef_lineEdit')

    mapper = QDataWidgetMapper(self)
    mapper.setModel(self.projectilesModel)
    mapper.addMapping(self.projosLineEdit, 0)
    mapper.addMapping(self.projosMassLineEdit, 1)
    mapper.addMapping(self.projosDragLineEdit, 2)
    # mapper.connect(self.projectilesModel.selectionModel(), SIGNAL("currentRowChanged(QModelIndex,QModelIndex)"),
    #         mapper, SLOT(setCurrentModelIndex(QModelIndex)))

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
