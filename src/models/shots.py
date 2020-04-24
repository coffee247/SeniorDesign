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
        return 14    #  fields:  zeroth index and 13 others

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
            shot_obliquity = self.Shots[index.row()]["obliquity"]
            shot_backing = self.Shots[index.row()]["backingID"]
            shot_rangeID = self.Shots[index.row()]["rangeID"]
            shot_ballistician = self.Shots[index.row()]["ballistician"]
            shot_envID = self.Shots[index.row()]['envID']
            shot_fabricID = self.Shots[index.row()]["fabricID"]
            shot_projoID = self.Shots[index.row()]["projoID"]
            shot_grains = self.Shots[index.row()]["grains"]
            shot_powder = self.Shots[index.row()]['powder']


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
                return shot_backing
            elif index.column() == 7:
                return shot_rangeID
            elif index.column() == 8:
                return shot_ballistician
            elif index.column() == 9:
                return shot_envID
            elif index.column() == 10:
                return shot_fabricID
            elif index.column() == 11:
                return shot_projoID
            elif index.column() == 12:
                return shot_grains
            elif index.column() == 13:
                return shot_powder
            return None



    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "SHOTID"
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
            self.Shots.insert(position + row,
                              {"SHOTID": "",
                               "ShotDate": "",
                               "scrnset1rawdat": "",
                               "scrnset2rawdat": "",
                               "magrawdat": "",
                               "obliquity": "",
                               "backingID": "",
                               "rangeID": "",
                               "ballistician": "",
                               "envID": "",
                               "fabricID": "",
                               "projoID": "",
                               "grains": "",
                               "powder": ""
                               })
            self.dataChanged.emit(index, index)
        self.endInsertRows()
        return True

    def removeRows(self, position, rows=1, index=QModelIndex()):
        """ Remove a row from  ProjectilesModel. """
        self.beginRemoveRows(QModelIndex(), position, position + rows - 1)

        del self.Shots[position:position + rows]

        self.endRemoveRows()
        self.dataChanged.emit(index, index)
        return True

    def addData(self, shot_ID, shot_date, shot_scrnset1raw, shot_scrnset2raw,
                shot_magrawdat, shot_obliquity, shot_backing, shot_rangeID,
                shot_ballistician, shot_envID, shot_fabricID, shot_projoID,
                shot_grains, shot_powder):
        rowCount = self.rowCount()
        self.insertRow(0)
        for i in range(5):
            index = self.createIndex(0, i)
            if i == 0:
                self.setData(index, shot_ID, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 1:
                self.setData(index, shot_date, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 2:
                self.setData(index, shot_scrnset1raw, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 3:
                self.setData(index, shot_scrnset2raw, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 4:
                self.setData(index, shot_magrawdat, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 5:
                self.setData(index, shot_obliquity, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 6:
                self.setData(index, shot_backing, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 7:
                self.setData(index, shot_rangeID, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 8:
                self.setData(index, shot_ballistician, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 9:
                self.setData(index, shot_envID, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 10:
                self.setData(index, shot_fabricID, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 11:
                self.setData(index, shot_projoID, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 12:
                self.setData(index, shot_grains, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 13:
                self.setData(index, shot_powder, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
        return None



    def setData(self, index, value, role=Qt.EditRole):
        """ Adjust the data (set it to <value>) depending on the given
            index and role.
        """
        if role != Qt.EditRole:
            return False

        if index.isValid() and 0 <= index.row() < len(self.Shots):
            aShot = self.Shots[index.row()]
            if index.column() == 0:
                aShot["SHOTID"] = f"{value}"
            elif index.column() == 1:
                aShot["ShotDate"] = f"{value}"
            elif index.column() == 2:
                aShot["scrnset1rawdat"] = f"{value}"
            elif index.column() == 3:
                aShot["scrnset2rawdat"] = f"{value}"
            elif index.column() == 4:
                aShot["magrawdat"] = f"{value}"
            elif index.column() == 5:
                aShot["obliquity"] = f"{value}"
            elif index.column() == 6:
                aShot["backingID"] = f"{value}"
            elif index.column() == 7:
                aShot["rangeID"] = f"{value}"
            elif index.column() == 8:
                aShot["ballistician"] = f"{value}"
            elif index.column() == 9:
                aShot["envID"] = f"{value}"
            elif index.column() == 10:
                aShot["fabricID"] = f"{value}"
            elif index.column() == 11:
                aShot["projoID"] = f"{value}"
            elif index.column() == 12:
                aShot["grains"] = f"{value}"
            elif index.column() == 13:
                aShot["powder"] = f"{value}"
            else:
                return False

            self.dataChanged.emit(index, index)
            return True

        return False