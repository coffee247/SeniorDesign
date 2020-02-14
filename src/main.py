#!/usr/bin/env python3
import random
import sys

import pymysql
from PyQt5 import uic, QtWidgets, QtCore
from PyQt5.QtWidgets import QAction, QMessageBox

import src.BIMSresources
import src.database as db
import src.environs
import src.grains
import src.objects
import src.powders
import src.projectiles
import src.ranges
import src.setupUI


class MainWindow(QtWidgets.QMainWindow):

    def __init__(self):
        super(MainWindow, self).__init__()
        uic.loadUi("mainwindow.ui", self)
        self.GrainsRow = 0
        self.ProjoRow = 0

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


        src.setupUI.doSetup(self)
        self.createMenus()

        self.dbase.populateListView(self, "projo", "projectileType", 0, self.projectilesModel)
        self.dbase.populateListView(self, "threatGrain", "grain", 0, self.grainsModel)
        self.dbase.populateListView(self, "threatPowder", "powderType", 0, self.powdersModel)
        self.dbase.populateListView(self, "BimsRange", "RangeID", 0, self. rangeModel)

        db.getRanges(self)
        header = self.RangeView.horizontalHeader()
        header.setSectionResizeMode(1, QtWidgets.QHeaderView.ResizeToContents)
        header.setSectionResizeMode(2, QtWidgets.QHeaderView.ResizeToContents)
        header.setSectionResizeMode(3, QtWidgets.QHeaderView.ResizeToContents)
        header.setSectionResizeMode(2, QtWidgets.QHeaderView.ResizeToContents)
        header.setSectionResizeMode(3, QtWidgets.QHeaderView.Stretch)
        db.getEnvirons(self)

    def shoot(self):
        # shot = threading.Thread(target=self.takeShot)
        # shot.start()
        # self.velocityDataLabel.setText("")
        # self.standbyLabel.setText("Waiting for shot!")
        self.takeShot()

    def takeShot(self):
#        counter = src.lowLevel.Counter(INFRARED_COUNTER_STR)
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

    def doQuit(self):
        sys.exit()

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
        if projoVal != "":
            myquery = f"insert into projo (projectileType) values ('{projoVal}')"
            try:
                self.dbase.db_doQuery(myquery)
                self.dbase.db_doQuery("Commit")
                self.projectilesModel.addData(projoVal)
                self.projosLineEdit.setText("")
            except pymysql.err.IntegrityError as e:
                if e.args[0] == 1062:
                    self.issueWarning(f"Duplicate Entry for {projoVal} ---> (already exists.)\n\nTry again!")
                    self.projosLineEdit.setText("")
                    self.projosLineEdit.seytFocus()
            except pymysql.err.InternalError:
                pass
            finally:
                pass
            self.projosLineEdit.setText("")
        else:
            self.issueWarning("No value was entered for Projectile")
            self.projosLineEdit.setFocus()

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
            self.projosLineEdit.setText("")
        else:
            self.issueWarning("No value was entered for Projectile")
            self.projosLineEdit.setFocus()

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
            self.issueWarning("No value was entered for Grains")
            self.grainsLineEdit.setFocus()


    def addRange(self):
        scrn1_to_scrn2_Val = self.lineEdit_S1S2.text()
        if scrn1_to_scrn2_Val != "":
            # myquery = f"insert into BimsRange (scrn1_to_scrn2, scrn2_to_target, mid_to_scrn2, muz_to_mid ) values ({grainsVal})"
            # try:
            #     self.dbase.db_doQuery(myquery)
            #     self.dbase.db_doQuery("Commit")
            #     self.grainsModel.addData(grainsVal)
            #     self.grainsLineEdit.setText("")
            # except pymysql.err.IntegrityError as e:
            #     if e.args[0] == 1062:
            #         self.issueWarning(
            #             f"Duplicate Entry for {grainsVal} ---> (already exists.)\n\nTry again!")
            #         self.grainsLineEdit.setText("")
            #         self.grainsLineEdit.setFocus()
            # except pymysql.err.InternalError:
            #     pass
            # finally:
                pass
        else:
            self.issueWarning("No value was entered for Grains")
            self.grainsLineEdit.setFocus()


    @QtCore.pyqtSlot(QtCore.QModelIndex)
    def on_grainslistView_clicked(self, index):
        self.GrainsRow = index.row()

    def removeGrains(self):
        Value = int(self.grainsModel.Grains[self.GrainsRow]["grainsValue"])
        myquery = f"delete from threatGrain where grain = {Value}"
        self.dbase.db_doQuery(myquery)
        self.dbase.db_doQuery("Commit")
        self.grainsModel.removeRows(self.GrainsRow)

    @QtCore.pyqtSlot(QtCore.QModelIndex)
    def on_projoslistView_clicked(self, index):
        self.ProjoRow = index.row()

    def removeProjo(self):
        Value = self.projectilesModel.Projos[self.ProjoRow]["projectileType"]
        myquery = f"delete from projo where projectileType = '{Value}'"
        self.dbase.db_doQuery(myquery)
        self.dbase.db_doQuery("Commit")
        self.projectilesModel.removeRows(self.ProjoRow)


    @QtCore.pyqtSlot(QtCore.QModelIndex)
    def on_powderslistView_clicked(self, index):
        self.PowderRow = index.row()

    def removePowders(self):
        Value = self.powdersModel.Powders[self.PowderRow]["powderType"]
        myquery = f"delete from threatPowder where powderType = '{Value}'"
        self.dbase.db_doQuery(myquery)
        self.dbase.db_doQuery("Commit")
        self.powdersModel.removeRows(self.PowderRow)

    @QtCore.pyqtSlot(QtCore.QModelIndex)
    def on_rangetableView_clicked(self, index):
        self.RangeRow = index.row()

    # def removePowders(self):
    #     Value = self.powdersModel.Powders[self.PowderRow]["powderType"]
    #     myquery = f"delete from threatPowder where powderType = '{Value}'"
    #     self.dbase.db_doQuery(myquery)
    #     self.dbase.db_doQuery("Commit")
    #         self.powdersModel.removeRows(self.PowderRow)




app = QtWidgets.QApplication(sys.argv)

window = MainWindow()

window.show()


app.exec_()

