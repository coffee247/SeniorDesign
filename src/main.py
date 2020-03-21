#!/usr/bin/env python3
import json
import random
import sys

import pymysql
from PyQt5 import uic, QtWidgets, QtCore
from PyQt5.QtCore import QLocale, QLibraryInfo, QCoreApplication
from PyQt5.QtGui import QIcon
from PyQt5.QtWidgets import QAction, QMessageBox
from PyQt5.uic.Compiler.qtproxies import QtGui

import src.BIMSresources
import src.database as db
import src.environs
import src.grains
import src.objects
import src.powders
import src.projectiles
import src.ballisticians
import src.ranges
import src.setupUI
import src.lowLevel
import logging


class MainWindow(QtWidgets.QMainWindow):

    def __init__(self, parent=None):
        super(MainWindow, self).__init__(parent)

        # set up logging
        logging.basicConfig(filename='app.log', filemode='a', format='%(asctime)s - %(message)s')

        # Internationalization support
        config = json.loads(open('configs/lang_config.json').read())  # load database connection parameters from config.json
        self.translator = QtCore.QTranslator()
        if config["lang"] != "en":
            language = "Dupont_BIMS_{}.qm".format(config["lang"])
            self.translator.load(language)

        # install translator to the app
        app.installTranslator(self.translator)
        # app.removeTranslator(self.translator)

        uic.loadUi("mainwindow.ui", self)
        self.GrainsRow = 0
        self.ProjoRow = 0

        HWconfig = json.loads(open('configs/HWconfig.json').read())  # load database connection parameters from config.json
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


        src.setupUI.doSetup(self)
        self.createMenus()



        self.langCombo.addItem(QIcon('images/Flag-us.svg'),'English', 'en')
        self.langCombo.addItem(QIcon('images/Brazilian_flag.png'), 'Portuguese', 'eng-pt')
        # print(self.langCombo.currentText(), self.langCombo.currentData())

        self.dbase.populateListView(self, "projo", "projectileType", 0, self.projectilesModel)
        self.dbase.populateListView(self, "threatGrain", "grain", 0, self.grainsModel)
        self.dbase.populateListView(self, "threatPowder", "powderType", 0, self.powdersModel)
        self.dbase.populateListView(self, "BimsRange", "RangeID", 0, self.rangeModel)
        self.dbase.populateListView(self, "ballisticians", "ballistician", 0, self.ballModel)

        db.getRanges(self)
        header = self.RangeView.horizontalHeader()
        header.setSectionResizeMode(1, QtWidgets.QHeaderView.ResizeToContents)
        header.setSectionResizeMode(2, QtWidgets.QHeaderView.ResizeToContents)
        header.setSectionResizeMode(3, QtWidgets.QHeaderView.ResizeToContents)
        header.setSectionResizeMode(4, QtWidgets.QHeaderView.ResizeToContents)
        header.setSectionResizeMode(5, QtWidgets.QHeaderView.Stretch)
        db.getEnvirons(self)

        db.getProjos(self)
        projoheader = self.ProjectilesView.horizontalHeader()
        self.ProjectilesView.setColumnWidth(0,150)
        projoheader.setSectionResizeMode(1, QtWidgets.QHeaderView.ResizeToContents)
        projoheader.setSectionResizeMode(2, QtWidgets.QHeaderView.Stretch)

        if config["lang"] != "en":
            self.langCombo.setCurrentIndex(1)
        else:
            self.langCombo.setCurrentIndex(0)

        self.LoadLastUsedRangeData()
        self.langCombo.setFocus()


    def shoot(self):
        # shot = threading.Thread(target=self.takeShot)
        # shot.start()
        # self.velocityDataLabel.setText("")
        # self.standbyLabel.setText("Waiting for shot!")
        self.takeShot()

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
                self.HWchangeLabel.setText("Screens Device and type changed\nPrev value {}.  New value: {}".format(oldsetting, self.counter.counterStr))
                logging.warning("Screens Device and type changed ... Prev value {}.  New value: {}".format(oldsetting, self.counter.counterStr))

    def MagChanged(self):
        oldsetting = self.counter.magStr
        self.counter.magStr = self.HWmagEdit.text()  # change the value (in the counter object) immediately
        with open('configs/HWconfig.json', 'r') as HWconfig:
            data = json.load(HWconfig)
            data['HWmag'] = self.counter.magStr  # memorialize the change in the json file
        with open('configs/HWconfig.json', 'w') as HWconfig:
            HWconfig.write(json.dumps(data))  # write the json file back to disk
            if oldsetting != self.counter.magStr:
                self.HWchangeLabel.setText("Magnet Device and type changed\nPrev value {}.  New value: {}".format(oldsetting, self.counter.magStr))
                logging.warning("Magnet Device and type changed ... Prev value {}.  New value: {}".format(oldsetting,
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
                self.HWchangeLabel.setText("Hardware Timeout changed\nPrev value {}.  New value: {}".format(oldsetting, self.counter.timeoutFloat))
                logging.warning("Hardware Timeout changed ... Prev value {}.  New value: {}".format(oldsetting,
                                                                                                      self.counter.timeoutFloat))

    def takeShot(self):
#
 #       fps = (36 / 12) / counter.read()
        fps = random.random()
        self.velocityDataLabel.setText(f"Shot fired! {fps}")
        self.standbyLabel.setText("")

    def goHome(self):
        self.stacks.setCurrentIndex(0)

    def goHistory(self):
        self.stacks.setCurrentIndex(1)

    def goMeasure(self):
        self.stacks.setCurrentIndex(2)

    def goSettings(self):
        self.stacks.setCurrentIndex(3)

    def goProjects(self):
        self.stacks.setCurrentIndex(4)

    def doQuit(self):
        sys.exit()

    # def langChange(self, index):
    #     if self.langCombo.currentData() == "en":
    #         app = QtGui.QApplication.instance()
    #         app.removeTranslator(self.translator)
    #         self.retranslateUi(MainWindow())
    #     else:
    #         app = QtGui.QApplication.instance()
    #         app.installTranslator(self.translator)
    #         self.retranslateUi(MainWindow())

    # set up the application menuBar

    def createMenus(self):
        # Create the main menuBar menu items
        fileMenu = self.menuBar().addMenu("&File")

        # Populate File menu
        self.createAction("E&xit", fileMenu, self.close)

    # set up menuBar behavior
    def createAction(self, text, menu, slot):
        """ Helper function to save typing when populating menus
           with action.
        """
        action = QAction(text, self)
        menu.addAction(action)
        action.triggered.connect(slot)
        return action

    # Modal Warning Box
    def issueWarning(self, Message):
        QMessageBox.about(self, "Warning", Message)

    def addProjos(self):
        projoVal = self.projosLineEdit.text()
        projoMass = self.projosMassLineEdit.text()
        projoDrag = self.projosDragLineEdit.text()
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

    def clearProjoEdits(self):
        self.projosLineEdit.setText("")
        self.projosMassLineEdit.setText("")
        self.projosDragLineEdit.setText("")
        self.projosLineEdit.setFocus()

    @QtCore.pyqtSlot(QtCore.QModelIndex)
    def on_projoslistView_clicked(self, index):
        self.ProjoRow = index.row()
        ProjoRow = self.ProjectilesView.selectedIndexes()
        self.Projo = self.projectilesModel.itemData(ProjoRow[0])
        self.Mass = self.projectilesModel.itemData(ProjoRow[1])
        self.Drag = self.projectilesModel.itemData(ProjoRow[2])
        self.projosLineEdit.setText(self.Projo[0])
        self.projosMassLineEdit.setText(self.Mass[0])
        self.projosDragLineEdit.setText(self.Drag[0])
        self.projoComboBox.setCurrentIndex(ProjoRow[0].row())

    @QtCore.pyqtSlot(QtCore.QModelIndex)
    def populateProjoForm(self, index):
        self.ProjoRow = index.row()
        self.projosLineEdit.setFocus()

    def editProjos(self):
        # ToDo implement EditPRojos
        projoVal = self.projosLineEdit.text()
        projoMass = self.projosMassLineEdit.text()
        projoDrag = self.projosDragLineEdit.text()
        self.removeProjo()
        self.projosLineEdit.setText(projoVal)
        self.projosMassLineEdit.setText(projoMass)
        self.projosDragLineEdit.setText(projoDrag)
        self.addProjos()

    def removeProjo(self):
        if self.ProjectilesView.selectedIndexes() != [] and self.projosLineEdit.text() != "":
            Value = self.projectilesModel.Projos[self.ProjoRow]["projectileType"]
            myquery = f"delete from projo where projectileType = '{Value}'"
            self.dbase.db_doQuery(myquery)
            self.dbase.db_doQuery("Commit")
            self.projectilesModel.removeRows(self.ProjoRow)
            self.clearProjoEdits()



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
        grainsVal = self.grainsLineEdit.text()
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
            self.issueWarning("No value was entered for Ballisticians")
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






    @QtCore.pyqtSlot(QtCore.QModelIndex)
    def on_BallisticiansModel_clicked(self, index):
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
        S1S2 = self.S1S2LineEdit.text()
        S2Targ = self.S2TargLineEdit.text()
        MidS2 = self.MidS2LineEdit.text()
        MuzMid = self.MuzMidLineEdit.text()
        myquery = f"insert into BimsRange (scrn1_to_scrn2, scrn2_to_target, mid_to_scrn2, muz_to_mid) " \
                  f"values ({S1S2},{S2Targ},{MidS2},{MuzMid})"
        try:
            self.dbase.db_doQuery(myquery)
            self.dbase.db_doQuery("Commit")
            mquery = f"Select RangeID, dateCreated from BimsRange where dateCreated = (Select max(dateCreated) from BimsRange)"
            try:
                data = self.dbase.db_doQuery(mquery)
                ID = data[0][0]
                created = data[0][1]
                self.rangeModel.addData(ID,created,S1S2, S2Targ, MidS2, MuzMid)
            except:
                pass
            # self.grainsModel.addData(ballisticianToAdd)
            # self.grainsLineEdit.setText("")
        except pymysql.err.IntegrityError as e:
            if e.args[0] == 1062:
                pass
                # self.issueWarning(
                #     f"Duplicate Entry for {ballisticianToAdd} ---> (already exists.)\n\nTry again!")
                # self.grainsLineEdit.setText("")
                # self.grainsLineEdit.setFocus()
        except pymysql.err.InternalError:
            pass
        finally:
            pass





    @QtCore.pyqtSlot(QtCore.QModelIndex)
    def on_rangetableView_clicked(self, index):
        self.RangeRow = self.RangeView.selectedIndexes()
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

