#!/usr/bin/env python3
import pathlib
import sys
import os

import pymysql, json
from pymysql import MySQLError
from PyQt5 import uic, QtWidgets, QtCore, Qt
from PyQt5.QtGui import QIcon, QPixmap
from PyQt5.QtWidgets import QAction, QMessageBox
import src.BIMSresources  # This file contains links to images used as icons and the HTML doc used as hime page.
import src.database as db  # This file contains code to connect to database and run SQL querries



class MainWindow(QtWidgets.QMainWindow):

    '''Do system startup work (Declare variables, make connections, etc...) '''
    def __init__(self, parent=None):
        super(MainWindow, self).__init__(parent)

        # Internationalization support BEFORE loading UI
        with open('configs/lang_config.json', 'r') as lang_config:
            config = json.load(lang_config)
        self.translator = QtCore.QTranslator()
        if config["lang"] != "en":
            language = "Dupont_BIMS_{}.qm".format(config["lang"])
            self.translator.load(language)

        # install translator to the app
        app.installTranslator(self.translator)
        # app.removeTranslator(self.translator)


        # load the UI
        uic.loadUi("dbsetupWindow.ui", self)

        ''' Create a connection to the database '''
        self.dbase = db.database()  # Create an instance of the database class as self.dbase

        # Set up language support button
        self.langCombo = self.findChild(QtWidgets.QComboBox, 'langCombo')
        ''' add flag icons to language selection comboBox '''
        self.langCombo.addItem(QIcon('images/Flag-us.svg'),'English', 'en')
        self.langCombo.addItem(QIcon('images/Brazilian_flag.png'), 'Portuguese', 'eng-pt')

        if config["lang"] != "en":
            self.langCombo.setCurrentIndex(1)
        else:
            self.langCombo.setCurrentIndex(0)
        self.langCombo.setFocus()

        self.dbase = db.database()  # Create an instance of the database as self.dbase


        self.langCombo.setToolTip('<html><head><style> body {background-color: white;} </style></head>'
                                  '<body><p>Set language then re-start application</p></body></html>')
        self.langCombo.setToolTipDuration(5000)
        self.langCombo.currentIndexChanged.connect(self.dolanguageChangeRequest)
        self.createMenus()

        self.hostLineEdit = self.findChild(QtWidgets.QLineEdit, 'host_lineEdit')
        self.port_lineEdit = self.findChild(QtWidgets.QLineEdit, 'port_lineEdit')
        self.userLineEdit = self.findChild(QtWidgets.QLineEdit, 'user_lineEdit')
        self.passLineEdit = self.findChild(QtWidgets.QLineEdit, 'password_lineEdit')
        self.message_label = self.findChild(QtWidgets.QLabel, 'message_label')

        self.test_connection_pushButton = self.findChild(QtWidgets.QPushButton, 'test_connection_pushButton')
        self.test_connection_pushButton.clicked.connect(self.doTest)

        self.quitButton = self.findChild(QtWidgets.QPushButton, 'Quit_Button')
        self.quitButton.hide()
        self.quitButton.clicked.connect(self.doQuit)

    def doTest(self):
        self.connectMessage = self.dbase.TestConnect(self)
        if self.connectMessage == 'fail':
            self.message_label.setText("Incorrect value in at least one field.\n Try again please!")
        else:
            self.quitButton.show()
            self.message_label.setText("That works!\nYour database connection is established\nQuit setup and run main application now!")


    def createAction(self, text, menu, slot):
        """ Helper function to save typing when populating menus
           with action.
        """
        action = QAction(text, self)
        menu.addAction(action)
        action.triggered.connect(slot)
        return action

    ''' set up menuBar & menubar behaviors '''
    def createMenus(self):
        # Create the main menuBar menu items
        fileMenu = self.menuBar().addMenu("&File")

        # Populate File menu
        self.createAction("E&xit", fileMenu, self.close)


    def doQuit(self):
        sys.exit()




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

