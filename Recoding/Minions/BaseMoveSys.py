#see DictOfCodes about why this exists

#but essentially, this will be a place to put all of the modules re-coded

import MoveHandler #proxy for handling special playbacks
import random #doing random stuff


#constants to be accessed everywhere, all in one dictionary!
global consts
consts = {}

global TypeEffectivenessArray
TypeEffectivenessArray = [
    #https://minhero.fandom.com/wiki/Elements_List
    #Normal, Flying, Plant, Water, Earth, Ice, Fire, Electric, Robot, Dino, Undead, Demonic, Holy, Titan
    #same order downwards
    [1,1,1,1,1,1,1,1,1,1,1,1,1.5,0.66],
    [1,1,1.5,1.5,1,1.5,1,0.66,1,1,1,1,1,0.66],
    [1,1,0.66,1.5,1.5,1,0.66,1,0.66,0.66,1.5,1,1,1],
    [1,1,0.66,0.66,1.5,1,1.5,0.66,1.5,0.66,1,1.5,0.66,1],
    [1,1.5,0.66,0.66,0.66,1,1.5,1.5,1,1.5,0.66,1,1,1],
    [1,1,1.5,1,1,0.66,0.66,1,1,1.5,1,1,1,1.5],
    [1,1,1.5,0.66,1,1.5,0.66,1,1.5,1,1.5,0.66,1,1],
    [1,1.5,1,1.5,0.66,1,1,0.66,1.5,0.66,1,1,1,1],
    [1,1,1,1,1,1,1,1,1,1,1,1,1,1],
    [1,1,1.5,1,0.66,0.66,1,1.5,1.5,1,1,1,1,1],
    [1.5,1,0.66,1,1.5,1,0.66,1,1,1,0.66,0.66,0.66,1],
    [1.5,1,1.5,1,1,1,0.66,1,1,1,0.66,0.66,1.5,1],
    [0.66,0.66,1,1,1,1,1,1,1,1,1.5,1.5,0.66,1.5],
    [1,1,1,1,0.66,1.5,1,1,1,1.5,1,1,0.66,1.5],

]

def CalcEffectivenessMod(movetype1, movetype2=None):
    '''Returns the effectiveness modifier depending on the types'''
    if movetype2 == None:
        return 1
    else:
        return 

def CalcDamageOrHealing(damage, extraDamage, minionMax, level, param5=False):
    '''Calculates the damage/healing/shield amount from minion stat + level, and move stats.
       Param5 so far doesn't seem to have an effect, but set it as True for shields (for some reasons)
       '''
    #explanation of this equation:
    # the first part configures the level to a multiplier
    # the second part calculates the move's actual value to use, by including random chance
    # the third part scales down the damage value and includes the minion's stats.
    return (level * 3 / 5 + 2) * (damage + extraDamage * random.random()) * minionMax /3000



def ApplyEffectsOfCurrentMove(currMinion, #the executing minion
                              currMove, #the move being executed
                              targets, #all of the targets
                              StageState # the whole arena, so basically all of the enemies and allies on the board
                              ):
    " Call when a move actually needs to be done, essentially the intial implementation."
    #setups - probably can be destroyed
    _loc4_ = None
    _loc5_ = None
    _loc6_ = None
    _loc12_ = None
    _loc13_ = 0
    _loc14_ = None
    _loc15_ = 0
    _loc16_ = 0
    #energy calculations
    currMinion.energy -= currMove.energycost
    if currMove.energyPercentRestored > 0: 
        currMinion.energy += currMinion.energyStat * currMove.energyPercentRestored /100
    #calculate if move is missed, and continue if not
    if currMove.accuracy < consts["applyMissChance"]:
        return "Move has missed!"
    
    #claculate exhausts:
    currMinion.exhaust = currMove.exhaustAmount

    #get common calculations
    _loc1_ = CalcDamageOrHealing(currMove.damage, currMove.AdditionalDamage, currMinion.maxATK, currMinion.level) #damage of move
    _loc2_ = CalcDamageOrHealing(currMove.healing, currMove.AdditionalHealing, currMinion.maxHeal, currMinion.level) #healing of move
    _loc3_ = CalcDamageOrHealing(currMove.ShieldAmount, 0, currMinion.maxHeal, currMinion.level, False) #shielding of move
    #check if move is better due to "type resonance"
    if currMinion.type1 == currMove.type or currMinion.type2 == currMove.type:
        _loc1_ *= 1.1
        _loc2_ *= 1.1
    
    _loc7_ = 1
    _loc8_ = [] # the minion(s) to receive effects of move. basically targets, but eHH
    _loc9_ = 0

    for loc10 in range(5):
        if isPlayerMove:
            if targets[loc10].health > 0:
                if targets[loc10].redirectDamage > 0:
                    _loc8_.append(targets[loc10])
                    loc9 += targets[loc10].redirectDamage
                    if currMove.damage >0 or currMove.AdditionalDamage > 0:
                        #play redirected animation on the target minion
        elif StageState["player"][loc10] != None and StageState["player"][loc10].health > 0:
            if StageState["player"][loc10].redirectDMG > 0:
                _loc8_.append(StageState["player"][loc10])
                loc9 = StageState["player"][loc10].redirectDMG
                if currMove.damage >0 or currMove.AdditionalDamage > 0:
                    #play redirected animation on the target minion
    for _loc11_ in range(len(targets)):
        if CalculateEffectivenessModifier(this.m_currMove.m_moveType,this.m_enemiesItHits[_loc11_].m_baseMinion.m_minionType1) * Singleton.staticData.CalculateEffectivenessModifier(this.m_currMove.m_moveType,this.m_enemiesItHits[_loc11_].m_baseMinion.m_minionType2) > 1.4:
