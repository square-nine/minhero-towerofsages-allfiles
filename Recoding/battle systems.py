#battle systems
#technically a logical re-code of the BaseMoveSystem.as
#yes this may work


"""
DATA:


MoveList not included as the skill tree
A minion is represented in the following form:

aMinion = {"ID": int -> the unique number assigned, to prevent multiple of the same name from triggering
           "name": name
           "level": level
           "currEXP": EXP -> the current EXP at a level
           "EXPUntilNextLevel": EXP -> EXP needed to level up
           "types": [type1, type2] -> their types
           "HP": health
           "ATK": attack
           "HEALING": defence
           "ENERGY": energy
           "SPD": speed
           "IntrinsicStatBuff": statType -> the stat the minion specialises in
           "Gems": [[Gem1Buff1], [Gem2Buff1, Gem2Buff2]] -> total equipped gems
           "Moves": ... -> a long list that details each move in the form below, including passives
           "CurrDOTs": [DOTName1, DOTName2] -> list of current DOTs
           "CurrBuffsDeBuffs": [Buff1Name, Debuff1Name] -> list of all received buffs/debuffs

}

ExampleMoveList = [Move1, Move2]
where:

Actual values
In the form: "S"/"E"/"A" + "!"/"%" + "+"/"-" + value means MoveForm
The first symbol is whether this only affects itself, or is treated as part of the power.
The third symbol determines whether the value is increasing or decreasing that attrbute,
the second symbol determines whether the value is a percent ("%") or literal value ("!")
try to abbreviate/shorten all of the dictionary IDs.

might convert it tbh
First letter: intial/dot
second: target
third: stat/effect (15 diff values: heal+ damage same sides of coin, same with energycost/restore, so less datapoints)
fourth: val type (literal/percent)
fifth: value (incl.positive/negative)

DOT, by standard, defaults to the set TurnsActive. That should be fine?

example: ISD!-20 -> initially damage self by 20 HP
         DAM!20 -> DOT to allies increases armour by 20 points



Move = {
    core features
        "name": movename
        "Type": [moveType1, moveType2] -> what element(s) it is classified as. It can also be "Passive", which denotes the move as a passive buff
        "NumTargets": numTargets -> can be 0-4 for selecting, and at 5 defaults to all. The prefix "A"/"E"/"S" stands for "Allies", "Enemies" or "Self"
        "TurnsActive": numTurnsActive -> number of turns the move acts across
    bools
        "VMBuffer": bool -> is there a delay between moves
        "TargetsAreRandom?": bool -> targeting randomly?
    buffs
    if the below two are just "null", then they are not buffs, simpel!. Buffs and debuffs are part of the same coin, so they can be merged
        "DeBuff": [[type, chance, MoveForm1], [type2, chance2, MoveForm2]] -> can debuff multiple things, or can possibly do extra debuffs
        "Buff": [[type, chance, MoveForm1], [type2, chance2, MoveForm2]] -> can buff multiple things, or can possibly do extra buffs
    turn manipulation
        "Cooldown": int -> turns before move can be used
        "Exhaust": int -> turns before minion can re-attack
        "Accuracy": 100 (can change) -> chance of hitting (%)
    system
        "Icon": image path -> the icon to display
        "MV-Icon": image path -> the in-game move asset
        "MV-Anim": AnimationType -> the animation of the skill    
    general
        "MaxMod": [type, MoveForm] -> modifying the maximum of a trait as a buff/debuff
        "Initial": [[stat, MoveForm], [stat, MoveForm]] -> the instant effect of a move, i.e instant ATK, heal, speed, energyrestore, energycost, 
        initial can also have [stat, MoveForm, chance] for buffs/Debuffs
        initial can also have [stat, MoveForm, 100, numTurns] for time-limited buffs/debuffs
        "DOT": [[stat, MoveForm, extraChance, MoveForm, turns], [stat2, MoveForm2, extraChance2, MoveForm3, turns2]] -> all DOTs triggered by this move


ReflectAmount, Armour are all part of Buffs
Stun, Freeze are part of DeBuffs
ATK, CurrHeal, EnrgyCost, EnergyRestore, SpeedMod, Recoil, ClearBuffsDebuffs are now part of "Initial"
REcoil is just "S!-" or "S%-" with the attack var
ClearBuffsDebuffs is used as the "stat" in "Initial", and then the percentage after
HealBaseDOT, HealCritDOT, BaseDOT, CritDOT are part of DOT
}

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
    
    def LoadAMove(self, ID): #loads data from a specified move into self.currMove
        #find in db
        MovesDB = ProcessDB(self, "ChoooseAPATHSOON") #gets the movesDB
        for item in MovesDB: #for each move
            if item[0] == ID: #if the IDs match
                values = {}   #reset values
                #get the move type :saves me a column in the DB
                if ID <= 115: values["Type"] = "PASSIVE"
                elif 115 < ID <= 190: values["Type"] = "NORMAL"
                elif 190 < ID <= 225: values["Type"] = "FLYING"
                elif 225 < ID <= 285: values["Type"] = "PLANT"
                elif 285 < ID <= 330: values["Type"] = "WATER"
                elif 330 < ID <= 390: values["Type"] = "EARTH"
                elif 390 < ID <= 440: values["Type"] = "ICE"
                elif 440 < ID <= 515: values["Type"] = "FIRE"
                elif 515 < ID <= 556: values["Type"] = "ELECTRIC"
                elif 556 < ID <= 611: values["Type"] = "ROBOT"
                elif 611 < ID <= 661: values["Type"] = "DINO"
                elif 661 < ID <= 726: values["Type"] = "UNDEAD"
                elif 726 < ID <= 776: values["Type"] = "DEMONIC"
                elif 776 < ID <= 837: values["Type"] = "HOLY"
                elif 837 < ID <= 887: values["Type"] = "TITAN"
                elif ID == 888: values["Type"] = "NONE" #special case for "Desperation"
                else: raise ValueError("No move type specified!")
                for i in range(len(item)): #for each column
                    values[MovesDB[0][i]] = item[i] #add the values into the list as a DB
                print("Successfully retrieved values!")
                return values
            else:
                continue
        print("No move loaded!")


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
    






    
    