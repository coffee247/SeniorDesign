

# copied from https://github.com/baoboa/pyqt5/blob/master/examples/itemviews/basicsortfiltermodel.py
from PyQt5.QtCore import  QSortFilterProxyModel

# from PyQt5.QtCore import (QDate, QDateTime, QRegExp, Qt,
#         QTime)

# SUBJECT, SENDER, DATE = range(3)

# Work around the fact that QSortFilterProxyModel always filters datetime
# values in QtCore.Qt.ISODate format, but the tree views display using
# QtCore.Qt.DefaultLocaleShortDate format.
class SortFilterProxyModel(QSortFilterProxyModel):
    def filterAcceptsRow(self, sourceRow, sourceParent):
        # # Do we filter for the date column?
        # if self.filterKeyColumn() == DATE:
        #     # Fetch datetime value.
        #     index = self.sourceModel().index(sourceRow, DATE, sourceParent)
        #     data = self.sourceModel().data(index)
        #
        #     # Return, if regExp match in displayed format.
        #     return (self.filterRegExp().indexIn(data.toString(Qt.DefaultLocaleShortDate)) >= 0)

        return super(SortFilterProxyModel, self).filterAcceptsRow(sourceRow, sourceParent)