import mysql.connector as mysqlpyth

class Connexion :

    def __inti__(self) :
        
        self.binome = mysqlpyth.connect(
            host="localhost",
            port="3306",
            user="root", 
            password="root", 
            database="binome")
        self.cursor = self.binome.cursor
        #self.query=("SELECT * FROM apprenant")
        self.cursor.execute(self.query)

    def traitement (self):

        query="ALTER TABLE Monthy ADD COLUMN mail VARCHAR(100);"

