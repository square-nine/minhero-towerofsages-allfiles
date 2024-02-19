#battle systems
#technically a logical re-code of the BaseMoveSystem.as
#yes this may work


"""
see dictofCodes

"""

class Game():
    def __init__(self, playerMinions, opponentMinions):
        self.QueueStack = []  #a queue for time-delayed moves
        self.playerMinions = playerMinions #list of player's minions at start, which each have their own ID, name and stats
        self.opponentMinions = opponentMinions #list of opponents minions
        self.MinionsTotal = []
        self.MinionsTotal.append(playerMinions).append(opponentMinions) #amount left
        self.alliesHit = 0 # num allies hit
        self.enemiesHit = 0 #num enemies hit
        self.TargetingGroup = "enemies" #who to target
        self.Targets = [] #the list of selected targets
        self.currMinion = {} #the current minion
        self.currMove = {} #the current move to do

    def ProcessDB(self, path): #loads a .csv, with separators "\n" then "," then "@" then "£"
        print(f"Loading DB at {path}...")
        DBVarTemp = []
        try:
            _loc1_ = open(path, "r").readlines() #first index, move separation
            toAdd = toAddAgain = toAddYetAgain = []
            for item1 in _loc1_:
                toAdd.append(item1.split(",")) #second index; attribute separation
            _loc1_.close()
            for item2 in toAdd:
                toAddAgain.append(item2.split("@")) #third index; first list separation
            for item3 in toAddAgain:
                toAddYetAgain.append(item3.split("£")) #fourth index, second list separation
            print("Successfully split all attributes!")

            for item in toAddYetAgain:
                DBVarTemp.append(item)

            print("Added to main variable, completed!")
            return DBVarTemp
        except:
            raise ValueError(f"Error on processing {path}, exiting.")

    def AddToQueue(self): #adds delayed states, which are Exhaust/Stun/Frozen/Charge
        pass


    def GetPercentageFromTarget(self, target, percent_value, stat): #gets the percentage from the enemy
        try:
            for item in target: #for each stat in initial
                if item[0] == stat: #if it matches the stat to find
                    return percent_value * int(item[1][2:]) #returns the percentage of that value
        except: raise ValueError("Percentage value target is not a minion!")

    def GetMinionFromID(self, ID):
        for item in self.MinionsTotal:
            if item['ID'] == ID:
                return item
        raise ValueError("Item has no ID!")

    def PlayMove(self):
        #resolve initial costs first
        self._initials = self.currMove["Initial"]
        for MV_Item in self._initials: #for each immediate effect
            #clear previous move vars
            self.currTargets = []
            self.currStat = None
            #initialise move
            #checks specific target; i.e a cost or the power
            if MV_Item[1][0] == 'S': #if self
                self.currTargets = self.currMinion["ID"] #only targets itself FOR THIS MOVE
            elif MV_Item[1][0] == 'A' or MV_Item[1][0] == "E": #if allies
                self.currTargets = self.Targets #current targets for the move
            else: raise ValueError("Move does not have a specified target!")


            #check target stat to then resolve. Essentially the calculate and resolve
            currvalue = int(MV_Item[1][2:])  #the base value to be used: the second item and only the latter part of the MoveForm
            if MV_Item[0] == "Attack":
                self._damage = []
                for minionID in self.currTargets:
                    if MV_Item[1][1] == "!": 
                        #calculate actual value - based on level * stat * value in files?

                        self._damage = [minionID, currvalue]
                    elif MV_Item[1][1] == "%":
                        self._damage = [minionID, GetPercentageFromTarget(self, GetMinionFromID(self, minionID), currvalue, "Health")]
                    
            elif MV_Item[0] == "Heal":

            elif MV_Item[0] == "ClearBuffsDebuffs":

            elif MV_Item[0] == "EnergyCost":

            elif MV_Item[0] == "EnergyRestore":

            elif MV_Item[0] == "Speed":

            elif MV_Item[0] == "ATKBuff":
                
            elif MV_Item[0] == "HealBuff":

            elif MV_Item[0] == "Armor":

            elif MV_Item[0] == "EnergyMaxBuff":

            elif MV_Item[0] == "Health":

            elif MV_Item[0] == "Freeze":

            elif MV_Item[0] == "Stun":

            elif MV_Item[0] == "Shield":

            elif MV_Item[0] == "Exhaust":

            elif MV_Item[0] == "Cooldown":

            elif MV_Item[0] == "Charge":

            else: raise ValueError("Move doesn't have a target trait!")
             
            #check if literal or percent within specific move

            #apply to targets

        #add DOTs to the queue
        self._DOT = self.currMove["DOT"]
        for item in self._DOT:
            pass



    def InputUntilIsType(self, Prompt, TypeCheck):
        _notVerified = True
        TempHold = None
        while _notVerified:
            TempHold = input(Prompt)
            if TypeCheck == "int":
                try: 
                    TempHold = int(TempHold)
                    _notVerified = False
                except: print("Must be integer! Try again.")
            elif TypeCheck == "Y/N":
                try: 
                    if TempHold.upper() == "YES":
                        TempHold = True
                    elif TempHold.upper() == "NO":
                        TempHold = False
                    _notVerified = False
                except: print("Must be a yes/no answer! Try again.")
            else: raise ValueError("There must be a type to check on!")
        return TempHold

    def Selector(self): #selects targets and adds to external targets
        #interface
        self.Targets = []
        if self.currMove["NumTargets"][1] >= 5 and self.currMove["NumTargets"][0] == "A":
            print(f"Move targets all allies, proceeding to activation.")
            for item in self.playerMinions:
                self.Targets.append(item["ID"])
        elif self.currMove["NumTargets"][1] >= 5 and self.currMove["NumTargets"][0] == "E":
            print(f"Move targets all enemies, proceeding to activation.")
            for item in self.opponentMinions:
                self.Targets.append(item["ID"])
        elif self.currMove["NumTargets"][1] >= 0 and (self.currMove["NumTargets"][0] == "A" or self.currMove["NumTargets"][0] == "E"):
            print(f"Type the number(s) of the targets to select:")
            for i in range(self.currMove["numTargets"][1]):
                self.TargetNumber = InputUntilIsType(self, "Enter the number: ", "int")
                self.Targets.append(self.TargetNumber)             
        elif self.currMove["NumTargets"][0] == "S":
            print("Self-targeting power, proceeding to activation.")
            self.Targets.append(self.currMinion["ID"])
        else:
            raise ValueError("Unexpected values in move count or target group, exiting.")



    def ListMinionsActive(self, omitMoves): #prints existing minions
        if self.TargetingGroup == "allies":
            print("Your Minions:")
        elif self.TargetingGroup == "enemies":
            print("Enemy Minions:")
        self._count = 1
        if omitMoves == True:
            for item in self.playerMinions:
                print(f"Minion #{self._count}:\n{item['name']}, HP:{6*item['HP'] + 5}, energy:{4.5*item['ENERGY'] + 7.5}, speed:{3*item['SPD'] + 5}, attack:{3*item['ATTACK'] + 5}, healing:{3*item['HEALING'] + 5}\n") #shws minionstat
                self._count += 1
        elif omitMoves == False:
            for item in self.playerMinions:
                print(f"Minion #{self._count}:\n{item['name']}, HP:{6*item['HP'] + 5}, energy:{4.5*item['ENERGY'] + 7.5}, speed:{3*item['SPD'] + 5}, attack:{3*item['ATTACK'] + 5}, healing:{3*item['HEALING'] + 5}\n")
                print("Moves: ")
                self._count2 = 1
                for move in item['Moves']:

                    print(f"Move #{self._count2}: {move['name']}. ") #prints name 
                    if len(move["type"]) == 2: print(f"Types: {move['type'][0]}, {move['type'][1]}.") #prints type details
                    elif len(move["type"]) == 1: print(f"Type: {move['type']}.")
                    else: raise ValueError("Move types exceed allowed values!")
                    #prints energy cost
                    print(f"Energy Cost: {move['Initial'][]}")

                    self._count2 += 1
                self._count += 1


class Minion():
    "A class to be used for a minion"
    def __init__(self, ID, name, level, statBonus, gems, moves, currEXP):
        self.ID = ID  #unique identifier for a minion
        self.name = name #the name given
        self._level = level #the current level
        self._currEXP = currEXP #the EXP within the level
        self._gems = gems #the equipped gems
        self._moveIDList = moves #the IDs of all available moves
        self.stats = {} #list of stats, to better modifiy/access
        self.statBonus = statBonus #stat bonus
        #-----
        #process ID to get the below stats, including modifying for statBonus, gems, and level


        #------
        #other game constants

        self.currEffects = [] #a list containing all temporary boosts
    def ProcessID(self):
        "Processes the ID in the minion database to get the stats, good for when a level-up occurs mid-game"
        self._minDB = open("MinionDB.csv", "r") #opens the database
        self._minDB = self._minDB.split(",")
        for item in self._minDB: #for each minion
            if self.ID == item[0]: #if IDs match
                self._rawMinion = item #store base data
        self._minDB = None #clear data to save RAM usage
        self._blankName = self._rawMinion[1] = #the default name
        self.stats["HP"] = int(self._rawMinion[2]) #HP
        self.stats["ATK"] = int(self._rawMinion[4]) #attack
        self.stats["energy"] = int(self._rawMinion[3]) #eenrgy
        self.stats["speed"] = int(self._rawMinion[5]) #speed
        self.stats["healing"] = int(self._rawMinion[6]) #healing

        #i need to also include some other stats:
        self.maxGems #easy enough
        self.EXPGainRate #welp
        self.startingMoves #i can try
        self.talentTrees #this will be a long one. for all three trees too 💀



        try: self.type = [self._rawMinion[7], self._rawMinion[8]] #if multi-type
        except: self.type = [self._rawMinion[7]] #else

        #adjust for level, idk how




        self.stats[self.statBonus] *= 1.05 #adjust for stat bonus
        
        #adjust for gems
        for gem in self._gems: #for each gem
            for i in range(1,len(gem)): #need to omit level val
                self.stats[gem[i][0]] += gem[i][1] #adds stat to 
        
        


class Move():
    "A class used to represent a move, to aid comprehension"
    def __init__(self, ID):
        self.ID = ID #UID

        #--------
        #placeholders
        self.type = None
        self.TurnsActive = 0 #amount of turns to trigger DOT
        self.initials = [] #Costs at start of move
        self.DOT = [] #lasting effects that trigger after each turn for X turns
        self.buffs = [] #game-lasting effects

    def ProcessID(self): #loads data from a specified move into self.currMove
        #find in db
        MovesDB = open("MoveDBToUse.csv", "r") #gets the movesDB
        for item in MovesDB: #for each move
            if item[0] == self.ID: #if the IDs match
                self._rawMove = item.removesuffix("\n").split(",") #gets the raw data
                for i in range(len(self._rawMove)): self._rawMove[i] = self._rawMove[i].split("@")  #splits for 2nd div in case
                MovesDB.close() #save data by clearing usage
        #gets move type
        if self.ID <= 115: self.type = "PASSIVE"
        elif 115 < self.ID <= 190: self.type = "NORMAL"
        elif 190 < self.ID <= 225: self.type = "FLYING"
        elif 225 < self.ID <= 285: self.type = "PLANT"
        elif 285 < self.ID <= 330: self.type = "WATER"
        elif 330 < self.ID <= 390: self.type = "EARTH"
        elif 390 < self.ID <= 440: self.type = "ICE"
        elif 440 < self.ID <= 515: self.type = "FIRE"
        elif 515 < self.ID <= 556: self.type = "ELECTRIC"
        elif 556 < self.ID <= 611: self.type = "ROBOT"
        elif 611 < self.ID <= 661: self.type = "DINO"
        elif 661 < self.ID <= 726: self.type = "UNDEAD"
        elif 726 < self.ID <= 776: self.type = "DEMONIC"
        elif 776 < self.ID <= 837: self.type = "HOLY"
        elif 837 < self.ID <= 887: self.type = "TITAN"
        elif self.ID == 888: self.type = "NONE" #special case for "Desperation"
        else: raise ValueError("No move type specified!")
        #gets name
        self.name = self._rawMove[1] #name of move
        self.TurnsActive = self._rawMove[2] #turn active, in case there are several DOTs
        for i in range(3,len(self._rawMove)): #for each item property
            self.ToAdd = {} #the dictionary to represent a property
            self.currProperty = self._rawMove[i] #select the property from the rawMove
            self.ToAdd["target"] = self.currProperty[1] #adds target group
            
            #sort out depending on type
            if self.currProperty[0] == "D": #if it's a DOT
                self.ToAdd["value"] = int(self.currProperty[4:])
                self.ToAdd["statType"] = self.currProperty[3] #!/%
                self.DOT.append(self.ToAdd)
            elif self.currProperty[0] == "I": #if it's an initial
                self.ToAdd["value"] = int(self.currProperty[4:])
                self.ToAdd["statType"] = self.currProperty[3] #!/%
                self.initials.append(self.ToAdd)
            elif self.currProperty[0] == "B":
                self.ToAdd["value"] = int(self.currProperty[7:])
                self.ToAdd["statType"] = self.currProperty[6] #!/%
                self.ToAdd["chance"] = int(self.currProperty[3:5]) #gets chance as well
                self.buffs.append(self.ToAdd)
            
            #gets what stat it affects:
            self.ToAdd["targetStat"] == self.currProperty[2]
            """
            A -> Armour
            C -> ClearBuffsDebuffs
            D -> Damage(-), healing (+)
            E -> Energy Cost (-), Energy restore (+)
            S -> Speed
            M -> EnergyMaxStat
            L -> HealStat
            H -> Health Stat
            K -> ATKStat
            G -> CritStat
            F -> Freeze
            J -> Stun
            P -> Shield
            X -> Exhaust
            K -> Cooldown
            Z -> Charge
            """
        





            

            
'''
calculating minion stats::

MaxHP = 6n + 5
MaxEnergy = 4.5n + 7.4
MaxSPD = 3n + 5
MaxATK = 3n + 5
MaxHeal = 3n+5

But, this is for the MAX, and not for the current value
I need a way to convert from the maximum to the value held by a level. So, a formula that can calculate the actual values based on the level (hopefully only that, but might vary based on minion)

SPD affinity

Ticub (lv5):        
health = 15
energy = 24
attack = 15
healing = 13
speed = 18 +5%

Zapig (lv4)
health = 11
energy = 21
attack = 13
healing = 7
speed = 13 +5%

Health Affinity

Ticub (lv5):
health = 15 + 5%
energy = 24
attack = 15
healing = 13
speed = 17

Zapig (lv4)
health = 11 + 5%
energy = 21
attack = 13
healing = 7
speed = 13

so the base values are:                                 from the database
Zapig (lv4)                     Electroboar: (lv60)     
health = 11                     health = 245            health = 40
energy = 21                     energy = 300            energy = 65
attack = 13                     attack = 185            attack = 60
healing = 7                     healing = 65            healing = 20
speed = 13                      speed = 185             speed = 60

Ticub (lv5):                    Tigertan: (lv60)
health = 15                     health = 365            health = 60
energy = 24                     energy = 300            energy = 65
attack = 15                     attack = 185            attack = 60
healing = 13                    healing = 140           healing = 45
speed = 17/18 - choose later    speed = 215             speed = 70

health:
60 -> 365 -> 15 (lv.5)
40 -> 245 -> 11 (lv.4)
energy:
65 -> 300 -> 21 (lv.4)
65 -> 300 -> 24 (lv.5)
it's percentages/random right?
attack:
60 -> 185 -> 13 (lv.4)
60 -> 185 -> 15 (lv.5)
healing:
20 -> 65 -> 7 (lv.4)
45 -> 140 -> 13 (lv.5)
speed:
60 -> 185 -> 13
70 -> 215 -> 17/18

ticub now lv.6
Ticub (lv6):                    Tigertan: (lv60)
health = 17                     health = 365            health = 60
energy = 27                     energy = 300            energy = 65
attack = 17                     attack = 185            attack = 60
healing = 15                    healing = 140           healing = 45
speed = 21 + 5%

lv6-lv7 (ticub)
+2
+4
+2
+2
+2
lv6-lv7 (zapig)
+1
+4
+1
+0
+2

k so it's definetely percentages, but of what? and why is it +0 for zapig?
+0 due to rounding error, and maybe it's percentage of the stat?
65/60 > 1 though..



Zapig (lv6)                     Electroboar: (lv60)     
health = 14                     health = 245            health = 40
energy = 27                     energy = 300            energy = 65
attack = 17                     attack = 185            attack = 60
healing = 8                     healing = 65            healing = 20
speed = 17                      speed = 185             speed = 60

so, for health at lv.6: f(base value) =  0.15x + 8
    for health at lv.7: f(base value) = 0.2x + 7
    for health as max lvl: f(base value) = 6x + 5

hmm
so it's linear for each level

it's in OwnedMinions...

CalcEnergy ->
get base energy
val = (base + x) * level (from file)
27 = (300+x) * 6
27/6 - 300 = x

11 = (300+x) * 4
11/4 - 300 = x

hmmm diff constant




idk so maybe hold out for brett betz to assist me, if he knows da logics




notes: why does ticub have 2 different values for the same type?
       let's calculate for each one and see which works
'''
    






    
    