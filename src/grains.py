from PyQt5.QtCore import QAbstractTableModel, Qt, QModelIndex
from PyQt5.QtGui import QPixmap

""" Reference https://github.com/pyside/pyside2-examples/blob/dev/examples/widgets/itemviews/addressbook """


class GrainsModel(QAbstractTableModel):
    def __init__(self, Grains=None, parent=None):
        super(GrainsModel, self).__init__(parent)
        # set up grains attributes
        if Grains is None:
            self.Grains = []
        else:
            self.Grains = Grains


    def rowCount(self, index=QModelIndex()):
        """ Returns the number of rows the model holds """
        return len(self.Grains)

    def columnCount(self, index=QModelIndex()):
        return 1    #  fields:  grains

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid():
            return None

        if not 0 <= index.row() < len(self.Grains):
            return None

        if role == Qt.DisplayRole:
            grainval = self.Grains[index.row()]["grainsValue"]
            return grainval



    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "Grains"
            return None
        if orientation == Qt.Vertical:
            if role == Qt.DisplayRole:
                return " --> "


    def insertRows(self, position, rows=1, index=QModelIndex()):
        """Insert a row of range data into RangeModel. """
        self.beginInsertRows(QModelIndex(), position, position + rows - 1)

        for row in range(rows):
            self.Grains.insert(position + row, {"ID":"", "grainsValue":""})

        self.endInsertRows()
        return True

    def removeRows(self, position, rows=1, index=QModelIndex()):
        """ Remove a row from  GrainsModel. """
        self.beginRemoveRows(QModelIndex(), position, position + rows - 1)

        del self.Grains[position:position+rows]

        self.endRemoveRows()
        self.dataChanged.emit(index, index)   
        return True

    def addData(self, grainsVal):
        rowCount = self.rowCount()
        for i in range(rowCount):
            j = i+1
            if int(grainsVal) < int(self.Grains[0]["grainsValue"]):
                self.insertRow(0)
                index = self.createIndex(0, 0)
                self.setData(index, grainsVal, role=Qt.EditRole)

            elif int(grainsVal) > int(self.Grains[i]["grainsValue"]):
                try:
                    if i < self.rowCount()-1:
                        if int(grainsVal) < int(self.Grains[j]["grainsValue"]):
                            self.insertRow(j)
                            index = self.createIndex(j, 0)
                            self.setData(index, grainsVal, role=Qt.EditRole)
                    else:
                        self.insertRow(j)
                        index = self.createIndex(j, 0)
                        self.setData(index, grainsVal, role=Qt.EditRole)
                except:
                    pass


    def setData(self, index, value, role=Qt.EditRole):
        """ Adjust the data (set it to <value>) depending on the given
            index and role.
        """
        if role != Qt.EditRole:
            return False

        if index.isValid() and 0 <= index.row() < len(self.Grains):
            aGrain = self.Grains[index.row()]
            aGrain["grainsValue"] = f"{value}"
            self.dataChanged.emit(index, index)
            return True
        return False
