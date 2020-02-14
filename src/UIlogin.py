# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file '/home/james/QT_Projects/BIMS/login.ui'
#
# Created by: PyQt5 UI code generator 5.13.0
#
# WARNING! All changes made in this file will be lost!


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_Dialog(object):
    def setupUi(self, Dialog):
        Dialog.setObjectName("LoginDialog")

        Dialog.resize(401, 402)

        self.label = QtWidgets.QLabel(Dialog)
        self.label.setEnabled(True)
        self.label.setGeometry(QtCore.QRect(90, 40, 200, 60))
        self.label.setText("")
        self.label.setPixmap(QtGui.QPixmap("images/dupont-logo.png"))
        self.label.setScaledContents(True)
        self.label.setObjectName("label")

        self.lineEdit = QtWidgets.QLineEdit(Dialog)
        self.lineEdit.setGeometry(QtCore.QRect(120, 180, 231, 25))
        self.lineEdit.setMaxLength(30)
        self.lineEdit.setEchoMode(QtWidgets.QLineEdit.Password)
        self.lineEdit.setObjectName("lineEdit")

        self.lineEdit_2 = QtWidgets.QLineEdit(Dialog)
        self.lineEdit_2.setGeometry(QtCore.QRect(120, 140, 231, 25))
        self.lineEdit_2.setMaxLength(30)
        self.lineEdit_2.setObjectName("lineEdit_2")

        self.label_2 = QtWidgets.QLabel(Dialog)
        self.label_2.setGeometry(QtCore.QRect(30, 140, 81, 20))
        self.label_2.setObjectName("label_2")

        self.label_3 = QtWidgets.QLabel(Dialog)
        self.label_3.setGeometry(QtCore.QRect(30, 180, 81, 20))
        self.label_3.setObjectName("label_3")

        self.groupBox = QtWidgets.QGroupBox(Dialog)
        self.groupBox.setGeometry(QtCore.QRect(30, 210, 331, 61))
        self.groupBox.setTitle("")
        self.groupBox.setObjectName("groupBox")

        self.pushButton = QtWidgets.QPushButton(self.groupBox)
        self.pushButton.setGeometry(QtCore.QRect(230, 30, 89, 25))
        self.pushButton.setObjectName("pushButton")

        self.pushButton_2 = QtWidgets.QPushButton(self.groupBox)
        self.pushButton_2.setGeometry(QtCore.QRect(10, 30, 111, 25))
        self.pushButton_2.setObjectName("pushButton_2")

        self.pushButton_3 = QtWidgets.QPushButton(Dialog)
        self.pushButton_3.setGeometry(QtCore.QRect(220, 350, 141, 25))
        self.pushButton_3.setObjectName("pushButton_3")

        self.lineEdit_3 = QtWidgets.QLineEdit(Dialog)
        self.lineEdit_3.setGeometry(QtCore.QRect(120, 310, 231, 25))
        self.lineEdit_3.setText("")
        self.lineEdit_3.setMaxLength(30)
        self.lineEdit_3.setObjectName("lineEdit_3")

        self.label_4 = QtWidgets.QLabel(Dialog)
        self.label_4.setGeometry(QtCore.QRect(30, 310, 81, 20))
        self.label_4.setObjectName("label_4")

        self.line = QtWidgets.QFrame(Dialog)
        self.line.setGeometry(QtCore.QRect(10, 290, 381, 16))
        self.line.setFrameShape(QtWidgets.QFrame.HLine)
        self.line.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line.setObjectName("line")

        self.retranslateUi(Dialog)

        QtCore.QMetaObject.connectSlotsByName(Dialog)

    def retranslateUi(self, Dialog):
        _translate = QtCore.QCoreApplication.translate
        Dialog.setWindowTitle(_translate("Dialog", "Balistic Information Management System"))
        self.label_2.setText(_translate("Dialog", "User name:"))
        self.label_3.setText(_translate("Dialog", "Password:"))
        self.pushButton.setText(_translate("Dialog", "Login"))
        self.pushButton_2.setText(_translate("Dialog", "Abort / Close"))
        self.pushButton_3.setText(_translate("Dialog", "Forgot Password"))
        self.label_4.setText(_translate("Dialog", "e-mail:"))
        self.lineEdit_2.setFocus()


if __name__ == "__main__":
    import sys

    app = QtWidgets.QApplication(sys.argv)
    Dialog = QtWidgets.QDialog()
    ui = Ui_Dialog()
    ui.setupUi(Dialog)
    Dialog.show()
    sys.exit(app.exec_())
