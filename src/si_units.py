from PyQt5.QtCore import QAbstractTableModel, Qt, QModelIndex

""" Reference https://github.com/pyside/pyside2-examples/blob/dev/examples/widgets/itemviews/addressbook """


class SIUModel(QAbstractTableModel):
    def __init__(self, SIunits=None, parent=None):
        super(SIUModel, self).__init__(parent)
        # set up SIunits attributes
        if SIunits is None:
            self.SIunits = []
        else:
            self.SIunits = SIunits


    def rowCount(self, index=QModelIndex()):
        """ Returns the number of rows the model holds """
        return len(self.SIunits)

    def columnCount(self, index=QModelIndex()):
        return 1    #  fields:  abbr

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid():
            return None

        if not 0 <= index.row() < len(self.SIunits):
            return None

        if role == Qt.DisplayRole:
            unitVal = self.SIunits[index.row()]["abbr"]
            return unitVal



    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "abbr"
            return None
        if orientation == Qt.Vertical:
            if role == Qt.DisplayRole:
                return " --> "


    def insertRows(self, position, rows=1, index=QModelIndex()):
        """Insert a row of range data into SIUModel. """
        self.beginInsertRows(QModelIndex(), position, position + rows - 1)

        for row in range(rows):
            self.SIunits.insert(position + row, {"abbr": ""})

        self.endInsertRows()
        return True

    def removeRows(self, position, rows=1, index=QModelIndex()):
        """ Remove a row from  SIUModel. """
        self.beginRemoveRows(QModelIndex(), position, position + rows - 1)

        del self.SIunits[position:position + rows]

        self.endRemoveRows()
        self.dataChanged.emit(index, index)
        return True

    def addData(self, unitVal):
        rowCount = self.rowCount()
        if rowCount == 0:
            self.insertRow(0)
            index = self.createIndex(0, 0)
            self.setData(index, unitVal, role=Qt.EditRole)
        else:
            for i in range(rowCount):
                j = i+1
                if unitVal < self.SIunits[0]["abbr"]:
                    self.insertRow(0)
                    index = self.createIndex(0, 0)
                    self.setData(index, unitVal, role=Qt.EditRole)

                elif unitVal > self.SIunits[i]["abbr"]:
                    try:
                        if i < self.rowCount()-1:
                            if unitVal < self.SIunits[j]["abbr"]:
                                self.insertRow(j)
                                index = self.createIndex(j, 0)
                                self.setData(index, unitVal, role=Qt.EditRole)
                        else:
                            self.insertRow(j)
                            index = self.createIndex(j, 0)
                            self.setData(index, unitVal, role=Qt.EditRole)
                    except:
                        pass

    def setData(self, index, value, role=Qt.EditRole):
        """ Adjust the data (set it to <value>) depending on the given
            index and role.
        """
        if role != Qt.EditRole:
            return False

        if index.isValid() and 0 <= index.row() < len(self.SIunits):
            if index.column() == 0:
                self.SIunits[index.row()]["abbr"] = f"{value}"
            else:
                return False
            self.dataChanged.emit(index, index)
            return True
        return False
