from PyQt5.QtCore import QAbstractTableModel, Qt, QModelIndex
from PyQt5.QtWidgets import QMessageBox

""" Reference https://github.com/pyside/pyside2-examples/blob/dev/examples/widgets/itemviews/addressbook """


class FabricsModel(QAbstractTableModel):
    def __init__(self, fabric_objects_list=None, parent=None):
        super(FabricsModel, self).__init__(parent)
        # set up grains attributes
        self.caller = object
        if fabric_objects_list is None:
            self.fabric_objects_list = []
        else:
            self.fabric_objects_list = fabric_objects_list

    # Modal Warning Box
    def issueWarning(self, Message):
        QMessageBox.about(self, "Warning", Message)

    def rowCount(self, index=QModelIndex()):
        """ Returns the number of rows the model holds """
        return len(self.fabric_objects_list)

    def columnCount(self, index=QModelIndex()):
        return 1    #  fields:  fabricType

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid():
            return None

        if not 0 <= index.row() < len(self.fabric_objects_list):
            return None

        if role == Qt.DisplayRole:
            fabricVal = self.fabric_objects_list[index.row()]["fabricType"]
            return fabricVal



    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "fabricType"
            return None



    def insertRows(self, position, rows=1, index=QModelIndex()):
        """Insert a row of range data into FabricsModel. """
        self.beginInsertRows(QModelIndex(), position, position + rows - 1)

        for row in range(rows):
            self.fabric_objects_list.insert(position + row, {"fabricType": ""})

        self.endInsertRows()
        return True

    def removeRows(self, position, rows=1, index=QModelIndex()):
        """ Remove a row from  ProjectilesModel. """
        self.beginRemoveRows(QModelIndex(), position, position + rows - 1)

        del self.fabric_objects_list[position:position + rows]

        self.endRemoveRows()
        self.dataChanged.emit(index, index)
        return True

    def addData(self, fabricsVal):
        rowCount = self.rowCount()
        for i in range(rowCount):
            j = i+1
            if fabricsVal < self.fabric_objects_list[0]["fabricType"]:
                self.insertRow(0)
                index = self.createIndex(0, 0)
                self.setData(index, fabricsVal, role=Qt.EditRole)

            elif fabricsVal > self.fabric_objects_list[i]["fabricType"]:
                try:
                    if i < self.rowCount()-1:
                        if fabricsVal < self.Powders[j]["fabricType"]:
                            self.insertRow(j)
                            index = self.createIndex(j, 0)
                            self.setData(index, fabricsVal, role=Qt.EditRole)
                    else:
                        self.insertRow(j)
                        index = self.createIndex(j, 0)
                        self.setData(index, fabricsVal, role=Qt.EditRole)
                except:
                    pass

    def setData(self, index, value, role=Qt.EditRole):
        """ Adjust the data (set it to <value>) depending on the given
            index and role.
        """
        if role != Qt.EditRole:
            return False

        if index.isValid() and 0 <= index.row() < len(self.fabric_objects_list):
            aFabric = self.fabric_objects_list[index.row()]
            if index.column() == 0:
                aFabric["fabricType"] = f"{value}"
            else:
                return False

            self.dataChanged.emit(index, index)
            return True

        return False