from PyQt5.QtCore import QAbstractTableModel, Qt, QModelIndex
from PyQt5.QtWidgets import QMessageBox

""" Reference https://github.com/pyside/pyside2-examples/blob/dev/examples/widgets/itemviews/addressbook """


class FiberTypesModel(QAbstractTableModel):
    def __init__(self, fiberType_objects_list=None, parent=None):
        super(FiberTypesModel, self).__init__(parent)
        # set up grains attributes
        self.caller = object
        if fiberType_objects_list is None:
            self.fiberType_objects_list = []
        else:
            self.fiberType_objects_list = fiberType_objects_list

    # Modal Warning Box
    def issueWarning(self, Message):
        QMessageBox.about(self, "Warning", Message)

    def rowCount(self, index=QModelIndex()):
        """ Returns the number of rows the model holds """
        return len(self.fiberType_objects_list)

    def columnCount(self, index=QModelIndex()):
        return 1    #  fields:  fiberType

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid():
            return None

        if not 0 <= index.row() < len(self.fiberType_objects_list):
            return None

        if role == Qt.DisplayRole:
            fabricVal = self.fiberType_objects_list[index.row()]["fiberType"]
            return fabricVal



    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "fiber_Type"
            return None



    def insertRows(self, position, rows=1, index=QModelIndex()):
        """Insert a row of range data into FiberTypesModel. """
        self.beginInsertRows(QModelIndex(), position, position + rows - 1)

        for row in range(rows):
            self.fiberType_objects_list.insert(position + row, {"fiberType": ""})

        self.endInsertRows()
        return True

    def removeRows(self, position, rows=1, index=QModelIndex()):
        """ Remove a row from  ProjectilesModel. """
        self.beginRemoveRows(QModelIndex(), position, position + rows - 1)

        del self.fiberType_objects_list[position:position + rows]

        self.endRemoveRows()
        self.dataChanged.emit(index, index)
        return True

    def addData(self, fiberTypeVal):
        rowCount = self.rowCount()
        for i in range(rowCount):
            j = i+1
            if fiberTypeVal < self.fiberType_objects_list[0]["fiberType"]:
                self.insertRow(0)
                index = self.createIndex(0, 0)
                self.setData(index, fiberTypeVal, role=Qt.EditRole)

            elif fiberTypeVal > self.fiberType_objects_list[i]["fiberType"]:
                try:
                    if i < self.rowCount()-1:
                        if fiberTypeVal < self.fiberType_objects_list[j]["fiberType"]:
                            self.insertRow(j)
                            index = self.createIndex(j, 0)
                            self.setData(index, fiberTypeVal, role=Qt.EditRole)
                    else:
                        self.insertRow(j)
                        index = self.createIndex(j, 0)
                        self.setData(index, fiberTypeVal, role=Qt.EditRole)
                except:
                    pass

    def setData(self, index, value, role=Qt.EditRole):
        """ Adjust the data (set it to <value>) depending on the given
            index and role.
        """
        if role != Qt.EditRole:
            return False

        if index.isValid() and 0 <= index.row() < len(self.fiberType_objects_list):
            aFiberType = self.fiberType_objects_list[index.row()]
            if index.column() == 0:
                aFiberType["fiberType"] = f"{value}"
            else:
                return False

            self.dataChanged.emit(index, index)
            return True

        return False