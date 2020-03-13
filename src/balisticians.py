from PyQt5.QtCore import QAbstractTableModel, Qt, QModelIndex
from PyQt5.QtGui import QPixmap

""" Reference https://github.com/pyside/pyside2-examples/blob/dev/examples/widgets/itemviews/addressbook """


class BalisticainsModel(QAbstractTableModel):
    def __init__(self, Balisticians=None, parent=None):
        super(BalisticainsModel, self).__init__(parent)
        # set up grains attributes
        if Balisticians is None:
            self.Balisticians = []
        else:
            self.Balisticians = Balisticians


    def rowCount(self, index=QModelIndex()):
        """ Returns the number of rows the model holds """
        return len(self.Balisticians)

    def columnCount(self, index=QModelIndex()):
        return 1    #  fields:  balisticians

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid():
            return None

        if not 0 <= index.row() < len(self.Balisticians):
            return None

        if role == Qt.DisplayRole:
            balisticanval = self.Balisticians[index.row()]["balisticiansValue"]
            return balisticanval



    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "Balistician"
            return None
        if orientation == Qt.Vertical:
            if role == Qt.DisplayRole:
                return " --> "


    def insertRows(self, position, rows=1, index=QModelIndex()):
        """Insert a row of balistician data into BalisticiansModel. """
        self.beginInsertRows(QModelIndex(), position, position + rows - 1)

        for row in range(rows):
            self.Balisticians.insert(position + row, {"ID":"", "balisticiansValue":""})

        self.endInsertRows()
        return True

    def removeRows(self, position, rows=1, index=QModelIndex()):
        """ Remove a row from  BalisticiansModel. """
        self.beginRemoveRows(QModelIndex(), position, position + rows - 1)

        del self.Balisticians[position:position+rows]

        self.endRemoveRows()
        self.dataChanged.emit(index, index)   
        return True

    def addData(self, balisticianValue):
        rowCount = self.rowCount()
        for i in range(rowCount):
            j = i+1
            if int(balisticianValue) < int(self.Balisticians[0]["balisticiansValue"]):
                self.insertRow(0)
                index = self.createIndex(0, 0)
                self.setData(index, balisticianValue, role=Qt.EditRole)

            elif int(balisticianValue) > int(self.Balisticians[i]["balisticiansValue"]):
                try:
                    if i < self.rowCount()-1:
                        if int(balisticianValue) < int(self.Balisticians[j]["balisticiansValue"]):
                            self.insertRow(j)
                            index = self.createIndex(j, 0)
                            self.setData(index, balisticianValue, role=Qt.EditRole)
                    else:
                        self.insertRow(j)
                        index = self.createIndex(j, 0)
                        self.setData(index, balisticianValue, role=Qt.EditRole)
                except:
                    pass


    def setData(self, index, value, role=Qt.EditRole):
        """ Adjust the data (set it to <value>) depending on the given
            index and role.
        """
        if role != Qt.EditRole:
            return False

        if index.isValid() and 0 <= index.row() < len(self.Grains):
            aBalistician = self.Balisticians[index.row()]
            aBalistician["balisticianValue"] = f"{value}"
            self.dataChanged.emit(index, index)
            return True
        return False
