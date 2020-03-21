from PyQt5.QtCore import QAbstractTableModel, Qt, QModelIndex
from PyQt5.QtWidgets import QMessageBox

""" Reference https://github.com/pyside/pyside2-examples/blob/dev/examples/widgets/itemviews/addressbook """


class ManufacturersModel(QAbstractTableModel):
    def __init__(self, Makers=None, parent=None):
        super(ManufacturersModel, self).__init__(parent)
        # set up grains attributes
        self.caller = object
        if Makers is None:
            self.Makers = []
        else:
            self.Makers = Makers

    # Modal Warning Box
    def issueWarning(self, Message):
        QMessageBox.about(self, "Warning", Message)

    def rowCount(self, index=QModelIndex()):
        """ Returns the number of rows the model holds """
        return len(self.Makers)

    def columnCount(self, index=QModelIndex()):
        return 1    #  fields:  MakerName

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid():
            return None

        if not 0 <= index.row() < len(self.Makers):
            return None

        if role == Qt.DisplayRole:
            makerVal = self.Fabrics[index.row()]["makerName"]
            return makerVal



    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "makerName"
            return None



    def insertRows(self, position, rows=1, index=QModelIndex()):
        """Insert a row of range data into ManufacturersModel. """
        self.beginInsertRows(QModelIndex(), position, position + rows - 1)

        for row in range(rows):
            self.Makers.insert(position + row, {"makerName": ""})

        self.endInsertRows()
        return True

    def removeRows(self, position, rows=1, index=QModelIndex()):
        """ Remove a row from  ProjectilesModel. """
        self.beginRemoveRows(QModelIndex(), position, position + rows - 1)

        del self.Makers[position:position + rows]

        self.endRemoveRows()
        self.dataChanged.emit(index, index)
        return True

    def addData(self, makersVal):
        rowCount = self.rowCount()
        for i in range(rowCount):
            j = i+1
            if makersVal < self.Makers[0]["makerName"]:
                self.insertRow(0)
                index = self.createIndex(0, 0)
                self.setData(index, makersVal, role=Qt.EditRole)

            elif makersVal > self.Makers[i]["makerName"]:
                try:
                    if i < self.rowCount()-1:
                        if makersVal < self.Powders[j]["makerName"]:
                            self.insertRow(j)
                            index = self.createIndex(j, 0)
                            self.setData(index, makersVal, role=Qt.EditRole)
                    else:
                        self.insertRow(j)
                        index = self.createIndex(j, 0)
                        self.setData(index, makersVal, role=Qt.EditRole)
                except:
                    pass

    def setData(self, index, value, role=Qt.EditRole):
        """ Adjust the data (set it to <value>) depending on the given
            index and role.
        """
        if role != Qt.EditRole:
            return False

        if index.isValid() and 0 <= index.row() < len(self.Fabrics):
            aMaker = self.Makers[index.row()]
            if index.column() == 0:
                aMaker["makerName"] = f"{value}"
            else:
                return False

            self.dataChanged.emit(index, index)
            return True

        return False