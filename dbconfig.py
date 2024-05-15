import MySQLdb

def get_database_credentials():
    return MySQLdb.connect(host="tanJa888.mysql.pythonanywhere-services.com",   
                     user="tanJa888",               
                     passwd="rootroot",           
                     db="tanJa888$moviesdb") 