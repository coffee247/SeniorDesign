

from PyQt5.QtCore import QAbstractTableModel, Qt, QModelIndex

""" Reference https://github.com/pyside/pyside2-examples/blob/dev/examples/widgets/itemviews/addressbook """

class RangeModel(QAbstractTableModel):
    def __init__(self, ranges=None, parent=None):
        super(RangeModel, self).__init__(parent)
        # set up range attributes
        self.units = "cm"
        if ranges is None:
            self.ranges = []
        else:
            self.ranges = ranges

    def rowCount(self, index=QModelIndex()):
        """ Returns the number of rows the model holds """
        return len(self.ranges)

    def columnCount(self, index=QModelIndex()):
        return 6  # fields:  date, scr1-scr2, scrn2-targ, mid-scr2, muz-mid

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid():
            return None

        if not 0 <= index.row() < len(self.ranges):
            return None

        if role == Qt.DisplayRole:
            ID = self.ranges[index.row()]["ID"]
            date = self.ranges[index.row()]["Date"]
            scrn1_scrn2 = self.ranges[index.row()]["scr1_scr2"]
            scrn2_targ = self.ranges[index.row()]["scr2_targ"]
            mid_scrn2 = self.ranges[index.row()]["mid_scr2"]
            muz_mid = self.ranges[index.row()]["muz_mid"]

            if index.column() == 0:  # if first column
                return ID
            elif index.column() == 1:
                return date
            elif index.column() == 2:
                return scrn1_scrn2
            elif index.column() == 3:
                return scrn2_targ
            elif index.column() == 4:
                return mid_scrn2
            elif index.column() == 5:
                return muz_mid
            return None

    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "ID"
            elif section == 1:
                return "Created"
            elif section == 2:
                return " S1 to S2 "
            elif section == 3:
                return " S2 to Targ "
            elif section == 4:
                return " Mid to S2 "
            elif section == 5:
                return " Muz to Mid "
            return None
        if orientation == Qt.Vertical:
            if role == Qt.DisplayRole:
                return " --> "

    def addData(self, ID, date, s1s2, s2Targ, midS2, muzMid):
        rowCount = self.rowCount()
        for i in range(rowCount):
            j = i + 1
            if int(ID) < int(self.ranges[0]["ID"]):
                self.insertRow(0)
                for i in range(6):
                    index = self.createIndex(0, i)
                    if i == 0:
                        self.setData(index, ID, role=Qt.EditRole)
                    elif i == 1:
                        self.setData(index, date, role=Qt.EditRole)
                    elif i == 2:
                        self.setData(index, s1s2, role=Qt.EditRole)
                    elif i == 3:
                        self.setData(index, s2Targ, role=Qt.EditRole)
                    elif i == 4:
                        self.setData(index, midS2, role=Qt.EditRole)
                    elif i == 5:
                        self.setData(index, muzMid, role=Qt.EditRole)
            elif int(ID) > int(self.ranges[i]["ID"]):
                try:
                    if i < self.rowCount() - 1:
                        if int(ID) < int(self.Projos[j]["ID"]):
                            self.insertRow(j)
                            for i in range(6):
                                index = self.createIndex(j, i)
                                if i == 0:
                                    self.setData(index, ID, role=Qt.EditRole)
                                elif i == 1:
                                    self.setData(index, date, role=Qt.EditRole)
                                elif i == 2:
                                    self.setData(index, s1s2, role=Qt.EditRole)
                                elif i == 3:
                                    self.setData(index, s2Targ, role=Qt.EditRole)
                                elif i == 4:
                                    self.setData(index, midS2, role=Qt.EditRole)
                                elif i == 5:
                                    self.setData(index, muzMid, role=Qt.EditRole)
                    else:
                        self.insertRow(j)
                        for i in range(6):
                            index = self.createIndex(j, i)
                            if i == 0:
                                self.setData(index, ID, role=Qt.EditRole)
                            elif i == 1:
                                self.setData(index, date, role=Qt.EditRole)
                            elif i == 2:
                                self.setData(index, s1s2, role=Qt.EditRole)
                            elif i == 3:
                                self.setData(index, s2Targ, role=Qt.EditRole)
                            elif i == 4:
                                self.setData(index, midS2, role=Qt.EditRole)
                            elif i == 5:
                                self.setData(index, muzMid, role=Qt.EditRole)
                except:
                    pass

    def insertRows(self, position, rows=1, index=QModelIndex()):
        """Insert a row of range data into RangeModel. """
        self.beginInsertRows(QModelIndex(), position, position + rows - 1)
        self.ranges.insert(position + position + rows - 1,
                           {"ID": "", "Date": "", "scr1_scr2": "", "scr2_targ": "", "mid_scr2": "",
                            "muz_mid": ""})

        self.endInsertRows()
        return True

    def removeRows(self, position, rows=1, index=QModelIndex()):
        """ Remove a row from  RangeModel. """
        self.beginRemoveRows(QModelIndex(), position, position + rows - 1)

        del self.ranges[position:position + rows]

        self.endRemoveRows()
        return True

    def setData(self, index, value, role=Qt.EditRole):
        """ Adjust the data (set it to <value>) depending on the given
            index and role.
        """
        if role != Qt.EditRole:
            return False

        if index.isValid() and 0 <= index.row() < len(self.ranges):
            arange = self.ranges[index.row()]
            if index.column() == 0:
                arange["ID"] = f"{value}"
            elif index.column() == 1:
                arange["Date"] = f"{value}"
            elif index.column() == 2:
                arange["scr1_scr2"] = f"{value}"
            elif index.column() == 3:
                arange["scr2_targ"] = f"{value}"
            elif index.column() == 4:
                arange["mid_scr2"] = f"{value}"
            elif index.column() == 5:
                arange["muz_mid"] = f"{value}"
            else:
                return False

            self.dataChanged.emit(index, index)
            return True

        return False