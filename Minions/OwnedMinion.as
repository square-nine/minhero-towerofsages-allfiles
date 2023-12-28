package Minions
{
   import BattleSystems.Visuals.BattleScreenMinionVisual;
   import BattleSystems.Visuals.VisualMoves.BaseVisualMove;
   import Minions.MinionMove.BaseMinionMove;
   import SharedObjects.Gems.OwnedGem;
   import States.StarUpgradeTypes;
   import States.StatType;
   import States.TrainerType;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   
   public class OwnedMinion
   {
       
      
      private const m_maxNumOfIVs:int = 25;
      
      private const m_baseHealth:int = 5;
      
      private const m_baseStat:int = 5;
      
      private const m_statDivisor:int = 20;
      
      private var _minionID:int;
      
      public var m_minionDexID:int;
      
      public var m_minionName:String;
      
      public var m_isPlayersMinion:Boolean;
      
      public var m_trainerType:int;
      
      public var m_statBonus:int;
      
      private var _currHealthStat:int;
      
      private var _currEnergyStat:int;
      
      private var _currAttackStat:int;
      
      private var _currHealingStat:int;
      
      private var _currSpeedStat:int;
      
      public var m_currentExp:int;
      
      private var _allMoves:Vector.<int>;
      
      public var m_trainedMove:int;
      
      private var m_spellTypeProficiency:Vector.<int>;
      
      private var m_IVs:Vector.<int>;
      
      private var m_gems:Vector.<OwnedGem>;
      
      public var m_currDOTsAndHOTs:Vector.<int>;
      
      public var m_turnsDOTsAndHOTsHaveBeenIn:Vector.<int>;
      
      public var m_minionForDOTsAndHOTs:Vector.<OwnedMinion>;
      
      public var m_currMovesOnCoolDown:Vector.<int>;
      
      public var m_turnsMovesOnCoolDownHaveBeenIn:Vector.<int>;
      
      private var _currHealth:int;
      
      private var _currEnergy:int;
      
      private var _currShield:int;
      
      private var _maxShield:int;
      
      public var m_isBattleModShieldActive:Boolean;
      
      public var m_isExtraBattleModMinion:Boolean;
      
      public var m_currExhaust:int;
      
      public var m_currStatStages:Vector.<int>;
      
      public var m_moveOrderPosition:int;
      
      public var m_hasMovedOnThisTurn:Boolean;
      
      public var m_isFrozen:Boolean;
      
      public var m_turnsFrozen:int;
      
      public var m_isStunned:Boolean;
      
      public var m_currChargeMove:BaseMinionMove;
      
      public var m_chargeAlliesItHits:Vector.<OwnedMinion>;
      
      public var m_chargeEnemiesItHits:Vector.<OwnedMinion>;
      
      public var m_currCharge:int;
  
      public function OwnedMinion(param1:int, param2:Boolean = true)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         super();
         if(_loc5_)
         {
            this.m_minionDexID = param1;
            this.m_isPlayersMinion = param2;
            if(!_loc6_)
            {
               this.m_currentExp = 1;
               if(!(_loc6_ && _loc3_))
               {
                  this.m_isExtraBattleModMinion = false;
                  this.m_minionName = Singleton.staticData.GetBaseMinion(this.m_minionDexID).m_baseMinionName;
                  if(!_loc6_)
                  {
                     addr48:
                     this.m_IVs = new Vector.<int>(5);
                     if(_loc6_)
                     {
                     }
                     addr70:
                     var _loc3_:int = 0;
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           if(§§pop() >= 25)
                           {
                              if(_loc5_ || param2)
                              {
                                 this.m_currStatStages = new Vector.<int>(5);
                              }
                           }
                           else
                           {
                              this._allMoves.push(Singleton.staticData.NO_MOVE);
                              if(_loc5_)
                              {
                                 continue;
                              }
                           }
                           addr121:
                           break;
                        }
                        break;
                     }


                     var _loc4_:* = §§pop();
                     if(!_loc6_)
                     {
                        loop1:
                        while(_loc4_ < this.m_currStatStages.length)
                        {
                           this.m_currStatStages[_loc4_] = 0;
                           while(true)
                           {
                              _loc4_++;
                              continue loop1;
                           }
                        }
                        this.m_gems = new Vector.<OwnedGem>(4);
                        this.m_trainedMove = Singleton.staticData.NO_MOVE;
                        this.AddDefaultMoves();
                        if(!(_loc6_ && param2))
                        {
                           this.m_statBonus = int(Math.random() * 5);
                           if(!(_loc6_ && param2))
                           {
                              this.CalculateCurrStats();
                              this.m_currHealth = this.m_currHealthStat;
                              this.m_currEnergy = this.m_currEnergyStat;
                              addr176:
                              if(_loc5_ || param2)
                              {
                                 this.m_currExhaust = 0;
                                 this.m_trainerType = TrainerType.NO_TRAINER;
                                 if(_loc5_)
                                 {
                                    addr207:
                                    this.SetupForCombat();
                                 }
                                 return;
                              }
                           }
                           §§goto(addr207);
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr132);
                  }
               }
               this._minionID = Singleton.dynamicData.GetNextSettingMinionID();
               if(!_loc6_)
               {
                  this._allMoves = new Vector.<int>();
               }
            }
            §§goto(addr70);
         }
         §§goto(addr48);
      }
      
      public function get m_baseMinion() : BaseMinion
      {
         return Singleton.staticData.GetBaseMinion(this.m_minionDexID);
      }
      
      public function AddDefaultMoves() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:BaseMinion = Singleton.staticData.GetBaseMinion(this.m_minionDexID);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.m_startingMoves.length)
         {
            this.AddMove(_loc1_.m_startingMoves[_loc2_]);
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               _loc2_++;
               if(!_loc4_)
               {
                  break;
               }
            }
         }
      }
      
      public function AddMove(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(_loc2_ < this._allMoves.length)
         {
            if(this._allMoves[_loc2_] == Singleton.staticData.NO_MOVE)
            {
               if(!_loc4_)
               {
                  break;
               }
               this._allMoves[_loc2_] = param1;
               if(!_loc3_)
               {
                  return;
               }
            }
            _loc2_++;
            if(_loc3_)
            {
               break;
            }
         }
      }
      
      public function IsMoveOwned(param1:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(_loc2_ < this._allMoves.length)
         {
            if(this._allMoves[_loc2_] == param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  §§push(true);
                  if(_loc4_ || Boolean(this))
                  {
                     return §§pop();
                  }
                  addr75:
                  return §§pop();
               }
            }
            _loc2_++;
            if(!(_loc4_ || Boolean(_loc2_)))
            {
               break;
            }
         }
         §§goto(addr75);
         §§push(false);
      }
      
      public function ClearBuffsAndDebuffs() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.m_currDOTsAndHOTs = new Vector.<int>();
            if(_loc4_ || _loc2_)
            {
               addr29:
               this.m_turnsDOTsAndHOTsHaveBeenIn = new Vector.<int>();
               if(_loc4_ || Boolean(this))
               {
                  this.m_minionForDOTsAndHOTs = new Vector.<OwnedMinion>();
               }
            }
            var _loc1_:int = 0;
            do
            {
               if(_loc1_ >= this.m_currStatStages.length)
               {
                  // i'm here now
                  if(!_loc3_)
                  {
                     break;
                  }
                  this.m_isStunned = false;
                  var _loc2_:BattleScreenMinionVisual = Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(this);
                  if(!_loc3_)
                  {
                     §§push(_loc2_ == null);
                     if(!_loc3_)
                     {
                        §§push(!§§pop());
                        if(!_loc3_)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ || Boolean(_loc1_))
                              {
                                 §§goto(addr132);
                              }
                           }
                        }
                        §§goto(addr147);
                     }
                     addr132:
                     §§pop();
                     if(_loc4_)
                     {
                        §§push(_loc2_.m_minionSprite == null);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           §§goto(addr147);
                        }
                        addr147:
                        if(!§§pop())
                        {
                           if(!_loc3_)
                           {
                              TweenLite.to(_loc2_.m_minionSprite,1,{"removeTint":true});
                              if(_loc4_)
                              {
                              }
                              §§goto(addr181);
                           }
                        }
                        §§goto(addr181);
                     }
                     TweenLite.to(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionTopLayerVisualObjectFor(this).m_minionSprite,1,{"removeTint":true});
                     §§goto(addr181);
                  }
               }
               this.m_currStatStages[_loc1_] = 0;
               if(_loc3_)
               {
                  break;
               }
               continue;
               addr181:
               return;
            }
            while(_loc1_++, _loc4_ || Boolean(_loc2_));
            
            this.m_isFrozen = false;
            if(_loc4_ || Boolean(this))
            {
               this.m_turnsFrozen = 0;
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr101);
               }
            }
            §§goto(addr101);
         }
         §§goto(addr29);
      }
      
      public function SetupForCombat() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.m_currDOTsAndHOTs = new Vector.<int>();
            if(!_loc2_)
            {
               addr24:
               this.m_turnsDOTsAndHOTsHaveBeenIn = new Vector.<int>();
               if(_loc3_ || _loc3_)
               {
                  this.m_minionForDOTsAndHOTs = new Vector.<OwnedMinion>();
                  if(!(_loc2_ && _loc2_))
                  {
                     addr50:
                     this.m_currMovesOnCoolDown = new Vector.<int>();
                     if(_loc2_)
                     {
                     }
                     §§goto(addr71);
                  }
                  this.m_turnsMovesOnCoolDownHaveBeenIn = new Vector.<int>();
                  addr71:
                  var _loc1_:int = 0;
                  while(_loc1_ < this.m_currStatStages.length)
                  {
                     this.m_currStatStages[_loc1_] = 0;
                     _loc1_++;
                  }
                  this.m_currExhaust = 0;
                  if(_loc3_ || _loc3_)
                  {
                     this.m_currChargeMove = null;
                     this.m_chargeAlliesItHits = null;
                     if(!_loc2_)
                     {
                        this.m_chargeEnemiesItHits = null;
                        §§goto(addr114);
                     }
                     §§goto(addr119);
                  }
                  addr114:
                  this.m_currCharge = 0;
                  if(_loc3_)
                  {
                     addr119:
                     this.m_isFrozen = false;
                     this.m_turnsFrozen = 0;
                     this.m_isStunned = false;
                     this._currShield = 0;
                     this._maxShield = 0;
                  }
                  this.m_isBattleModShieldActive = false;
                  return;
               }
            }
            §§goto(addr50);
         }
         §§goto(addr24);
      }
      
      public function AddToStatStages(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.m_currStatStages[param1] += param2;
         }
      }
      
      public function AddMoveToCoolDowns(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && Boolean(param1)))
         {
            this.m_currMovesOnCoolDown.push(param1);
            if(!_loc3_)
            {
               this.m_turnsMovesOnCoolDownHaveBeenIn.push(0);
            }
         }
      }
      
      public function GetRatioOfTurnsLeftOnCoolDown(param1:int) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ && _loc3_)
            {
               break;
            }
            if(§§pop() >= this.m_currMovesOnCoolDown.length)
            {
               addr78:
               break;
            }
            if(this.m_currMovesOnCoolDown[_loc2_] == param1)
            {
               if(_loc4_)
               {
                  return this.m_turnsMovesOnCoolDownHaveBeenIn[_loc2_] / (Singleton.staticData.GetBaseMinionMove(this.m_currMovesOnCoolDown[_loc2_]).m_moveCoolDownTime + 1);
               }
            }
            _loc2_++;
            if(_loc4_ || Boolean(this))
            {
               continue;
            }
            §§goto(addr78);
         }
         return §§pop();
      }
      
      public function TickTurn() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:* = int(this.m_currMovesOnCoolDown.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(§§pop() > -1)
            {
               if(this.m_turnsMovesOnCoolDownHaveBeenIn[_loc1_] != Singleton.staticData.GetBaseMinionMove(this.m_currMovesOnCoolDown[_loc1_]).m_moveCoolDownTime)
               {
                  var _loc2_:*;
                  var _loc3_:*;
                  var _loc4_:* = (_loc2_ = this.m_turnsMovesOnCoolDownHaveBeenIn)[_loc3_ = _loc1_] + 1;
                  if(!_loc5_)
                  {
                     _loc2_[_loc3_] = _loc4_;
                  }
                  if(_loc6_ || Boolean(this))
                  {
                  }
                  break;
               }
               if(_loc6_)
               {
                  this.m_turnsMovesOnCoolDownHaveBeenIn.splice(_loc1_,1);
                  if(_loc6_)
                  {
                     this.m_currMovesOnCoolDown.splice(_loc1_,1);
                     if(_loc6_ || Boolean(_loc1_))
                     {
                     }
                     addr97:
                     §§push(_loc1_);
                     if(_loc6_ || Boolean(_loc1_))
                     {
                        §§push(§§pop() - 1);
                        if(_loc6_ || _loc2_)
                        {
                           _loc1_ = §§pop();
                           if(!_loc6_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     continue;
                  }
               }
               §§goto(addr97);
            }
            return;
         }
      }
      
      public function IsHotOrDotActive(param1:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_currDOTsAndHOTs.length)
         {
            if(this.m_currDOTsAndHOTs[_loc2_] == param1)
            {
               if(_loc4_ || _loc3_)
               {
                  §§push(true);
                  if(_loc4_)
                  {
                     return §§pop();
                  }
                  addr70:
                  return §§pop();
               }
            }
            _loc2_++;
            if(_loc3_ && _loc3_)
            {
               break;
            }
         }
         §§goto(addr70);
         §§push(false);
      }
      
      public function AddDotOrHot(param1:int, param2:OwnedMinion) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         while(_loc3_ < this.m_currDOTsAndHOTs.length)
         {
            if(this.m_currDOTsAndHOTs[_loc3_] == param1)
            {
               if(!(_loc4_ && Boolean(param2)))
               {
                  this.m_turnsDOTsAndHOTsHaveBeenIn[_loc3_] = 0;
                  if(_loc5_)
                  {
                     this.m_minionForDOTsAndHOTs[_loc3_] = param2;
                  }
                  else
                  {
                     §§goto(addr79);
                  }
               }
               return;
            }
            _loc3_++;
            if(_loc4_)
            {
               break;
            }
         }
         this.m_currDOTsAndHOTs.push(param1);
         if(_loc5_ || Boolean(this))
         {
            §§goto(addr79);
         }
         addr79:
         this.m_turnsDOTsAndHOTsHaveBeenIn.push(0);
         if(!_loc4_)
         {
            this.m_minionForDOTsAndHOTs.push(param2);
         }
      }
      
      public function TickDotsAndHots() : Number
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc3_:BaseMinionMove = null;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc8_:BaseVisualMove = null;
         var _loc1_:* = 0;
         var _loc2_:Number = 0;
         var _loc4_:* = 1;
         var _loc7_:int = int(this.m_currDOTsAndHOTs.length - 1);
         for(; _loc7_ > -1; _loc7_--)
         {
            _loc3_ = Singleton.staticData.GetBaseMinionMove(this.m_currDOTsAndHOTs[_loc7_]);
            §§push(_loc3_.m_DOTDamage);
            §§push(0);
            if(_loc13_ || Boolean(_loc3_))
            {
               §§push(§§pop() > §§pop());
               if(_loc13_)
               {
                  §§push(§§pop());
                  if(!(_loc12_ && Boolean(_loc1_)))
                  {
                     if(!§§pop())
                     {
                        if(_loc13_)
                        {
                           §§pop();
                           §§push(_loc3_.m_additionalDOTDamage);
                           §§push(0);
                           if(!_loc12_)
                           {
                              addr80:
                              §§push(§§pop() > §§pop());
                              if(!(_loc12_ && Boolean(_loc1_)))
                              {
                                 addr88:
                                 if(§§pop())
                                 {
                                    if(!(_loc12_ && Boolean(_loc2_)))
                                    {
                                       §§push(Singleton.staticData);
                                       if(_loc13_ || Boolean(_loc3_))
                                       {
                                          §§push(_loc3_.m_DOTDamage);
                                          if(!_loc12_)
                                          {
                                             §§push(_loc3_.m_additionalDOTDamage);
                                             if(_loc13_)
                                             {
                                                _loc5_ = Number(§§pop().CalculateDamageOrHealingAmount(§§pop(),§§pop(),this.m_minionForDOTsAndHOTs[_loc7_].m_maxAttackStat,this.m_minionForDOTsAndHOTs[_loc7_].m_currLevel));
                                                §§push(1);
                                                if(_loc13_)
                                                {
                                                   §§push(_loc4_ = §§pop());
                                                   if(_loc13_)
                                                   {
                                                      §§push(Singleton.staticData);
                                                      if(!(_loc12_ && Boolean(_loc2_)))
                                                      {
                                                         §§push(_loc3_.m_moveType);
                                                         if(!(_loc12_ && Boolean(_loc1_)))
                                                         {
                                                            §§push(this.m_baseMinion);
                                                            if(_loc13_ || Boolean(this))
                                                            {
                                                               §§push(§§pop().m_minionType1);
                                                               if(_loc13_)
                                                               {
                                                                  §§push(§§pop() * §§pop().CalculateEffectivenessModifier(§§pop(),§§pop()));
                                                                  §§push(§§pop() * §§pop().CalculateEffectivenessModifier(§§pop(),§§pop()));
                                                                  if(!(_loc12_ && Boolean(_loc1_)))
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     §§push(Singleton.staticData);
                                                                     if(_loc13_ || Boolean(_loc2_))
                                                                     {
                                                                        addr185:
                                                                        §§push(_loc3_.m_moveType);
                                                                        if(!(_loc12_ && Boolean(_loc1_)))
                                                                        {
                                                                           addr194:
                                                                           §§push(this.m_baseMinion);
                                                                           if(!(_loc12_ && Boolean(_loc3_)))
                                                                           {
                                                                              addr203:
                                                                              §§push(§§pop().m_minionType2);
                                                                              if(!(_loc12_ && Boolean(this)))
                                                                              {
                                                                                 §§push(§§pop().CalculateEffectivenessModifier(§§pop(),§§pop()));
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc13_ || Boolean(_loc1_))
                                                                                    {
                                                                                       _loc4_ = §§pop();
                                                                                       §§push(_loc5_);
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          addr227:
                                                                                          _loc5_ = §§pop() * _loc4_;
                                                                                          §§push(_loc2_ - _loc5_);
                                                                                       }
                                                                                    }
                                                                                    _loc2_ = §§pop();
                                                                                    §§push(Singleton.staticData);
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       §§push(_loc3_.m_visualDOTMoveID);
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          §§push(§§pop().GetVisualMinionMove(§§pop()));
                                                                                          if(!(_loc12_ && Boolean(this)))
                                                                                          {
                                                                                             (_loc8_ = §§pop()).CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,_loc3_,this.m_minionForDOTsAndHOTs[_loc7_],this);
                                                                                             if(_loc13_ || Boolean(_loc1_))
                                                                                             {
                                                                                                _loc8_.PlayMove();
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   addr277:
                                                                                                   §§push(_loc8_.m_moveTime);
                                                                                                   if(_loc13_ || Boolean(_loc3_))
                                                                                                   {
                                                                                                      if(§§pop() > _loc1_)
                                                                                                      {
                                                                                                         addr313:
                                                                                                         if(_loc13_ || Boolean(_loc2_))
                                                                                                         {
                                                                                                            addr302:
                                                                                                            §§push(_loc8_.m_moveTime);
                                                                                                            if(!(_loc12_ && Boolean(_loc2_)))
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(_loc3_.m_HOTHealing);
                                                                                                         §§push(0);
                                                                                                         if(_loc13_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            addr323:
                                                                                                            §§push(§§pop() > §§pop());
                                                                                                            if(!(_loc12_ && Boolean(_loc1_)))
                                                                                                            {
                                                                                                               addr332:
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  addr345:
                                                                                                                  if(_loc13_ || Boolean(_loc1_))
                                                                                                                  {
                                                                                                                     addr340:
                                                                                                                     §§pop();
                                                                                                                     §§push(_loc3_.m_additionalHOTHealing);
                                                                                                                     §§push(0);
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc12_ && Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     addr353:
                                                                                                                     §§push(Singleton.staticData);
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        addr357:
                                                                                                                        §§push(_loc3_.m_HOTHealing);
                                                                                                                        if(!(_loc12_ && Boolean(_loc1_)))
                                                                                                                        {
                                                                                                                           addr368:
                                                                                                                           §§push(Number(§§pop().CalculateDamageOrHealingAmount(§§pop(),_loc3_.m_additionalHOTHealing,this.m_minionForDOTsAndHOTs[_loc7_].m_maxHealingStat,this.m_minionForDOTsAndHOTs[_loc7_].m_currLevel)));
                                                                                                                           if(!(_loc12_ && Boolean(_loc1_)))
                                                                                                                           {
                                                                                                                              _loc6_ = §§pop();
                                                                                                                              if(!(_loc12_ && Boolean(_loc1_)))
                                                                                                                              {
                                                                                                                                 §§push(1);
                                                                                                                                 if(!_loc12_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(_loc13_)
                                                                                                                                    {
                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                       if(_loc13_ || Boolean(_loc1_))
                                                                                                                                       {
                                                                                                                                          §§push(Singleton.staticData);
                                                                                                                                          if(_loc13_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.m_moveType);
                                                                                                                                             if(_loc13_)
                                                                                                                                             {
                                                                                                                                                §§push(this.m_baseMinion);
                                                                                                                                                if(!_loc12_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().m_minionType1);
                                                                                                                                                   if(_loc13_ || Boolean(_loc1_))
                                                                                                                                                   {
                                                                                                                                                      addr476:
                                                                                                                                                      §§push(§§pop().CalculateHealingEffectivenessModifier(§§pop(),§§pop()));
                                                                                                                                                      if(_loc13_ || Boolean(_loc1_))
                                                                                                                                                      {
                                                                                                                                                         addr448:
                                                                                                                                                         §§push(_loc4_ = §§pop() * §§pop());
                                                                                                                                                         §§push(Singleton.staticData);
                                                                                                                                                         §§push(_loc3_.m_moveType);
                                                                                                                                                         §§push(this.m_baseMinion.m_minionType2);
                                                                                                                                                      }
                                                                                                                                                      _loc2_ = §§pop() + §§pop();
                                                                                                                                                      if(_loc13_ || Boolean(_loc3_))
                                                                                                                                                      {
                                                                                                                                                         addr491:
                                                                                                                                                         (_loc8_ = Singleton.staticData.GetVisualMinionMove(_loc3_.m_visualDOTMoveID)).CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,_loc3_,this.m_minionForDOTsAndHOTs[_loc7_],this);
                                                                                                                                                         addr490:
                                                                                                                                                         if(!_loc12_)
                                                                                                                                                         {
                                                                                                                                                            _loc8_.PlayMove();
                                                                                                                                                            if(!_loc12_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc8_.m_moveTime);
                                                                                                                                                               if(_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() > _loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     addr530:
                                                                                                                                                                     if(_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc8_.m_moveTime);
                                                                                                                                                                        if(_loc13_ || Boolean(_loc1_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     var _loc9_:*;
                                                                                                                                                                     var _loc10_:*;
                                                                                                                                                                     var _loc11_:* = (_loc9_ = this.m_turnsDOTsAndHOTsHaveBeenIn)[_loc10_ = _loc7_] + 1;
                                                                                                                                                                     if(_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc9_[_loc10_] = _loc11_;
                                                                                                                                                                     }
                                                                                                                                                                     if(this.m_turnsDOTsAndHOTsHaveBeenIn[_loc7_] >= _loc3_.m_overTimeTurnsActive)
                                                                                                                                                                     {
                                                                                                                                                                        addr556:
                                                                                                                                                                        this.m_currDOTsAndHOTs.splice(_loc7_,1);
                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           addr563:
                                                                                                                                                                           this.m_turnsDOTsAndHOTsHaveBeenIn.splice(_loc7_,1);
                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                           {
                                                                                                                                                                              this.m_minionForDOTsAndHOTs.splice(_loc7_,1);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr530);
                                                                                                                                                               }
                                                                                                                                                               _loc1_ = §§pop();
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr530);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr556);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() * §§pop().CalculateHealingEffectivenessModifier(§§pop(),§§pop()));
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr448);
                                                                                                                                       }
                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                       if(!(_loc12_ && Boolean(_loc3_)))
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          if(_loc13_ || Boolean(_loc2_))
                                                                                                                                          {
                                                                                                                                             addr469:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc13_)
                                                                                                                                             {
                                                                                                                                                addr472:
                                                                                                                                                _loc6_ = §§pop();
                                                                                                                                                §§goto(addr476);
                                                                                                                                                §§push(_loc2_);
                                                                                                                                                §§push(_loc6_);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr476);
                                                                                                                                       }
                                                                                                                                       §§goto(addr556);
                                                                                                                                    }
                                                                                                                                    §§goto(addr469);
                                                                                                                                 }
                                                                                                                                 §§goto(addr472);
                                                                                                                              }
                                                                                                                              §§goto(addr563);
                                                                                                                           }
                                                                                                                           §§goto(addr472);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr490);
                                                                                                                  }
                                                                                                                  §§goto(addr530);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr345);
                                                                                                         §§push(§§pop() > §§pop());
                                                                                                      }
                                                                                                      §§goto(addr313);
                                                                                                   }
                                                                                                   _loc1_ = §§pop();
                                                                                                   §§goto(addr313);
                                                                                                }
                                                                                                §§goto(addr302);
                                                                                             }
                                                                                             §§goto(addr277);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr491);
                                                                                    }
                                                                                    §§goto(addr357);
                                                                                 }
                                                                              }
                                                                              §§goto(addr476);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr448);
                                                                  }
                                                                  §§goto(addr469);
                                                               }
                                                               §§goto(addr476);
                                                            }
                                                            §§goto(addr203);
                                                         }
                                                         §§goto(addr194);
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                   §§goto(addr476);
                                                }
                                                §§goto(addr227);
                                             }
                                          }
                                          §§goto(addr368);
                                       }
                                       §§goto(addr491);
                                    }
                                    §§goto(addr353);
                                 }
                                 §§goto(addr313);
                              }
                              §§goto(addr340);
                           }
                           §§goto(addr323);
                        }
                        §§goto(addr345);
                     }
                     §§goto(addr88);
                  }
               }
               §§goto(addr332);
            }
            §§goto(addr80);
         }
         if(_loc13_ || Boolean(this))
         {
            this.AddToHealth(_loc2_);
         }
         return _loc1_;
      }
      
      public function ResetMoves() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this._allMoves = new Vector.<int>();
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= 25)
            {
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr68);
            }
            this._allMoves.push(Singleton.staticData.NO_MOVE);
            if(!_loc2_)
            {
               _loc1_++;
               if(_loc2_ && Boolean(this))
               {
                  break;
               }
            }
         }
         this.AddDefaultMoves();
         addr68:
      }
      
      public function GetRandomIVs() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.m_IVs[StatType.STAT_HEALTH] = Math.random() * this.m_maxNumOfIVs;
            if(_loc2_)
            {
               this.m_IVs[StatType.STAT_ENERGY] = Math.random() * this.m_maxNumOfIVs;
               if(!_loc1_)
               {
                  this.m_IVs[StatType.STAT_ATTACK] = Math.random() * this.m_maxNumOfIVs;
                  if(_loc2_)
                  {
                     this.m_IVs[StatType.STAT_HEALING] = Math.random() * this.m_maxNumOfIVs;
                     if(_loc2_ || _loc2_)
                     {
                     }
                     §§goto(addr98);
                  }
               }
               §§goto(addr98);
            }
            this.m_IVs[StatType.STAT_SPEED] = Math.random() * this.m_maxNumOfIVs;
         }
         addr98:
      }
      
      public function CalculateCurrStats() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this._currHealthStat = this.CalculateHealthStat(this.m_currLevel);
            if(!_loc1_)
            {
               this._currEnergyStat = this.CalculateEnergyStat(this.m_currLevel);
               if(_loc1_)
               {
               }
               §§goto(addr73);
            }
            this._currAttackStat = this.CalculateAttackStat(this.m_currLevel);
            if(!(_loc1_ && _loc2_))
            {
               this._currHealingStat = this.CalculateHealingStat(this.m_currLevel);
               if(_loc2_)
               {
               }
               §§goto(addr73);
            }
            this._currSpeedStat = this.CalculateSpeedStat(this.m_currLevel);
         }
         addr73:
      }
      
      public function CalculateHealthStat(param1:int) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(Singleton.staticData.GetBaseMinion(this.m_minionDexID).m_baseHealth);
         if(_loc6_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push((this.m_IVs[StatType.STAT_HEALTH] + _loc2_) * param1);
         if(!(_loc5_ && Boolean(this)))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!_loc5_)
         {
            §§push(this.GetHeathStatDivisor(param1));
            if(_loc6_ || _loc2_)
            {
               §§push(§§pop() / §§pop());
               if(!_loc5_)
               {
                  §§push(§§pop() + this.m_baseHealth);
                  if(!_loc5_)
                  {
                     addr69:
                     §§push(§§pop());
                     §§push(§§pop());
                  }
               }
               §§goto(addr69);
            }
            var _loc4_:* = §§pop();
            if(!_loc5_)
            {
               §§push(this.GetExtraStatFromGem(StatType.STAT_HEALTH));
               if(!_loc5_)
               {
                  §§push(§§pop() + §§pop());
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(§§pop());
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(§§pop());
                        if(!_loc5_)
                        {
                           _loc4_ = §§pop();
                           §§push(Singleton.staticData);
                           if(_loc6_)
                           {
                              §§push(§§pop().GetStatStageModificationAmount(this.m_currStatStages[StatType.STAT_HEALTH]));
                              if(!_loc5_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc5_)
                                 {
                                    _loc4_ = §§pop();
                                    if(this.m_statBonus == StatType.STAT_HEALTH)
                                    {
                                       if(_loc6_ || Boolean(this))
                                       {
                                          §§push(_loc4_);
                                          §§push(1.05);
                                          if(!_loc5_)
                                          {
                                             addr139:
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                addr147:
                                                §§push(§§pop());
                                                if(_loc6_ || Boolean(param1))
                                                {
                                                   addr155:
                                                   _loc4_ = §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      addr158:
                                                      §§push(_loc4_);
                                                      §§push(this.GetPassiveIncreasePercentageForStat(StatType.STAT_HEALTH));
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc6_ || Boolean(param1))
                                                            {
                                                               addr176:
                                                               _loc4_ = §§pop();
                                                               if(_loc6_)
                                                               {
                                                                  addr179:
                                                                  if(this.m_isPlayersMinion)
                                                                  {
                                                                     addr182:
                                                                     §§push(_loc4_);
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr186:
                                                                        §§push(1 + Singleton.dynamicData.GetStarUpgradeAmount(StarUpgradeTypes.STAR_UPGRADE_HEALTH) * 0.02);
                                                                        if(_loc6_ || Boolean(this))
                                                                        {
                                                                           addr201:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc5_)
                                                                           {
                                                                              addr232:
                                                                              return §§pop();
                                                                              addr233:
                                                                           }
                                                                           §§goto(addr233);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr223:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc5_ && Boolean(this))
                                                                           {
                                                                           }
                                                                           §§goto(addr232);
                                                                        }
                                                                     }
                                                                     _loc4_ = §§pop();
                                                                     §§goto(addr232);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(_loc6_)
                                                                     {
                                                                        addr219:
                                                                        §§goto(addr223);
                                                                        §§push(Singleton.staticData.GetEnemyStatBonusForCurrentFloor(StatType.STAT_HEALTH,this));
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr232);
                                                            }
                                                            §§goto(addr223);
                                                         }
                                                         §§goto(addr232);
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   §§goto(addr182);
                                                }
                                                §§goto(addr176);
                                             }
                                             §§goto(addr155);
                                          }
                                          §§goto(addr223);
                                       }
                                       §§goto(addr179);
                                    }
                                    §§goto(addr158);
                                 }
                                 §§goto(addr182);
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr219);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr232);
               }
               §§goto(addr186);
            }
            §§goto(addr147);
         }
         §§goto(addr69);
      }
      
      private function GetHeathStatDivisor(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 20;
         if(!_loc4_)
         {
            §§push(param1);
            if(_loc3_ || Boolean(_loc2_))
            {
               if(§§pop() > 14)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     §§push(_loc2_);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(param1);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop() - 15);
                           if(!_loc4_)
                           {
                              §§push(45);
                              if(_loc3_)
                              {
                                 addr70:
                                 §§push(§§pop() / §§pop());
                                 if(!_loc4_)
                                 {
                                    §§push(12);
                                 }
                                 §§push(§§pop() - §§pop());
                                 if(_loc3_)
                                 {
                                    addr73:
                                    §§push(§§pop());
                                    if(_loc3_ || Boolean(_loc2_))
                                    {
                                       _loc2_ = §§pop();
                                       if(!(_loc4_ && Boolean(_loc2_)))
                                       {
                                          addr89:
                                          §§push(_loc2_);
                                          if(_loc3_ || Boolean(param1))
                                          {
                                             addr104:
                                             if(§§pop() < 10)
                                             {
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   addr114:
                                                   §§push(10);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                   }
                                                   §§goto(addr124);
                                                }
                                                addr123:
                                                addr124:
                                                return §§pop();
                                                §§push(_loc2_);
                                             }
                                             §§goto(addr123);
                                          }
                                          _loc2_ = §§pop();
                                       }
                                       §§goto(addr123);
                                    }
                                    §§goto(addr104);
                                 }
                                 §§goto(addr124);
                              }
                              §§push(§§pop() * §§pop());
                           }
                           §§goto(addr70);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr73);
                  }
               }
               §§goto(addr89);
            }
            §§goto(addr114);
         }
         §§goto(addr89);
      }
      
      public function CalculateEnergyStat(param1:int) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(Singleton.staticData.GetBaseMinion(this.m_minionDexID).m_baseEnergy);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push((this.m_IVs[StatType.STAT_ENERGY] + _loc2_) * param1);
         if(!(_loc6_ && Boolean(this)))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc5_ || Boolean(param1))
         {
            §§push(this.m_statDivisor);
            if(_loc5_)
            {
               addr72:
               §§push(§§pop() / §§pop());
               if(!_loc6_)
               {
                  §§push(this.m_baseHealth);
               }
               var _loc4_:*;
               §§push(_loc4_ = §§pop());
               §§push(this.GetExtraStatFromGem(StatType.STAT_ENERGY));
               if(!_loc6_)
               {
                  _loc4_ = §§pop() + §§pop();
                  if(_loc5_)
                  {
                     if(this.m_statBonus == StatType.STAT_ENERGY)
                     {
                        addr90:
                        §§push(_loc4_);
                        if(!_loc6_)
                        {
                           §§push(1.05);
                           if(_loc5_)
                           {
                              _loc4_ = §§pop() * §§pop();
                              if(_loc5_ || _loc3_)
                              {
                                 addr113:
                                 §§push(_loc4_);
                                 §§push(Singleton.staticData);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop().GetStatStageModificationAmount(this.m_currStatStages[StatType.STAT_ENERGY]));
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc5_ || _loc2_)
                                       {
                                          §§push(§§pop());
                                          §§push(§§pop());
                                          if(!_loc6_)
                                          {
                                             addr143:
                                             _loc4_ = §§pop();
                                             §§goto(addr220);
                                          }
                                          §§push(§§pop() * §§pop());
                                       }
                                       _loc4_ = §§pop();
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(this.m_isPlayersMinion)
                                          {
                                             §§push(_loc4_);
                                             if(_loc5_ || Boolean(param1))
                                             {
                                                addr177:
                                                _loc4_ = §§pop() * (1 + Singleton.dynamicData.GetStarUpgradeAmount(StarUpgradeTypes.STAR_UPGRADE_ENERGY) * 0.02);
                                                if(_loc5_)
                                                {
                                                   addr197:
                                                }
                                             }
                                             else
                                             {
                                                addr199:
                                                §§push(§§pop() * Singleton.staticData.GetEnemyStatBonusForCurrentFloor(StatType.STAT_ENERGY,this));
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop());
                                                }
                                                _loc4_ = §§pop();
                                             }
                                             §§push(_loc4_);
                                             if(_loc5_ || _loc2_)
                                             {
                                                addr219:
                                                addr220:
                                                if(_loc5_ || Boolean(param1))
                                                {
                                                   §§push(this.GetPassiveIncreasePercentageForStat(StatType.STAT_ENERGY));
                                                }
                                                return §§pop();
                                                §§push(§§pop() * 1.5);
                                             }
                                             §§goto(addr220);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                          }
                                          §§goto(addr199);
                                       }
                                       §§goto(addr197);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr199);
                              }
                              §§goto(addr197);
                           }
                           §§goto(addr219);
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr90);
               }
               §§goto(addr177);
            }
            §§push(§§pop() + §§pop());
            if(!(_loc6_ && Boolean(param1)))
            {
               §§push(§§pop());
            }
         }
         §§goto(addr72);
      }
      
      public function CalculateAttackStat(param1:int) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(Singleton.staticData.GetBaseMinion(this.m_minionDexID).m_baseAttack);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push((this.m_IVs[StatType.STAT_ATTACK] + _loc2_) * param1);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!_loc5_)
         {
            §§push(this.m_statDivisor);
            if(_loc6_ || _loc3_)
            {
               addr63:
               §§push(§§pop() / §§pop());
               if(_loc6_ || _loc3_)
               {
                  §§push(this.m_baseStat);
               }
               var _loc4_:*;
               §§push(_loc4_ = §§pop());
               if(!(_loc5_ && _loc3_))
               {
                  §§push(this.GetExtraStatFromGem(StatType.STAT_ATTACK));
                  if(_loc6_ || _loc2_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc5_ && _loc2_))
                     {
                        _loc4_ = §§pop();
                        if(!(_loc5_ && _loc2_))
                        {
                           if(this.m_statBonus == StatType.STAT_ATTACK)
                           {
                              §§push(_loc4_);
                              §§push(1.05);
                              if(!(_loc5_ && Boolean(this)))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc5_)
                                 {
                                    _loc4_ = §§pop();
                                    addr126:
                                    §§push(_loc4_);
                                    §§push(Singleton.staticData);
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       §§push(§§pop().GetStatStageModificationAmount(this.m_currStatStages[StatType.STAT_ATTACK]));
                                       if(!(_loc5_ && Boolean(param1)))
                                       {
                                          addr151:
                                          §§push(§§pop() * §§pop());
                                          §§push(§§pop() * §§pop());
                                          if(_loc6_ || Boolean(param1))
                                          {
                                             addr159:
                                             _loc4_ = §§pop();
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§push(this.GetPassiveIncreasePercentageForStat(StatType.STAT_ATTACK));
                                                if(!(_loc5_ && Boolean(param1)))
                                                {
                                                   addr178:
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc6_ || Boolean(param1))
                                                   {
                                                      _loc4_ = §§pop();
                                                      if(this.m_isPlayersMinion)
                                                      {
                                                         addr192:
                                                         §§push(_loc4_);
                                                         §§push(1 + Singleton.dynamicData.GetStarUpgradeAmount(StarUpgradeTypes.STAR_UPGRADE_ATTACK) * 0.02);
                                                         if(_loc6_)
                                                         {
                                                            addr203:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               _loc4_ = §§pop();
                                                            }
                                                            else
                                                            {
                                                               addr239:
                                                               _loc4_ = §§pop();
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr230:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc5_ && Boolean(this))
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc5_)
                                                         {
                                                            addr226:
                                                            §§goto(addr230);
                                                            §§push(Singleton.staticData.GetEnemyStatBonusForCurrentFloor(StatType.STAT_ATTACK,this));
                                                         }
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                   §§goto(addr239);
                                                }
                                             }
                                             §§goto(addr203);
                                          }
                                          §§goto(addr178);
                                       }
                                       §§goto(addr159);
                                    }
                                    §§goto(addr226);
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr203);
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr192);
                     }
                     §§goto(addr226);
                  }
                  §§goto(addr192);
               }
               §§goto(addr151);
            }
            §§push(§§pop() + §§pop());
            if(_loc6_)
            {
               §§push(§§pop());
            }
         }
         §§goto(addr63);
      }
      
      public function CalculateHealingStat(param1:int) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(Singleton.staticData.GetBaseMinion(this.m_minionDexID).m_baseHealing);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push((this.m_IVs[StatType.STAT_HEALING] + _loc2_) * param1);
         if(_loc6_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!_loc5_)
         {
            §§push(this.m_statDivisor);
            if(!_loc5_)
            {
               §§push(§§pop() / §§pop());
               if(!_loc5_)
               {
                  §§goto(addr54);
               }
               §§goto(addr57);
            }
            §§goto(addr54);
         }
         addr54:
         §§push(§§pop() + this.m_baseStat);
         if(!_loc5_)
         {
            addr57:
            §§push(§§pop());
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         §§push(this.GetExtraStatFromGem(StatType.STAT_HEALING));
         if(!(_loc5_ && _loc2_))
         {
            §§push(§§pop() + §§pop());
            if(_loc6_ || Boolean(param1))
            {
               _loc4_ = §§pop();
               if(!(_loc5_ && Boolean(this)))
               {
                  if(this.m_statBonus == StatType.STAT_HEALING)
                  {
                     §§push(_loc4_);
                     §§push(1.05);
                     if(_loc6_ || Boolean(param1))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc6_ || _loc3_)
                        {
                           §§push(§§pop());
                           if(!_loc5_)
                           {
                              _loc4_ = §§pop();
                              addr121:
                              §§push(_loc4_);
                              if(!(_loc5_ && Boolean(this)))
                              {
                                 §§push(Singleton.staticData);
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(§§pop().GetStatStageModificationAmount(this.m_currStatStages[StatType.STAT_HEALING]));
                                    if(!(_loc5_ && Boolean(param1)))
                                    {
                                       §§push(§§pop() * §§pop());
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc5_ && Boolean(this)))
                                       {
                                          _loc4_ = §§pop();
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§push(this.GetPassiveIncreasePercentageForStat(StatType.STAT_HEALING));
                                             if(!_loc5_)
                                             {
                                                addr175:
                                                §§push(§§pop() * §§pop());
                                                if(_loc6_)
                                                {
                                                   addr179:
                                                   _loc4_ = §§pop();
                                                   if(this.m_isPlayersMinion)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!(_loc5_ && Boolean(this)))
                                                      {
                                                         §§goto(addr192);
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                   else
                                                   {
                                                      addr223:
                                                      §§push(_loc4_);
                                                      §§push(Singleton.staticData.GetEnemyStatBonusForCurrentFloor(StatType.STAT_HEALING,this));
                                                   }
                                                }
                                                §§goto(addr218);
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc5_ && Boolean(this)))
                                             {
                                                _loc4_ = §§pop();
                                             }
                                             §§goto(addr218);
                                          }
                                          §§goto(addr223);
                                       }
                                       §§goto(addr207);
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr223);
                              }
                              §§goto(addr218);
                           }
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr207);
                  }
                  §§goto(addr121);
               }
               §§goto(addr179);
            }
            §§goto(addr218);
         }
         addr192:
         §§push(1 + Singleton.dynamicData.GetStarUpgradeAmount(StarUpgradeTypes.STAR_UPGRADE_HEALING) * 0.04);
         if(!(_loc5_ && _loc3_))
         {
            addr207:
            §§push(§§pop() * §§pop());
            if(!_loc5_)
            {
               addr218:
               _loc4_ = §§pop();
               if(_loc6_)
               {
               }
            }
            §§goto(addr240);
         }
         addr240:
         return _loc4_;
      }
      
      public function CalculateSpeedStat(param1:int) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(Singleton.staticData.GetBaseMinion(this.m_minionDexID).m_baseSpeed);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push((this.m_IVs[StatType.STAT_SPEED] + _loc2_) * param1);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc6_ || _loc2_)
         {
            §§push(this.m_statDivisor);
            if(!_loc5_)
            {
               §§goto(addr67);
            }
            §§push(§§pop() + §§pop());
            if(_loc6_ || _loc2_)
            {
            }
            §§goto(addr67);
         }
         addr67:
         §§push(§§pop() / §§pop());
         if(!(_loc5_ && _loc2_))
         {
            §§push(this.m_baseStat);
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         §§push(this.GetExtraStatFromGem(StatType.STAT_SPEED));
         if(_loc6_ || _loc2_)
         {
            _loc4_ = §§pop() + §§pop();
            if(this.m_statBonus == StatType.STAT_SPEED)
            {
               if(!_loc5_)
               {
                  §§push(_loc4_);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(1.05);
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        _loc4_ = §§pop() * §§pop();
                        addr117:
                        §§push(_loc4_);
                        §§push(Singleton.staticData);
                        if(!_loc5_)
                        {
                           §§push(§§pop().GetStatStageModificationAmount(this.m_currStatStages[StatType.STAT_SPEED]));
                           if(!(_loc5_ && Boolean(this)))
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc5_)
                              {
                                 §§push(§§pop());
                                 if(!_loc5_)
                                 {
                                    addr141:
                                    §§push(§§pop());
                                    if(_loc6_)
                                    {
                                       addr144:
                                       _loc4_ = §§pop();
                                       §§push(this.GetPassiveIncreasePercentageForStat(StatType.STAT_SPEED));
                                       if(!_loc5_)
                                       {
                                          addr153:
                                          _loc4_ = §§pop() * §§pop();
                                          if(_loc6_ || Boolean(param1))
                                          {
                                             if(this.m_isPlayersMinion)
                                             {
                                                if(_loc6_ || _loc2_)
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr175);
                                                   }
                                                   §§goto(addr222);
                                                }
                                                §§goto(addr227);
                                             }
                                             else
                                             {
                                                §§push(_loc4_);
                                             }
                                             addr218:
                                             §§goto(addr222);
                                             §§push(Singleton.staticData.GetEnemyStatBonusForCurrentFloor(StatType.STAT_SPEED,this));
                                          }
                                          §§goto(addr227);
                                       }
                                       §§goto(addr222);
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr218);
                     }
                     §§goto(addr190);
                  }
                  §§goto(addr141);
               }
               §§goto(addr214);
            }
            §§goto(addr117);
         }
         addr175:
         §§push(1 + Singleton.dynamicData.GetStarUpgradeAmount(StarUpgradeTypes.STAR_UPGRADE_SPEED) * 0.02);
         if(!(_loc5_ && _loc3_))
         {
            addr190:
            §§push(§§pop() * §§pop());
            if(_loc6_ || Boolean(this))
            {
               §§push(§§pop());
               if(_loc6_ || _loc3_)
               {
                  _loc4_ = §§pop();
                  addr227:
                  §§push(_loc4_);
                  addr214:
               }
            }
         }
         else
         {
            addr222:
            §§push(§§pop() * §§pop());
            if(!_loc5_)
            {
               _loc4_ = §§pop();
               §§goto(addr227);
            }
         }
         return §§pop();
      }
      
      private function GetPassiveIncreasePercentageForStat(param1:int) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:BaseMinionMove = null;
         var _loc5_:Vector.<int> = null;
         var _loc2_:* = 1;
         var _loc4_:Vector.<int> = this.m_allMovesJustHighestTier;
         if(!(_loc8_ && Boolean(param1)))
         {
            if(this.m_isPlayersMinion)
            {
               §§goto(addr36);
            }
            else
            {
               §§push(Singleton.dynamicData);
            }
            §§goto(addr51);
         }
         addr36:
         §§push(Singleton.dynamicData);
         if(!(_loc8_ && Boolean(_loc3_)))
         {
            _loc5_ = §§pop().GetGlobalPassiveMovesForPlayer();
         }
         else
         {
            addr51:
            _loc5_ = §§pop().GetGlobalPassiveMovesForOpponet();
         }
         var _loc6_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc6_);
            if(!_loc8_)
            {
               if(§§pop() >= _loc4_.length)
               {
                  §§push(0);
                  if(_loc7_)
                  {
                     _loc6_ = §§pop();
                     if(!_loc8_)
                     {
                        addr252:
                        loop1:
                        while(true)
                        {
                           §§push(_loc6_);
                           break loop0;
                           addr251:
                           while(true)
                           {
                              _loc6_++;
                              continue loop1;
                           }
                        }
                        addr252:
                     }
                     §§goto(addr256);
                  }
                  break;
               }
               if(_loc4_[_loc6_] == Singleton.staticData.NO_MOVE)
               {
                  continue;
               }
               §§push(Singleton.staticData);
               if(!_loc8_)
               {
                  §§push(§§pop().GetBaseMinionMove(_loc4_[_loc6_]));
                  if(!(_loc8_ && Boolean(param1)))
                  {
                     _loc3_ = §§pop();
                     if(_loc7_ || Boolean(this))
                     {
                        §§push(_loc3_.m_isPassive);
                        if(!(_loc8_ && Boolean(this)))
                        {
                           §§push(§§pop());
                           if(!(_loc8_ && Boolean(_loc2_)))
                           {
                              addr106:
                              if(§§pop())
                              {
                                 if(_loc7_)
                                 {
                                    addr110:
                                    §§pop();
                                    if(!_loc8_)
                                    {
                                       addr125:
                                       if(_loc3_.m_statTypesToBuff.length <= 0)
                                       {
                                          continue;
                                       }
                                       if(!_loc8_)
                                       {
                                          if(_loc3_.m_statTypesToBuff[0] != param1)
                                          {
                                             continue;
                                          }
                                          if(_loc8_)
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                    §§push(_loc2_);
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop() + _loc3_.m_amountOfStatTypeToBuffPercentage / 100);
                                       if(_loc7_)
                                       {
                                          addr146:
                                          §§push(§§pop());
                                       }
                                       _loc2_ = §§pop();
                                       continue;
                                    }
                                    §§goto(addr146);
                                 }
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr125);
                  }
                  else
                  {
                     while(true)
                     {
                        _loc3_ = §§pop();
                        if(_loc7_)
                        {
                           §§push(_loc3_.m_isGlobalPassive);
                           if(_loc7_ || Boolean(this))
                           {
                              §§push(§§pop());
                              if(_loc7_ || Boolean(param1))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc7_)
                                    {
                                    }
                                    addr216:
                                    if(§§pop())
                                    {
                                       if(_loc7_ || Boolean(param1))
                                       {
                                          addr224:
                                          if(_loc3_.m_statTypesToBuff[0] == param1)
                                          {
                                             if(_loc7_)
                                             {
                                             }
                                          }
                                          §§goto(addr251);
                                       }
                                       §§push(_loc2_);
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop() + _loc3_.m_amountOfStatTypeToBuffPercentage / 100);
                                          if(_loc7_)
                                          {
                                             addr249:
                                             §§push(§§pop());
                                          }
                                          _loc2_ = §§pop();
                                          §§goto(addr251);
                                       }
                                       §§goto(addr249);
                                    }
                                    §§goto(addr251);
                                 }
                                 §§goto(addr216);
                              }
                              §§pop();
                              if(_loc7_ || Boolean(_loc2_))
                              {
                                 addr211:
                                 §§goto(addr216);
                                 §§push(_loc3_.m_statTypesToBuff.length > 0);
                              }
                              §§goto(addr224);
                           }
                           §§goto(addr216);
                        }
                        §§goto(addr211);
                     }
                     addr178:
                  }
               }
               while(true)
               {
                  §§goto(addr178);
               }
               §§goto(addr252);
            }
            break;
         }
         while(true)
         {
            if(§§pop() < _loc5_.length)
            {
               if(_loc5_[_loc6_] != Singleton.staticData.NO_MOVE)
               {
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§goto(addr174);
                  §§push(Singleton.staticData);
               }
               §§goto(addr251);
            }
            break;
            §§goto(addr252);
         }
         addr256:
         return _loc2_;
      }
      
      public function SetLevel(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.m_currentExp = param1 * 1000;
         }
      }
      
      public function ReFillHealthAndEnergy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            this.ClearBuffsAndDebuffs();
            if(!(_loc1_ && _loc1_))
            {
               this.CalculateCurrStats();
               if(!(_loc1_ && Boolean(this)))
               {
                  §§goto(addr53);
               }
            }
            §§goto(addr59);
         }
         addr53:
         this.m_currHealth = this.m_currHealthStat;
         if(!_loc1_)
         {
            addr59:
            this.m_currEnergy = this.m_currEnergyStat;
         }
      }
      
      public function AddShield(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1 > this._currShield)
            {
               if(_loc3_)
               {
                  this._currShield = param1;
                  if(!_loc2_)
                  {
                     addr27:
                     this._maxShield = param1;
                  }
               }
               §§goto(addr27);
            }
            return;
         }
         §§goto(addr27);
      }
      
      public function AddToGems(param1:OwnedGem) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_gems.length)
         {
            if(this.m_gems[_loc2_] == null)
            {
               if(_loc3_)
               {
                  this.m_gems[_loc2_] = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     return;
                  }
               }
            }
            _loc2_++;
            if(_loc4_)
            {
               break;
            }
         }
      }
      
      public function GetExtraStatFromGem(param1:int) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               while(§§pop() < this.m_gems.length)
               {
                  if(this.m_gems[_loc3_] != null)
                  {
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ || Boolean(_loc3_)))
                        {
                           continue;
                        }
                        §§push(int(§§pop() + this.m_gems[_loc3_].GetExtraStat(param1)));
                        if(!_loc4_)
                        {
                           continue;
                        }
                        _loc2_ = §§pop();
                        if(_loc5_ && Boolean(_loc3_))
                        {
                           continue loop0;
                        }
                     }
                  }
                  _loc3_++;
                  if(!(_loc4_ || Boolean(_loc3_)))
                  {
                     break;
                  }
                  continue loop0;
               }
               §§push(_loc2_);
               break;
            }
            break;
         }
         return §§pop();
      }
      
      public function SetGemAt(param1:OwnedGem, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || Boolean(this))
         {
            this.m_gems[param2] = param1;
         }
      }
      
      public function GetGemAt(param1:int) : OwnedGem
      {
         return this.m_gems[param1];
      }
      
      public function RemoveGemAt(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.m_gems[param1] = null;
         }
      }
      
      public function get m_currShield() : int
      {
         return this._currShield;
      }
      
      public function get m_maxShield() : int
      {
         return this._maxShield;
      }
      
      public function get m_shieldPercentage() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this._currShield);
            if(!_loc1_)
            {
               §§push(0);
               if(_loc2_ || Boolean(this))
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc1_ && _loc2_))
                  {
                     if(!§§pop())
                     {
                        if(_loc2_ || _loc1_)
                        {
                           §§pop();
                           if(_loc2_)
                           {
                              §§push(this._maxShield);
                              if(!_loc1_)
                              {
                                 §§push(0);
                                 if(!_loc1_)
                                 {
                                    addr75:
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          addr78:
                                          §§push(0);
                                          if(!(_loc1_ && Boolean(this)))
                                          {
                                             return §§pop();
                                          }
                                          addr91:
                                          return §§pop() / this._maxShield;
                                          addr89:
                                       }
                                       §§goto(addr89);
                                    }
                                 }
                              }
                           }
                           §§goto(addr91);
                           §§push(this._currShield);
                        }
                     }
                  }
                  §§goto(addr75);
               }
            }
            §§goto(addr91);
         }
         §§goto(addr78);
      }
      
      public function get m_currReflectDamagePercentage() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:BaseMinionMove = null;
         var _loc5_:Vector.<int> = null;
         var _loc1_:* = 0;
         var _loc3_:* = int(this.m_currDOTsAndHOTs.length - 1);
         while(_loc3_ > -1)
         {
            _loc2_ = Singleton.staticData.GetBaseMinionMove(this.m_currDOTsAndHOTs[_loc3_]);
            if(!(_loc6_ || Boolean(_loc1_)))
            {
               continue;
            }
            §§push(_loc1_);
            if(_loc6_)
            {
               §§push(§§pop() + _loc2_.m_setReflectDamageAmount / 100);
               if(_loc6_ || Boolean(this))
               {
                  addr61:
                  §§push(§§pop());
               }
               _loc1_ = §§pop();
               if(_loc6_ || Boolean(_loc1_))
               {
                  §§push(_loc3_);
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc3_ = §§pop();
               }
               continue;
            }
            §§goto(addr61);
         }
         var _loc4_:Vector.<int> = this.m_allMovesJustHighestTier;
         if(_loc6_ || Boolean(this))
         {
            if(this.m_isPlayersMinion)
            {
               addr97:
               §§push(Singleton.dynamicData);
               if(!(_loc7_ && Boolean(_loc1_)))
               {
                  _loc5_ = §§pop().GetGlobalPassiveMovesForPlayer();
                  if(_loc6_ || Boolean(_loc1_))
                  {
                     addr122:
                     §§push(0);
                     if(!(_loc7_ && Boolean(_loc1_)))
                     {
                        _loc3_ = §§pop();
                        if(!_loc7_)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(!_loc7_)
                              {
                                 while(true)
                                 {
                                    if(§§pop() >= _loc4_.length)
                                    {
                                       §§push(0);
                                       if(_loc6_ || Boolean(this))
                                       {
                                          _loc3_ = §§pop();
                                          addr342:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(_loc6_ || Boolean(_loc3_))
                                             {
                                                break loop1;
                                             }
                                             §§goto(addr380);
                                          }
                                          addr342:
                                       }
                                       break loop1;
                                    }
                                    if(_loc4_[_loc3_] != Singleton.staticData.NO_MOVE)
                                    {
                                       §§push(Singleton.staticData);
                                       if(!(_loc7_ && Boolean(this)))
                                       {
                                          §§push(§§pop().GetBaseMinionMove(_loc4_[_loc3_]));
                                          if(_loc6_ || Boolean(_loc2_))
                                          {
                                             _loc2_ = §§pop();
                                             if(!_loc7_)
                                             {
                                                §§push(_loc2_.m_isPassive);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc7_ && Boolean(_loc2_)))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc7_ && Boolean(this)))
                                                         {
                                                            §§pop();
                                                            addr234:
                                                            if(!(_loc7_ && Boolean(_loc2_)))
                                                            {
                                                               §§push(_loc2_.m_setReflectDamageAmount == 0);
                                                               if(_loc6_ || Boolean(_loc1_))
                                                               {
                                                                  addr213:
                                                                  §§push(!§§pop());
                                                               }
                                                            }
                                                            _loc3_++;
                                                            if(_loc7_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            §§push(_loc1_);
                                                            if(_loc6_)
                                                            {
                                                               §§push(§§pop() + _loc2_.m_setReflectDamageAmount / 100);
                                                               if(!(_loc7_ && Boolean(_loc2_)))
                                                               {
                                                                  addr232:
                                                                  §§push(§§pop());
                                                               }
                                                               _loc1_ = §§pop();
                                                               §§goto(addr234);
                                                            }
                                                            §§goto(addr232);
                                                         }
                                                      }
                                                      §§goto(addr234);
                                                   }
                                                }
                                                §§goto(addr213);
                                             }
                                             §§goto(addr234);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                if(_loc6_)
                                                {
                                                   §§push(_loc2_.m_isGlobalPassive);
                                                   if(_loc6_ || Boolean(this))
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc6_ || Boolean(_loc3_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc7_ && Boolean(this))
                                                            {
                                                            }
                                                            addr314:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc7_ && Boolean(_loc3_)))
                                                               {
                                                                  addr322:
                                                                  §§push(_loc1_);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(§§pop() + _loc2_.m_setReflectDamageAmount / 100);
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(§§pop());
                                                                     }
                                                                  }
                                                                  _loc1_ = §§pop();
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               _loc3_++;
                                                               if(!(_loc7_ && Boolean(_loc2_)))
                                                               {
                                                                  §§goto(addr342);
                                                               }
                                                               §§goto(addr384);
                                                            }
                                                            addr334:
                                                         }
                                                         §§goto(addr314);
                                                      }
                                                      §§pop();
                                                      if(_loc6_ || Boolean(_loc2_))
                                                      {
                                                         addr307:
                                                         §§push(_loc2_.m_setReflectDamageAmount == 0);
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr314);
                                                            §§push(!§§pop());
                                                         }
                                                         §§goto(addr314);
                                                      }
                                                      §§goto(addr322);
                                                   }
                                                   §§goto(addr314);
                                                }
                                                §§goto(addr307);
                                             }
                                             addr269:
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr269);
                                       }
                                       addr265:
                                    }
                                    §§goto(addr234);
                                    §§goto(addr384);
                                 }
                                 addr367:
                                 §§push(_loc1_);
                                 if(!_loc7_)
                                 {
                                    if(§§pop() > 1)
                                    {
                                       if(_loc6_ || Boolean(_loc2_))
                                       {
                                          addr379:
                                          addr380:
                                          §§push(§§pop());
                                          addr385:
                                          if(_loc6_)
                                          {
                                             _loc1_ = §§pop();
                                             addr384:
                                             §§push(_loc1_);
                                          }
                                          return §§pop();
                                          §§push(1);
                                       }
                                    }
                                    §§goto(addr384);
                                 }
                                 §§goto(addr385);
                                 addr240:
                              }
                              break;
                           }
                           while(true)
                           {
                              if(§§pop() >= _loc5_.length)
                              {
                                 if(!(_loc7_ && Boolean(_loc1_)))
                                 {
                                    §§goto(addr367);
                                 }
                                 break;
                              }
                              if(_loc5_[_loc3_] != Singleton.staticData.NO_MOVE)
                              {
                                 if(!_loc7_)
                                 {
                                    §§goto(addr265);
                                    §§push(Singleton.staticData);
                                 }
                                 break;
                              }
                              §§goto(addr334);
                              §§goto(addr342);
                           }
                           §§goto(addr384);
                        }
                        §§goto(addr379);
                     }
                     §§goto(addr240);
                  }
                  §§goto(addr367);
               }
               else
               {
                  addr119:
                  _loc5_ = §§pop().GetGlobalPassiveMovesForOpponet();
               }
               §§goto(addr122);
            }
            else
            {
               §§push(Singleton.dynamicData);
            }
            §§goto(addr119);
         }
         §§goto(addr97);
      }
      
      public function get m_currRedirectDamage() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:BaseMinionMove = null;
         if(_loc5_ || _loc1_)
         {
            if(this.m_isBattleModShieldActive)
            {
               if(_loc5_)
               {
                  §§push(0);
                  if(!_loc6_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr32:
                  §§push(0);
               }
               var _loc1_:* = §§pop();
               var _loc3_:Vector.<int> = this.m_allMovesJustHighestTier;
               var _loc4_:int = 0;
               while(_loc4_ < _loc3_.length)
               {
                  if(_loc3_[_loc4_] != Singleton.staticData.NO_MOVE)
                  {
                     if(!_loc5_)
                     {
                        continue;
                     }
                     _loc2_ = Singleton.staticData.GetBaseMinionMove(_loc3_[_loc4_]);
                     if(!_loc6_)
                     {
                        §§push(_loc2_.m_isGlobalPassive);
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           §§push(§§pop());
                           §§push(§§pop());
                           if(!(_loc6_ && Boolean(_loc3_)))
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc6_ && Boolean(_loc3_)))
                                 {
                                    §§pop();
                                    if(_loc5_ || Boolean(_loc2_))
                                    {
                                       §§push(_loc2_.m_isPassive);
                                       if(_loc5_)
                                       {
                                          addr107:
                                          §§push(§§pop());
                                          if(!_loc6_)
                                          {
                                             addr110:
                                             addr111:
                                             if(§§pop())
                                             {
                                                if(!(_loc6_ && Boolean(_loc3_)))
                                                {
                                                   §§pop();
                                                   addr154:
                                                   if(_loc5_)
                                                   {
                                                      §§push(_loc2_.m_percentageOfDamageThatGetsRedirectedAtMinion == 0);
                                                      if(_loc5_)
                                                      {
                                                         addr128:
                                                         §§push(!§§pop());
                                                      }
                                                   }
                                                   _loc4_++;
                                                   if(_loc6_ && Boolean(_loc3_))
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   addr132:
                                                   §§push(_loc1_);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() + _loc2_.m_percentageOfDamageThatGetsRedirectedAtMinion);
                                                      if(_loc5_ || Boolean(this))
                                                      {
                                                         §§push(§§pop());
                                                      }
                                                   }
                                                   _loc1_ = §§pop();
                                                }
                                             }
                                             §§goto(addr154);
                                          }
                                       }
                                       §§goto(addr128);
                                    }
                                    §§goto(addr132);
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr107);
                     }
                  }
                  §§goto(addr154);
               }
               return _loc1_;
            }
         }
         §§goto(addr32);
      }
      
      public function get m_currLevel() : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.m_currentExp);
         if(_loc3_)
         {
            §§push(int(§§pop() / 1000));
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               if(§§pop() < 60)
               {
                  if(!_loc2_)
                  {
                     addr43:
                     §§push(_loc1_);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr51);
                     }
                  }
                  else
                  {
                     addr52:
                     §§push(60);
                  }
                  return §§pop();
               }
               §§goto(addr52);
            }
            addr51:
            return §§pop();
         }
         §§goto(addr43);
      }
      
      public function get m_minionID() : int
      {
         return this._minionID;
      }
      
      public function get m_currExpPercentageToNextLevel() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.m_currLevel);
         if(_loc5_)
         {
            §§push(§§pop() + 1);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() * 1000);
            }
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.m_currLevel);
         if(!_loc6_)
         {
            §§push(int(§§pop() * 1000));
         }
         var _loc2_:* = §§pop();
         §§push(_loc1_);
         if(_loc5_)
         {
            §§push(int(§§pop() - _loc2_));
         }
         var _loc3_:* = §§pop();
         §§push(this.m_currentExp);
         if(_loc5_ || _loc3_)
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               addr73:
               §§push(int(§§pop() - §§pop()));
               §§push(int(§§pop() - §§pop()));
            }
            var _loc4_:* = §§pop();
            return §§pop() / _loc3_;
         }
         §§goto(addr73);
      }
      
      public function get m_allMoves() : Vector.<int>
      {
         return this._allMoves;
      }
      
      public function get m_allMovesJustHighestTier() : Vector.<int>
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:BaseMinionMove = null;
         var _loc3_:BaseMinionMove = null;
         var _loc4_:* = false;
         var _loc6_:* = 0;
         var _loc1_:Vector.<int> = new Vector.<int>();
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < this._allMoves.length)
         {
            if(this._allMoves[_loc5_] != Singleton.staticData.NO_MOVE)
            {
               if(!(_loc7_ || Boolean(_loc1_)))
               {
                  continue;
               }
               _loc2_ = Singleton.staticData.GetBaseMinionMove(this._allMoves[_loc5_]);
               if(!_loc8_)
               {
                  §§push(false);
                  if(_loc7_)
                  {
                     _loc4_ = §§pop();
                     if(_loc7_)
                     {
                        addr65:
                        §§push(0);
                        if(!(_loc8_ && Boolean(_loc1_)))
                        {
                           _loc6_ = §§pop();
                           if(!(_loc8_ && Boolean(_loc1_)))
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(_loc6_);
                                 addr151:
                                 for(; §§pop() < _loc1_.length; continue loop1)
                                 {
                                    _loc3_ = Singleton.staticData.GetBaseMinionMove(_loc1_[_loc6_]);
                                    if(_loc7_)
                                    {
                                       §§push(_loc2_.m_moveClass);
                                       if(!_loc8_)
                                       {
                                          §§push(_loc3_.m_moveClass);
                                          if(!(_loc8_ && Boolean(_loc3_)))
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc8_)
                                                {
                                                   continue;
                                                }
                                                _loc4_ = true;
                                                if(_loc8_ && Boolean(_loc1_))
                                                {
                                                   continue;
                                                }
                                                addr129:
                                                if(_loc2_.m_moveTier > _loc3_.m_moveTier)
                                                {
                                                   if(_loc8_ && Boolean(this))
                                                   {
                                                      continue;
                                                   }
                                                   _loc1_[_loc6_] = _loc2_.m_moveID;
                                                   if(_loc8_ && Boolean(_loc1_))
                                                   {
                                                      continue;
                                                   }
                                                }
                                             }
                                             _loc6_++;
                                             continue;
                                          }
                                       }
                                    }
                                    §§goto(addr129);
                                 }
                                 if(_loc7_)
                                 {
                                    addr156:
                                    if(!_loc4_)
                                    {
                                       if(_loc7_ || Boolean(_loc1_))
                                       {
                                       }
                                       addr178:
                                       _loc5_++;
                                       if(_loc8_)
                                       {
                                          break loop0;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr178);
                                 }
                              }
                           }
                           _loc1_.push(this._allMoves[_loc5_]);
                           §§goto(addr178);
                        }
                        §§goto(addr151);
                     }
                  }
                  §§goto(addr156);
               }
               §§goto(addr65);
            }
            §§goto(addr178);
         }
         return _loc1_;
      }
      
      public function get m_allMovesJustHighestTier_asActualMoves() : Vector.<BaseMinionMove>
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:BaseMinionMove = null;
         var _loc3_:BaseMinionMove = null;
         var _loc4_:* = false;
         var _loc6_:* = 0;
         var _loc1_:Vector.<BaseMinionMove> = new Vector.<BaseMinionMove>();
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < this._allMoves.length)
         {
            if(this._allMoves[_loc5_] == Singleton.staticData.NO_MOVE)
            {
               continue;
            }
            if(!_loc7_)
            {
               break;
            }
            _loc2_ = Singleton.staticData.GetBaseMinionMove(this._allMoves[_loc5_]);
            if(!(_loc7_ || Boolean(_loc3_)))
            {
               continue;
            }
            §§push(false);
            if(_loc7_ || Boolean(_loc3_))
            {
               _loc4_ = §§pop();
               if(_loc8_ && Boolean(this))
               {
                  continue;
               }
               §§push(0);
               if(!_loc8_)
               {
                  _loc6_ = §§pop();
                  if(_loc7_)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(_loc6_);
                        addr137:
                        for(; §§pop() < _loc1_.length; continue loop1)
                        {
                           _loc3_ = _loc1_[_loc6_];
                           if(!_loc8_)
                           {
                              §§push(_loc2_.m_moveClass);
                              if(_loc7_ || Boolean(this))
                              {
                                 §§push(_loc3_.m_moveClass);
                                 if(_loc7_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc7_ || Boolean(_loc3_))
                                       {
                                          _loc4_ = true;
                                          if(!_loc8_)
                                          {
                                             addr126:
                                             addr124:
                                             addr122:
                                             if(_loc2_.m_moveTier > _loc3_.m_moveTier)
                                             {
                                                if(!_loc7_)
                                                {
                                                   continue;
                                                }
                                             }
                                             addr135:
                                             _loc6_++;
                                             continue;
                                          }
                                          _loc1_[_loc6_] = _loc2_;
                                          if(!_loc7_)
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr122);
                        }
                        if(!_loc8_)
                        {
                           addr142:
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           if(!(_loc7_ || Boolean(_loc2_)))
                           {
                              continue loop0;
                           }
                        }
                        _loc1_.push(Singleton.staticData.GetBaseMinionMove(this._allMoves[_loc5_]));
                        continue loop0;
                     }
                  }
                  §§goto(addr142);
               }
               §§goto(addr137);
            }
            §§goto(addr142);
            _loc5_++;
            if(!_loc7_)
            {
               break;
            }
         }
         return _loc1_;
      }
      
      public function get m_activeMoves() : Vector.<int>
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:BaseMinionMove = null;
         var _loc1_:Vector.<int> = this.m_allMovesJustHighestTier;
         var _loc3_:* = int(_loc1_.length - 1);
         while(_loc3_ > -1)
         {
            _loc2_ = Singleton.staticData.GetBaseMinionMove(_loc1_[_loc3_]);
            if(_loc5_ || Boolean(_loc2_))
            {
               §§push(_loc2_.m_isPassive);
               if(_loc5_ || Boolean(_loc3_))
               {
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     addr62:
                     if(!§§pop())
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§pop();
                           addr92:
                           if(!_loc4_)
                           {
                              §§push(_loc2_.m_isGlobalPassive);
                              if(!(_loc4_ && Boolean(_loc2_)))
                              {
                                 addr83:
                                 §§push(§§pop());
                              }
                           }
                           _loc1_.splice(_loc1_.indexOf(_loc1_[_loc3_]),1);
                           if(_loc5_)
                           {
                              addr109:
                              §§push(_loc3_);
                              if(!(_loc4_ && Boolean(_loc2_)))
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc3_ = §§pop();
                           }
                           continue;
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc4_ && Boolean(_loc2_))
                        {
                           continue;
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr83);
               }
               §§goto(addr62);
            }
            §§goto(addr92);
         }
         return _loc1_;
      }
      
      public function get m_globalMoves() : Vector.<int>
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:BaseMinionMove = null;
         var _loc2_:Vector.<int> = this.m_allMovesJustHighestTier;
         var _loc3_:Vector.<int> = new Vector.<int>();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            if(_loc2_[_loc4_] != Singleton.staticData.NO_MOVE)
            {
               if(!_loc6_)
               {
                  break;
               }
               _loc1_ = Singleton.staticData.GetBaseMinionMove(_loc2_[_loc4_]);
               if(_loc6_)
               {
                  if(_loc1_.m_isGlobalPassive)
                  {
                     if(!_loc5_)
                     {
                        _loc3_.push(_loc2_[_loc4_]);
                     }
                  }
               }
            }
            _loc4_++;
            if(_loc5_ && Boolean(this))
            {
               break;
            }
         }
         return _loc3_;
      }
      
      public function get m_maxTalentPoints() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = this.m_currLevel;
         §§push(_loc1_);
         §§push(31);
         if(_loc2_)
         {
            if(§§pop() < §§pop())
            {
               §§push(_loc1_);
               if(_loc2_)
               {
                  §§push(3);
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_ = §§pop() - §§pop();
                     §§push(_loc1_);
                     §§push(3);
                     if(_loc2_)
                     {
                        §§push(§§pop() / §§pop());
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                           if(!_loc3_)
                           {
                              _loc1_ = §§pop();
                              addr99:
                              if(this.m_currLevel == 60)
                              {
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    §§goto(addr119);
                                 }
                              }
                              §§goto(addr118);
                           }
                           else
                           {
                              addr75:
                              _loc1_ = §§pop();
                              §§push(_loc1_ + 27 / 3);
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(§§pop());
                                 if(_loc2_)
                                 {
                                    _loc1_ = §§pop();
                                    §§goto(addr99);
                                 }
                                 addr119:
                                 §§push(_loc1_ + 1);
                                 if(_loc2_)
                                 {
                                    addr114:
                                    §§push(§§pop());
                                    if(!_loc3_)
                                    {
                                       addr117:
                                       _loc1_ = §§pop();
                                       addr118:
                                       §§push(_loc1_);
                                    }
                                 }
                                 return §§pop();
                              }
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr117);
                     }
                     else
                     {
                        addr61:
                        _loc1_ = §§pop() - §§pop();
                        §§push(_loc1_);
                        §§push(4);
                        if(!(_loc3_ && _loc2_))
                        {
                           addr73:
                           §§goto(addr75);
                           §§push(§§pop() / §§pop());
                        }
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr61);
               }
            }
            else
            {
               §§push(_loc1_);
               if(!_loc3_)
               {
                  §§push(30);
                  if(_loc2_)
                  {
                     §§goto(addr61);
                  }
                  §§goto(addr73);
               }
            }
            §§goto(addr117);
         }
         §§goto(addr61);
      }
      
      public function IsTalentPointEarnedOnLevel(param1:int) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc4_ && Boolean(this)))
            {
               if(§§pop() == 3)
               {
                  if(_loc3_)
                  {
                     §§goto(addr32);
                  }
               }
               §§push(param1);
            }
            var _loc2_:* = §§pop();
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(_loc2_);
               if(_loc3_ || Boolean(_loc2_))
               {
                  §§push(31);
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(§§pop() < §§pop())
                     {
                        §§push(_loc2_);
                        §§push(3);
                        if(_loc3_ || Boolean(param1))
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc3_)
                           {
                              _loc2_ = §§pop();
                              §§push(_loc2_);
                              §§push(3);
                              if(_loc3_)
                              {
                                 _loc2_ = §§pop() / §§pop();
                                 if(_loc3_ || Boolean(this))
                                 {
                                    §§goto(addr164);
                                 }
                                 else
                                 {
                                    addr155:
                                    _loc2_ += 27 / 3;
                                    addr143:
                                    if(!(_loc4_ && Boolean(param1)))
                                    {
                                       addr164:
                                       if(param1 == 60)
                                       {
                                          addr167:
                                          §§push(true);
                                          if(!_loc4_)
                                          {
                                             return §§pop();
                                          }
                                          addr176:
                                          §§push(!§§pop());
                                       }
                                       else
                                       {
                                          addr171:
                                          §§push(this.CheckForDecimal(_loc2_));
                                          if(!_loc4_)
                                          {
                                             §§goto(addr176);
                                          }
                                       }
                                       return §§pop();
                                    }
                                    §§goto(addr171);
                                 }
                              }
                              else
                              {
                                 addr103:
                                 §§push(§§pop() - §§pop());
                                 if(_loc3_ || Boolean(param1))
                                 {
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       _loc2_ = §§pop();
                                       §§push(_loc2_);
                                       if(!(_loc4_ && Boolean(param1)))
                                       {
                                          §§push(4);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(_loc3_ || Boolean(_loc2_))
                                             {
                                                addr134:
                                                _loc2_ = §§pop();
                                                if(!(_loc4_ && Boolean(param1)))
                                                {
                                                   §§goto(addr143);
                                                }
                                                §§goto(addr167);
                                             }
                                          }
                                          §§goto(addr143);
                                       }
                                       §§goto(addr155);
                                    }
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr103);
                     }
                     else
                     {
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           §§push(30);
                           if(_loc3_)
                           {
                              §§goto(addr103);
                           }
                        }
                        §§goto(addr134);
                     }
                  }
                  §§goto(addr155);
               }
               §§goto(addr134);
            }
            §§goto(addr171);
         }
         addr32:
         return false;
      }
      
      private function CheckForDecimal(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            if(_loc3_ || Boolean(this))
            {
               §§push(§§pop() % 1);
            }
            if(§§pop())
            {
               addr39:
               §§push(true);
               if(_loc2_)
               {
               }
            }
            else
            {
               §§push(false);
            }
            return §§pop();
         }
         §§goto(addr39);
      }
      
      public function get m_availableTalentPoints() : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = this._allMoves.length;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() < this._allMoves.length)
            {
               if(this._allMoves[_loc2_] == Singleton.staticData.NO_MOVE)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     _loc1_ = §§pop();
                     if(_loc5_ || Boolean(_loc1_))
                     {
                     }
                     break;
                  }
                  continue;
               }
               continue loop0;
            }
            addr66:
            var _loc3_:BaseMinion = Singleton.staticData.GetBaseMinion(this.m_minionDexID);
            if(!_loc4_)
            {
               §§push(_loc1_ - _loc3_.m_startingMoves.length);
               if(!(_loc4_ && Boolean(this)))
               {
                  _loc1_ = §§pop();
                  if(!(_loc4_ && Boolean(_loc3_)))
                  {
                     §§push(this.m_trainedMove);
                     if(!_loc4_)
                     {
                        if(§§pop() != Singleton.staticData.NO_MOVE)
                        {
                           if(!_loc4_)
                           {
                              §§goto(addr113);
                           }
                        }
                     }
                  }
                  §§goto(addr131);
               }
               §§goto(addr121);
            }
            addr113:
            §§push(_loc1_);
            if(_loc5_ || Boolean(_loc2_))
            {
               addr121:
               §§push(§§pop() - 1);
               if(!(_loc4_ && Boolean(_loc3_)))
               {
                  _loc1_ = §§pop();
                  addr131:
                  §§push(this.m_maxTalentPoints - _loc1_);
               }
            }
            return §§pop();
         }
      }
      
      public function get m_currHealthPercentage() : Number
      {
         return this.m_currHealth / this.m_currHealthStat;
      }
      
      public function get m_currEnergyPercentage() : Number
      {
         return this.m_currEnergy / this.m_currEnergyStat;
      }
      
      public function get m_currHealthStat() : int
      {
         return this._currHealthStat;
      }
      
      public function get m_currEnergyStat() : int
      {
         return this._currEnergyStat;
      }
      
      public function get m_currAttackStat() : int
      {
         return this._currAttackStat;
      }
      
      public function get m_currHealingStat() : int
      {
         return this._currHealingStat;
      }
      
      public function get m_currSpeedStat() : int
      {
         return this._currSpeedStat;
      }
      
      public function get m_expGainRate() : Number
      {
         return this.m_baseMinion.m_expGainRate;
      }
      
      public function get m_maxEnergyStat() : int
      {
         return this.CalculateEnergyStat(60);
      }
      
      public function get m_maxAttackStat() : int
      {
         return this.CalculateAttackStat(60);
      }
      
      public function get m_maxHealingStat() : int
      {
         return this.CalculateHealingStat(60);
      }
      
      public function get m_maxHealthStat() : int
      {
         return this.CalculateHealthStat(60);
      }
      
      public function get m_currCritChance() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:BaseMinionMove = null;
         var _loc4_:Vector.<int> = null;
         §§push(6.25);
         if(_loc7_ || Boolean(_loc2_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc3_:Vector.<int> = this.m_allMovesJustHighestTier;
         if(!_loc6_)
         {
            if(this.m_isPlayersMinion)
            {
               addr39:
               §§push(Singleton.dynamicData);
               if(_loc7_)
               {
                  _loc4_ = §§pop().GetGlobalPassiveMovesForPlayer();
               }
               else
               {
                  addr49:
                  _loc4_ = §§pop().GetGlobalPassiveMovesForOpponet();
               }
               var _loc5_:* = 0;
               while(true)
               {
                  §§push(_loc5_);
                  if(!(_loc6_ && Boolean(this)))
                  {
                     if(§§pop() >= _loc3_.length)
                     {
                        §§push(0);
                        if(!(_loc6_ && _loc1_))
                        {
                           _loc5_ = §§pop();
                           if(_loc7_)
                           {
                           }
                        }
                        break;
                     }
                     if(_loc3_[_loc5_] == Singleton.staticData.NO_MOVE)
                     {
                        continue;
                     }
                     §§push(Singleton.staticData);
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        §§push(§§pop().GetBaseMinionMove(_loc3_[_loc5_]));
                        if(!_loc6_)
                        {
                           _loc2_ = §§pop();
                           if(!_loc6_)
                           {
                              §§push(_loc2_.m_isPassive);
                              if(!_loc6_)
                              {
                                 §§push(§§pop());
                                 if(_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc7_ || Boolean(_loc2_))
                                       {
                                          addr98:
                                          §§pop();
                                          if(!_loc6_)
                                          {
                                             §§push(_loc2_.m_increasedExtraCritChance == 0);
                                             if(_loc7_ || Boolean(_loc2_))
                                             {
                                             }
                                             addr113:
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                             if(_loc6_)
                                             {
                                                continue;
                                             }
                                             addr116:
                                             §§push(_loc1_);
                                             if(!(_loc6_ && Boolean(_loc2_)))
                                             {
                                                §§push(§§pop() + _loc2_.m_increasedExtraCritChance);
                                                if(!_loc6_)
                                                {
                                                   addr136:
                                                   §§push(§§pop());
                                                }
                                                _loc1_ = §§pop();
                                                continue;
                                             }
                                             §§goto(addr136);
                                          }
                                          §§goto(addr116);
                                       }
                                       §§push(!§§pop());
                                    }
                                    §§goto(addr113);
                                 }
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr116);
                        }
                        else
                        {
                           while(true)
                           {
                              _loc2_ = §§pop();
                              if(!(_loc6_ && Boolean(this)))
                              {
                                 §§push(_loc2_.m_isGlobalPassive);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc6_ && Boolean(_loc2_)))
                                    {
                                       addr197:
                                       if(§§pop())
                                       {
                                          if(!(_loc6_ && Boolean(_loc3_)))
                                          {
                                             §§pop();
                                             if(_loc7_ || Boolean(_loc3_))
                                             {
                                                §§push(_loc2_.m_increasedExtraCritChance == 0);
                                                if(_loc7_)
                                                {
                                                   addr220:
                                                   §§push(!§§pop());
                                                }
                                             }
                                             loop2:
                                             while(true)
                                             {
                                                _loc5_++;
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   continue loop2;
                                                }
                                             }
                                             addr253:
                                             return _loc1_;
                                             addr246:
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             §§push(_loc1_);
                                             if(!(_loc6_ && Boolean(_loc3_)))
                                             {
                                                §§push(§§pop() + _loc2_.m_increasedExtraCritChance);
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop());
                                                }
                                             }
                                             _loc1_ = §§pop();
                                          }
                                       }
                                       §§goto(addr246);
                                    }
                                    §§goto(addr220);
                                 }
                                 §§goto(addr197);
                              }
                              §§goto(addr246);
                           }
                           addr176:
                        }
                     }
                     while(true)
                     {
                        §§goto(addr176);
                        addr170:
                     }
                     §§goto(addr249);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop() < _loc4_.length)
                  {
                     if(_loc4_[_loc5_] != Singleton.staticData.NO_MOVE)
                     {
                        §§goto(addr170);
                     }
                     §§goto(addr246);
                  }
                  §§goto(addr253);
               }
            }
            else
            {
               §§push(Singleton.dynamicData);
            }
            §§goto(addr49);
         }
         §§goto(addr39);
      }
      
      public function get m_currHealth() : int
      {
         return this._currHealth;
      }
      
      public function set m_currHealth(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this._currHealth = param1;
            if(!_loc3_)
            {
               if(this._currHealth > this.m_currHealthStat)
               {
                  if(_loc2_)
                  {
                     addr27:
                     this._currHealth = this.m_currHealthStat;
                  }
               }
               return;
            }
         }
         §§goto(addr27);
      }
      
      public function AddToHealth(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push(§§pop() < 0);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§pop();
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           §§push(this.m_isBattleModShieldActive);
                           if(!_loc4_)
                           {
                              addr39:
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    addr43:
                                    §§push(param1);
                                    if(!_loc4_)
                                    {
                                       addr46:
                                       §§push(§§pop());
                                    }
                                    var _loc2_:* = §§pop();
                                    if(!_loc4_)
                                    {
                                       §§push(this._currShield);
                                       if(!(_loc4_ && Boolean(param1)))
                                       {
                                          §§push(0);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() > §§pop());
                                             if(!_loc4_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§pop();
                                                      §§push(param1);
                                                      if(_loc3_)
                                                      {
                                                         §§push(0);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§goto(addr94);
                                                         }
                                                         §§goto(addr113);
                                                      }
                                                      §§goto(addr129);
                                                   }
                                                }
                                             }
                                             addr94:
                                             §§goto(addr93);
                                          }
                                          addr93:
                                          if(§§pop() < §§pop())
                                          {
                                             addr95:
                                             this._currShield += _loc2_;
                                             §§push(this._currShield);
                                             if(_loc3_)
                                             {
                                                addr113:
                                                if(§§pop() > 0)
                                                {
                                                   §§push(0);
                                                   if(_loc3_)
                                                   {
                                                      _loc2_ = §§pop();
                                                   }
                                                   else
                                                   {
                                                      addr129:
                                                      _loc2_ = §§pop();
                                                      addr128:
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(this._currShield);
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      §§goto(addr128);
                                                   }
                                                   §§goto(addr129);
                                                }
                                             }
                                             §§goto(addr129);
                                          }
                                          this.m_currHealth += _loc2_;
                                          return;
                                       }
                                       §§goto(addr129);
                                    }
                                    §§goto(addr95);
                                 }
                              }
                              §§goto(addr43);
                           }
                           §§goto(addr39);
                        }
                        return;
                     }
                  }
               }
               §§goto(addr39);
            }
            §§goto(addr46);
         }
         §§goto(addr43);
      }
      
      public function get m_currEnergy() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this._currEnergy);
            if(_loc1_ || Boolean(this))
            {
               if(§§pop() > this.m_currEnergyStat)
               {
                  if(_loc1_ || _loc1_)
                  {
                     this._currEnergy = this.m_currEnergyStat;
                     addr45:
                     §§push(this._currEnergy);
                  }
               }
               §§goto(addr45);
            }
            return §§pop();
         }
         §§goto(addr45);
      }
      
      public function set m_currEnergy(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this._currEnergy = param1;
            if(!_loc2_)
            {
               if(this._currEnergy > this.m_currEnergyStat)
               {
                  if(_loc3_)
                  {
                     addr35:
                     this._currEnergy = this.m_currEnergyStat;
                  }
               }
               return;
            }
         }
         §§goto(addr35);
      }
      
      public function get m_currSpecialization() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.IsMoveOwned(this.m_baseMinion.m_spealizationMoves[1]));
            if(_loc1_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(1);
                     if(!(_loc2_ && _loc1_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr77:
                     §§push(2);
                     if(!(_loc2_ && _loc1_))
                     {
                        return §§pop();
                     }
                  }
               }
               else
               {
                  addr69:
                  if(this.IsMoveOwned(this.m_baseMinion.m_spealizationMoves[2]))
                  {
                     if(_loc1_ || _loc2_)
                     {
                        §§goto(addr77);
                     }
                     else
                     {
                        addr86:
                        §§push(0);
                     }
                  }
                  §§goto(addr86);
               }
               return §§pop();
            }
            §§goto(addr69);
         }
         §§goto(addr86);
      }
      
      public function get m_currArmorModRate() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:BaseMinionMove = null;
         var _loc5_:Vector.<int> = null;
         var _loc1_:* = 1;
         var _loc3_:* = int(this.m_currDOTsAndHOTs.length - 1);
         while(_loc3_ > -1)
         {
            _loc2_ = Singleton.staticData.GetBaseMinionMove(this.m_currDOTsAndHOTs[_loc3_]);
            if(_loc6_ || Boolean(this))
            {
               §§push(_loc1_);
               if(_loc6_ || Boolean(_loc1_))
               {
                  §§push(§§pop() - _loc2_.m_armor / 100);
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     §§push(§§pop());
                  }
               }
               _loc1_ = §§pop();
               if(!_loc7_)
               {
                  §§push(_loc3_);
                  if(_loc6_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc3_ = §§pop();
               }
            }
         }
         var _loc4_:Vector.<int> = this.m_allMovesJustHighestTier;
         if(!(_loc7_ && Boolean(_loc2_)))
         {
            if(this.m_isPlayersMinion)
            {
               addr92:
               §§push(Singleton.dynamicData);
               if(_loc6_ || Boolean(_loc3_))
               {
                  _loc5_ = §§pop().GetGlobalPassiveMovesForPlayer();
                  if(_loc6_)
                  {
                     addr112:
                     §§push(0);
                     if(!(_loc7_ && Boolean(_loc3_)))
                     {
                        _loc3_ = §§pop();
                        if(!(_loc7_ && Boolean(this)))
                        {
                           while(true)
                           {
                              §§push(_loc3_);
                              if(!_loc7_)
                              {
                                 if(§§pop() >= _loc4_.length)
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(0);
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       §§goto(addr389);
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(_loc6_ || Boolean(_loc1_))
                                       {
                                          if(§§pop() >= _loc5_.length)
                                          {
                                             §§push(_loc1_);
                                             if(_loc6_)
                                             {
                                                if(§§pop() < 0.05)
                                                {
                                                   addr339:
                                                   §§push(0.05);
                                                   if(_loc6_ || Boolean(_loc2_))
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc7_ && Boolean(_loc2_)))
                                                      {
                                                         _loc1_ = §§pop();
                                                         if(_loc6_ || Boolean(_loc2_))
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr379:
                                                         if(§§pop() > 2)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr388);
                                                   }
                                                   §§goto(addr387);
                                                }
                                                else
                                                {
                                                   §§push(_loc1_);
                                                   if(_loc6_ || Boolean(_loc3_))
                                                   {
                                                      §§goto(addr379);
                                                   }
                                                }
                                             }
                                             §§goto(addr389);
                                          }
                                          else
                                          {
                                             if(_loc5_[_loc3_] == Singleton.staticData.NO_MOVE)
                                             {
                                                continue;
                                             }
                                             §§push(Singleton.staticData);
                                             while(true)
                                             {
                                                §§push(§§pop().GetBaseMinionMove(_loc5_[_loc3_]));
                                                addr262:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc6_)
                                                   {
                                                      §§push(_loc2_.m_isGlobalPassive);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc7_ && Boolean(this)))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc7_ && Boolean(_loc1_)))
                                                               {
                                                                  addr287:
                                                                  §§pop();
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§push(_loc2_.m_armor == 0);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(_loc7_ && Boolean(this))
                                                         {
                                                            continue loop2;
                                                         }
                                                         addr305:
                                                         §§push(_loc1_);
                                                         if(!(_loc7_ && Boolean(_loc3_)))
                                                         {
                                                            §§push(§§pop() - _loc2_.m_armor / 100);
                                                            if(_loc6_)
                                                            {
                                                               addr320:
                                                               §§push(§§pop());
                                                            }
                                                            _loc1_ = §§pop();
                                                            continue loop2;
                                                         }
                                                         §§goto(addr320);
                                                      }
                                                      §§goto(addr287);
                                                   }
                                                   §§goto(addr305);
                                                }
                                             }
                                          }
                                       }
                                       break;
                                    }
                                    addr389:
                                    §§push(§§pop());
                                    if(!_loc7_)
                                    {
                                       addr387:
                                       _loc1_ = §§pop();
                                       addr388:
                                       §§push(_loc1_);
                                    }
                                    return §§pop();
                                    addr323:
                                 }
                                 else
                                 {
                                    if(_loc4_[_loc3_] == Singleton.staticData.NO_MOVE)
                                    {
                                       continue;
                                    }
                                    §§push(Singleton.staticData);
                                    if(_loc6_ || Boolean(_loc1_))
                                    {
                                       §§push(§§pop().GetBaseMinionMove(_loc4_[_loc3_]));
                                       if(!_loc7_)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc6_ || Boolean(_loc1_))
                                          {
                                             §§push(_loc2_.m_isPassive);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop());
                                                if(_loc6_ || Boolean(_loc1_))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc6_ || Boolean(_loc2_))
                                                      {
                                                         §§pop();
                                                         if(_loc6_ || Boolean(_loc1_))
                                                         {
                                                            addr197:
                                                            §§push(_loc2_.m_armor == 0);
                                                            if(!(_loc7_ && Boolean(_loc3_)))
                                                            {
                                                               addr209:
                                                               if(§§pop())
                                                               {
                                                                  continue;
                                                               }
                                                               if(!(_loc6_ || Boolean(_loc2_)))
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            §§goto(addr209);
                                                         }
                                                         §§push(_loc1_);
                                                         if(!_loc7_)
                                                         {
                                                            §§push(§§pop() - _loc2_.m_armor / 100);
                                                            if(!(_loc7_ && Boolean(_loc3_)))
                                                            {
                                                               addr232:
                                                               §§push(§§pop());
                                                            }
                                                            _loc1_ = §§pop();
                                                            continue;
                                                         }
                                                         §§goto(addr232);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr209);
                                          }
                                          §§goto(addr197);
                                       }
                                       else
                                       {
                                          §§goto(addr262);
                                       }
                                    }
                                 }
                                 §§goto(addr258);
                              }
                              break;
                           }
                           addr246:
                           _loc3_ = §§pop();
                        }
                        §§goto(addr323);
                     }
                     §§goto(addr246);
                  }
                  §§goto(addr339);
               }
               else
               {
                  addr109:
                  _loc5_ = §§pop().GetGlobalPassiveMovesForOpponet();
               }
               §§goto(addr112);
            }
            else
            {
               §§push(Singleton.dynamicData);
            }
            §§goto(addr109);
         }
         §§goto(addr92);
      }
      
      public function SaveMinionAtSlot(param1:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && Boolean(this)))
         {
            §§push(Singleton.dynamicData);
            if(_loc4_ || Boolean(this))
            {
               §§pop().m_sharedObject.data["minion" + param1] = true;
               if(!(_loc5_ && Boolean(param1)))
               {
                  §§push(Singleton.dynamicData);
                  if(_loc4_)
                  {
                     §§pop().m_sharedObject.data["minion" + param1 + "dexID"] = this.m_minionDexID;
                     if(_loc4_)
                     {
                        §§push(Singleton.dynamicData);
                        if(_loc4_ || _loc2_)
                        {
                           addr68:
                           §§pop().m_sharedObject.data["minion" + param1 + "name"] = this.m_minionName;
                           if(_loc4_ || _loc2_)
                           {
                              addr85:
                              §§push(Singleton.dynamicData);
                              if(_loc4_ || _loc3_)
                              {
                                 §§pop().m_sharedObject.data["minion" + param1 + "exp"] = this.m_currentExp;
                                 if(!_loc5_)
                                 {
                                    Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "statBonus"] = this.m_statBonus;
                                    addr108:
                                 }
                              }
                              §§goto(addr108);
                           }
                           var _loc2_:int = 0;
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 if(§§pop() < this._allMoves.length)
                                 {
                                    Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "move" + _loc2_] = this._allMoves[_loc2_];
                                    if(!_loc5_)
                                    {
                                       continue;
                                    }
                                 }
                                 addr167:
                                 break;
                              }
                              break;
                           }
                           var _loc3_:* = §§pop();
                           if(_loc4_)
                           {
                              loop1:
                              while(_loc3_ < this.m_gems.length)
                              {
                                 if(this.m_gems[_loc3_] != null)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(Singleton.dynamicData);
                                       if(!_loc4_)
                                       {
                                          §§pop().m_sharedObject.data["minion" + param1 + "gem" + _loc3_] = false;
                                          addr215:
                                          if(_loc4_ || Boolean(_loc2_))
                                          {
                                          }
                                          break;
                                       }
                                       §§pop().m_sharedObject.data["minion" + param1 + "gem" + _loc3_] = true;
                                       while(true)
                                       {
                                          this.m_gems[_loc3_].SaveGemAtSlot(_loc3_,"minion" + param1);
                                          if(_loc5_ && Boolean(this))
                                          {
                                             continue loop1;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc3_++;
                                       if(!_loc4_)
                                       {
                                          break loop1;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 else
                                 {
                                    §§push(Singleton.dynamicData);
                                 }
                                 §§goto(addr215);
                              }
                              return;
                           }
                           §§goto(addr196);
                        }
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr68);
               }
               §§goto(addr85);
            }
            §§goto(addr68);
         }
         §§goto(addr108);
      }
      
      public function CreateMinionFromSlot(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && Boolean(param1)))
         {
            this.m_minionDexID = Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "dexID"];
            if(_loc3_ || _loc2_)
            {
               this.m_minionName = Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "name"];
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr58);
               }
            }
            §§goto(addr77);
         }
         addr58:
         this.m_currentExp = Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "exp"];
         if(!(_loc4_ && Boolean(param1)))
         {
            addr77:
            this.m_statBonus = Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "statBonus"];
         }
         var _loc2_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() < this._allMoves.length)
               {
                  continue;
               }
               if(_loc3_ || Boolean(_loc2_))
               {
                  §§push(0);
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     _loc2_ = §§pop();
                     addr226:
                     while(true)
                     {
                        §§push(_loc2_);
                        break loop0;
                     }
                     addr226:
                  }
                  break;
               }
               while(true)
               {
                  §§push(Singleton.dynamicData);
                  addr187:
                  while(true)
                  {
                     §§push(Boolean(§§pop().m_sharedObject.data["minion" + param1 + "gem" + _loc2_]));
                     addr198:
                     while(true)
                     {
                        if(§§pop())
                        {
                           this.m_gems[_loc2_] = new OwnedGem();
                           while(true)
                           {
                              this.m_gems[_loc2_].CreateGemFromSlot(_loc2_,"minion" + param1);
                              if(_loc3_)
                              {
                                 while(true)
                                 {
                                    _loc2_++;
                                    if(!_loc4_)
                                    {
                                       §§goto(addr226);
                                    }
                                 }
                                 addr223:
                              }
                              §§goto(addr231);
                           }
                           addr212:
                        }
                        §§goto(addr223);
                     }
                  }
               }
            }
            break;
         }
         while(true)
         {
            if(§§pop() < this.m_gems.length)
            {
               §§push(Singleton.dynamicData);
               if(!_loc4_)
               {
                  §§push(§§pop().m_sharedObject.data["minion" + param1 + "gem" + _loc2_] == null);
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                     if(!(_loc4_ && _loc3_))
                     {
                        addr175:
                        if(§§pop())
                        {
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              addr184:
                              §§pop();
                              §§goto(addr185);
                           }
                        }
                        §§goto(addr198);
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr175);
               }
               §§goto(addr187);
            }
            break;
            §§goto(addr226);
         }
         addr231:
      }
   }
}
