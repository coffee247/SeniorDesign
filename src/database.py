import numpy as np
import pymysql, json
from PyQt5.QtCore import Qt
from pymysql import MySQLError
import logging


class database():
    logging = None

    def __init__(self):
        self.conn = pymysql.connections.Connection
        self.cur = pymysql.cursors.Cursor
        self.logging = self.setupLogging()

    def setupLogging(self):
        logging.basicConfig(filename='db.log', filemode='a', format='%(asctime)s - %(message)s')
        return logging

    ''' Method to initialize a database at first run or just use it if existed already '''
    def Connect(self):
        with open('configs/dbconfig.json', 'r') as dbconfig:
            config = json.load(dbconfig)
            dbname = config["db_Name"]
        try:
            self.conn = pymysql.connect(host=config["db_Host"], port=config["db_Port"], user=config["db_root_User"],
                                   password=config["db_root_PWD"], db=config["db_Name"])
        except MySQLError as e:  # error if connect failed:  ASSUME database does not exist ... create database
            if e.args[0] == 1049:
                print(f"Could not find database {dbname} now")
                self.logging.warning(f"Could not find database {dbname}.")
            else:
                print('Got error {!r}, errno is {}'.format(e, e.args[0]))
            self.conn = pymysql.connect(host=config["db_Host"], port=config["db_Port"], user=config["db_root_User"],
                                   password=config["db_root_PWD"])
            with self.conn:
              #  dbname = config["db_Name"]  # see db_Name in config.json
                print(f"Creating new database {dbname}")
                self.logging.warning(f"\tCreating new database {dbname}")
                query = f"CREATE DATABASE IF NOT EXISTS {dbname}"  # create the database (if it does not exist)
                cur = self.conn.cursor()
                cur.execute(query)
                query = f"USE {dbname}"  # use the database whose name is defined by db_Name in config.json
                cur.execute(query)
                sql = open("db_setup.sql")  # open file db_setup.sql (database schema creation script)
                sqltext = sql.read()  # read the schema
                sql.close()
                sql = sqltext.split(';')  # split into individual commands at semicolons.
                for command in sql:
                    try:
                        cur.execute(command)  # execute the schema creation script (one command at a time)
                    except:
                        pass
        return self

    ''' Method to initialize a database at first run or just use it if existed already '''

    def TestConnect(self, window):
        with open('configs/dbconfig.json', 'r') as dbconfig:
            config = json.load(dbconfig)
            dbname = "None"
            host = window.hostLineEdit.text()
            if window.port_lineEdit.text() != '':
                port = int(window.port_lineEdit.text())
            else:
                port = 3306
            user = window.user_lineEdit.text()
            passwd = window.passLineEdit.text()
        try:
            self.conn = pymysql.connect(host=f'{host}', port=port, user=f'{user}',
                                        password=f'{passwd}', db=None)
        except MySQLError as e:
            return "fail"    # error if connect failed:  ASSUME database does not exist ... create database
        with open('configs/dbconfig.json', 'r') as config:
            data = json.load(config)
            data['db_Host'] = f'{host}'  # memorialize the change in the json file
            data['db_Port'] = port
            data['db_root_User'] = f'{user}'
            data['db_root_PWD'] = f'{passwd}'
        with open('configs/dbconfig.json', 'w') as config:
            config.write(json.dumps(data))  # write the json file back to disk
        return "success"


    '''method to get (return to calling function) an open database connection'''
    def getConn(self):
        return self.conn

    '''method to execute a SEQUEL COMMAND passed as a STRING parameter by the calling function'''
    def db_doQuery(self, commandString):
        cur = self.conn.cursor()
        cur.execute(commandString)
        rows = cur.fetchall()
        return rows

    '''method to do initial population of a List or Table View'''
    def populateListView(self, caller, table, field, idx, model):
        myself = caller
        with myself.conn:
            myself.colIndex = idx
            myself.model = model
            query = f"select * from {table} order by {field}"
            data = self.db_doQuery(query)
            dataShape = np.array(data).shape
            for i in range(dataShape[0]):
                myself.model.insertRows(i)
                for j in range(dataShape[1]):
                    index = myself.model.createIndex(i, j)
                    myself.model.setData(index, data[i][j], Qt.EditRole)


    def getPlies(caller, fabric_id):
        self = caller
        # Fetch list of plies used on projects page
        with self.conn:
            query = f"select * from ply where fabric_id like '{fabric_id}'"
            data = self.dbase.db_doQuery(query)
            dataShape = np.array(data).shape
            for i in range(dataShape[0]):
                for j in range(dataShape[1]):
                    index = self.pliesModel.createIndex(i ,j)
                    self.pliesModel.setData(index ,data[i][j], Qt.EditRole)
        self.fabric_plies_tableView.setColumnHidden(5, False)

def getRanges(caller):
    self = caller
    # Fetch list of ranges used on settings
    with self.conn:
        query = f"select * from BimsRange"
        data = self.dbase.db_doQuery(query)
        dataShape = np.array(data).shape
        for i in range(dataShape[0]):
            for j in range(dataShape[1]):
                index = self.rangeModel.createIndex(i ,j)
                self.rangeModel.setData(index ,data[i][j], Qt.EditRole)
    self.RangeView.setColumnHidden(0, False)

def getProjos(caller):
    self = caller
    # Fetch list of projos used on settings page
    with self.conn:
        query = f"select * from projo"
        data = self.dbase.db_doQuery(query)
        dataShape = np.array(data).shape
        for i in range(dataShape[0]):
            for j in range(dataShape[1]):
                index = self.projectilesModel.createIndex(i, j)
                self.projectilesModel.setData(index, data[i][j], Qt.EditRole)
    self.ProjectilesView.setColumnHidden(0, False)


def getQuerries(caller):
    self = caller
    # Fetch list of Querries  used on History page
    with self.conn:
        query = f"select * from querries"
        data = self.dbase.db_doQuery(query)
        dataShape = np.array(data).shape
        for i in range(dataShape[0]):
            for j in range(dataShape[1]):
                index = self.QuerriesModel.createIndex(i, j)
                self.QuerriesModel.setData(index, data[i][j], Qt.EditRole)
    self.QuerySelView.setColumnHidden(0, False)