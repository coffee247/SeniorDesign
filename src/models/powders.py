from PyQt5.QtCore import QAbstractTableModel, Qt, QModelIndex
from PyQt5.QtWidgets import QMessageBox

""" Reference https://github.com/pyside/pyside2-examples/blob/dev/examples/widgets/itemviews/addressbook """


class PowdersModel(QAbstractTableModel):
    def __init__(self, Powders=None, parent=None):
        super(PowdersModel, self).__init__(parent)
        # set up grains attributes
        self.caller = object
        if Powders is None:
            self.Powders = []
        else:
            self.Powders = Powders

    # Modal Warning Box
    def issueWarning(self, Message):
        QMessageBox.about(self, "Warning", Message)

    def rowCount(self, index=QModelIndex()):
        """ Returns the number of rows the model holds """
        return len(self.Powders)

    def columnCount(self, index=QModelIndex()):
        return 1    #  fields:  powderType

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid():
            return None

        if not 0 <= index.row() < len(self.Powders):
            return None

        if role == Qt.DisplayRole:
            powderVal = self.Powders[index.row()]["powderType"]
            return powderVal



    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "powderType"
            return None
        if orientation == Qt.Vertical:
            if role == Qt.DisplayRole:
                return " --> "


    def insertRows(self, position, rows=1, index=QModelIndex()):
        """Insert a row of range data into RangeModel. """
        self.beginInsertRows(QModelIndex(), position, position + rows - 1)

        for row in range(rows):
            self.Powders.insert(position + row, {"powderType": ""})

        self.endInsertRows()
        return True

    def removeRows(self, position, rows=1, index=QModelIndex()):
        """ Remove a row from  ProjectilesModel. """
        self.beginRemoveRows(QModelIndex(), position, position + rows - 1)

        del self.Powders[position:position + rows]

        self.endRemoveRows()
        self.dataChanged.emit(index, index)
        return True

    def addData(self, powdersVal):
        rowCount = self.rowCount()
        for i in range(rowCount):
            j = i+1
            if powdersVal < self.Powders[0]["powderType"]:
                self.insertRow(0)
                index = self.createIndex(0, 0)
                self.setData(index, powdersVal, role=Qt.EditRole)

            elif powdersVal > self.Powders[i]["powderType"]:
                try:
                    if i < self.rowCount()-1:
                        if powdersVal < self.Powders[j]["powderType"]:
                            self.insertRow(j)
                            index = self.createIndex(j, 0)
                            self.setData(index, powdersVal, role=Qt.EditRole)
                    else:
                        self.insertRow(j)
                        index = self.createIndex(j, 0)
                        self.setData(index, powdersVal, role=Qt.EditRole)
                except:
                    pass

    def setData(self, index, value, role=Qt.EditRole):
        """ Adjust the data (set it to <value>) depending on the given
            index and role.
        """
        if role != Qt.EditRole:
            return False

        if index.isValid() and 0 <= index.row() < len(self.Powders):
            aPowder = self.Powders[index.row()]
            if index.column() == 0:
                aPowder["powderType"] = f"{value}"
            else:
                return False

            self.dataChanged.emit(index, index)
            return True

        return False