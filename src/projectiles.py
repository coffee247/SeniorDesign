from PyQt5.QtCore import QAbstractTableModel, Qt, QModelIndex
from PyQt5.QtWidgets import QMessageBox

""" Reference https://github.com/pyside/pyside2-examples/blob/dev/examples/widgets/itemviews/addressbook """


class ProjectilesModel(QAbstractTableModel):
    def __init__(self, Projos=None, parent=None):
        super(ProjectilesModel, self).__init__(parent)
        # create Projos list if it does not exist
        if Projos is None:
            self.Projos = []
        else:
            self.Projos = Projos

    # Modal Warning Box
    def issueWarning(self, Message):
        QMessageBox.about(self, "Warning", Message)
        data = list(('test', 'teste')[0].keys())

    def rowCount(self, index=QModelIndex()):
        """ Returns the number of rows the model holds """
        return len(self.Projos)

    def columnCount(self, index=QModelIndex()):
        return 3    #  fields:  projectileType, projoMass, projoDrag

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid():
            return None

        if not 0 <= index.row() < len(self.Projos):
            return None

        if role == Qt.DisplayRole:

            projectileType = self.Projos[index.row()]["projectileType"]
            projoMass = self.Projos[index.row()]["projo_mass"]
            projoDrag = self.Projos[index.row()]["projo_DragCoef"]

            if index.column() == 0:
                return projectileType
            elif index.column() == 1:
                return projoMass
            elif index.column() == 2:
                return projoDrag
            return None



    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "Projectile"
            if section == 1:
                return "Mass"
            if section == 2:
                return "Drag Coef"
            return None

        # if orientation == Qt.Vertical:
        #     if role == Qt.DisplayRole:
        #         return " --> "


    def insertRows(self, position, rows=1, index=QModelIndex()):
        """Insert a row of range data into RangeModel. """
        self.beginInsertRows(QModelIndex(), position, position + rows - 1)

        for row in range(rows):
            self.Projos.insert(position + row, {"projectileType": "", "projo_mass": "", "projo_DragCoef": ""})

        self.endInsertRows()
        return True

    def removeRows(self, position, rows=1, index=QModelIndex()):
        """ Remove a row from  ProjectilesModel. """
        self.beginRemoveRows(QModelIndex(), position, position + rows - 1)

        del self.Projos[position:position + rows]

        self.endRemoveRows()
        self.dataChanged.emit(index, index)
        return True

    def addData(self, projectileType, projo_mass, projo_DragCoef):
        rowCount = self.rowCount()
        for i in range(rowCount):
            j = i + 1
            if projectileType < self.Projos[0]["projectileType"]:
                self.insertRow(0)
                for i in range(3):
                    index = self.createIndex(j, i)
                    if i == 0:
                        self.setData(index, projectileType, role=Qt.EditRole)
                    elif i == 1:
                        self.setData(index, projo_mass, role=Qt.EditRole)
                    elif i == 2:
                        self.setData(index, projo_DragCoef, role=Qt.EditRole)
            elif projectileType > self.Projos[i]["projectileType"]:
                try:
                    if i < self.rowCount() - 1:
                        if projectileType < self.Projos[j]["projectileType"]:
                            self.insertRow(j)
                            for i in range(3):
                                index = self.createIndex(j, i)
                                if i == 0:
                                    self.setData(index, projectileType, role=Qt.EditRole)
                                elif i == 1:
                                    self.setData(index,projo_mass, role=Qt.EditRole)
                                elif i == 2:
                                    self.setData(index, projo_DragCoef, role=Qt.EditRole)
                    else:
                        self.insertRow(j)
                        for i in range(3):
                            index = self.createIndex(j, i)
                            if i == 0:
                                self.setData(index, projectileType, role=Qt.EditRole)
                            elif i == 1:
                                self.setData(index, projo_mass, role=Qt.EditRole)
                            elif i == 2:
                                self.setData(index, projo_DragCoef, role=Qt.EditRole)
                except:
                    pass

    def setData(self, index, value, role=Qt.EditRole):
        """ Adjust the data (set it to <value>) depending on the given
            index and role.
        """
        if role != Qt.EditRole:
            return False

        if index.isValid() and 0 <= index.row() < len(self.Projos):
            aProjo = self.Projos[index.row()]
            if index.column() == 0:
                aProjo["projectileType"] = f"{value}"
            elif index.column() == 1:
                aProjo["projo_mass"] = f"{value}"
            elif index.column() == 2:
                    aProjo["projo_DragCoef"] = f"{value}"
            else:
                return False

            self.dataChanged.emit(index, index)
            return True

        return False