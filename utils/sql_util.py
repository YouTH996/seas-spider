# -*- coding: UTF-8 -*-
# -*- author: Zhan Xinjian -*-
# -*- coding: UTF-8 -*-
# -*- author: Zhan Xinjian -*-
from utils import config
import pymysql
import logging


class DBUtil:
    db = None
    cursor = None

    def __init__(self):
        self.host = config.mysql_config['host']
        self.port = config.mysql_config['port']
        self.userName = config.mysql_config['userName']
        self.password = config.mysql_config['password']
        self.dbName = config.mysql_config['dbName']
        self.charsets = config.mysql_config['charsets']

    # 连接数据库
    def get_conn(self):
        self.db = pymysql.Connect(
            host=self.host,
            port=self.port,
            user=self.userName,
            password=self.password,
            db=self.dbName,
            charset=self.charsets
        )
        self.cursor = self.db.cursor()

    # 关闭数据库
    def close_conn(self):
        self.cursor = self.db.cursor().close()

    # 根据id查询
    def get_by_id(self, sql):
        res = None
        try:
            self.get_conn()
            self.cursor.execute(sql)
            res = self.cursor.fetchone()
            self.close_conn()
        except Exception as e:
            print("查询失败:", str(e))
        return res

    # 查询所有
    def get_all(self, sql):
        res = None
        try:
            self.get_conn()
            self.cursor.execute(sql)
            res = self.cursor.fectchall()
            self.close_conn()
        except Exception as e:
            print("查询失败:", str(e))
        return res

    def insert(self, sql):
        res = None
        try:
            res = self.cursor.execute(sql)
            self.db.commit()
        except Exception as e:
            print("插入失败:", str(e))
            self.db.rollback()
        return res
