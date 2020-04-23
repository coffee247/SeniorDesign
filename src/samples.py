from PyQt5.QtCore import QAbstractTableModel, Qt, QModelIndex
from PyQt5.QtWidgets import QMessageBox

""" Reference https://github.com/pyside/pyside2-examples/blob/dev/examples/widgets/itemviews/addressbook """


class SamplesModel(QAbstractTableModel):
    def __init__(self, Samples=None, parent=None):
        super(SamplesModel, self).__init__(parent)
        # create Samples list if it does not exist
        if Samples is None:
            self.Samples = []
        else:
            self.Samples = Samples

    # Modal Warning Box
    def issueWarning(self, Message):
        QMessageBox.about(self, "Warning", Message)


 #   def rowCount(self, index=QModelIndex()):
    def rowCount(self, index=QModelIndex()):
        """ Returns the number of rows the model holds """
        return len(self.Samples)

    def columnCount(self, index=QModelIndex()):
        return 8    #  fields:

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid():
            return None

        if not 0 <= index.row() < len(self.Samples):
            return None

        if role == Qt.DisplayRole:

            sample_descript = self.Samples[index.row()]["sample_descript"]
            backing = self.Samples[index.row()]["backing"]
            sample_type = self.Samples[index.row()]["sample_type"]
            maker = self.Samples[index.row()]["manufacturer"]
            dim_w = self.Samples[index.row()]["dimensions_w"]
            dim_h = self.Samples[index.row()]["dimensions_h"]
            fabric_id = self.Samples[index.row()]["fabric_id"]
            sampleID = self.Samples[index.row()]["sample_id"]

            if index.column() == 0:
                return sample_descript
            elif index.column() == 1:
                return backing
            elif index.column() == 2:
                return sample_type
            elif index.column() == 3:
                return maker
            elif index.column() == 4:
                return dim_w
            elif index.column() == 5:
                return dim_h
            elif index.column() == 6:
                return fabric_id
            elif index.column() == 7:
                return sampleID
            return None



    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "Sample Description"
            if section == 1:
                return "Backing"
            if section == 2:
                return "Sample Type"
            if section == 3:
                return "Maker"
            if section == 4:
                return "Width"
            if section == 5:
                return "Height"
            if section == 6:
                return "fabric_id"
            if section == 7:
                return "sample_id"
            return None

        # if orientation == Qt.Vertical:
        #     if role == Qt.DisplayRole:
        #         return " --> "


    def insertRows(self, position, rows=1, index=QModelIndex()):
        """Insert a row of range data into RangeModel. """
        self.beginInsertRows(QModelIndex(), position, position + rows -1)

        for row in range(rows):
            self.Samples.insert(position + row, {"sample_descript": "", "backing": "", "sample_type": "",
                                                 "manufacturer": "", "dimension_w": "", "dimension_h": "",
                                                 "fabric_id": "", "sample_id": ""})
            self.dataChanged.emit(index, index)
        self.endInsertRows()
        return True

    def removeRows(self, position, rows=1, index=QModelIndex()):
        """ Remove a row from  ProjectilesModel. """
        self.beginRemoveRows(QModelIndex(), position, position + rows - 1)

        del self.Samples[position:position + rows]

        self.endRemoveRows()
        self.dataChanged.emit(index, index)
        return True

    def addData(self, sample_descript, backing, sample_type, maker, dim_w, dim_h, fabric_id, sampleID):
        rowCount = self.rowCount()
        self.insertRow(0)
        for i in range(5):
            index = self.createIndex(0, i)
            if i == 0:
                self.setData(index, sample_descript, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 1:
                self.setData(index, backing, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 2:
                self.setData(index, sample_type, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 3:
                self.setData(index, maker, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 4:
                self.setData(index, dim_w, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 5:
                self.setData(index, dim_h, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 6:
                self.setData(index, fabric_id, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 7:
                self.setData(index, sampleID, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
        return None



    def setData(self, index, value, role=Qt.EditRole):
        """ Adjust the data (set it to <value>) depending on the given
            index and role.
        """
        if role != Qt.EditRole:
            return False

        if index.isValid() and 0 <= index.row() < len(self.Samples):
            aSample = self.Samples[index.row()]
            if index.column() == 0:
                aSample["sample_descript"] = f"{value}"
            elif index.column() == 1:
                aSample["backing"] = f"{value}"
            elif index.column() == 2:
                aSample["sample_type"] = f"{value}"
            elif index.column() == 3:
                aSample["manufacturer"] = f"{value}"
            elif index.column() == 4:
                aSample["dimension_w"] = f"{value}"
            elif index.column() == 5:
                aSample["dimension_h"] = f"{value}"
            elif index.column() == 6:
                aSample["fabric_id"] = f"{value}"
            elif index.column() == 7:
                aSample["sample_id"] = f"{value}"
            else:
                return False

            self.dataChanged.emit(index, index)
            return True

        return False