#the moves index
#guess i have to..


class AllMovesContainer():
    def __init__(self):
        #a move. IMPORTANT!
        #number: literal value.
        #%number : percentage value
        #None value: Must be declared in order to have an effect
        #initial number: treated as that value for most moves, and only change if specified.
        #a 5-long list for each level
        self.move_template = {"Name": [None, None], #move name for first 1-4 levels, special name for final one. First value = 1-5 if len() = 1\
                            "MoveType": None, #is this passive
                            "EnergyCost": [0,0,0,0,0], #cost of energy to play for each level
                            "Damage": [0,0,0,0,0], #damage done
                            "Recoil": [0,0,0,0,0], #self damage - includes self percentage damage if starts with %Num instead of Nun
                            "Debuffs": [[None, None, None],[None, None, None],[None, None, None],[None, None, None],[None, None, None]], # percentage chance to debuff, stat to debuff, amount to debuff by. If first value is None, no debuffs
                            "Buffs": [[None, None, None],[None, None, None],[None, None, None],[None, None, None],[None, None, None]], #percentage chance of buff. buffs the second stat by the third percentage. Includes Armor. if first value is None, then does not buff
                            "NumTargeted": [[None, None],[None, None],[None, None],[None, None],[None, None]], #amount of [enemies, allies] targeted. Read a value of "5" as "All" as per DoesHitAllEnemies
                            "SelfTargets": False, #only impacts self
                            "Healing": [0,0,0,0,0], #amount of healing to give
                            "RandomTargets": False, #are targets random
                            "VMBuffer": False, #is there a time delay between attacks? (i.e hit each enemy one after the other or not?)
                            "TurnsActive": [0,0,0,0,0], #amount of turns effect/DOT lasts
                            "DOT": [[None, None],[None, None],[None, None],[None, None],[None, None]], #amount of initial DOT, amount of extra DOT - per turn. if None, None - No DOT
                            "ExtraDamageChance": [None,None,None,None,None], #chance of crit
                            "Accuracy": [100,100,100,100,100], #chance of hit (%)
                            "SelfReflectDamageAmount":[0,0,0,0,0], #percent of damage to reflect
                            "SelfEnergyRestore":[0,0,0,0,0], #percentage of energy to restore
                            "Cooldown":[0,0,0,0,0], #cooldown time
                            "Exhaust":[0,0,0,0,0], #num actions to skip
                            "SelfBuffCritChance": [0,0,0,0,0], #chance to increase crit rate (%)
                            }
        #other setup
        self.load_name = None
        self.selectedDataPacket = None
        #getting file data
        self.attr = ["Name", "MoveType", #formatted like this to prevent bad sizing
                     "EnergyCost",
                     "Damage", "Recoil",
                     "Debuffs", "Buffs",
                     "NumTargeted", "SelfTargets",
                     "Healing", "RandomTargets",
                     "VMBuffer", "TurnsActive",
                     "DOT", "SelfBuffCritChance",
                     "Exhaust", "Cooldown",
                     "SelfEnergyRestore",
                     "SelfReflectDamageAmount"
                     "Accuracy", "ExtraDamageChance"]
        self.file = open("MoveData.csv", "r")
        self.data = self.file.readlines()
        self.file.close()
        self.dataDump = []
        self.curr_move = {} #follows the above template
        for item in self.data:
            self.dataDump.append(item.split("@"))
        
    def LoadMovePack(self):
        for item in self.dataDump: #finds the data line in datadump
            if self.load_name in item[0]:
                self.selectedDataPacket = item
            else: pass
        if self.selectedDataPacket == None: #checks if no packet was selected
            raise ValueError("No move found")
        for item in self.selectedDataPacket: #for each item that is specified within the data
            if self.attr in item:
                self.tempdata = item.split("=")
                self.curr_move[self.tempdata[0]] = self.tempdata[1]
        for item in self.attr: #fill any blanks within the move
            if item not in self.curr_move:
                self.curr_move[item] = self.move_template[item]

        return self.curr_move #result is the required move with all of the data categorized by the template

            

    def CreateMove(self):
