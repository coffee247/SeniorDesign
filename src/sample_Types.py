from PyQt5.QtCore import QAbstractTableModel, Qt, QModelIndex
from PyQt5.QtWidgets import QMessageBox

""" Reference https://github.com/pyside/pyside2-examples/blob/dev/examples/widgets/itemviews/addressbook """


class sample_types_model(QAbstractTableModel):
    def __init__(self, sample_types_objects_list=None, parent=None):
        super(sample_types_model, self).__init__(parent)
        # set up grains attributes
        self.caller = object
        if sample_types_objects_list is None:
            self.sample_types_objects_list = []
        else:
            self.sample_types_objects_list = sample_types_objects_list

    # Modal Warning Box
    def issueWarning(self, Message):
        QMessageBox.about(self, "Warning", Message)

    def rowCount(self, index=QModelIndex()):
        """ Returns the number of rows the model holds """
        return len(self.sample_types_objects_list)

    def columnCount(self, index=QModelIndex()):
        return 1    #  fields:  type_name

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid():
            return None

        if not 0 <= index.row() < len(self.sample_types_objects_list):
            return None

        if role == Qt.DisplayRole:
            sampleTypeVal = self.sample_types_objects_list[index.row()]["type_name"]
            return sampleTypeVal



    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "sample_Type"
            return None



    def insertRows(self, position, rows=1, index=QModelIndex()):
        """Insert a row of range data into type_namesModel. """
        self.beginInsertRows(QModelIndex(), position, position + rows - 1)

        for row in range(rows):
            self.sample_types_objects_list.insert(position + row, {"type_name": ""})

        self.endInsertRows()
        return True

    def removeRows(self, position, rows=1, index=QModelIndex()):
        """ Remove a row from  ProjectilesModel. """
        self.beginRemoveRows(QModelIndex(), position, position + rows - 1)

        del self.sample_types_objects_list[position:position + rows]

        self.endRemoveRows()
        self.dataChanged.emit(index, index)
        return True

    def addData(self, type_nameVal):
        rowCount = self.rowCount()
        for i in range(rowCount):
            j = i+1
            if type_nameVal < self.sample_types_objects_list[0]["type_name"]:
                self.insertRow(0)
                index = self.createIndex(0, 0)
                self.setData(index, type_nameVal, role=Qt.EditRole)

            elif type_nameVal > self.sample_types_objects_list[i]["type_name"]:
                try:
                    if i < self.rowCount()-1:
                        if type_nameVal < self.sample_types_objects_list[j]["type_name"]:
                            self.insertRow(j)
                            index = self.createIndex(j, 0)
                            self.setData(index, type_nameVal, role=Qt.EditRole)
                    else:
                        self.insertRow(j)
                        index = self.createIndex(j, 0)
                        self.setData(index, type_nameVal, role=Qt.EditRole)
                except:
                    pass

    def setData(self, index, value, role=Qt.EditRole):
        """ Adjust the data (set it to <value>) depending on the given
            index and role.
        """
        if role != Qt.EditRole:
            return False

        if index.isValid() and 0 <= index.row() < len(self.sample_types_objects_list):
            atype_name = self.sample_types_objects_list[index.row()]
            if index.column() == 0:
                atype_name["type_name"] = f"{value}"
            else:
                return False

            self.dataChanged.emit(index, index)
            return True

        return False