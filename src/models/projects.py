from PyQt5.QtCore import QAbstractTableModel, Qt, QModelIndex
from PyQt5.QtWidgets import QMessageBox

""" Reference https://github.com/pyside/pyside2-examples/blob/dev/examples/widgets/itemviews/addressbook """


class ProjectsModel(QAbstractTableModel):
    def __init__(self, Projects=None, parent=None):
        super(ProjectsModel, self).__init__(parent)
        # create Samples list if it does not exist
        if Projects is None:
            self.Projects = []
        else:
            self.Projects = Projects

    # Modal Warning Box
    def issueWarning(self, Message):
        QMessageBox.about(self, "Warning", Message)


 #   def rowCount(self, index=QModelIndex()):
    def rowCount(self, index=QModelIndex()):
        """ Returns the number of rows the model holds """
        return len(self.Projects)

    def columnCount(self, index=QModelIndex()):
        return 2    #  fields:

    def data(self, index, role=Qt.DisplayRole):
        if not index.isValid():
            return None

        if not 0 <= index.row() < len(self.Projects):
            return None

        if role == Qt.DisplayRole:
            project_descript = self.Projects[index.row()]["project_descript"]
            projectID = self.Projects[index.row()]["project_id"]

            if index.column() == 0:
                return project_descript
            elif index.column() == 1:
                return projectID
            return None



    def headerData(self, section, orientation, role=Qt.DisplayRole):
        if role != Qt.DisplayRole:
            return None

        if orientation == Qt.Horizontal:
            if section == 0:
                return "Project Description"
            if section == 1:
                return "project id"
            return None

        # if orientation == Qt.Vertical:
        #     if role == Qt.DisplayRole:
        #         return " --> "


    def insertRows(self, position, rows=1, index=QModelIndex()):
        """Insert a row of range data into RangeModel. """
        self.beginInsertRows(QModelIndex(), position, position + rows -1)

        for row in range(rows):
            self.Projects.insert(position + row, {"project_descript": "", "project_id": ""})
            self.dataChanged.emit(index, index)
        self.endInsertRows()
        return True

    def removeRows(self, position, rows=1, index=QModelIndex()):
        """ Remove a row from  ProjectilesModel. """
        self.beginRemoveRows(QModelIndex(), position, position + rows - 1)

        del self.Projects[position:position + rows]

        self.endRemoveRows()
        self.dataChanged.emit(index, index)
        return True

    def addData(self, project_descript, projectID):
        rowCount = self.rowCount()
        self.insertRow(0)
        for i in range(5):
            index = self.createIndex(0, i)
            if i == 0:
                self.setData(index, project_descript, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
            elif i == 1:
                self.setData(index, projectID, role=Qt.EditRole)
                self.dataChanged.emit(index, index)
        return None



    def setData(self, index, value, role=Qt.EditRole):
        """ Adjust the data (set it to <value>) depending on the given
            index and role.
        """
        if role != Qt.EditRole:
            return False

        if index.isValid() and 0 <= index.row() < len(self.Projects):
            aProject = self.Projects[index.row()]
            if index.column() == 0:
                aProject["sample_descript"] = f"{value}"
            elif index.column() == 1:
                aProject["project_id"] = f"{value}"
            else:
                return False

            self.dataChanged.emit(index, index)
            return True

        return False