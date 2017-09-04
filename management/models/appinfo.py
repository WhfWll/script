from management.base_models import DataModel


class SqlStatement(object):
    create_appinfo = 'create table appinfo (' \
                     'ID INTEGER PRIMARY KEY, ' \
                     'FILENAME VARCHAR(60),' \
                     'ICON VARCHAR(255), ' \
                     'APPNAME VARCHAR(60), ' \
                     'FILESIZE VARCHAR(10), ' \
                     'HASH_MD5 VARCHAR(32), ' \
                     'SHA1 VARCHAR(255), ' \
                     'PACKAGE_NAME VARCHAR(32), ' \
                     'MAIN_ACTIVITY VARCHAR(32), ' \
                     'TARGET_SDK VARCHAR(32),' \
                     'MIN_SDK VARCHAR(10), ' \
                     'MAX_SDK VARCHAR(10), ' \
                     'VERSION VARCHAR(32), ' \
                     'VERSION_CODE VARCHAR(32), ' \
                     'PERMISSIONS CLOB, ' \
                     'IS_PROTECTED INTEGER(1), ' \
                     'PROTECT_ENT VARCHAR(32))'
    select_sql = 'select {name} from appinfo where id = %s'
    insert_sql = 'insert into appinfo (' \
                 'FILENAME, ' \
                 'ICON, ' \
                 'APPNAME, ' \
                 'FILESIZE, ' \
                 'HASH_MD5, ' \
                 'SHA1, ' \
                 'PACKAGE_NAME, ' \
                 'MAIN_ACTIVITY,' \
                 'TARGET_SDK, ' \
                 'MIN_SDK, ' \
                 'MAX_SDK, ' \
                 'VERSION, ' \
                 'VERSION_CODE, ' \
                 'PERMISSIONS) ' \
                 'VALUES %s'
    drop_table = 'drop table appinfo'


class AppInfo(DataModel):
    def create_table(self):
        self.exec_sql(SqlStatement.create_appinfo)

    def drop_table(self):
        self.exec_sql(SqlStatement.drop_table)

    def save(self, context):
        sql = SqlStatement.insert_sql % str(context)
        self.exec_sql(sql)
