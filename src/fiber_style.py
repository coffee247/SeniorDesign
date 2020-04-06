from PyQt5.QtCore import QAbstractTableModel, Qt, QModelIndex
from PyQt5.QtWidgets import QMessageBox

""" Reference https://github.com/pyside/pyside2-examples/blob/dev/examples/widgets/itemviews/addressbook """


class fiber_styles_model(QAbstractTableModel):
    def __init__(self, fiber_styles_list=None, parent=None):
        super(fiber_styles_model, self).__init__(parent)
        # set up grains attributes
        self.caller = object
        if fiber_styles_list is None:
            self.fiber_styles_list = []
        else:
            self.fiber_styles_list = fiber_styles_list

    # Modal Warning Box
    def issueWarning(self, Message):
        QMessageBox.about(self, "Warning", Message)

    def rowCount(self, index=QModelIndex()):
        """ Returns the number of rows the model holds """
        return len(self.fiber_styles_list)

    def columnCount(self, index=QModelIndex()):
        return 1    #  fields:  fiberStyle

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid():
            return None

        if not 0 <= index.row() < len(self.fiber_styles_list):
            return None

        if role == Qt.DisplayRole:
            styleVal = self.fiber_styles_list[index.row()]["fiberStyle"]
            return styleVal



    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "Style"
            return None



    def insertRows(self, position, rows=1, index=QModelIndex()):
        """Insert a row of range data into FabricsModel. """
        self.beginInsertRows(QModelIndex(), position, position + rows - 1)

        for row in range(rows):
            self.fiber_styles_list.insert(position + row, {"fiberStyle": ""})

        self.endInsertRows()
        return True

    def removeRows(self, position, rows=1, index=QModelIndex()):
        """ Remove a row from  ProjectilesModel. """
        self.beginRemoveRows(QModelIndex(), position, position + rows - 1)

        del self.fiber_styles_list[position:position + rows]

        self.endRemoveRows()
        self.dataChanged.emit(index, index)
        return True

    def addData(self, styleVal):
        rowCount = self.rowCount()
        for i in range(rowCount):
            j = i+1
            if styleVal < self.fiber_styles_list[0]["fiberStyle"]:
                self.insertRow(0)
                index = self.createIndex(0, 0)
                self.setData(index, styleVal, role=Qt.EditRole)

            elif styleVal > self.fiber_styles_list[i]["fiberStyle"]:
                try:
                    if i < self.rowCount()-1:
                        if styleVal < self.fiber_styles_list[j]["fiberStyle"]:
                            self.insertRow(j)
                            index = self.createIndex(j, 0)
                            self.setData(index, styleVal, role=Qt.EditRole)
                    else:
                        self.insertRow(j)
                        index = self.createIndex(j, 0)
                        self.setData(index, styleVal, role=Qt.EditRole)
                except:
                    pass

    def setData(self, index, value, role=Qt.EditRole):
        """ Adjust the data (set it to <value>) depending on the given
            index and role.
        """
        if role != Qt.EditRole:
            return False

        if index.isValid() and 0 <= index.row() < len(self.fiber_styles_list):
            aStyle = self.fiber_styles_list[index.row()]
            if index.column() == 0:
                aStyle["fabricType"] = f"{value}"
            else:
                return False

            self.dataChanged.emit(index, index)
            return True

        return False