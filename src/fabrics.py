from PyQt5.QtCore import QAbstractTableModel, Qt, QModelIndex
from PyQt5.QtWidgets import QMessageBox

""" Reference https://github.com/pyside/pyside2-examples/blob/dev/examples/widgets/itemviews/addressbook """


class FabricsModel(QAbstractTableModel):
    def __init__(self, Fabrics=None, parent=None):
        super(FabricsModel, self).__init__(parent)
        # create Fabrics list if it does not exist
        if Fabrics is None:
            self.Fabrics = []
        else:
            self.Fabrics = Fabrics

    # Modal Warning Box
    def issueWarning(self, Message):
        QMessageBox.about(self, "Warning", Message)


 #   def rowCount(self, index=QModelIndex()):
    def rowCount(self, index=QModelIndex()):
        """ Returns the number of rows the model holds """
        return len(self.Fabrics)

    def columnCount(self, index=QModelIndex()):
        return 2    #  fields:

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid():
            return None

        if not 0 <= index.row() < len(self.Fabrics):
            return None

        if role == Qt.DisplayRole:

            fabric_id = self.Fabrics[index.row()]["fabric_id"]
            fabric_descript = self.Fabrics[index.row()]["fabric_descript"]

            if index.column() == 0:
                return fabric_id
            elif index.column() == 1:
                return fabric_descript
            return None



    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "fabric id"
            if section == 1:
                return "Description"
            return None



    def insertRows(self, position, rows=1, index=QModelIndex()):
        """Insert a row of range data into RangeModel. """
        self.beginInsertRows(QModelIndex(), position, position + rows - 1)

        for row in range(rows):
            self.Fabrics.insert(position + row, {"fabric_id": "", "fabric_descript": ""})
            self.dataChanged.emit(index, index)
        self.endInsertRows()
        return True

    def removeRows(self, position, rows=1, index=QModelIndex()):
        """ Remove a row from  ProjectilesModel. """
        self.beginRemoveRows(QModelIndex(), position, position + rows - 1)

        del self.Fabrics[position:position + rows]

        self.endRemoveRows()
        self.dataChanged.emit(index, index)
        return True

    def addData(self, fabric_id, fabric_descript):
        rowCount = self.rowCount()
        for i in range(rowCount):
            j = i + 1
            if fabric_id < self.Fabrics[0]["fabric_id"]:
                self.insertRow(0)
                for i in range(2):
                    index = self.createIndex(0, i)
                    if i == 0:
                        self.setData(index, fabric_id, role=Qt.EditRole)
                        self.dataChanged.emit(index, index)
                    elif i == 1:
                        self.setData(index, fabric_descript, role=Qt.EditRole)
                        self.dataChanged.emit(index, index)
                return None
            elif fabric_id > self.Fabrics[i]["fabric_id"]:
                try:
                    if i < self.rowCount() - 1:
                        if fabric_id <= self.Fabrics[j]["fabric_id"]:
                            self.insertRow(j)
                            for i in range(3):
                                index = self.createIndex(j, i)
                                if i == 0:
                                    self.setData(index, fabric_id, role=Qt.EditRole)
                                    self.dataChanged.emit(index, index)
                                elif i == 1:
                                    self.setData(index, fabric_descript, role=Qt.EditRole)
                                    self.dataChanged.emit(index, index)
                            return None
                    else:
                        self.insertRow(j)
                        for i in range(2):
                            index = self.createIndex(j, i)
                            if i == 0:
                                self.setData(index, fabric_id, role=Qt.EditRole)
                                self.dataChanged.emit(index, index)
                            elif i == 1:
                                self.setData(index, fabric_descript, role=Qt.EditRole)
                                self.dataChanged.emit(index, index)
                        return None
                except:
                    pass


    def setData(self, index, value, role=Qt.EditRole):
        """ Adjust the data (set it to <value>) depending on the given
            index and role.
        """
        if role != Qt.EditRole:
            return False

        if index.isValid() and 0 <= index.row() < len(self.Fabrics):
            aPly = self.Fabrics[index.row()]
            if index.column() == 0:
                aPly["fabric_id"] = f"{value}"
            elif index.column() == 1:
                aPly["fabric_descript"] = f"{value}"
            else:
                return False

            self.dataChanged.emit(index, index)
            return True

        return False