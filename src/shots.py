from PyQt5.QtCore import QAbstractTableModel, Qt, QModelIndex
from PyQt5.QtWidgets import QMessageBox

""" Reference https://github.com/pyside/pyside2-examples/blob/dev/examples/widgets/itemviews/addressbook """


class ShotsModel(QAbstractTableModel):
    def __init__(self, Shots=None, parent=None):
        super(ShotsModel, self).__init__(parent)
        # create Plies list if it does not exist
        if Shots is None:
            self.Shots = []
        else:
            self.Shots = Shots

    # Modal Warning Box
    def issueWarning(self, Message):
        QMessageBox.about(self, "Warning", Message)


 #   def rowCount(self, index=QModelIndex()):
    def rowCount(self, index=QModelIndex()):
        """ Returns the number of rows the model holds """
        return len(self.Shots)

    def columnCount(self, index=QModelIndex()):
        return 14    #  fields:

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid():
            return None

        if not 0 <= index.row() < len(self.Shots):
            return None

        if role == Qt.DisplayRole:

            shot_ID = self.Shots[index.row()]["SHOTID"]
            shot_date = self.Shots[index.row()]["ShotDate"]
            shot_scrnset1raw = self.Shots[index.row()]["scrnset1rawdat"]
            shot_scrnset2raw = self.Shots[index.row()]["scrnset2rawdat"]
            shot_magrawdat = self.Shots[index.row()]["magrawdat"]
            shot_obliquity = self.Shots[index.row()]['obliquity']


            if index.column() == 0:
                return shot_ID
            elif index.column() == 1:
                return shot_date
            elif index.column() == 2:
                return shot_scrnset1raw
            elif index.column() == 3:
                return shot_scrnset2raw
            elif index.column() == 4:
                return shot_magrawdat
            elif index.column() == 5:
                return shot_obliquity
            elif index.column() == 6:
                return shot_date
            elif index.column() == 7:
                return shot_scrnset1raw
            elif index.column() == 8:
                return shot_scrnset2raw
            elif index.column() == 9:
                return shot_magrawdat
            elif index.column() == 10:
                return shot_obliquity
            elif index.column() == 11:
                return shot_date
            elif index.column() == 12:
                return shot_scrnset1raw
            elif index.column() == 13:
                return shot_scrnset2raw
            return None



    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "ID"
            if section == 1:
                return "Date"
            if section == 2:
                return "Scrn_Set 1"
            if section == 3:
                return "Scrn_Set 2"
            if section == 4:
                return "Mag"
            if section == 5:
                return "Obliq"
            if section == 6:
                return "backing"
            if section == 7:
                return "rangeID"
            if section == 8:
                return "ballistician"
            if section == 9:
                return "Environ"
            if section == 10:
                return "fabric"
            if section == 11:
                return "projectile"
            if section == 12:
                return "grains"
            if section == 13:
                return "powder"
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
        self.insertRow(0)
        for i in range(5):
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