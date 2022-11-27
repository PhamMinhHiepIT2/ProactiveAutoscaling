import psycopg2
import logging

from config import POSTGRES_DB, POSTGRES_HOST, POSTGRES_PASSWD, POSTGRES_PORT, POSTGRES_USER


logger = logging.getLogger()


class DBConnector(object):
    def __init__(self, host, port, user, passwd, db):
        self.host = host
        self.port = port
        self.user = user
        self.passwd = passwd
        self.db = db

    def create_connection(self):
        conn = psycopg2.connect(
            database=self.db,
            user=self.user,
            password=self.passwd,
            host=self.host,
            port=self.port
        )
        logger.info("Create connection successfully!!!")
        return conn

    # For explicitly opening database connection
    def __enter__(self):
        self.dbconn = self.create_connection()
        return self.dbconn

    def __exit__(self, exc_type, exc_val, exc_tb):
        self.dbconn.close()


class DBConnection(DBConnector):

    connection = None

    @classmethod
    def __init__(cls, host, port, user, passwd, db):
        cls.host = host
        cls.port = port
        cls.user = user
        cls.passwd = passwd
        cls.db = db

    @classmethod
    def get_connection(cls, new=False):
        """Creates return new Singleton database connection"""
        if new or not cls.connection:
            cls.connection = DBConnector(
                host=cls.host, port=cls.port, user=cls.user, passwd=cls.passwd, db=cls.db).create_connection()
        return cls.connection

    @classmethod
    def execute_query(cls, query):
        """execute query on singleton db connection"""
        connection = cls.get_connection()
        try:
            cursor = connection.cursor()
        except Exception as e:
            connection = cls.get_connection(new=True)  # Create new connection
            cursor = connection.cursor()
        cursor.execute(query)
        result = cursor.fetchall()
        connection.commit()
        cursor.close()
        return result

    @classmethod
    def create_table(cls):
        connection = cls.get_connection()
        try:
            cursor = connection.cursor()
        except Exception as e:
            connection = cls.get_connection(new=True)  # Create new connection
            cursor = connection.cursor()
        cursor.execute('''CREATE TABLE IF NOT EXISTS PREDICTED
        (ID SERIAL PRIMARY KEY     NOT NULL,
        LAST_REQUEST    INT NOT NULL,
        PREDICTED_REQUEST           INT    NOT NULL,
        REPLICAS            INT     NOT NULL,
        SCALED_TIME        TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL);''')
        logger.info("Table created successfully")
        connection.commit()
        cursor.close()

    @classmethod
    def drop_table(cls, table_name):
        connection = cls.get_connection()
        try:
            cursor = connection.cursor()
        except Exception as e:
            connection = cls.get_connection(new=True)  # Create new connection
            cursor = connection.cursor()
        cursor.execute("DROP TABLE %s" % table_name)
        print("Drop table %s successfully" % table_name)
        connection.commit()
        cursor.close

    @classmethod
    def insert_one(cls, insert_query, record_to_insert):
        connection = cls.get_connection()
        try:
            cursor = connection.cursor()
        except Exception as e:
            connection = cls.get_connection(new=True)
            cursor = connection.cursor()
        cursor.execute(insert_query, record_to_insert)
        connection.commit()
        print("Insert record {} successfully!!!".format(record_to_insert))
        cursor.close()

    @classmethod
    def get_all(cls, table_name):
        connection = cls.get_connection()
        try:
            cursor = connection.cursor()
        except Exception as e:
            connection = cls.get_connection(new=True)
            cursor = connection.cursor()
        cursor.execute("SELECT * FROM %s" % table_name)
        result = cursor.fetchall()
        print("Result of get all in table {}: \n {}".format(table_name, result))
        return result


if __name__ == "__main__":
    insert_query = """INSERT INTO PREDICTED (REQUEST, REPLICAS) VALUES (%s,%s)"""
    db_obj = DBConnection(host=POSTGRES_HOST, port=POSTGRES_PORT,
                          user=POSTGRES_USER, passwd=POSTGRES_PASSWD, db=POSTGRES_DB)
    # db_obj.drop_table("predicted")
    # db_obj.create_table()
    # record_insert = (5, 5)
    # db_obj.insert_one(insert_query, record_insert)
    db_obj.get_all(table_name="predicted")
