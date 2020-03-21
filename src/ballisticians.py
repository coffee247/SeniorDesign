from PyQt5.QtCore import QAbstractTableModel, Qt, QModelIndex
from PyQt5.QtGui import QPixmap

""" Reference https://github.com/pyside/pyside2-examples/blob/dev/examples/widgets/itemviews/addressbook """


class BallisticiansModel(QAbstractTableModel):
    def __init__(self, Ballisticians=None, parent=None):
        super(BallisticiansModel, self).__init__(parent)
        # set up grains attributes
        if Ballisticians is None:
            self.BallisticiansList = []
        else:
            self.BallisticiansList = Ballisticians


    def rowCount(self, index=QModelIndex(), **kwargs):
        """ Returns the number of rows the model holds """
        return len(self.BallisticiansList)

    def columnCount(self, index=QModelIndex(), **kwargs):
        return 1    #  fields:  grains

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid():
            return None

        if not 0 <= index.row() < len(self.BallisticiansList):
            return None

        if role == Qt.DisplayRole:
            ballisticianval = self.BallisticiansList[index.row()]["ballistician"]
            return ballisticianval



    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "Ballistician"
            return None


    def insertRows(self, position, rows=1, index=QModelIndex()):
        '''Insert a row of ballistician data into ballisticaianModel. '''
        self.beginInsertRows(QModelIndex(), position, position + rows - 1)

        for row in range(rows):
            self.BallisticiansList.insert(position + row, {"ballistician": ""})

        self.endInsertRows()
        return True

    def removeRows(self, position, rows=1, index=QModelIndex()):
        """ Remove a row from  ballisticaianModel. """
        self.beginRemoveRows(QModelIndex(), position, position + rows - 1)

        del self.BallisticiansList[position:position + rows]

        self.endRemoveRows()
        return True

    def addData(self, ballisticianToAdd):
        rowCount = self.rowCount()
        for i in range(rowCount):
            j = i+1
            if ballisticianToAdd < self.BallisticiansList[0]["ballistician"]:
                self.insertRow(0)
                index = self.createIndex(0, 0)
                self.setData(index, ballisticianToAdd, role=Qt.EditRole)

            elif ballisticianToAdd > self.BallisticiansList[i]["ballistician"]:
                try:
                    if i < self.rowCount() -1:
                        if ballisticianToAdd < self.BallisticiansList[j]["ballistician"]:
                            self.insertRow(j)
                            index = self.createIndex(j, 0)
                            self.setData(index, ballisticianToAdd, role=Qt.EditRole)
                    else:
                        self.insertRow(j)
                        index = self.createIndex(j, 0)
                        self.setData(index, ballisticianToAdd, role=Qt.EditRole)
                except:
                    pass


    def setData(self, index, value, role=Qt.EditRole):
        """ Adjust the data (set it to <value>) depending on the given
            index and role.
        """
        if role != Qt.EditRole:
            return False

        if index.isValid() and 0 <= index.row() < len(self.BallisticiansList):
            aBallistician = self.BallisticiansList[index.row()]
            aBallistician["ballistician"] = f"{value}"
            self.dataChanged.emit(index, index)
            return True
        return False
