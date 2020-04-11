from PyQt5.QtCore import QAbstractTableModel, Qt, QModelIndex
from PyQt5.QtWidgets import QMessageBox

""" Reference https://github.com/pyside/pyside2-examples/blob/dev/examples/widgets/itemviews/addressbook """


class PliesModel(QAbstractTableModel):
    def __init__(self, Plies=None, parent=None):
        super(PliesModel, self).__init__(parent)
        # create Plies list if it does not exist
        if Plies is None:
            self.Plies = []
        else:
            self.Plies = Plies

    # Modal Warning Box
    def issueWarning(self, Message):
        QMessageBox.about(self, "Warning", Message)


 #   def rowCount(self, index=QModelIndex()):
    def rowCount(self, index=QModelIndex()):
        """ Returns the number of rows the model holds """
        return len(self.Plies)

    def columnCount(self, index=QModelIndex()):
        return 5    #  fields:

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid():
            return None

        if not 0 <= index.row() < len(self.Plies):
            return None

        if role == Qt.DisplayRole:

            ply_descript = self.Plies[index.row()]["ply_descript"]
            fiber_style = self.Plies[index.row()]["fiber_style"]
            fiber_type = self.Plies[index.row()]["fiber_type"]
            ply_weight = self.Plies[index.row()]["ply_weight"]
            fabric_id = self.Plies[index.row()]["fabric_id"]

            if index.column() == 0:
                return ply_descript
            elif index.column() == 1:
                return fiber_style
            elif index.column() == 2:
                return fiber_type
            elif index.column() == 3:
                return ply_weight
            elif index.column() == 4:
                return fabric_id
            return None



    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "Ply Description"
            if section == 1:
                return "fiber style"
            if section == 2:
                return "fiber type"
            if section == 3:
                return "ply weight (grams)"
            if section == 4:
                return "fabric_id"
            return None

        # if orientation == Qt.Vertical:
        #     if role == Qt.DisplayRole:
        #         return " --> "


    def insertRows(self, position, rows=1, index=QModelIndex()):
        """Insert a row of range data into RangeModel. """
        self.beginInsertRows(QModelIndex(), position, position + rows - 1)

        for row in range(rows):
            self.Plies.insert(position + row, {"ply_descript": "", "fiber_style": "", "fiber_type": "", "ply_weight": "", "fabric_id": ""})
            self.dataChanged.emit(index, index)
        self.endInsertRows()
        return True

    def removeRows(self, position, rows=1, index=QModelIndex()):
        """ Remove a row from  ProjectilesModel. """
        self.beginRemoveRows(QModelIndex(), position, position + rows - 1)

        del self.Plies[position:position + rows]

        self.endRemoveRows()
        self.dataChanged.emit(index, index)
        return True

    def addData(self, ply_descript, fiber_style, fiber_type, ply_weight, fabric_id):
        rowCount = self.rowCount()
        for i in range(rowCount):
            j = i + 1
            if fiber_type < self.Plies[0]["fiber_type"]:
                self.insertRow(0)
                for i in range(3):
                    index = self.createIndex(0, i)
                    if i == 0:
                        self.setData(index, ply_descript, role=Qt.EditRole)
                        self.dataChanged.emit(index, index)
                    elif i == 1:
                        self.setData(index, fiber_style, role=Qt.EditRole)
                        self.dataChanged.emit(index, index)
                    elif i == 2:
                        self.setData(index, fiber_type, role=Qt.EditRole)
                        self.dataChanged.emit(index, index)
                    elif i == 3:
                        self.setData(index, ply_weight, role=Qt.EditRole)
                        self.dataChanged.emit(index, index)
                    elif i == 4:
                        self.setData(index, fabric_id, role=Qt.EditRole)
                        self.dataChanged.emit(index, index)
                return None
            elif fiber_type > self.Plies[i]["fiber_type"]:
                try:
                    if i < self.rowCount() - 1:
                        if fiber_type <= self.Plies[j]["fiber_type"]:
                            self.insertRow(j)
                            for i in range(3):
                                index = self.createIndex(j, i)
                                if i == 0:
                                    self.setData(index, ply_descript, role=Qt.EditRole)
                                    self.dataChanged.emit(index, index)
                                elif i == 1:
                                    self.setData(index,fiber_style, role=Qt.EditRole)
                                    self.dataChanged.emit(index, index)
                                elif i == 2:
                                    self.setData(index, fiber_type, role=Qt.EditRole)
                                    self.dataChanged.emit(index, index)
                                elif i == 3:
                                    self.setData(index, ply_weight, role=Qt.EditRole)
                                    self.dataChanged.emit(index, index)
                                elif i == 4:
                                    self.setData(index, fabric_id, role=Qt.EditRole)
                                    self.dataChanged.emit(index, index)
                            return None
                    else:
                        self.insertRow(j)
                        for i in range(4):
                            index = self.createIndex(j, i)
                            if i == 0:
                                self.setData(index, ply_descript, role=Qt.EditRole)
                                self.dataChanged.emit(index, index)
                            elif i == 1:
                                self.setData(index, fiber_style, role=Qt.EditRole)
                                self.dataChanged.emit(index, index)
                            elif i == 2:
                                self.setData(index, fiber_type, role=Qt.EditRole)
                                self.dataChanged.emit(index, index)
                            elif i == 3:
                                self.setData(index, ply_weight, role=Qt.EditRole)
                                self.dataChanged.emit(index, index)
                            elif i == 4:
                                self.setData(index, fabric_id, role=Qt.EditRole)
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

        if index.isValid() and 0 <= index.row() < len(self.Plies):
            aPly = self.Plies[index.row()]
            if index.column() == 0:
                aPly["ply_descript"] = f"{value}"
            elif index.column() == 1:
                aPly["fiber_style"] = f"{value}"
            elif index.column() == 2:
                aPly["fiber_type"] = f"{value}"
            elif index.column() == 3:
                aPly["ply_weight"] = f"{value}"
            elif index.column() == 4:
                aPly["fabric_id"] = f"{value}"
            else:
                return False

            self.dataChanged.emit(index, index)
            return True

        return False