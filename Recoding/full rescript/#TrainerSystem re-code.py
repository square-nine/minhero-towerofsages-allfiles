#TrainerSystem re-code
#there are 7.5k lines D:
#also annotate too much so i can really get the code

#imports
import Minions.OwnedMinion #check owned Minions
import States.MinionDexID #get the number of each minion
import States.MinionMoveID #get the id of each move a minion has
import States.TrainerType #the the type of trainer
import Utilities.Singleton #get Singleton, why is still a mystery



class TrainerSystem(): #define the class from which stuff can import from
    def __init__(self): #creation of privates
        self.m_trainers = [] # a list of Trainers <Vector.<TrainerDataObject>>
        self.extraHardModeModifier = 0 #int; how much to increase difficulty by

    #publics
        
    def TrainerSystem(self): #core system
        _loc2_ = True #var setup - see if i cna get rid of
        _loc3_ = False
        if not _loc3_:
            super() #idk 
            if _loc2_:
                self.m_trainers = #a new trainerlist, as <Vector.<TrainerDataObject>>()
        _loc1_ = 0
        while True:
            if _loc1_ >= (Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + Singleton.staticData.NUM_OF_FLOORS_IN_THE_HARD_TOWER): #if the counter exceeds or equals appropiate value
                if _loc2_ or _loc3_:
                    #addr79:
                    self.m_extraHardModeModifier = Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER #hard mode - floors in standard
                    break #escape
                break #escape
            self.m_trainers[_loc1_] = #TrainerDataObject() - creates a space for trainers?
            if _loc3_:
                break
            _loc1_ += 1
            if _loc2_ or bool(self):
                continue
            #goto(addr79)

    def TrainerSystemButMoreConcise(self): #personal re-code fo above
        super() #idk
        self.m_trainers = #a new trainerlist, as <Vector.<TrainerDataObject>>()
        for i in range(Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + Singleton.staticData.NUM_OF_FLOORS_IN_THE_HARD_TOWER):
            #addr79
            self.m_trainers[i] =  #TrainerDataObject() - creates a space for trainers?
        self.m_extraHardModeModifier = Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER #hard mode - floors in standard


    def CreateFloors(self): #seems to just create all floors but in a weird enough way so that i should look with Betz
        pass
    
    def LoadTrianer(self, param1, param2): # trainerdataobject
        _loc8_ = False
        _loc9_ = True
        _loc3_ = None #:TrainerDataObject
        _loc5_ = None #:OwnedMinion
        _loc6_ = None #:TrainerMinionDataObject
        if not _loc8_:
            #push(Singleton.dynamicData)
            if not _loc8_:
                #pop().ResetOpponentsMinions
                #goto(add36)
                pass
            #pop().m_currTrainerID = param2
        #addr36
        if _loc9_:
            #push(Singleton.DynamicData)
            pass
        _loc4_ = 0
        while _loc4_ < len(self.m_trainers[param1]):
            if self.m_trainers[param1][_loc4_].m_trainerRoomID == param2:
                if _loc9_:
                    _loc3_ = self.m_trainers[param1][_loc4_]
                    if _loc9_ or bool(param1):
                        break
                    _loc7_ = 0
                    #goto(addr86)
                break
            _loc4_ += 1
            if not (_loc9_ or bool(_loc3_)):
                break
        Singleton.dynamicData.m_currTrainerData = _loc3_
        #addr86
        if _loc9_:
            while _loc7_ < len(_loc3_.m_minions) and §§pop().m_opponentsMinions[_loc7_] = _loc5_:
                _loc6_ = _loc3_.m_minions[_loc7_]
                (_loc5_ = new OwnedMinion(_loc6_.m_minionID,false)).m_trainerType = _loc3_.m_trainerType
                #§§push(Singleton.dynamicData)
                if _loc8_:
                    continue
                if(§§pop().m_currFloorOfTower < 31):
                  if not (_loc8_ and bool(self)):
                     _loc5_.SetLevel(Singleton.staticData.GetTrainerMinionLevelFor(Singleton.dynamicData.m_currFloorOfTower) + _loc3_.m_extraMinionLevels)
                     if(_loc9_ or bool(param1)):
                        #addr171:
                        Singleton.utility.AutoBuildMovesForMinion(_loc5_,_loc6_.m_moves)
                        _loc5_.CalculateCurrStats()
                     _loc5_.ReFillHealthAndEnergy()
                     #§§push(Singleton.dynamicData);
                     continue
                  #§§goto(addr171);
                else:
                    _loc5_.SetLevel(Singleton.staticData.GetTrainerMinionLevelFor(Singleton.dynamicData.m_currFloorOfTower))
                    if not (_loc8_ and bool(param1)):
                        #§§goto(addr171);
                        pass
               #§§goto(addr171);
        return _loc3_
    
    #public
    def GetCurrentTrainer(self):
        _loc1_ = False
        _loc2_ = True
        if not _loc1_:
            if Singleton.dynamicData.m_currTrainerID == 0:
                if _loc2_:
                    goto(addr30)
            return self.m_trainers[Singleton.dynamicData.m_currFloorOfTower][Singleton.dynamicData.m_currTrainerID - 1]
        #addr30
        return self.m_trainers[Singleton.dynamicData.m_currFloorOfTower][Singleton.dynamicData.m_currTrainerID]
    
    #loc1 and loc2 don't jump across to another section, so don't need to define them?
    def GetCurrentTrainerButMoreConcise(self): #seems like we could get rid of the address like this??
        if False or (Singleton.dynamicData.m_currTrainerID == 0 and True):
            return self.m_trainers[Singleton.dynamicData.m_currFloorOfTower][Singleton.dynamicData.m_currTrainerID]
        else:
            return self.m_trainers[Singleton.dynamicData.m_currFloorOfTower][Singleton.dynamicData.m_currTrainerID - 1]

    def AddTrainerToFloor(self, param1, param2, param3): #params 1-3 = int
        _loc5_ = True
        _loc6_ = False
        _loc4_ = TrainerDataObject() #new trainerdataobject i.e an object of trainer class
        _loc4_.m_trainerType = param1 #the type os set here
        if not _loc6_:
            _loc4_.m_trainerRoomID = param3 #the room it belongs to is set here
            if _loc5_ or bool(param2):
                self.m_trainers[param2].push(_loc4_)
                if _loc5_:
                    addr47:
                    Singleton.dynamicData.AddTrainerStarCountToFloor(param2)
                return _loc4_
        goto(addr47)