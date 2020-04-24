from PyQt5.QtCore import QAbstractTableModel, Qt, QModelIndex
from PyQt5.QtGui import QPixmap

""" Reference https://github.com/pyside/pyside2-examples/blob/dev/examples/widgets/itemviews/addressbook """


class EnvironModel(QAbstractTableModel):
    def __init__(self, environs=None, parent=None):
        super(EnvironModel, self).__init__(parent)
        # set up range attributes
        self.humunits = "%"
        self.tempunits = "°F"
        if environs is None:
            self.environs = []
        else:
            self.environs = environs


    def rowCount(self, index=QModelIndex()):
        """ Returns the number of rows the model holds """
        return len(self.environs)

    def columnCount(self, index=QModelIndex()):
        return 3    #  fields:  ID, humidityPercent, tempFloat

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid():
            return None

        if not 0 <= index.row() < len(self.environs):
            return None

        if role == Qt.DisplayRole:
            ID = self.environs[index.row()]["ID"]
            humid = self.environs[index.row()]["humidityPercent"]
            temp = self.environs[index.row()]["tempFloat"]


            if index.column() == 0: # if first column
                return ID
            elif index.column() == 1:
                return humid
            elif index.column() == 2:
                return temp
            return None


    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "ID"
            elif section == 1:
                return "humidity"
            elif section == 2:
                return "temp"
            return None
        if orientation == Qt.Vertical:
            if role == Qt.DisplayRole:
                return " --> "


    def insertRows(self, position, rows=1, index=QModelIndex()):
        """Insert a row of range data into RangeModel. """
        self.beginInsertRows(QModelIndex(), position, position + rows - 1)

        for row in range(rows):
            self.environs.insert(position + row, {"ID":"", "humidityPercent":"", "tempFloat":""})

        self.endInsertRows()
        return True

    def removeRows(self, position, rows=1, index=QModelIndex()):
        """ Remove a row from  RangeModel. """
        self.beginRemoveRows(QModelIndex(), position, position + rows - 1)

        del self.environs[position:position+rows]

        self.endRemoveRows()
        return True

    def setData(self, index, value, role=Qt.EditRole):
        """ Adjust the data (set it to <value>) depending on the given
            index and role.
        """
        if role != Qt.EditRole:
            return False

        if index.isValid() and 0 <= index.row() < len(self.environs):
            anEnvironment = self.environs[index.row()]
            if index.column() == 0:
                anEnvironment["ID"] = f"{value}"
            elif index.column() == 1:
                anEnvironment["humidityPercent"] = f"{value} {self.humunits}"
            elif index.column() == 2:
                anEnvironment["tempFloat"] = f"{value} {self.tempunits}"
            else:
                return False

            self.dataChanged.emit(index, index)
            return True

        return False