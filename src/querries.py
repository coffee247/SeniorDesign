

from PyQt5.QtCore import QAbstractTableModel, Qt, QModelIndex

""" Reference https://github.com/pyside/pyside2-examples/blob/dev/examples/widgets/itemviews/addressbook """

class QuerriesModel(QAbstractTableModel):
    def __init__(self, querries=None, parent=None):
        super(QuerriesModel, self).__init__(parent)
        # set up range attributes
        if querries is None:
            self.querries = []
        else:
            self.querries = querries

    def rowCount(self, index=QModelIndex()):
        """ Returns the number of rows the model holds """
        return len(self.querries)

    def columnCount(self, index=QModelIndex()):
        return 2  # fields:  date, scr1-scr2, scrn2-targ, mid-scr2, muz-mid

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid():
            return None

        if not 0 <= index.row() < len(self.querries):
            return None

        if role == Qt.DisplayRole:
            Desc = self.querries[index.row()]["Desc"]
            TheQuery = self.querries[index.row()]["TheQuery"]

            if index.column() == 0:  # if first column
                return Desc
            elif index.column() == 1:
                return TheQuery
            return None

    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "Desc"
            elif section == 1:
                return "TheQuery"
            return None


    def addData(self, Desc, TheQuery):
        rowCount = self.rowCount()
        for i in range(rowCount):
            j = i + 1
            if Desc < self.querries[0]["Desc"]:
                self.insertRow(0)
                for i in range(2):
                    index = self.createIndex(0, i)
                    if i == 0:
                        self.setData(index, Desc, role=Qt.EditRole)
                    elif i == 1:
                        self.setData(index, TheQuery, role=Qt.EditRole)
            elif Desc > self.querries[i]["Desc"]:
                try:
                    if i < self.rowCount() - 1:
                        if Desc < self.Projos[j]["Desc"]:
                            self.insertRow(j)
                            for i in range(2):
                                index = self.createIndex(j, i)
                                if i == 0:
                                    self.setData(index, Desc, role=Qt.EditRole)
                                elif i == 1:
                                    self.setData(index, TheQuery, role=Qt.EditRole)
                    else:
                        self.insertRow(j)
                        for i in range(2):
                            index = self.createIndex(j, i)
                            if i == 0:
                                self.setData(index, Desc, role=Qt.EditRole)
                            elif i == 1:
                                self.setData(index, TheQuery, role=Qt.EditRole)
                except:
                    pass

    def insertRows(self, position, rows=1, index=QModelIndex()):
        """Insert a row of range data into QuerriesModel. """
        self.beginInsertRows(QModelIndex(), position, position + rows - 1)
        self.querries.insert(position + position + rows - 1,
                             {"Desc": "", "TheQuery": ""})

        self.endInsertRows()
        return True

    def removeRows(self, position, rows=1, index=QModelIndex()):
        """ Remove a row from  QuerriesModel. """
        self.beginRemoveRows(QModelIndex(), position, position + rows - 1)

        del self.querries[position:position + rows]

        self.endRemoveRows()
        return True

    def setData(self, index, value, role=Qt.EditRole):
        """ Adjust the data (set it to <value>) depending on the given
            index and role.
        """
        if role != Qt.EditRole:
            return False

        if index.isValid() and 0 <= index.row() < len(self.querries):
            aquery = self.querries[index.row()]
            if index.column() == 0:
                aquery["Desc"] = f"{value}"
            elif index.column() == 1:
                aquery["TheQuery"] = f"{value}"
            else:
                return False

            self.dataChanged.emit(index, index)
            return True

        return False