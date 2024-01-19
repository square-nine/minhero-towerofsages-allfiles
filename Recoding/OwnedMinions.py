#OwnedMinion.as Python re-code

class OwnedMinion():
    def __init__(self):
        #constants:
        self.maxNumOfIVs = 25
        self.baseHealth = 5
        self.baseStat = 5
        self.statDivisor = 20
        #publics
        self.minionDexID = 0 #integer
        self.minionName = ""
        self.isPlayersMinion = None #T/F
        self.trainerType = 0 #integer
        self.statBonus = 0 #integer
        self.currentExp = 0 #integer
        self.trainedMove = 0 #integer
        self.currDOTsAndHOTs = [0] #integer list
        self.turnsDOTsAndHOTsHaveBeenIn = [0] #integer list
        self.minionForDOTsAndHOTs:Vector.<OwnedMinion>
        self.currMovesOnCoolDown = [0] #integer list
        self.turnsMovesOnCoolDownHaveBeenIn = [0] #integer list
        self.isBattleModShieldActive = None #bool
        self.isExtraBattleModMinion = None #bool
        self.currExhaust = 0 #integer
        self.currStatStages = [0] #integer list
        self.moveOrderPosition = 0 #integer
        self.hasMovedOnThisTurn = None #bool
        self.isFrozen = None #bool
        self.turnsFrozen = 0 #integer
        self.isStunned = None #bool
        self.currChargeMove:BaseMinionMove
        self.chargeAlliesItHits:Vector.<OwnedMinion>
        self.chargeEnemiesItHits:Vector.<OwnedMinion>
        self.currCharge = 0 #integer
        #privates
        self.minionID = 0 #integer
        self.currHealthStat = 0 #integer
        self.currEnergyStat = 0 #integer
        self.currAttackStat = 0 #integer     
        self.currHealingStat = 0 #integer      
        self.currSpeedStat = 0 #integer     
        self._allMoves = [0] #integer list     
        self.spellTypeProficiency = [0] #integer list      
        self.IVs = [0] #integer list      
        self.gems:Vector.<OwnedGem>     
        self.currHealth = 0 #integer      
        self.currEnergy = 0 #integer      
        self.currShield = 0 #integer      
        self.maxShield = 0 #integer

    #public functions
    def OwnedMinion(param1=0, param2=True):
        _loc5_ = True
        _loc6_ = False
        self.minionDexID = param1
        self.isPlayersMinion = param2
        self.currentExp = 1
        if not (False and _loc3_):
            self.isExtraBattleModMinion = False
            self.minionName =  "Singleton.staticData.GetBaseMinion(this.m_minionDexID).m_baseMinionName;"
            self.IVs = [0,0,0,0,0]
            _loc3_ = 0
            while True:
                §§push(_loc3_)
                if §§pop() >= 25:
                    self.currStatStages = [0,0,0,0,0]
                else:
                    self._allMoves.push(Singleton.staticData.NO_MOVE)
            arr = []
            _loc4_ = arr.pop()
            while _loc4_ < len(self.currStatStages):
                self.currStatStages[_loc4_] = 0
                _loc4_ += 1
            
        self.m_minionID = Singleton.dynamicData.GetNextSettingMinionID()
        self._allMoves = [] #int array

    
    def GetBaseMinion(self):
        return Singleton.staticData.GetBaseMinion(self.m_minionDexID);     

    def AddDefaultMoves(self):
        _loc3_ = False
        _loc4_ = True
        _loc1_ = Singleton.staticData.GetBaseMinion(self.m_minionDexID) #baseMinion object type
        _loc2_ = 0
        while (_loc2_ < len(_loc1_.m_startingMoves)):
            self.AddMove(_loc1_.m_startingMoves[_loc2_])
            _loc2_ += 1
            if not _loc4_:
                break
        
    def AddMove(self, param1): #param1 = int
        _loc3_ = False
        _loc4_ = True
        _loc2_ = 0
        while _loc2_ < len(self._allMoves):
            if self._allMoves[_loc2_] == Singleton.staticData.NO_MOVE:
                if not _loc4_:
                    break
                self._allMoves[_loc2_] = param1
                return
            _loc2_ += 1


    def IsMoveOwned(self, param1): #param1 = int
        #_loc3_ = False
        #_loc4_ = True
        _loc2_ = 0
        while _loc2_ < len(self._allMoves):
            if self._allMoves[_loc2_] == param1:
                push(True)
                return §§pop()
                return §§pop() #at address 75
            _loc2_ += 1
            if not (True or bool(_loc2_)):
                break
        push(false) # at address 75


    def ClearBuffsAndDebuffs(self):
        _loc3_ = False
        _loc4_ = True
        self.currDOTsAndHOTs = [] #int
        addr29:
        self.turnsDOTsAndHOTsHaveBeenIn = [] #int
        self.minionForDOTsAndHOTs = [] #OwnedMinion
        _loc1_ = 0
        do:
            if _loc1_ >= len(self.currStatStages):
               #i'm here now 