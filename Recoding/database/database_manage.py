#Had an idea to create a proper SQL database to manage all the information stored in the various files.
#means that there will be a centralised source of data
# (also practice for assessment :D)


#--IMPORTS
import sqlite3

#constants
PATH = './Recoding/database/test.db'


#screw it, we ball with OOP

class Fields():
    """A class designed to manage a single variable for fields. Basically a glorified array of sorts.
    names, types and extra all need to be equal length
    """

    def __init__(self, names:list=[], types:list=[], extra:list=[]):
        if len(names) != len(types) != len(extra):
            raise ValueError("Names, Types and Extra are not equal length")
        self.names = names
        self.types = types
        self.extras = extra
        self.all = zip(names, types, extra) #chuck all of them together if needed
        
    def all_names(self, mode=1):
        "Returns all of the names of fields as a string or list."
        if mode==0: return self.names #return as a list in mode 0
        elif mode==1:
            temp = self.names[0] #set as first name
            for item in self.names[1:-1]:
                temp += ", " + item #add all other items
            return temp
        else:
            print("Invalid Mode! Defaulting to mode=0")
            return self.names
    

    def AddNewField(self, name, type, extra):
        '''Add new field to existing list'''
        self.all.append((name, type, extra)) #add to all
        self.names.append(name) #add as a name



#--FUNCTIONS
def create_table(cur:sqlite3.Connection, name:str, fields:Fields):
    '''Creates table with given name and fields'''


def insert_data(cur:sqlite3.Connection, tablename:str, fields:Fields):
    "Inserts data into a database"


#--GLOBALS
global fields, conn, cur
fields = Fields()
conn = sqlite3.connect(PATH)
cur = conn.cursor()


#--MAIN
# Creating a table named users with two columns: id and name
cur.execute('CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT)')
# Inserting some records into the table
cur.execute('INSERT INTO users (name) VALUES ("Alice")')
cur.execute('INSERT INTO users (name) VALUES ("Bob")')
# Committing the changes to the database
conn.commit()
# Querying the table and fetching all the records
cur.execute('SELECT * FROM users')
rows = cur.fetchall()

# Printing the records
for row in rows:
    print(row)
# Closing the connection
conn.close()
