#!/usr/bin/env python3
import json
import random
import sys
import threading
import time

import pymysql
from PyQt5 import uic, QtWidgets, QtCore, Qt
from PyQt5.QtCore import QLocale, QLibraryInfo, QCoreApplication, QRegExp, Qt, QRegularExpression, QObject, QEvent
from PyQt5.QtGui import QIcon, QPixmap, QRegExpValidator
from PyQt5.QtSql import QSqlQueryModel
from PyQt5.QtWidgets import QAction, QMessageBox
from PyQt5.uic.Compiler.qtproxies import QtGui

import src.BIMSresources  # This file contains links to images used as icons and the HTML doc used as hime page.
import src.database as db  # This file contains code to connect to database and run SQL querries
import src.environs
import src.grains
import src.powders
import src.projectiles
import src.ballisticians
import src.ranges
import src.querries
import src.setupUI
import src.lowLevel
import src.fiberTypes
import src.manufacturers
import src.backing
import src.fiber_style
import src.sample_Types
import src.plies
import src.fabrics
import src.SortFilterProxyModel
import logging
from time import time



class MainWindow(QtWidgets.QMainWindow):

    '''Do system startup work (Declare variables, make connections, etc...) '''
    def __init__(self, parent=None):
        super(MainWindow, self).__init__(parent)

        ''' set up logging '''
        logging.basicConfig(filename='app.log', filemode='a', format='%(asctime)s - %(message)s')

        ''' set up Internationalization support '''
        with open('configs/lang_config.json', 'r') as lang_config:
            config = json.load(lang_config)
        self.translator = QtCore.QTranslator()
        if config["lang"] != "en":
            language = "Dupont_BIMS_{}.qm".format(config["lang"])
            self.translator.load(language)

        ''' install translator to the app '''
        app.installTranslator(self.translator)
        # app.removeTranslator(self.translator)

        ''' load the UI '''
        uic.loadUi("mainwindow.ui", self)

        '''pre-define row index variables to zeroth index. '''
        self.GrainsRow = 0
        self.ProjoRow = 0
        self.FabricRow = 0
        self.pliesRow = 0

        ''' set load and set Hardware (NiDAQ card) settings for sensors. '''
        with open('configs/HWconfig.json', 'r') as HWconfig:
            HWconfig = json.load(HWconfig)
        self.counter = src.lowLevel.Counter(HWconfig["HWscreen"], HWconfig["HWmag"], HWconfig["HWtimeout"])

        ''' Create a connection to the database '''
        self.dbase = db.database()  # Create an instance of the database as self.dbase

        '''call the  Connect method defined in database.py '''
        self.dbase.Connect()
        self.conn = self.dbase.getConn()

        ''' Create necessary instances of data models '''
        self.rangeModel = src.ranges.RangeModel()
        self.environModel = src.environs.EnvironModel()
        self.grainsModel = src.grains.GrainsModel()
        self.powdersModel = src.powders.PowdersModel()
        self.projectilesModel = src.projectiles.ProjectilesModel()
        self.ballModel = src.ballisticians.BallisticiansModel()
        self.QuerriesModel = src.querries.QuerriesModel()
        self.HistoryModel = QSqlQueryModel() # see src/basicsortfilterproxymodel.py for example of good idea
        self.fiberTypesModel = src.fiberTypes.FiberTypesModel()
        self.manufactModel = src.manufacturers.ManufacturersModel()
        self.backingModel = src.backing.BackingsModel()
        self.fabricStylesModel = src.fiber_style.fiber_styles_model()
        self.sample_types_Model = src.sample_Types.sample_types_model()
        self.pliesModel = src.plies.PliesModel()
        self.fabricsModel = src.fabrics.FabricsModel()

        ''' set up proxymodel for plies '''
        self.pliesProxyModel = src.SortFilterProxyModel.SortFilterProxyModel()
        self.pliesProxyModel.setDynamicSortFilter(True)
        self.pliesProxyModel.setSourceModel(self.pliesModel)
        self.pliesProxyModel.setFilterKeyColumn(4)


        src.setupUI.doSetup(self)  # connect ui elements to app varables and functions

        self.createMenus()  # just waht it says


        ''' add flag icons to language selection comboBox '''
        self.langCombo.addItem(QIcon('images/Flag-us.svg'),'English', 'en')
        self.langCombo.addItem(QIcon('images/Brazilian_flag.png'), 'Portuguese', 'eng-pt')

        # first load of data from database into models
        self.dbase.populateListView(self, "projo", "projectileType", 0, self.projectilesModel)
        self.dbase.populateListView(self, "threatGrain", "grain", 0, self.grainsModel)
        self.dbase.populateListView(self, "threatPowder", "powderType", 0, self.powdersModel)
        self.dbase.populateListView(self, "BimsRange", "RangeID", 0, self.rangeModel)
        self.dbase.populateListView(self, "ballisticians", "ballistician", 0, self.ballModel)
        self.dbase.populateListView(self, "querries", "Descr", 0, self.QuerriesModel)
        self.dbase.populateListView(self, "fiber_types", "fiberType", 0, self.fiberTypesModel)
        self.dbase.populateListView(self, 'manufacturers', 'Mfr_name', 0, self.manufactModel)
        self.dbase.populateListView(self, 'backings', 'backing', 0, self.backingModel)
        self.dbase.populateListView(self, 'fiber_styles', 'style_name', 0, self.fabricStylesModel)
        self.dbase.populateListView(self, 'sample_types', 'type_name', 0, self.sample_types_Model)
        self.dbase.populateListView(self, 'ply', 'ply_id', 0, self.pliesModel)
        self.dbase.populateListView(self, 'fabric', 'fabric_id', 0, self.fabricsModel)


        ''' Set up header for fabric plies table (fabric_plies_tableView) '''
        header = self.fabric_plies_tableView.horizontalHeader()
        header.setMaximumSectionSize(250)
        header.setSectionResizeMode(0, QtWidgets.QHeaderView.ResizeToContents)
        header.setSectionResizeMode(1, QtWidgets.QHeaderView.Stretch)
        header.setSectionResizeMode(2, QtWidgets.QHeaderView.Stretch)
        header.setSectionResizeMode(3, QtWidgets.QHeaderView.Stretch)



        db.getRanges(self)
        ''' Set up header for ranges table (RangeView) '''
        header = self.RangeView.horizontalHeader()
        header.setSectionResizeMode(1, QtWidgets.QHeaderView.ResizeToContents)
        header.setSectionResizeMode(2, QtWidgets.QHeaderView.Stretch)
        header.setSectionResizeMode(3, QtWidgets.QHeaderView.Stretch)
        header.setSectionResizeMode(4, QtWidgets.QHeaderView.Stretch)
        header.setSectionResizeMode(5, QtWidgets.QHeaderView.Stretch)

        db.getProjos(self)
        ''' Set up header for Projectiles table (ProjectilesView) '''
        projoheader = self.ProjectilesView.horizontalHeader()
        self.ProjectilesView.setColumnWidth(0,170)
        projoheader.setSectionResizeMode(1, QtWidgets.QHeaderView.Stretch)
        projoheader.setSectionResizeMode(2, QtWidgets.QHeaderView.Stretch)

        db.getQuerries(self)
        ''' Set up header for query table in history page (QuerySelView) '''
        querryHeader = self.QuerySelView.horizontalHeader()
        querryHeader.setSectionResizeMode(0, QtWidgets.QHeaderView.Stretch)
        querryHeader.setSectionResizeMode(1, QtWidgets.QHeaderView.Stretch)


        if config["lang"] != "en":
            self.langCombo.setCurrentIndex(1) # index 1 in langCombo is "English"
        else:
            self.langCombo.setCurrentIndex(0)  # index 0 in langCombo is "Portuguese"


        self.LoadLastUsedRangeData()
        self.langCombo.setFocus()

        self.stacks.setCurrentIndex(3)  # start up in "Settings" page

        # hook up entry validators
        self.setup_email_validator()
        self.setup_Integer_Valitator(self.grainsLineEdit)
        self.setup_Integer_Valitator(self.TimeoutEdit)
        self.setup_number_Validator(self.S1S2LineEdit)
        self.setup_number_Validator(self.S2TargLineEdit)
        self.setup_number_Validator(self.MidS2LineEdit)
        self.setup_number_Validator(self.MuzMidLineEdit)
        self.setup_number_Validator(self.projosMassLineEdit)
        self.setup_number_Validator(self.projosDragLineEdit)




    def setup_email_validator(self):
        emailEdit = self.client_email_lineEdit
        rx = QRegExp("\\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}\\b")
        rx.setCaseSensitivity(False)
        emailValidator = QRegExpValidator(rx, emailEdit)
        emailEdit.setValidator(emailValidator)

    def setup_Integer_Valitator(self, lineEdit_Object):
        rx = QRegExp("[0-9]*")
        intValidator = QRegExpValidator(rx, lineEdit_Object)
        lineEdit_Object.setValidator(intValidator)

    def setup_number_Validator(self, lineEdit_Object):
        rx = QRegExp("\d\d*[.]?\d*\d")
        numValidator = QRegExpValidator(rx, lineEdit_Object)
        lineEdit_Object.setValidator(numValidator)


    ''' left menuBar on-click behaviors '''
    def goHome(self):
        self.stacks.setCurrentIndex(0)
    def goHistory(self):
        self.stacks.setCurrentIndex(1)
    def goMeasure(self):
        self.stacks.setCurrentIndex(2)
    def goSettings(self):
        self.stacks.setCurrentIndex(3)
    def goClients(self):
        self.stacks.setCurrentIndex(4)
    def goProjects(self):
        self.existing_fabrics_comboBox.setCurrentIndex(-1)
        self.pliesProxyModel.setFilterRegExp('zxqGarbageKey_DoesNotExist_IsMadeUP')
        self.stacks.setCurrentIndex(5)
    def doQuit(self):
        sys.exit()



    ''' Respond to clicks in fabric_plies_tableView '''
    @QtCore.pyqtSlot(QtCore.QModelIndex)
    def on_plieslistView_clicked(self, index):
        self.PliesRow = index.row()  # create and set PliesRow attibute (a QModelIndex row)
        PliesRow = self.fabric_plies_tableView.selectedIndexes() # create local PliesRow (an integer value for row)
        descr = self.pliesProxyModel.itemData(PliesRow[0])[0]  # get value of plies decript for this row
        style = f"{self.pliesProxyModel.itemData(PliesRow[1])[0]}" # get value of plies style for this row
        weight = int(self.pliesProxyModel.itemData(PliesRow[2])[0]) # get value of plies type for this row
        type = f"{self.pliesProxyModel.itemData(PliesRow[3])[0]}" # get value of plies weight for this row
        ''' set UI elements ... (comboBox, SpinBox, LieEdit, and PlainTextEdit) values for plies '''
        self.Fabric_Style_ComboBox.setCurrentText(style)
        self.fiberType_comboBox.setCurrentText(type)
        self.ply_weight_spinBox.setValue(weight)
        self.ply_description_plainTextEdit.setPlainText(descr)

    ''' Respond to add ply button clicked '''
    def add_ply_button_clicked(self):
        plyFiberType = self.fiberType_comboBox.currentText()  # get current fiberType from comboBox selection.
        plyFabricStyle = self.Fabric_Style_ComboBox.currentText() # get current fabricStyle from comboBox selection.
        plyDescript = self.ply_description_plainTextEdit.toPlainText() # get plyDescription from plaintext field.
        plyWeight = self.ply_weight_spinBox.value()  # get current plyWeight from plyWeight spinBox.
        plyFabric_id = self.existing_fabrics_comboBox.currentText()  # get current fabricID from fabricID comboBox.
        if plyFiberType != "":
            ''' create the insert query '''
            myquery = f"insert into ply (ply_descript, fiber_style, fiber_type, ply_weight, fabric_id) " \
                      f"values ('{plyDescript}', '{plyFabricStyle}', '{plyFiberType}', {plyWeight}, '{plyFabric_id}')"
            try:
                self.dbase.db_doQuery(myquery)  # execute the insert query
                self.dbase.db_doQuery("Commit") # Success, so commit the change to the database
                ''' Query worked, so update the model '''
                self.pliesModel.addData(plyDescript, plyFabricStyle, plyFiberType, plyWeight, plyFabric_id)
            except pymysql.err.IntegrityError as e:
                    self.issueWarning(f"Oops\n\nTry again!")
            except pymysql.err.InternalError:
                pass
            finally:
                pass


    def on_add_client_clicked(self):
        ''' Validate email entry on Clients Window (filtered first by self.setup_email_validator())'''
        email = self.client_email_lineEdit.text()
        if len(email) == 0:
            pass
        else:
            if not(email.find("@") != -1 and email.find(".") != -1):
                self.issueWarning("Email address not properly formed")
                return 0
            else:
                ''' email is valid so continue '''
                self.issueWarning("Good Email")
        clientID = self.self.clientID_lineEdit.text()
        contactName = self.contact_name_lineEdit.text()
        contactPhone = self.contact_phone_lineEdit.text()






    ''' Respond to remove plies button clicked '''
    def on_remove_plies_button_clicked(self):
        if self.fabric_plies_tableView.selectedIndexes() != []:
            try:
                descValue = self.pliesModel.Plies[self.PliesRow]['ply_descript']
                weight = int(self.pliesModel.Plies[self.PliesRow]["ply_weight"])
                style = self.pliesModel.Plies[self.PliesRow]["fiber_style"]
                plytype = self.pliesModel.Plies[self.PliesRow]["fiber_type"]
                fabricID = self.pliesModel.Plies[self.PliesRow]["fabric_id"]
                myquery = f"delete from ply where ply_descript = '{descValue}' and fiber_style = '{style}'" \
                          f" and fiber_type = '{plytype}' and ply_weight = {weight} and fabric_id = '{fabricID}'"
                self.dbase.db_doQuery(myquery)
                self.dbase.db_doQuery("Commit")
                self.pliesModel.removeRows(self.PliesRow)
            except:
                self.issueWarning("Oops!  Something went wrong!")


    ''' Respond to fabric comboBox  selectionChange event'''
    def on_FabricChanged(self):
        data = ""
        myText = self.existing_fabrics_comboBox.currentText()
        myquery = f"select fabric_descript from fabric where fabric_id = '{myText}'"
        try:
            data = self.dbase.db_doQuery(myquery)
            data = f"{data[0][0]}"
        except:
            pass
        self.fabric_ID_lineEdit.setText(myText)
        if len(data) != 0:
            self.fabric_description_plainTextEdit.setPlainText(data)
        else:
            self.fabric_description_plainTextEdit.setPlainText('')
        syntax_nr = QRegExp.FixedString
        syntax = QRegExp.PatternSyntax(syntax_nr)
        caseSensitivity = Qt.CaseInsensitive

        regExp = QRegExp(self.existing_fabrics_comboBox.currentText(),
                         caseSensitivity, syntax)
        self.pliesProxyModel.setFilterRegExp(regExp)

    ''' Respond to add fabric pushbutton clicked event'''
    def on_add_fabrics_pushbutton_clicked(self):
        fabricID = self.fabric_ID_lineEdit.text()
        fabricDescr = self.fabric_description_plainTextEdit.toPlainText()
        myquery = f"insert into fabric (fabric_id, fabric_descript) values('{fabricID}', '{fabricDescr}')"
        try:
            self.dbase.db_doQuery(myquery)
            self.dbase.db_doQuery("Commit")
            self.fabricsModel.addData(fabricID, fabricDescr)
            self.fabric_ID_lineEdit.setText(f"{fabricID}")
            self.fabric_ID_lineEdit.setFocus()
        except pymysql.err.IntegrityError as e:
            if e.args[0] == 1062:
                self.issueWarning(f"Duplicate Entry for {fabricID} ---> (already exists.)\n\nTry again!")
                self.fabric_ID_lineEdit.setText("")
                self.fabric_ID_lineEdit.setFocus()
        except pymysql.err.InternalError:
            self.issueWarning("Opps, something went wrong!")



    ''' set up menuBar & menubar behaviors '''
    def createMenus(self):
        # Create the main menuBar menu items
        fileMenu = self.menuBar().addMenu("&File")

        # Populate File menu
        self.createAction("E&xit", fileMenu, self.close)



    def createAction(self, text, menu, slot):
        """ Helper function to save typing when populating menus
           with action.
        """
        action = QAction(text, self)
        menu.addAction(action)
        action.triggered.connect(slot)
        return action

    ''' Modal Warning Box '''
    def issueWarning(self, Message):
        QMessageBox.about(self, "Warning", Message)

    ''' Controllers for shot record '''
    def shoot(self):
        shot = threading.Thread(target=self.takeShot)
        self.velocityDataLabel.setText("")
        self.standbyLabel.setText("Waiting for shot!")
        shot.start()

    def takeShot(self):
        try:
            hwCounter = src.lowLevel.counter()
            rawVelTime, ShotClockTime = hwCounter.read()
            logging.warning(f"Shot detected at {ShotClockTime}... Raw data =  {rawVelTime}. <---")
        except:
            rawVelTime = random.random()
            from time import time
            ShotClockTime = time()
            self.velocityDataLabel.setText(f"Shot fired! {rawVelTime}")
            self.standbyLabel.setText("")
            logging.warning(f"Shot detected at {ShotClockTime}... Raw data =  {rawVelTime}. <---")


    def on_remove_Manufacturer_clicked(self):
        try:
            Value = self.manufactModel.Makers[self.ManufacturerRow]["Mfr_name"]
            myquery = f"delete from manufacturers where Mfr_name = '{Value}'"
            self.dbase.db_doQuery(myquery)
            self.dbase.db_doQuery("Commit")
            self.manufactModel.removeRows(self.ManufacturerRow)
            self.manufacturer_lineEdit.setText("")
        except:
            self.issueWarning("Oops!  Something went wrong!")

    def on_add_manufacturer_clicked(self):
        Manufacturer = self.manufacturer_lineEdit.text()
        if Manufacturer != "":
            myquery = f"insert into manufacturers (Mfr_name) values ('{Manufacturer}')"
            try:
                self.dbase.db_doQuery(myquery)
                self.dbase.db_doQuery("Commit")
                self.manufactModel.addData(Manufacturer)
                self.manufacturer_lineEdit.setText("")
            except pymysql.err.IntegrityError as e:
                if e.args[0] == 1062:
                    self.issueWarning(f"Duplicate Entry for {Manufacturer} ---> (already exists.)\n\nTry again!")
                    self.manufacturer_lineEdit.setText("")
                    self.manufacturer_lineEdit.setFocus()
            except pymysql.err.InternalError:
                pass
            finally:
                pass
            self.manufacturer_lineEdit.setText("")
        else:
            self.issueWarning("No value was entered for Powder")
            self.manufacturer_lineEdit.setText("")


    def on_manufacturer_listView_clicked(self, index):
        self.ManufacturerRow = index.row()
        manufacturer = self.manufactModel.itemData(index)
        self.manufacturer_lineEdit.setText(manufacturer[0])
        self.Manufacturer_comboBox.setCurrentIndex(self.ManufacturerRow)

    def on_sample_types_view_clicked(self, index):
        self.sampletypeRow = index.row()
        sampleType = self.sample_types_Model.itemData(index)
        self.sampTypes_lineEdit.setText(sampleType[0])
        self.sample_types_comboBox.setCurrentIndex(self.sampletypeRow)

    def on_remove_sampleTypes(self):
        try:
            Value = self.sample_types_Model.sample_types_objects_list[self.sampletypeRow]["type_name"]
            myquery = f"delete from sample_types where type_name = '{Value}'"
            self.dbase.db_doQuery(myquery)
            self.dbase.db_doQuery("Commit")
            self.sample_types_Model.removeRows(self.sampletypeRow)
            self.sampTypes_lineEdit.setText("")
        except:
            self.issueWarning("Oops!  Something went wrong!")

    def on_add_sampleTypes(self):
        SampleType = self.sampTypes_lineEdit.text()
        if SampleType != "":
            myquery = f"insert into sample_types (type_name) values ('{SampleType}')"
            try:
                self.dbase.db_doQuery(myquery)
                self.dbase.db_doQuery("Commit")
                self.sample_types_Model.addData(SampleType)
                self.sampTypes_lineEdit.setText("")
            except pymysql.err.IntegrityError as e:
                if e.args[0] == 1062:
                    self.issueWarning(f"Duplicate Entry for {SampleType} ---> (already exists.)\n\nTry again!")
                    self.sampTypes_lineEdit.setText("")
                    self.sampTypes_lineEdit.setFocus()
            except pymysql.err.InternalError:
                pass
            finally:
                pass
            self.sampTypes_lineEdit.setText("")
        else:
            self.issueWarning("No value was entered for Sample Type")
            self.sampTypes_lineEdit.setText("")


    @QtCore.pyqtSlot(QtCore.QModelIndex)
    def on_BackingView_clicked(self, index):
        self.BackingRow = index.row()
        self.backing_combobox.setCurrentIndex(self.BackingRow)
        val = self.backingModel.itemData(index)
        self.backing_lineEdit.setText(val[0])

    def add_backing(self):
        Backing = self.backing_lineEdit.text()
        if Backing != "":  # if value of Backing is not empty string
            ''' Create the SQL query to insert backing into backings table '''
            myquery = f"insert into backings (backing) values ('{Backing}')"
            try: # try to execute the query
                self.dbase.db_doQuery(myquery)
                self.dbase.db_doQuery("Commit") # query successfully executed (so commit it)
                self.backingModel.addData(Backing) # Now update the model
                self.backing_lineEdit.setText("") # and clear the backing lineEdit field
            except pymysql.err.IntegrityError as e:
                if e.args[0] == 1062:
                    self.issueWarning(f"Duplicate Entry for {Backing} ---> (already exists.)\n\nTry again!")
                    self.backing_lineEdit.setText("")
                    self.backing_lineEdit.setFocus()
            except pymysql.err.InternalError:
                pass
            finally:
                pass
            self.backing_lineEdit.setText("")
        else:
            self.issueWarning("No value was entered for Backing")
            self.backing_lineEdit.setText("")

    def remove_backing(self):
        try: # try to execute the following
            # Get the value of the backing column from selected row in backingModel
            Value = self.backingModel.backing_objects_list[self.BackingRow]["backing"]
            # create SQL query to delet the selected  backing from the backings table
            myquery = f"delete from backings where backing = '{Value}'"
            ''' Execute the SQL delete query '''
            self.dbase.db_doQuery(myquery)
            self.dbase.db_doQuery("Commit") # successful query execution, so commit.
            ''' update the model by removing the row '''
            self.backingModel.removeRows(self.BackingRow)
            self.backing_lineEdit.setText("")
        except:
            self.issueWarning("Oops!  Something went wrong!")




    def saveShotData(self):
        pass

    '''Controllers for NI-DAQ Hardware settings'''
    def LoadLastUsedRangeData(self):
        with open('configs/HWconfig.json', 'r') as HWconfig:
            data = json.load(HWconfig)
            self.HWscreenEdit.setText(data['HWscreen'])
            self.TimeoutEdit.setText(data['HWtimeout'])
            self.HWmagEdit.setText(data['HWmag'])
    def ScreensChanged(self):
        oldsetting = self.counter.counterStr
        self.counter.counterStr = self.HWscreenEdit.text()  # change the value (in the counter object) immediately
        with open('configs/HWconfig.json', 'r') as HWconfig:
            data = json.load(HWconfig)
            data['HWscreen'] = self.counter.counterStr  # memorialize the change in the json file
        with open('configs/HWconfig.json', 'w') as HWconfig:
            HWconfig.write(json.dumps(data))  # write the json file back to disk
            if oldsetting != self.counter.counterStr:
                self.HWchangeLabel.setText(
                    "Screens Device and type changed\nPrev value {}.  New value: {}".format(oldsetting,
                                                                                            self.counter.counterStr))
                logging.warning(
                    "Screens Device and type changed ... Prev value {}.  New value: {}".format(oldsetting,
                                                                                               self.counter.counterStr))
    def MagChanged(self):
        oldsetting = self.counter.magStr
        self.counter.magStr = self.HWmagEdit.text()  # change the value (in the counter object) immediately
        with open('configs/HWconfig.json', 'r') as HWconfig:
            data = json.load(HWconfig)
            data['HWmag'] = self.counter.magStr  # memorialize the change in the json file
        with open('configs/HWconfig.json', 'w') as HWconfig:
            HWconfig.write(json.dumps(data))  # write the json file back to disk
            if oldsetting != self.counter.magStr:
                self.HWchangeLabel.setText(
                    "Magnet Device and type changed\nPrev value {}.  New value: {}".format(oldsetting,
                                                                                           self.counter.magStr))
                logging.warning(
                    "Magnet Device and type changed ... Prev value {}.  New value: {}".format(oldsetting,
                                                                                              self.counter.magStr))
    def TimoutChanged(self):
        oldsetting = self.counter.timeoutFloat
        self.counter.timeoutFloat = self.TimeoutEdit.text()  # change the value (in the counter object) immediately
        with open('configs/HWconfig.json', 'r') as HWconfig:
            data = json.load(HWconfig)
            data['HWtimeout'] = self.counter.timeoutFloat  # memorialize the change in the json file
        with open('configs/HWconfig.json', 'w') as HWconfig:
            HWconfig.write(json.dumps(data))  # write the json file back to disk
            if oldsetting != self.counter.timeoutFloat:
                self.HWchangeLabel.setText(
                    "Hardware Timeout changed\nPrev value {}.  New value: {}".format(oldsetting,
                                                                                     self.counter.timeoutFloat))
                logging.warning("Hardware Timeout changed ... Prev value {}.  New value: {}".format(oldsetting,
                                                                                                    self.counter.timeoutFloat))


    ''' Manage Projectiles '''

    # a function to clear all projectiles lineEdit fields
    def clearProjoEdits(self):
        self.projosLineEdit.setText("")
        self.projosMassLineEdit.setText("")
        self.projosDragLineEdit.setText("")
        self.projosLineEdit.setFocus()  # put the cursor back in the first projosLineEdit field.


    # projectiles populate form elements on projo ListView row clicked
    @QtCore.pyqtSlot(QtCore.QModelIndex)
    def populateProjoForm(self, index):
        self.ProjoRow = index.row()
        self.projosLineEdit.setFocus()

    # projectiles add projo button clicked method
    def addProjos(self):
        projoVal = self.projosLineEdit.text()
        try:
            projoMass = float(self.projosMassLineEdit.text())
            projoDrag = float(self.projosDragLineEdit.text())
        except:
            self.issueWarning("Mass and Drag must both be floating point numerals. EX: 0.03")
            return 0
        if projoVal != "":
            myquery = f"insert into projo (projectileType, projo_mass, projo_DragCoef) values ('{projoVal}', '{projoMass}', '{projoDrag}')"
            try:
                self.dbase.db_doQuery(myquery)
                self.dbase.db_doQuery("Commit")
                self.projectilesModel.addData(projoVal, projoMass, projoDrag)
            except pymysql.err.IntegrityError as e:
                if e.args[0] == 1062:
                    self.issueWarning(f"Duplicate Entry for {projoVal} ---> (already exists.)\n\nTry again!")
            except pymysql.err.InternalError:
                pass
            finally:
                pass
            self.clearProjoEdits()
        else:
            self.issueWarning("No value was entered for Projectile")
            self.projosLineEdit.setFocus()

    # a function to clear all projectiles lineEdit fields
    def clearProjoEdits(self):
        self.projosLineEdit.setText("")
        self.projosMassLineEdit.setText("")
        self.projosDragLineEdit.setText("")
        self.projosLineEdit.setFocus()  # put the cursor back in the first projosLineEdit field.

    # projectiles ListView click behavior
    @QtCore.pyqtSlot(QtCore.QModelIndex)
    def on_projoslistView_clicked(self, index):
        self.ProjoRowInt = index.row()  # set local ProjoRow value (an integer)# set mainWindow's ProjoRow value (A QmodelIndex)
        ProjoRow = self.ProjectilesView.selectedIndexes() # set mainWindow's ProjoRow value (A QmodelIndex)
        ''' Read values from the model '''
        self.Projo = self.projectilesModel.itemData(ProjoRow[0])
        self.Mass = self.projectilesModel.itemData(ProjoRow[1])
        self.Drag = self.projectilesModel.itemData(ProjoRow[2])
        ''' Use the values just read to set value (state) of corresponding UI element '''
        self.projosLineEdit.setText(self.Projo[0])
        self.projosMassLineEdit.setText(self.Mass[0])
        self.projosDragLineEdit.setText(self.Drag[0])
        ''' Set the index of the projoComboBox to the index of the clicked row '''
        self.projoComboBox.setCurrentIndex(ProjoRow[0].row())



    # projectiles handle editButton clicked
    def editProjos(self):
        projoVal = self.projosLineEdit.text()
        try:
            projoMass = float(self.projosMassLineEdit.text())
            projoDrag = float(self.projosDragLineEdit.text())
        except:
            self.issueWarning("Mass and Drag must both be floating point numerals. EX: 0.03")
            return 0
        self.removeProjo()
        self.projosLineEdit.setText(projoVal)
        self.projosMassLineEdit.setText(str(projoMass))
        self.projosDragLineEdit.setText(str(projoDrag))
        self.addProjos()

    # projectiles handle remove button clicked
    def removeProjo(self):
        if self.ProjectilesView.selectedIndexes() != [] and self.projosLineEdit.text() != "":
            Value = self.projectilesModel.Projos[self.ProjoRowInt]["projectileType"]
            myquery = f"delete from projo where projectileType = '{Value}'"
            try:
                self.dbase.db_doQuery(myquery)
                self.dbase.db_doQuery("Commit")
                self.projectilesModel.removeRows(self.ProjoRowInt)
                self.clearProjoEdits()
            except:
                self.issueWarning("Oops, something went wrong during the delete operation!")

    @QtCore.pyqtSlot(QtCore.QModelIndex)
    def on_fiber_Types_listView_clicked(self, index):
        self.fiberTypeRow = index.row()
        type = self.fiberTypesModel.itemData(index)
        self.fiberType_lineEdit.setText(type[0])
        self.fiberType_comboBox.setCurrentIndex(self.fiberTypeRow)

    def addFiber(self):
        fiberVal = self.fiberType_lineEdit.text().title()
        if fiberVal != "":
            myquery = f"insert into fiber_types (fiberType) values ('{fiberVal}')"
            try:
                self.dbase.db_doQuery(myquery)
                self.dbase.db_doQuery("Commit")
                self.fiberTypesModel.addData(fiberVal)
                self.fiberType_lineEdit.setText("")
            except pymysql.err.IntegrityError as e:
                if e.args[0] == 1062:
                    self.issueWarning(
                        f"Duplicate Entry for {fiberVal} ---> (already exists.)\n\nTry again!")
                    self.fiberType_lineEdit.setText("")
                    self.fiberType_lineEdit.setFocus()
            except pymysql.err.InternalError:
                pass
            finally:
                pass
        else:
            self.issueWarning("No value was entered for Fiber Type")
            self.fiberType_lineEdit.setFocus()

    def removeFiber(self):
        Value = self.fiberTypesModel.fiberType_objects_list[self.fiberTypeRow]["fiberType"]
        myquery = f"delete from fiber_types where fiberType = '{Value}'"
        self.dbase.db_doQuery(myquery)
        self.dbase.db_doQuery("Commit")
        self.fiberTypesModel.removeRows(self.fiberTypeRow)
        self.fiberType_lineEdit.setText("")

    @QtCore.pyqtSlot(QtCore.QModelIndex)
    def doQuerySelect_clicked(self, index):
        self.QueryRow = index.row()
        QueryRow = self.QuerySelView.selectedIndexes()
        itemData = self.QuerriesModel.itemData(QueryRow[1])
        self.QuerryTextLabel.setText(itemData[0])

    def DoHistoryQuery(self):
        ''' toDo set up QSortFilterProxyModel for history navigation '''
        # HistQuery = self.QuerryTextLabel.text()
        # text = ""
        # if HistQuery != "":
        #      try:
        #          data = self.dbase.db_doQuery(HistQuery)
        #          for a in range(len(data)):
        #             text = text + "\n" +(str((data[a])))
        #          self.TempResult.setText(text)
        #      except:
        #          pass
        #      finally:
        #         try:
        #             self.conn = self.dbase.getConn()
        #             with self.conn:
        #                 self.HistoryModel.setQuery(HistQuery)
        #                 if self.HistoryModel.lastError().isValid():
        #                     print(self.HistoryModel.lastError())
        #                 self.HistView.show()
        #         except:
        #             pass
        pass





    def addPowders(self):
        powderVal = self.powdersLineEdit.text()
        if powderVal != "":
            myquery = f"insert into threatPowder (powderType) values ('{powderVal}')"
            try:
                self.dbase.db_doQuery(myquery)
                self.dbase.db_doQuery("Commit")
                self.powdersModel.addData(powderVal)
                self.powdersLineEdit.setText("")
            except pymysql.err.IntegrityError as e:
                if e.args[0] == 1062:
                    self.issueWarning(f"Duplicate Entry for {powderVal} ---> (already exists.)\n\nTry again!")
                    self.projosLineEdit.setText("")
                    self.projosLineEdit.seytFocus()
            except pymysql.err.InternalError:
                pass
            finally:
                pass
            self.powdersLineEdit.setText("")
        else:
            self.issueWarning("No value was entered for Powder")
            self.powdersLineEdit.setText("")

    @QtCore.pyqtSlot(QtCore.QModelIndex)
    def on_powderslistView_clicked(self, index):
        self.PowderRow = index.row()
        powder = self.powdersModel.itemData(index)
        self.powdersLineEdit.setText(powder[0])
        self.powdersComboBox.setCurrentIndex(self.PowderRow)


    def removePowders(self):
        Value = self.powdersModel.Powders[self.PowderRow]["powderType"]
        myquery = f"delete from threatPowder where powderType = '{Value}'"
        self.dbase.db_doQuery(myquery)
        self.dbase.db_doQuery("Commit")
        self.powdersModel.removeRows(self.PowderRow)
        self.powdersLineEdit.setText("")



    def addGrains(self):
        try:
            grainsVal = int(self.grainsLineEdit.text())
        except:
            self.issueWarning("Grains must be an integer value")
            return 0
        if grainsVal != "":
            myquery = f"insert into threatGrain (grain) values ({grainsVal})"
            try:
                self.dbase.db_doQuery(myquery)
                self.dbase.db_doQuery("Commit")
                self.grainsModel.addData(grainsVal)
                self.grainsLineEdit.setText("")
            except pymysql.err.IntegrityError as e:
                if e.args[0] == 1062:
                    self.issueWarning(
                        f"Duplicate Entry for {grainsVal} ---> (already exists.)\n\nTry again!")
                    self.grainsLineEdit.setText("")
                    self.grainsLineEdit.setFocus()
            except pymysql.err.InternalError:
                pass
            finally:
                pass
        else:
            self.issueWarning("No value was entered for Grains")
            self.grainsLineEdit.setFocus()

    @QtCore.pyqtSlot(QtCore.QModelIndex)
    def on_grainslistView_clicked(self, index):
        self.GrainsRow = index.row()
        grains = self.grainsModel.itemData(index)
        self.grainsLineEdit.setText(grains[0])
        # self.grainsLabel.setText(grains[0])
        self.grainsComboBox.setCurrentIndex(self.GrainsRow)

    def removeGrains(self):
        Value = int(self.grainsModel.Grains[self.GrainsRow]["grainsValue"])
        myquery = f"delete from threatGrain where grain = {Value}"
        self.dbase.db_doQuery(myquery)
        self.dbase.db_doQuery("Commit")
        self.grainsModel.removeRows(self.GrainsRow)
        self.grainsLineEdit.setText("")

    def on_fabric_styles_clicked(self, index):
        self.fabricStyleRow = index.row()
        style = self.fabricStylesModel.itemData(index)
        self.fabric_styles_lineEdit.setText(style[0])
        self.Fabric_Style_ComboBox.setCurrentIndex(self.fabricStyleRow)

    def on_add_fabric_style(self):
        fabricStyleVal = self.fabric_styles_lineEdit.text()
        if fabricStyleVal != "":
            myquery = f"insert into fiber_styles (style_name) values ('{fabricStyleVal}')"
            try:
                self.dbase.db_doQuery(myquery)
                self.dbase.db_doQuery("Commit")
                self.fabricStylesModel.addData(fabricStyleVal)
                self.fabric_styles_lineEdit.setText("")
            except pymysql.err.IntegrityError as e:
                if e.args[0] == 1062:
                    self.issueWarning(
                        f"Duplicate Entry for {fabricStyleVal} ---> (already exists.)\n\nTry again!")
                    self.fabric_styles_lineEdit.setText("")
                    self.fabric_styles_lineEdit.setFocus()
            except pymysql.err.InternalError:
                pass
            finally:
                pass
        else:
            self.issueWarning("No value was entered for Fabric Style")
            self.fabric_styles_lineEdit.setFocus()


    def on_remove_fabric_style(self):
        Value = self.fabricStylesModel.fiber_styles_list[self.fabricStyleRow]["style_name"]
        myquery = f"delete from fiber_styles where style_name = '{Value}'"
        self.dbase.db_doQuery(myquery)
        try:
            self.dbase.db_doQuery("Commit")
            self.fabricStylesModel.removeRows(self.fabricStyleRow)
            self.fabric_styles_lineEdit.setText("")
        except:
            pass



    @QtCore.pyqtSlot(QtCore.QModelIndex)
    def on_BallisticianView_clicked(self, index):
        self.BallisticianRow = index.row()
        self.ballisticianComboBox.setCurrentIndex(self.BallisticianRow)
        val = self.ballModel.itemData(index)
        self.ballisticianLineEdit.setText(val[0])

    def removeBallistician(self):
        row = self.BallisticianRow
        Value = self.ballModel.BallisticiansList[self.BallisticianRow]["ballistician"]
        myquery = f"delete from ballisticians where ballistician = '{Value}'"
        self.dbase.db_doQuery(myquery)
        self.dbase.db_doQuery("Commit")
        self.ballModel.removeRows(self.BallisticianRow)
        self.ballisticianLineEdit.setText("")

    def addBallistician(self):
        ballVal = self.ballisticianLineEdit.text()
        if ballVal != "":
            myquery = f"insert into ballisticians (ballistician) values ('{ballVal}')"
            try:
                self.dbase.db_doQuery(myquery)
                self.dbase.db_doQuery("Commit")
                self.ballModel.addData(ballVal)
                self.ballisticianLineEdit.setText("")
            except pymysql.err.IntegrityError as e:
                if e.args[0] == 1062:
                    self.issueWarning(
                        f"Duplicate Entry for {ballVal} ---> (already exists.)\n\nTry again!")
                    self.ballisticianLineEdit.setText("")
                    self.ballisticianLineEdit.setFocus()
            except pymysql.err.InternalError:
                pass
            finally:
                pass
        else:
            self.issueWarning("No value was entered for Ballisticians")
            self.ballisticianLineEdit.setFocus()




    def saveRange(self):
        try:
            self.S1S2 = self.S1S2LineEdit.text()
            self.S2Targ = self.S2TargLineEdit.text()
            self.MidS2 = self.MidS2LineEdit.text()
            self.MuzMid = self.MuzMidLineEdit.text()
            myquery = f"insert into BimsRange (scrn1_to_scrn2, scrn2_to_target, mid_to_scrn2, muz_to_mid) " \
                      f"values ({self.S1S2},{self.S2Targ},{self.MidS2},{self.MuzMid})"
            try:
                self.dbase.db_doQuery(myquery)
                self.dbase.db_doQuery("Commit")
                mquery = f"Select RangeID, dateCreated from BimsRange where dateCreated = (Select max(dateCreated) from BimsRange)"
                try:
                    data = self.dbase.db_doQuery(mquery)
                    ID = data[0][0]
                    created = data[0][1]
                    self.rangeModel.addData(ID,created,self.S1S2, self.S2Targ, self.MidS2, self.MuzMid)
                except:
                    pass
            except pymysql.err.IntegrityError as e:
                if e.args[0] == 1062:
                    pass
            except pymysql.err.InternalError:
                pass
            finally:
                pass
        except:
            self.issueWarning("Please enter a value for EACH range field")

    def loadDefaultRangeVals(self):
        with open('configs/HWconfig.json', 'r') as HWconfig:
            data = json.load(HWconfig)
        self.S1S2LineEdit.setText(self.S1S2[0])
        self.S2TargLineEdit.setText(self.S2Targ[0])
        self.MidS2LineEdit.setText(self.MidS2[0])
        self.MuzMidLineEdit.setText(self.MuzMid[0])



    @QtCore.pyqtSlot(QtCore.QModelIndex)
    def on_rangetableView_clicked(self, index):
        ''' Set value of mainWindow's RangeRow (A QModelIndex) to clicked index'''
        self.RangeRow = self.RangeView.selectedIndexes()

        ''' Use values from rangemodel row (selected) to set  corresponding UI values '''
        S1S2 = self.rangeModel.itemData(self.RangeRow[2])
        S2Targ = self.rangeModel.itemData(self.RangeRow[3])
        MidS2 = self.rangeModel.itemData(self.RangeRow[4])
        MuzMid = self.rangeModel.itemData(self.RangeRow[5])
        self.S1S2LineEdit.setText(S1S2[0])
        self.S2TargLineEdit.setText(S2Targ[0])
        self.MidS2LineEdit.setText(MidS2[0])
        self.MuzMidLineEdit.setText(MuzMid[0])


    def dolanguageChangeRequest(self, index):
        if index == 0:
            langStr = "en"
        else:
            langStr = "pt"
        with open('configs/lang_config.json', 'r') as config:
            data = json.load(config)
            data['lang'] = langStr  # memorialize the change in the json file
        with open('configs/lang_config.json', 'w') as config:
            config.write(json.dumps(data))  # write the json file back to disk


app = QtWidgets.QApplication(sys.argv)

window = MainWindow()

window.show()

app.exec_()

