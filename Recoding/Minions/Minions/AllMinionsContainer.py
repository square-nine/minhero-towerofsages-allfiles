#setting up the classes
#can only use AllMinionsContainer to discern stats

class AllMinionsContainer:
    def __init__(self):
        #initialise
        self.allMinions = None
        self.curr_name = None
        self.curr_statList = None
        self.curr_level = None
        try:
            self.file = open("TheStats.csv", "r")
            self.filedata = self.file.readlines()
            self.file.close()
        except:
            print("ERROR: Data file not found!")
            exit()
        self.file = []
        self.temp = None

        #getting data
        for item in self.filedata:
            self.temp = item.split(",") #get separate attributes
            self.file.append(item) 
        
    def GetStatList(self): #gets data from file
        #find data
        for item in self.file:
            if self.curr_name in item:
                self.curr_statList = item
                break
            else:
                pass
        #check
        if self.curr_name not in self.curr_statList:
            print("ERROR! Data not found")
        
        return self.curr_statList
    

    def ModifyStatsForLevel(self): #modify the data for the level of the minion
        pass



    def SetupForMinion(self): #take a set minion type and get all the required data

