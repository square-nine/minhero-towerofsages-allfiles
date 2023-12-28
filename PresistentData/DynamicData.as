package PresistentData
{
   import Minions.OwnedMinion;
   import SharedObjects.Gems.OwnedGem;
   import States.BackgroundMusicTracks;
   import States.MinionDexID;
   import States.OrientationState;
   import States.TutorialTypes;
   import TopDown.Trainers.TrainerDataObject;
   import Utilities.Singleton;
   import flash.net.SharedObject;
   
   public class DynamicData
   {
       
      
      private const m_resetSaveData:Boolean = false;
      
      public var m_gameState:int;
      
      public var m_currTrainerStarCounts:Vector.<Vector.<int>>;
      
      private var m_hasBeatenTrainer:Vector.<Vector.<Boolean>>;
      
      public var m_bestTrainerStarCounts:Vector.<Vector.<int>>;
      
      private var m_hasBeatenFloor:Vector.<Boolean>;
      
      private var m_isSaveSlotInUse:Vector.<Boolean>;
      
      private var m_characterNames:Vector.<String>;
      
      private var m_totalMinions:Vector.<int>;
      
      private var m_totalSageSeals:Vector.<int>;
      
      private var m_totalStars:Vector.<int>;
      
      private var m_isMaleMetaData:Vector.<Boolean>;
      
      public var m_saveSlot:int = 0;
      
      private var _currFloorOfTower:int;
      
      private var _currRoomOfTower:int;
      
      private var _prevRoomOfTower:int;
      
      public var m_currTransitionID:int;
      
      public var m_currTrainerID:int;
      
      public var m_currKeysOnFloor:int;
      
      public var m_hasUnlockedBossDoor:Boolean;
      
      public var m_hasBeatenHardMode:Boolean;
      
      public var m_currEggeryKeys:int;
      
      public var m_hasUnlockedEggeryDoor:Boolean;
      
      public var m_hasTalkedToTheGrandSageForTheFirstTime:Boolean;
      
      public var m_numOfMinionsLeftToChoose:int;
      
      public var m_topDownCharPositionX:Number;
      
      public var m_topDownCharPositionY:Number;
      
      public var m_charDirectionsForSave:int;
      
      private var m_deathReturnFloorOfTower:int;
      
      private var m_deathReturnRoomOfTower:int;
      
      private var m_deathReturnCharPositionX:Number;
      
      private var m_deathReturnCharPositionY:Number;
      
      private var m_deathReturnCharOrientation:int;
      
      private var m_ownedMinions:Vector.<OwnedMinion>;
      
      public var m_currMoney:int;
      
      private var m_ownedGems:Vector.<OwnedGem>;
      
      private var m_playerMinionsForTheBattleMod:Vector.<OwnedMinion>;
      
      public var m_opponentsMinions:Vector.<OwnedMinion>;
      
      public var m_currTrainerData:TrainerDataObject;
      
      private var _currSettingMinionID:int;
      
      public var m_isTalentTreeInSimpleMode:Boolean;
      
      private var m_starUpgradeAmounts:Vector.<int>;
      
      public var m_numOfAvailbleStars:int;
      
      private var _numOfSpentStars:int;
      
      public var m_numberOfDeathsSinceVictory:int;
      
      public var m_hasTutorialsBeenSeen:Vector.<Boolean>;
      
      private var m_isMapUnlocked:Vector.<Boolean>;
      
      public var m_isMovementTutorialActive:Boolean;
      
      public var m_movementTutorialStepCounter:int;
      
      public var m_areTutorialsOn:Boolean;
      
      public var m_isSoundOn:Boolean;
      
      public var m_isMusicOn:Boolean;
      
      public var m_graphicsLevel:int;
      
      public var m_isAutoSaveOn:Boolean;
      
      private var m_minionsOwned:Vector.<Boolean>;
      
      private var m_minionsSeen:Vector.<Boolean>;
      
      private var m_animateNewFloorActive:Vector.<Boolean>;
      
      public var m_prevBackgroundMusic:int;
      
      public var m_isInMysteryMode:Boolean;
      
      public var m_sharedObject:SharedObject;
      
      public var m_isExtraSponsorGemsIn:Boolean;
      
      public var m_isExtraSponsorMinionEarned:Boolean;
      
      public function DynamicData()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      public function CreateObjects() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            this.m_saveSlot = 0;
            if(_loc2_)
            {
               addr25:
               this.m_ownedMinions = new Vector.<OwnedMinion>(200);
               if(!_loc3_)
               {
                  this.m_playerMinionsForTheBattleMod = new Vector.<OwnedMinion>(5);
               }
            }
            var _loc1_:* = 0;
            loop0:
            while(true)
            {
               §§push(_loc1_);
               if(!_loc3_)
               {
                  if(§§pop() >= this.m_ownedMinions.length)
                  {
                     this.ResetThePlayersBattleModMinions();
                     if(_loc2_ || Boolean(this))
                     {
                        this.m_currTrainerStarCounts = new Vector.<Vector.<int>>();
                        this.m_bestTrainerStarCounts = new Vector.<Vector.<int>>();
                        this.m_hasBeatenTrainer = new Vector.<Vector.<Boolean>>();
                        §§push(0);
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_ = §§pop();
                           while(true)
                           {
                              §§push(_loc1_);
                              break loop0;
                              addr110:
                              this.m_currTrainerStarCounts[_loc1_] = new Vector.<int>();
                              if(!(_loc3_ && _loc3_))
                              {
                                 this.m_bestTrainerStarCounts[_loc1_] = new Vector.<int>();
                              }
                              this.m_hasBeatenTrainer[_loc1_] = new Vector.<Boolean>();
                              _loc1_++;
                           }
                           addr143:
                        }
                        break;
                     }
                     addr307:
                     this.LoadInitialData();
                     if(!_loc3_)
                     {
                        this.LoadData(this.m_saveSlot);
                        if(_loc2_ || Boolean(this))
                        {
                           this.m_isTalentTreeInSimpleMode = false;
                           if(_loc2_)
                           {
                              addr334:
                              this.m_isInMysteryMode = false;
                              addr337:
                              this.m_isMovementTutorialActive = false;
                              addr340:
                              this.m_movementTutorialStepCounter = 0;
                              this.m_numberOfDeathsSinceVictory = 0;
                              if(_loc2_)
                              {
                                 addr348:
                                 this.m_numOfAvailbleStars = 1000;
                              }
                           }
                           return;
                        }
                        §§goto(addr337);
                     }
                     §§goto(addr334);
                  }
                  else
                  {
                     this.m_ownedMinions[_loc1_] = null;
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_++;
                        if(_loc2_)
                        {
                           continue;
                        }
                        §§goto(addr334);
                     }
                  }
                  §§goto(addr348);
               }
               break;
            }
            while(§§pop() < Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + Singleton.staticData.NUM_OF_FLOORS_IN_THE_HARD_TOWER)
            {
               §§goto(addr110);
               §§goto(addr143);
            }
            this.m_hasBeatenFloor = new Vector.<Boolean>();
            this.m_animateNewFloorActive = new Vector.<Boolean>(4);
            if(!(_loc3_ && _loc3_))
            {
               this.m_characterNames = new Vector.<String>(3);
               this.m_isSaveSlotInUse = new Vector.<Boolean>(3);
               if(_loc2_ || Boolean(_loc1_))
               {
                  this.m_isMaleMetaData = new Vector.<Boolean>(3);
                  if(!_loc3_)
                  {
                     this.m_totalMinions = new Vector.<int>(3);
                     if(!(_loc3_ && _loc3_))
                     {
                        this.m_totalSageSeals = new Vector.<int>(3);
                        this.m_totalStars = new Vector.<int>(3);
                        this.m_starUpgradeAmounts = new Vector.<int>(8);
                        this.m_isMapUnlocked = new Vector.<Boolean>(Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
                        if(!_loc3_)
                        {
                           this.m_hasTutorialsBeenSeen = new Vector.<Boolean>(TutorialTypes.NUM_OF_TUTORIALS);
                           this.m_minionsOwned = new Vector.<Boolean>(MinionDexID.TOTAL_NUM_OF_MINIONS - 4);
                           if(!(_loc3_ && Boolean(this)))
                           {
                              this.m_minionsSeen = new Vector.<Boolean>(MinionDexID.TOTAL_NUM_OF_MINIONS - 4);
                              this.m_ownedGems = new Vector.<OwnedGem>(150);
                              if(_loc2_ || _loc2_)
                              {
                                 addr304:
                                 Singleton.staticData.CreateObjectsAfterDynamicData();
                                 §§goto(addr307);
                              }
                              §§goto(addr334);
                           }
                           §§goto(addr348);
                        }
                     }
                  }
                  §§goto(addr334);
               }
               §§goto(addr304);
            }
            §§goto(addr340);
         }
         §§goto(addr25);
      }
      
      public function get m_currRoomOfTower() : int
      {
         return this._currRoomOfTower;
      }
      
      public function IsMinionOpponents(param1:OwnedMinion) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(_loc2_ < 5)
         {
            if(this.m_opponentsMinions[_loc2_] == param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§push(true);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
                  addr68:
                  return §§pop();
               }
            }
            else
            {
               _loc2_++;
               if(_loc3_ && Boolean(param1))
               {
                  break;
               }
            }
         }
         §§goto(addr68);
         §§push(false);
      }
      
      public function set m_currRoomOfTower(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this._prevRoomOfTower = this._currRoomOfTower;
            if(_loc2_)
            {
               addr21:
               this._currRoomOfTower = param1;
            }
            return;
         }
         §§goto(addr21);
      }
      
      public function get m_prevRoomOfTower() : int
      {
         return this._prevRoomOfTower;
      }
      
      public function get m_currFloorOfTower() : int
      {
         return this._currFloorOfTower;
      }
      
      public function set m_currFloorOfTower(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this._currFloorOfTower = param1;
         }
      }
      
      public function get m_numOfSpentStars() : int
      {
         return this._numOfSpentStars;
      }
      
      public function set m_numOfSpentStars(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(param1))
         {
            this._numOfSpentStars = param1;
            if(_loc3_ || _loc3_)
            {
               this.CalculateTotatNumberOfAvailbleStars();
            }
         }
      }
      
      public function get m_characterName() : String
      {
         return this.m_characterNames[this.m_saveSlot];
      }
      
      public function get m_isMale() : Boolean
      {
         return this.m_isMaleMetaData[this.m_saveSlot];
      }
      
      public function set m_isMale(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.m_isMaleMetaData[this.m_saveSlot] = param1;
         }
      }
      
      public function CalculateTotatNumberOfAvailbleStars() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.m_numOfAvailbleStars = this.CalculateTotalNumberOfStars() - this.m_numOfSpentStars;
         }
      }
      
      public function CalculateTotalNumberOfStars() : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               loop1:
               while(true)
               {
                  if(§§pop() < Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + Singleton.staticData.NUM_OF_FLOORS_IN_THE_HARD_TOWER)
                  {
                     §§push(0);
                     if(!_loc4_)
                     {
                        _loc3_ = §§pop();
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           loop2:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(!_loc4_)
                              {
                                 if(§§pop() >= this.m_bestTrainerStarCounts[_loc2_].length)
                                 {
                                    if(_loc5_ || Boolean(_loc1_))
                                    {
                                       _loc2_++;
                                       if(_loc4_)
                                       {
                                          addr103:
                                          §§push(_loc1_);
                                          break;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 §§push(_loc1_);
                                 if(_loc5_)
                                 {
                                    §§push(int(§§pop() + this.m_bestTrainerStarCounts[_loc2_][_loc3_]));
                                    if(!_loc4_)
                                    {
                                       while(true)
                                       {
                                          _loc1_ = §§pop();
                                          if(_loc5_)
                                          {
                                             continue loop2;
                                          }
                                          §§goto(addr103);
                                       }
                                       addr55:
                                    }
                                    break;
                                 }
                                 continue loop1;
                                 §§goto(addr103);
                              }
                              break;
                           }
                           addr104:
                           return §§pop();
                           addr66:
                        }
                        while(true)
                        {
                           _loc3_++;
                           if(!(_loc4_ && Boolean(_loc1_)))
                           {
                              §§goto(addr66);
                           }
                           break;
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr55);
                  }
                  §§goto(addr103);
               }
            }
            §§goto(addr104);
         }
      }
      
      public function ResetThePlayersBattleModMinions() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this.m_playerMinionsForTheBattleMod[_loc1_] = null;
            if(_loc2_ && _loc3_)
            {
               break;
            }
            _loc1_++;
            if(_loc2_ && _loc3_)
            {
               break;
            }
         }
      }
      
      public function SetExtraBattleModMinion(param1:OwnedMinion, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.m_playerMinionsForTheBattleMod[param2] = param1;
         }
      }
      
      public function GetTotalNumberOfMinions() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() < this.m_ownedMinions.length)
               {
                  if(this.m_ownedMinions[_loc2_] != null)
                  {
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        _loc1_++;
                        if(!(_loc4_ || _loc3_))
                        {
                           continue;
                        }
                     }
                     addr70:
                     §§push(_loc1_);
                     break;
                  }
                  _loc2_++;
                  if(_loc4_ || Boolean(_loc1_))
                  {
                     continue;
                  }
               }
               §§goto(addr70);
            }
            break;
         }
         return §§pop();
      }
      
      public function DoAnyOfTheMinionsHaveUnspentTalentPoints() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            §§push(this.m_ownedMinions[_loc1_] == null);
            if(_loc3_ || _loc2_)
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr45:
                        §§pop();
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(this.m_ownedMinions[_loc1_].m_availableTalentPoints > 0);
                           if(_loc3_)
                           {
                              addr62:
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(!(_loc3_ || Boolean(this)))
                              {
                                 continue;
                              }
                              §§push(true);
                              if(!_loc3_)
                              {
                                 §§goto(addr95);
                              }
                           }
                           return §§pop();
                        }
                        continue;
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr62);
               }
            }
            §§goto(addr45);
            _loc1_++;
            if(_loc2_ && Boolean(this))
            {
               break;
            }
         }
         addr95:
         false;
         return §§pop();
      }
      
      public function GetNextSettingMinionID() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || Boolean(this))
         {
            var _loc1_:*;
            §§push((_loc1_ = this)._currSettingMinionID);
            if(!_loc3_)
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(_loc4_)
            {
               _loc1_._currSettingMinionID = _loc2_;
            }
         }
         return this._currSettingMinionID;
      }
      
      public function SetHasBeatenTheCurrTrainer(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.m_currTrainerID == 0)
            {
               if(_loc2_)
               {
                  this.m_hasBeatenTrainer[this.m_currFloorOfTower][this.m_currTrainerID] = param1;
                  addr28:
                  if(_loc3_ && Boolean(this))
                  {
                  }
                  §§goto(addr62);
               }
            }
            else
            {
               this.m_hasBeatenTrainer[this.m_currFloorOfTower][this.m_currTrainerID - 1] = param1;
            }
            addr62:
            return;
         }
         §§goto(addr28);
      }
      
      public function HasBeatenCurrentTrainer() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.m_currTrainerID == 0)
            {
               if(_loc2_)
               {
                  return this.m_hasBeatenTrainer[this.m_currFloorOfTower][this.m_currTrainerID];
               }
            }
         }
         return this.m_hasBeatenTrainer[this.m_currFloorOfTower][this.m_currTrainerID - 1];
      }
      
      public function UpdateTrainersStarsForCurrentTrainer() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.GetNumberOfStarsEarnedForTheCurrentTrainer());
         if(!(_loc2_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            §§push(this.m_currTrainerID);
            if(_loc3_)
            {
               if(§§pop() == 0)
               {
                  §§push(_loc1_);
                  if(_loc3_ || Boolean(this))
                  {
                     if(§§pop() > this.m_currTrainerStarCounts[this.m_currFloorOfTower][this.m_currTrainerID])
                     {
                        if(_loc3_ || _loc2_)
                        {
                           this.m_currTrainerStarCounts[this.m_currFloorOfTower][this.m_currTrainerID] = _loc1_;
                           this.m_bestTrainerStarCounts[this.m_currFloorOfTower][this.m_currTrainerID] = _loc1_;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr137:
                              this.m_totalStars[this.m_saveSlot] = this.CalculateTotalNumberOfStars();
                              addr89:
                           }
                           else
                           {
                              addr127:
                              this.m_bestTrainerStarCounts[this.m_currFloorOfTower][this.m_currTrainerID - 1] = _loc1_;
                              §§goto(addr137);
                           }
                           §§goto(addr137);
                        }
                        return;
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr137);
               }
               else
               {
                  §§push(_loc1_);
               }
            }
            if(§§pop() > this.m_currTrainerStarCounts[this.m_currFloorOfTower][this.m_currTrainerID - 1])
            {
               if(_loc3_)
               {
                  this.m_currTrainerStarCounts[this.m_currFloorOfTower][this.m_currTrainerID - 1] = _loc1_;
                  if(_loc2_ && _loc2_)
                  {
                  }
                  §§goto(addr137);
               }
               §§goto(addr127);
            }
         }
         §§goto(addr137);
      }
      
      public function GetNumberOfStarsEarnedForTheCurrentTrainer() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               loop1:
               while(true)
               {
                  §§push(5);
                  if(_loc6_)
                  {
                     break;
                  }
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        addr118:
                        §§push(_loc1_);
                        if(_loc5_ || Boolean(_loc2_))
                        {
                           break loop0;
                        }
                        §§push(§§pop());
                        break loop1;
                     }
                     §§push(this.GetOwnedMinionAt(_loc3_));
                     if(_loc5_)
                     {
                        §§push(null);
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           if(§§pop() != §§pop())
                           {
                              _loc1_++;
                              if(_loc5_ || Boolean(_loc1_))
                              {
                                 addr43:
                                 §§push(this.GetOwnedMinionAt(_loc3_));
                                 if(_loc5_)
                                 {
                                    addr49:
                                    §§push(§§pop() == null);
                                    if(!(_loc6_ && Boolean(_loc3_)))
                                    {
                                       §§push(!§§pop());
                                       if(_loc5_ || Boolean(_loc1_))
                                       {
                                          addr65:
                                          if(§§pop())
                                          {
                                             if(_loc5_ || Boolean(_loc2_))
                                             {
                                                addr74:
                                                §§pop();
                                                if(_loc6_ && Boolean(_loc1_))
                                                {
                                                   continue loop0;
                                                }
                                                addr85:
                                                §§push(this.GetOwnedMinionAt(_loc3_).m_currHealth);
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                §§push(0);
                                                if(!_loc5_)
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop() > §§pop());
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                addr95:
                                                _loc2_++;
                                             }
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr74);
                                    }
                                    §§goto(addr65);
                                 }
                                 §§goto(addr85);
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr43);
                        }
                     }
                     §§goto(addr49);
                  }
               }
               addr132:
               var _loc4_:* = §§pop();
               §§push(1);
               if(!_loc6_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_)
                  {
                     §§push(§§pop());
                     if(_loc5_ || Boolean(_loc1_))
                     {
                        if(!§§pop())
                        {
                           if(!_loc6_)
                           {
                              addr150:
                              §§pop();
                              if(_loc5_ || Boolean(this))
                              {
                                 §§push(_loc4_);
                                 if(!_loc6_)
                                 {
                                    §§push(0);
                                    if(!(_loc6_ && Boolean(_loc2_)))
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc6_ && Boolean(_loc3_)))
                                       {
                                          addr177:
                                          if(§§pop())
                                          {
                                             return 3;
                                          }
                                          §§push(_loc4_);
                                          §§push(2);
                                          if(_loc5_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   return 2;
                                                }
                                                addr217:
                                                if(_loc4_ == 4)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(1);
                                                      if(!(_loc6_ && Boolean(_loc2_)))
                                                      {
                                                         return §§pop();
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr230:
                                                      §§push(0);
                                                   }
                                                   return §§pop();
                                                }
                                                §§goto(addr230);
                                             }
                                             else
                                             {
                                                addr192:
                                                §§push(_loc4_);
                                                §§push(3);
                                                if(_loc5_)
                                                {
                                                }
                                                §§goto(addr217);
                                             }
                                          }
                                          §§push(§§pop() == §§pop());
                                          if(_loc5_)
                                          {
                                             addr199:
                                             if(!§§pop())
                                             {
                                                if(_loc5_ || Boolean(this))
                                                {
                                                   addr214:
                                                   §§pop();
                                                   §§goto(addr217);
                                                }
                                             }
                                          }
                                          §§goto(addr217);
                                       }
                                       §§goto(addr214);
                                    }
                                    §§goto(addr217);
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr230);
                           }
                           §§goto(addr214);
                        }
                        §§goto(addr177);
                     }
                     §§goto(addr199);
                  }
                  §§goto(addr150);
               }
               §§goto(addr217);
            }
            break;
         }
         §§push(_loc2_);
         if(_loc5_)
         {
            §§goto(addr118);
            §§push(int(§§pop() - §§pop()));
         }
         §§goto(addr132);
      }
      
      public function GetNumberOfStarsEarnedForTheCurrentTrainer_old() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               §§push(5);
               if(!_loc6_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(this.m_ownedMinions[_loc3_] != null)
                     {
                        _loc1_++;
                     }
                     §§push(this.m_ownedMinions[_loc3_] == null);
                     if(!(_loc6_ && Boolean(_loc2_)))
                     {
                        §§push(!§§pop());
                        if(!(_loc6_ && Boolean(_loc1_)))
                        {
                           if(§§pop())
                           {
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 addr58:
                                 §§pop();
                                 addr101:
                                 if(_loc5_)
                                 {
                                    §§push(this.m_ownedMinions[_loc3_].m_currHealth > 0);
                                 }
                                 §§push(_loc2_);
                                 break;
                              }
                           }
                        }
                        if(§§pop())
                        {
                           if(!(_loc6_ && Boolean(_loc1_)))
                           {
                              _loc2_++;
                              if(!_loc5_)
                              {
                                 continue;
                              }
                           }
                        }
                        _loc3_++;
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           continue;
                        }
                        §§goto(addr101);
                     }
                  }
                  §§goto(addr58);
               }
               addr103:
               §§push(§§pop() / §§pop());
               if(_loc5_ || Boolean(_loc2_))
               {
                  §§push(§§pop());
               }
               var _loc4_:*;
               §§push(_loc4_ = §§pop());
               if(_loc5_)
               {
                  §§push(1);
                  if(!_loc6_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           §§push(3);
                           if(_loc5_)
                           {
                              return §§pop();
                           }
                           §§goto(addr155);
                        }
                        addr158:
                        §§push(_loc4_);
                        §§push(0);
                     }
                     else
                     {
                        §§push(_loc4_);
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           if(§§pop() > 0.45)
                           {
                              if(_loc5_)
                              {
                                 §§push(2);
                                 if(_loc5_)
                                 {
                                    addr155:
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr168:
                                 §§push(1);
                                 if(!(_loc6_ && Boolean(_loc2_)))
                                 {
                                    return §§pop();
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr158);
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr158);
                  }
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc6_ && Boolean(_loc1_)))
                     {
                        §§goto(addr168);
                     }
                     else
                     {
                        addr177:
                        §§push(0);
                     }
                     addr178:
                     return §§pop();
                  }
                  §§goto(addr177);
               }
               §§goto(addr158);
            }
            break;
         }
         §§goto(addr103);
         §§push(_loc1_);
      }
      
      public function GetStarsForCurrentFloor() : int
      {
         return this.GetStarsForFloor(this.m_currFloorOfTower);
      }
      
      public function GetStarsForFloor(param1:int) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_ || Boolean(this))
            {
               while(§§pop() < this.m_currTrainerStarCounts[param1].length)
               {
                  §§push(_loc2_);
                  if(!(_loc5_ && Boolean(param1)))
                  {
                     §§push(int(§§pop() + this.m_currTrainerStarCounts[param1][_loc3_]));
                     if(!_loc4_)
                     {
                        break loop0;
                     }
                     _loc2_ = §§pop();
                     if(_loc4_)
                     {
                        _loc3_++;
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                     continue loop0;
                  }
               }
               §§push(_loc2_);
               break;
            }
            break;
         }
         return §§pop();
      }
      
      public function GetStarsForCurrentFloorAndRoom() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.m_currTrainerID == 0)
            {
               if(!(_loc1_ && _loc2_))
               {
                  return this.m_currTrainerStarCounts[this.m_currFloorOfTower][this.m_currTrainerID];
               }
            }
         }
         return this.m_currTrainerStarCounts[this.m_currFloorOfTower][this.m_currTrainerID - 1];
      }
      
      public function GetIsMinionOwned(param1:int) : Boolean
      {
         return this.m_minionsOwned[param1];
      }
      
      public function GetHasMinionBeenSeen(param1:int) : Boolean
      {
         return this.m_minionsSeen[param1];
      }
      
      public function SetHasMinionBeenSeen(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || Boolean(this))
         {
            this.m_minionsSeen[param1] = param2;
         }
      }
      
      public function SetIsMinionOwned(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.m_minionsOwned[param1] = param2;
         }
      }
      
      public function AddToOwnedMinions(param1:OwnedMinion) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && _loc2_))
         {
            this.m_minionsOwned[param1.m_minionDexID] = true;
            if(!_loc8_)
            {
               this.m_minionsSeen[param1.m_minionDexID] = true;
               if(!(_loc8_ && _loc3_))
               {
                  addr41:
                  this.m_totalMinions[this.m_saveSlot] = 0;
               }
               var _loc2_:int = 0;
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc7_ || Boolean(param1))
                  {
                     if(§§pop() < this.m_minionsOwned.length)
                     {
                        if(this.m_minionsOwned[_loc2_])
                        {
                           if(!(_loc8_ && Boolean(this)))
                           {
                              var _loc4_:*;
                              var _loc5_:*;
                              var _loc6_:* = (_loc4_ = this.m_totalMinions)[_loc5_ = this.m_saveSlot] + 1;
                              if(_loc7_ || Boolean(param1))
                              {
                                 _loc4_[_loc5_] = _loc6_;
                              }
                              if(_loc7_ || Boolean(_loc2_))
                              {
                              }
                              addr117:
                              break;
                           }
                        }
                        _loc2_++;
                        if(!_loc8_)
                        {
                           continue;
                        }
                     }
                     §§goto(addr117);
                  }
                  break;
               }
               var _loc3_:* = §§pop();
               if(_loc7_ || Boolean(param1))
               {
                  while(_loc3_ < this.m_ownedMinions.length)
                  {
                     if(this.m_ownedMinions[_loc3_] == null)
                     {
                        if(_loc7_ || Boolean(_loc2_))
                        {
                           this.m_ownedMinions[_loc3_] = param1;
                           if(_loc7_ || Boolean(param1))
                           {
                              return;
                           }
                           break;
                        }
                     }
                     _loc3_++;
                     if(_loc8_)
                     {
                        break;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr41);
      }
      
      public function AddToOwnedGems(param1:OwnedGem) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_ownedGems.length)
         {
            if(this.m_ownedGems[_loc2_] == null)
            {
               if(!_loc4_)
               {
                  break;
               }
               this.m_ownedGems[_loc2_] = param1;
               if(_loc4_)
               {
                  return;
               }
            }
            _loc2_++;
            if(_loc3_ && Boolean(_loc2_))
            {
               break;
            }
         }
      }
      
      public function AddTrainerStarCountToFloor(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.m_currTrainerStarCounts[param1].push(0);
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr47);
            }
            §§goto(addr55);
         }
         addr47:
         this.m_bestTrainerStarCounts[param1].push(0);
         if(!_loc3_)
         {
            addr55:
            this.m_hasBeatenTrainer[param1].push(false);
         }
      }
      
      public function GetOwnedMinionAt(param1:int) : OwnedMinion
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1 < 5);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     §§pop();
                     if(_loc2_ || _loc2_)
                     {
                        §§push(this.m_playerMinionsForTheBattleMod[param1] == null);
                        if(_loc2_ || _loc2_)
                        {
                           addr65:
                           if(!§§pop())
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 §§goto(addr73);
                              }
                           }
                        }
                        §§goto(addr65);
                     }
                     return this.m_ownedMinions[param1];
                  }
               }
            }
            §§goto(addr65);
         }
         addr73:
         return this.m_playerMinionsForTheBattleMod[param1];
      }
      
      public function GetOwnedGemAt(param1:int) : OwnedGem
      {
         return this.m_ownedGems[param1];
      }
      
      public function SetGemAt(param1:OwnedGem, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || Boolean(this))
         {
            this.m_ownedGems[param2] = param1;
         }
      }
      
      public function GetGemPosition(param1:OwnedGem) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = -99;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || Boolean(_loc2_))
            {
               while(§§pop() < this.m_ownedGems.length)
               {
                  if(this.m_ownedGems[_loc3_] == param1)
                  {
                     if(!(_loc5_ || Boolean(_loc2_)))
                     {
                        addr66:
                        break;
                     }
                     §§push(_loc3_);
                     if(!_loc5_)
                     {
                        break loop0;
                     }
                     §§push(§§pop());
                     if(!(_loc5_ || Boolean(_loc2_)))
                     {
                        continue;
                     }
                     _loc2_ = §§pop();
                     if(_loc4_ && Boolean(_loc3_))
                     {
                        continue loop0;
                     }
                     §§goto(addr66);
                     continue;
                  }
                  _loc3_++;
                  if(!_loc5_)
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
      
      public function GetMinionPosition(param1:OwnedMinion) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = -99;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!_loc4_)
            {
               while(§§pop() < this.m_ownedMinions.length)
               {
                  if(this.m_ownedMinions[_loc3_] == param1)
                  {
                     if(_loc5_)
                     {
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           continue;
                        }
                        §§push(§§pop());
                        if(_loc4_ && Boolean(_loc3_))
                        {
                           continue;
                        }
                        _loc2_ = §§pop();
                        if(!(_loc5_ || Boolean(_loc3_)))
                        {
                           continue loop0;
                        }
                     }
                     break;
                  }
                  _loc3_++;
                  if(!_loc5_)
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
      
      public function SwapGems(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:OwnedGem = this.m_ownedGems[param1];
         if(_loc5_)
         {
            this.m_ownedGems[param1] = this.m_ownedGems[param2];
            if(_loc5_)
            {
               addr39:
               this.m_ownedGems[param2] = _loc3_;
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function SwapMinions(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:OwnedMinion = this.m_ownedMinions[param1];
         if(_loc5_)
         {
            this.m_ownedMinions[param1] = this.m_ownedMinions[param2];
            if(_loc5_ || Boolean(_loc3_))
            {
               addr44:
               this.m_ownedMinions[param2] = _loc3_;
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function SetMinionTo(param1:int, param2:OwnedMinion) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.m_ownedMinions[param1] = param2;
         }
      }
      
      public function ResetOpponentsMinions() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.m_opponentsMinions = new Vector.<OwnedMinion>(5);
         }
      }
      
      public function SetHasUnlockedFloor(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.m_hasBeatenFloor[param1] = param2;
         }
      }
      
      public function GetHasUnlockedFloor(param1:int) : Boolean
      {
         return this.m_hasBeatenFloor[param1];
      }
      
      public function GetStarUpgradeCost(param1:int) : int
      {
         return 10 + this.m_starUpgradeAmounts[param1] * 2;
      }
      
      public function DoWeHaveAStarPointToSpend() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            loop1:
            while(true)
            {
               §§push(8);
               while(§§pop() < §§pop())
               {
                  §§push(this.m_numOfAvailbleStars);
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§push(this.GetStarUpgradeCost(_loc1_));
                     if(_loc3_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(false);
                              if(_loc3_ || Boolean(this))
                              {
                                 return §§pop();
                              }
                              §§goto(addr77);
                           }
                           break;
                        }
                        continue loop0;
                     }
                     continue;
                  }
                  continue loop1;
               }
               addr76:
               addr77:
               return §§pop();
            }
         }
      }
      
      public function GetStarUpgradeAmount(param1:int) : int
      {
         return this.m_starUpgradeAmounts[param1];
      }
      
      public function ResetStarUpgradeAmounts() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this._numOfSpentStars = 0;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_starUpgradeAmounts.length)
         {
            this.m_starUpgradeAmounts[_loc1_] = 0;
            if(!_loc3_)
            {
               _loc1_++;
               if(!(_loc2_ || Boolean(this)))
               {
                  break;
               }
            }
         }
      }
      
      public function AddOneToStarUpgradeAmount(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            var _loc2_:*;
            var _loc3_:*;
            var _loc4_:* = (_loc2_ = this.m_starUpgradeAmounts)[_loc3_ = param1] + 1;
            if(_loc6_)
            {
               _loc2_[_loc3_] = _loc4_;
            }
         }
      }
      
      public function GetHighestFloor() : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = int(this.m_hasBeatenFloor.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_ || Boolean(this))
            {
               loop1:
               while(true)
               {
                  §§push(-1);
                  while(§§pop() > §§pop())
                  {
                     if(this.m_hasBeatenFloor[_loc1_])
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(_loc1_);
                           §§push(61);
                           if(_loc2_)
                           {
                              continue;
                           }
                           if(§§pop() == §§pop())
                           {
                              if(_loc2_ && Boolean(this))
                              {
                                 break;
                              }
                              §§push(61);
                              if(_loc3_ || _loc3_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                        §§push(_loc1_);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(1);
                           if(_loc3_)
                           {
                              return §§pop() + §§pop();
                           }
                           continue;
                        }
                     }
                     else
                     {
                        §§push(_loc1_);
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
                  addr108:
                  break loop0;
               }
               return §§pop();
            }
            break;
         }
         return §§pop();
      }
      
      public function SetNewReturnToOnDeathPoint() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.m_deathReturnFloorOfTower = this._currFloorOfTower;
            if(_loc2_ || _loc1_)
            {
               this.m_deathReturnRoomOfTower = this._currRoomOfTower;
               if(!(_loc1_ && _loc1_))
               {
                  this.m_deathReturnCharPositionX = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.x - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer.x;
                  if(!(_loc1_ && _loc2_))
                  {
                     this.m_deathReturnCharPositionY = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.y - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer.y;
                     addr74:
                     if(!(_loc1_ && _loc2_))
                     {
                        addr105:
                        this.m_deathReturnCharOrientation = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.m_currDirection;
                     }
                  }
                  return;
               }
            }
            §§goto(addr105);
         }
         §§goto(addr74);
      }
      
      public function SetToReturnToOnDeathPoint() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_currFloorOfTower = this.m_deathReturnFloorOfTower;
            this.m_currRoomOfTower = this.m_deathReturnRoomOfTower;
            this.m_topDownCharPositionX = this.m_deathReturnCharPositionX;
            if(!_loc2_)
            {
               this.m_topDownCharPositionY = this.m_deathReturnCharPositionY;
               if(!(_loc2_ && _loc2_))
               {
                  §§push(Singleton.utility);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§push(§§pop().m_screenControllers);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop().m_topDownScreen);
                        if(_loc1_ || _loc2_)
                        {
                           §§push(§§pop().m_topDownMovementScreen);
                           if(_loc1_)
                           {
                              §§pop().m_mainChar.SetDirectionForStill(this.m_deathReturnCharOrientation);
                              §§push(Singleton.utility);
                              if(_loc1_)
                              {
                                 addr83:
                                 §§push(§§pop().m_screenControllers);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(§§pop().m_topDownScreen);
                                    if(_loc1_ || _loc2_)
                                    {
                                       §§push(§§pop().m_topDownMovementScreen);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§push(null);
                                          if(_loc1_ || _loc1_)
                                          {
                                             §§pop().m_returnChatBox = §§pop();
                                             addr128:
                                             §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen);
                                             §§push(null);
                                          }
                                          §§pop().m_returnTrianerForChatBox = §§pop();
                                          §§goto(addr130);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr83);
               }
               §§goto(addr128);
            }
            addr130:
            return;
         }
         §§goto(addr128);
      }
      
      public function GetHighestStarCount(param1:int) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               if(§§pop() < this.m_bestTrainerStarCounts[param1].length)
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && Boolean(_loc3_)))
                  {
                     §§push(int(§§pop() + this.m_bestTrainerStarCounts[param1][_loc3_]));
                     if(_loc4_)
                     {
                     }
                     break;
                  }
                  _loc2_ = §§pop();
                  if(_loc5_)
                  {
                     continue;
                  }
               }
               addr72:
               §§push(_loc2_);
               break;
            }
            break;
         }
         return §§pop();
      }
      
      public function HealAllOfAPlayersInPartyMinions() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            if(this.m_ownedMinions[_loc1_] != null)
            {
               if(_loc2_ || _loc3_)
               {
                  this.m_ownedMinions[_loc1_].ReFillHealthAndEnergy();
                  if(_loc3_ && Boolean(this))
                  {
                     continue;
                  }
               }
               break;
            }
            _loc1_++;
            if(!(_loc2_ || Boolean(_loc1_)))
            {
               break;
            }
         }
      }
      
      public function GetGlobalPassiveMovesForPlayer() : Vector.<int>
      {
         var toReturn:Vector.<int>;
         var currGlobalMoves:Vector.<int>;
         var i:int;
         var finalReturnArray:Vector.<int>;
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc3_ && _loc3_))
         {
            §§push(null);
            if(!(_loc3_ && _loc2_))
            {
               §§pop().§§slot[2] = §§pop();
               if(_loc2_ || _loc1_)
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     addr46:
                     §§pop().§§slot[4] = null;
                     if(!_loc3_)
                     {
                        addr50:
                        §§push(§§newactivation());
                        if(_loc2_)
                        {
                           §§pop().§§slot[1] = new Vector.<int>();
                           if(!_loc3_)
                           {
                              addr62:
                              i = 0;
                           }
                           while(true)
                           {
                              §§push(i);
                              if(!_loc3_)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    §§push(5);
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             §§push(§§newactivation());
                                             if(_loc2_)
                                             {
                                                addr194:
                                                §§pop().§§slot[4] = toReturn.filter(function(param1:*, param2:int, param3:Vector.<int>):Boolean
                                                {
                                                   return (!!finalReturnArray ? finalReturnArray : (finalReturnArray = new Vector.<int>())).indexOf(param1) >= 0 ? false : finalReturnArray.push(param1) >= 0;
                                                },this);
                                                addr193:
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§push(this.m_currTrainerData);
                                                   if(_loc2_)
                                                   {
                                                      addr215:
                                                      §§push(§§pop() != null);
                                                      if(§§pop() != null)
                                                      {
                                                         §§pop();
                                                         §§goto(addr245);
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(_loc2_ || Boolean(this))
                                                         {
                                                            §§goto(addr245);
                                                         }
                                                      }
                                                      §§goto(addr245);
                                                   }
                                                   §§goto(addr233);
                                                }
                                             }
                                             §§goto(addr245);
                                          }
                                          else
                                          {
                                             §§push(this.GetOwnedMinionAt(i));
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(§§pop() != null);
                                                §§push(§§pop() != null);
                                                if(_loc2_ || _loc2_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§pop();
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         addr101:
                                                         §§push(this.GetOwnedMinionAt(i).m_currHealth);
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                      addr135:
                                                      §§push(§§newactivation());
                                                      if(_loc2_)
                                                      {
                                                         §§pop().§§slot[2] = this.GetOwnedMinionAt(i).m_globalMoves;
                                                         addr145:
                                                         §§push(§§newactivation());
                                                         §§push(§§newactivation());
                                                         if(_loc2_ || _loc1_)
                                                         {
                                                            §§pop().§§slot[1] = §§pop().§§slot[1].concat(currGlobalMoves);
                                                            addr160:
                                                            §§push(i);
                                                            if(_loc3_ && _loc1_)
                                                            {
                                                               break loop1;
                                                            }
                                                            §§push(§§pop() + 1);
                                                            if(!_loc3_)
                                                            {
                                                               break loop1;
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr193);
                                                      }
                                                      §§goto(addr194);
                                                   }
                                                   else
                                                   {
                                                      addr127:
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§goto(addr135);
                                                         }
                                                         §§goto(addr145);
                                                      }
                                                   }
                                                   §§goto(addr160);
                                                }
                                                §§goto(addr215);
                                             }
                                             §§goto(addr101);
                                          }
                                       }
                                       addr234:
                                       §§push(-99);
                                    }
                                    §§goto(addr236);
                                 }
                                 i = §§pop();
                                 if(_loc3_)
                                 {
                                    addr245:
                                    if(_loc2_ || _loc1_)
                                    {
                                       addr233:
                                       §§push(this.m_currTrainerData.m_passiveMoveForMoveOnTimer);
                                       break loop2;
                                    }
                                    finalReturnArray.push(this.m_currTrainerData.m_passiveMoveForMoveOnTimer);
                                 }
                                 continue;
                                 return finalReturnArray;
                              }
                              §§goto(addr234);
                           }
                        }
                     }
                  }
                  §§goto(addr62);
               }
               §§goto(addr50);
            }
            §§goto(addr46);
         }
         §§goto(addr62);
      }
      
      public function ResetArrayDataForSaveLoad() : void
      {
      }
      
      public function ResetFloorData() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.m_currRoomOfTower = 0;
            this.m_currTransitionID = 0;
            if(_loc4_ || Boolean(this))
            {
               this.m_currKeysOnFloor = 0;
               this.m_currEggeryKeys = 0;
               if(_loc4_)
               {
                  this.m_hasUnlockedBossDoor = false;
                  addr45:
                  this.m_hasBeatenHardMode = false;
               }
               this.m_hasUnlockedEggeryDoor = false;
               §§push(Singleton.dynamicData);
               if(!_loc3_)
               {
                  §§push(§§pop().GetTotalSageSeals());
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(5);
                     if(!(_loc3_ && _loc3_))
                     {
                        if(§§pop() > §§pop())
                        {
                           this.m_numOfMinionsLeftToChoose = 3;
                           addr98:
                           var _loc1_:int = 0;
                           addr97:
                           while(true)
                           {
                              §§push(_loc1_);
                              if(_loc4_)
                              {
                                 if(§§pop() < this.m_currTrainerStarCounts[this.m_currFloorOfTower].length)
                                 {
                                    this.m_currTrainerStarCounts[this.m_currFloorOfTower][_loc1_] = 0;
                                    if(_loc4_ || Boolean(_loc1_))
                                    {
                                       continue;
                                    }
                                 }
                                 addr134:
                                 break;
                              }
                              break;
                           }
                           var _loc2_:* = §§pop();
                           if(!(_loc3_ && _loc3_))
                           {
                              loop1:
                              while(_loc2_ < this.m_hasBeatenTrainer[this.m_currFloorOfTower].length)
                              {
                                 this.m_hasBeatenTrainer[this.m_currFloorOfTower][_loc2_] = false;
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    _loc2_++;
                                    if(_loc3_)
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                                 }
                              }
                              return;
                           }
                           §§goto(addr162);
                        }
                        else
                        {
                           addr85:
                           §§push(Singleton.dynamicData.GetTotalSageSeals());
                           if(_loc4_)
                           {
                              §§push(2);
                           }
                           §§goto(addr98);
                        }
                     }
                     if(§§pop() > §§pop())
                     {
                        addr90:
                        this.m_numOfMinionsLeftToChoose = 2;
                     }
                     else
                     {
                        this.m_numOfMinionsLeftToChoose = 1;
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr98);
               }
               §§goto(addr85);
            }
            §§goto(addr90);
         }
         §§goto(addr45);
      }
      
      public function SetupDataForBringingInANewFloor(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.m_currFloorOfTower = param1;
            if(_loc3_)
            {
               this.m_topDownCharPositionX = -99;
               if(!(_loc2_ && _loc3_))
               {
                  addr38:
                  this.m_topDownCharPositionY = -99;
                  if(_loc3_)
                  {
                  }
                  §§goto(addr45);
               }
               this.ResetFloorData();
               addr45:
               return;
            }
         }
         §§goto(addr38);
      }
      
      public function AddAllStarsAndSetThatWeHaveBeatenAllTheTrainers() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc4_ && Boolean(this)))
            {
               if(§§pop() < this.m_currTrainerStarCounts[this.m_currFloorOfTower].length)
               {
                  continue;
               }
               if(!_loc4_)
               {
                  §§push(Singleton.dynamicData.m_currFloorOfTower);
                  if(!(_loc4_ && Boolean(_loc1_)))
                  {
                     §§push(Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
                     if(_loc3_)
                     {
                        §§push(§§pop() < §§pop());
                        if(_loc3_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr83:
                                 §§pop();
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr91:
                                    §§push(_loc1_);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§goto(addr162);
                                 }
                                 addr114:
                                 this.m_bestTrainerStarCounts[this.m_currFloorOfTower][3] = 0;
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    this.m_currTrainerStarCounts[this.m_currFloorOfTower][4] = 0;
                                    if(_loc3_)
                                    {
                                       addr139:
                                       this.m_bestTrainerStarCounts[this.m_currFloorOfTower][4] = 0;
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr154:
                                          this.m_totalStars[this.m_saveSlot] = this.CalculateTotalNumberOfStars();
                                       }
                                    }
                                    addr162:
                                    var _loc2_:* = §§pop();
                                    if(_loc4_)
                                    {
                                    }
                                    while(true)
                                    {
                                       if(_loc2_ >= this.m_hasBeatenTrainer[this.m_currFloorOfTower].length)
                                       {
                                          if(!_loc4_)
                                          {
                                             Singleton.utility.UnlockNextFloor();
                                             break;
                                          }
                                          break;
                                       }
                                       this.m_hasBeatenTrainer[this.m_currFloorOfTower][_loc2_] = true;
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          _loc2_++;
                                          if(!(_loc3_ || Boolean(this)))
                                          {
                                             break;
                                          }
                                       }
                                    }
                                    return;
                                    §§push(0);
                                 }
                                 §§goto(addr139);
                              }
                           }
                           addr103:
                           if(§§pop())
                           {
                              this.m_currTrainerStarCounts[this.m_currFloorOfTower][3] = 0;
                              if(_loc3_)
                              {
                                 §§goto(addr114);
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr83);
                     }
                     addr102:
                     §§goto(addr103);
                     §§push(§§pop() > §§pop());
                  }
                  break;
               }
               §§goto(addr91);
            }
            break;
         }
         §§goto(addr102);
         §§push(1);
      }
      
      public function HasTutorialBeenSeen(param1:int) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.m_areTutorialsOn);
            if(!(_loc3_ && Boolean(this)))
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§push(true);
                  }
                  else
                  {
                     §§goto(addr41);
                  }
               }
               §§goto(addr41);
            }
            return §§pop();
         }
         addr41:
         return this.m_hasTutorialsBeenSeen[param1];
      }
      
      public function SetHasTutorialBeenSeen(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(!this.m_areTutorialsOn)
            {
               if(_loc3_)
               {
                  §§goto(addr32);
               }
            }
            this.m_hasTutorialsBeenSeen[param1] = param2;
            return;
         }
         addr32:
      }
      
      public function GetIsSaveSlotInUse(param1:int) : Boolean
      {
         return this.m_isSaveSlotInUse[param1];
      }
      
      public function SetIsSaveSlotInUse(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.m_isSaveSlotInUse[param1] = param2;
         }
      }
      
      public function IsMapUnlocked() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(Singleton.dynamicData.m_currFloorOfTower > 30)
            {
               if(_loc1_ || Boolean(this))
               {
                  §§goto(addr34);
               }
            }
            return this.m_isMapUnlocked[this.m_currFloorOfTower];
         }
         addr34:
         return this.m_isMapUnlocked[this.m_currFloorOfTower - 31];
      }
      
      public function SetIsMapUnlocked(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.m_isMapUnlocked[this.m_currFloorOfTower] = param1;
         }
      }
      
      public function GetCharName(param1:int) : String
      {
         return this.m_characterNames[param1];
      }
      
      public function SetCharName(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || Boolean(param1))
         {
            this.m_characterNames[param1] = param2;
         }
      }
      
      public function GetTotalMinions(param1:int) : int
      {
         return this.m_totalMinions[param1];
      }
      
      public function SetTotalMinions(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.m_totalMinions[param1] = param2;
         }
      }
      
      public function GetTotalSageSeals(param1:int = -99) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1 == -99)
            {
               if(!_loc2_)
               {
                  §§goto(addr21);
               }
            }
            return this.m_totalSageSeals[param1];
         }
         addr21:
         return this.m_totalSageSeals[this.m_saveSlot];
      }
      
      public function SetTotalSageSeals(param1:int, param2:int = -99) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param2 == -99)
            {
               if(!_loc3_)
               {
                  this.m_totalSageSeals[this.m_saveSlot] = param1;
                  if(_loc3_)
                  {
                  }
               }
            }
            else
            {
               this.m_totalSageSeals[param2] = param1;
            }
         }
      }
      
      public function GetTotalStars(param1:int) : int
      {
         return this.m_totalStars[param1];
      }
      
      public function SetTotalStars(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && Boolean(param1)))
         {
            this.m_totalStars[param1] = param2;
         }
      }
      
      public function GetAnimateNewFloorIn(param1:int) : Boolean
      {
         return this.m_animateNewFloorActive[param1];
      }
      
      public function SetAnimateNewFloor(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.m_animateNewFloorActive[param1] = param2;
         }
      }
      
      public function ResetMetaDataForSaveSlot(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.m_characterNames[param1] = "Temp";
         }
         this.m_totalMinions[param1] = 0;
         this.m_totalSageSeals[param1] = 0;
         this.m_totalStars[param1] = 0;
         this.m_isSaveSlotInUse[param1] = false;
         this.m_isMaleMetaData[param1] = true;
      }
      
      public function GetGlobalPassiveMovesForOpponet() : Vector.<int>
      {
         var toReturn:Vector.<int>;
         var currGlobalMoves:Vector.<int>;
         var i:int;
         var finalReturnArray:Vector.<int>;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§newactivation());
         if(_loc3_ || Boolean(this))
         {
            §§push(null);
            if(_loc3_ || _loc2_)
            {
               §§pop().§§slot[2] = §§pop();
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(!_loc2_)
                  {
                     addr42:
                     §§pop().§§slot[4] = null;
                     if(_loc3_ || _loc1_)
                     {
                        §§push(§§newactivation());
                        if(_loc3_ || _loc3_)
                        {
                           addr59:
                           §§pop().§§slot[1] = new Vector.<int>();
                           addr70:
                           if(!_loc2_)
                           {
                              §§push(§§newactivation());
                           }
                           loop0:
                           while(true)
                           {
                              §§push(§§newactivation());
                              if(!_loc2_)
                              {
                                 §§push(§§pop().§§slot[3]);
                                 while(true)
                                 {
                                    if(§§pop() >= 5)
                                    {
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§goto(addr208);
                                       }
                                    }
                                    else
                                    {
                                       §§push(this.m_opponentsMinions[i] == null);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(!§§pop());
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc2_)
                                                {
                                                   addr98:
                                                   §§pop();
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      addr121:
                                                      if(this.m_opponentsMinions[i].m_currHealth > 0)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         addr124:
                                                         §§push(§§newactivation());
                                                         if(!_loc2_)
                                                         {
                                                            §§pop().§§slot[2] = this.m_opponentsMinions[i].m_globalMoves;
                                                            §§push(§§newactivation());
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               addr143:
                                                               §§push(§§newactivation());
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  §§pop().§§slot[1] = §§pop().§§slot[1].concat(currGlobalMoves);
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     addr164:
                                                                     §§push(§§newactivation());
                                                                     if(!_loc2_)
                                                                     {
                                                                        addr167:
                                                                        §§push(§§pop().§§slot[3]);
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           if(_loc2_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        i = §§pop();
                                                                        if(!(_loc2_ && _loc1_))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr208);
                                                                     }
                                                                     break loop0;
                                                                  }
                                                                  addr218:
                                                                  addr208:
                                                                  §§push(§§newactivation());
                                                                  if(!_loc2_)
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  return §§pop().§§slot[4];
                                                                  §§push(§§newactivation());
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr167);
                                                         }
                                                         §§goto(addr143);
                                                      }
                                                      §§goto(addr164);
                                                   }
                                                   §§goto(addr124);
                                                }
                                             }
                                          }
                                          §§goto(addr121);
                                       }
                                       §§goto(addr98);
                                    }
                                    §§goto(addr218);
                                 }
                                 addr212:
                                 §§pop().§§slot[4] = §§pop().§§slot[1].filter(function(param1:*, param2:int, param3:Vector.<int>):Boolean
                                 {
                                    return (!!finalReturnArray ? finalReturnArray : (finalReturnArray = new Vector.<int>())).indexOf(param1) >= 0 ? false : finalReturnArray.push(param1) >= 0;
                                 },this);
                                 §§goto(addr218);
                              }
                              break;
                           }
                           §§goto(addr212);
                           §§push(§§newactivation());
                        }
                     }
                     §§goto(addr70);
                  }
                  §§pop().§§slot[3] = 0;
               }
               §§goto(addr70);
            }
            §§goto(addr42);
         }
         §§goto(addr59);
      }
      
      public function SaveAllData(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = 0;
         this.m_sharedObject = SharedObject.getLocal("TCrpgSaveSlot" + param1);
         this.SaveValue("m_topDownCharPositionX");
         this.SaveValue("m_topDownCharPositionY");
         if(!(_loc6_ && _loc2_))
         {
            this.SaveValue("m_isExtraSponsorGemsIn");
         }
         this.SaveValue("m_isExtraSponsorMinionEarned");
         if(!(_loc6_ && Boolean(this)))
         {
            this.SaveValue("m_charDirectionsForSave");
            this.SaveValue("m_currFloorOfTower");
            this.SaveValue("m_currRoomOfTower");
            this.SaveValue("m_currTransitionID");
            this.SaveValue("m_prevBackgroundMusic");
            this.SaveValue("m_currMoney");
            this.SaveValue("m_currKeysOnFloor");
            if(!_loc6_)
            {
               this.SaveValue("m_currEggeryKeys");
               this.SaveValue("m_hasUnlockedBossDoor");
               if(!(_loc6_ && _loc2_))
               {
                  this.SaveValue("m_hasUnlockedEggeryDoor");
                  this.SaveValue("m_numOfMinionsLeftToChoose");
                  if(!(_loc6_ && Boolean(this)))
                  {
                     this.SaveValue("m_hasTalkedToTheGrandSageForTheFirstTime");
                     addr101:
                     this.SaveValue("m_numOfSpentStars");
                     this.SaveValue("m_areTutorialsOn");
                     if(_loc7_)
                     {
                        this.SaveValue("m_graphicsLevel");
                        addr112:
                        this.SaveValue("_currSettingMinionID");
                     }
                     var _loc2_:* = 0;
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!_loc6_)
                        {
                           if(§§pop() < this.m_starUpgradeAmounts.length)
                           {
                              this.SaveValue("m_starUpgradeAmounts",_loc2_);
                              if(!(_loc6_ && Boolean(_loc2_)))
                              {
                                 continue;
                              }
                           }
                           addr145:
                           break;
                        }
                        break;
                     }
                     var _loc3_:* = §§pop();
                     loop1:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc7_ || _loc3_)
                        {
                           if(§§pop() >= this.m_currTrainerStarCounts.length)
                           {
                              §§push(0);
                              if(!_loc6_)
                              {
                                 _loc2_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc7_)
                                    {
                                       break loop1;
                                    }
                                 }
                                 addr218:
                              }
                              break;
                           }
                           §§push(0);
                           if(_loc7_ || Boolean(_loc2_))
                           {
                              _loc5_ = §§pop();
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 if(§§pop() >= this.m_currTrainerStarCounts[_loc3_].length)
                                 {
                                    continue loop1;
                                 }
                                 this.SaveValue("m_currTrainerStarCounts",_loc3_,_loc5_);
                                 this.SaveValue("m_bestTrainerStarCounts",_loc3_,_loc5_);
                                 this.SaveValue("m_hasBeatenTrainer",_loc3_,_loc5_);
                                 _loc5_++;
                              }
                           }
                           addr230:
                           var _loc4_:* = §§pop();
                           loop4:
                           while(true)
                           {
                              if(_loc4_ < 4)
                              {
                                 continue;
                              }
                              _loc3_ = 0;
                              while(_loc3_ < this.m_hasTutorialsBeenSeen.length)
                              {
                                 this.SaveValue("m_hasTutorialsBeenSeen",_loc3_);
                                 _loc3_++;
                              }
                              _loc3_ = 0;
                              if(!_loc6_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc6_ && Boolean(_loc2_)))
                                    {
                                       if(§§pop() < this.m_isMapUnlocked.length)
                                       {
                                          continue;
                                       }
                                       §§push(0);
                                       if(_loc7_ || Boolean(_loc3_))
                                       {
                                          _loc5_ = §§pop();
                                          if(_loc7_ || Boolean(this))
                                          {
                                             addr303:
                                             while(_loc5_ < this.m_minionsOwned.length)
                                             {
                                                this.SaveValue("m_minionsOwned",_loc5_);
                                                this.SaveValue("m_minionsSeen",_loc5_);
                                                _loc5_++;
                                             }
                                             if(_loc7_ || Boolean(_loc2_))
                                             {
                                                §§push(0);
                                                if(_loc7_ || Boolean(this))
                                                {
                                                   break;
                                                }
                                                §§goto(addr376);
                                             }
                                             loop13:
                                             while(true)
                                             {
                                                this.m_ownedGems[_loc2_].SaveGemAtSlot(_loc2_);
                                                loop14:
                                                while(true)
                                                {
                                                   _loc2_++;
                                                   if(!(_loc6_ && Boolean(param1)))
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc2_ >= this.m_ownedGems.length)
                                                         {
                                                            addr376:
                                                            _loc2_ = §§pop();
                                                            if(!(_loc6_ && Boolean(this)))
                                                            {
                                                               break loop4;
                                                            }
                                                            addr474:
                                                            this.SaveValue("m_isMaleMetaData",param1);
                                                            if(!_loc6_)
                                                            {
                                                               addr480:
                                                               this.m_sharedObject.flush();
                                                            }
                                                            this.m_sharedObject = SharedObject.getLocal("TCrpgSaveSlot" + param1);
                                                            return;
                                                            §§push(0);
                                                         }
                                                         else
                                                         {
                                                            if(this.m_ownedGems[_loc2_] == null)
                                                            {
                                                               this.m_sharedObject.data["gem" + _loc2_] = false;
                                                               continue loop14;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               continue loop13;
                                                            }
                                                         }
                                                         §§goto(addr480);
                                                         continue loop14;
                                                      }
                                                      addr370:
                                                   }
                                                   addr392:
                                                   while(true)
                                                   {
                                                      this.m_ownedMinions[_loc2_].SaveMinionAtSlot(_loc2_);
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             _loc2_++;
                                             addr408:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                             }
                                          }
                                          addr407:
                                       }
                                       while(§§pop() < this.m_ownedMinions.length)
                                       {
                                          if(this.m_ownedMinions[_loc2_] != null)
                                          {
                                             §§goto(addr392);
                                          }
                                          else
                                          {
                                             this.m_sharedObject.data["minion" + _loc2_] = false;
                                          }
                                          §§goto(addr407);
                                       }
                                       this.m_sharedObject.flush();
                                       this.m_sharedObject = SharedObject.getLocal("TCrpgInitialData");
                                       if(_loc7_ || Boolean(_loc3_))
                                       {
                                          addr428:
                                          this.SaveValue("m_isSoundOn");
                                          if(_loc7_)
                                          {
                                             this.SaveValue("m_isMusicOn");
                                             if(_loc7_)
                                             {
                                                this.SaveValue("m_characterNames",param1);
                                                addr442:
                                                this.SaveValue("m_totalMinions",param1);
                                                if(_loc7_)
                                                {
                                                   this.SaveValue("m_totalSageSeals",param1);
                                                   this.SaveValue("m_totalStars",param1);
                                                   addr456:
                                                   this.SaveValue("m_isSaveSlotInUse",param1);
                                                   if(_loc7_ || Boolean(param1))
                                                   {
                                                      §§goto(addr474);
                                                   }
                                                   §§goto(addr376);
                                                }
                                                §§goto(addr480);
                                             }
                                             §§goto(addr376);
                                          }
                                          §§goto(addr442);
                                       }
                                       §§goto(addr456);
                                    }
                                    break;
                                 }
                                 _loc2_ = §§pop();
                                 if(_loc7_)
                                 {
                                    §§goto(addr370);
                                 }
                                 §§goto(addr428);
                              }
                              §§goto(addr303);
                           }
                           §§goto(addr408);
                        }
                        break;
                     }
                     while(§§pop() < Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + Singleton.staticData.NUM_OF_FLOORS_IN_THE_HARD_TOWER)
                     {
                        this.SaveValue("m_hasBeatenFloor",_loc2_);
                        if(_loc7_ || Boolean(param1))
                        {
                           _loc2_++;
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§goto(addr218);
                        }
                        break;
                     }
                     §§goto(addr230);
                     §§push(0);
                  }
                  §§goto(addr112);
               }
            }
         }
         §§goto(addr101);
      }
      
      public function LoadData(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = 0;
         if(_loc6_ || _loc3_)
         {
            if(this.m_resetSaveData)
            {
               if(_loc6_ || Boolean(this))
               {
                  SharedObject.getLocal("TCrpgSaveSlot0").clear();
                  SharedObject.getLocal("TCrpgSaveSlot1").clear();
                  if(_loc6_ || _loc2_)
                  {
                     SharedObject.getLocal("TCrpgSaveSlot2").clear();
                     if(_loc6_ || _loc3_)
                     {
                        addr58:
                        this.m_sharedObject = SharedObject.getLocal("TCrpgSaveSlot" + param1);
                        if(!(_loc7_ && _loc2_))
                        {
                           this.SetInitialValue("m_topDownCharPositionX",-99);
                           this.SetInitialValue("m_topDownCharPositionY",-99);
                           if(_loc6_ || Boolean(this))
                           {
                           }
                           addr109:
                           §§push(Singleton.utility);
                           if(!(_loc7_ && _loc3_))
                           {
                              §§push(§§pop().m_screenControllers);
                              if(_loc6_ || Boolean(this))
                              {
                                 §§push(§§pop().m_topDownScreen);
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§push(§§pop().m_topDownMovementScreen);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop().m_mainChar);
                                       if(_loc6_)
                                       {
                                          if(§§pop() != null)
                                          {
                                             addr148:
                                             Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.SetDirectionForStill(this.m_charDirectionsForSave);
                                          }
                                          this.SetInitialValue("m_currFloorOfTower",0);
                                          this.SetInitialValue("m_currRoomOfTower",0);
                                          this.SetInitialValue("m_currTransitionID",0);
                                          if(_loc6_ || Boolean(this))
                                          {
                                             this.SetInitialValue("m_prevBackgroundMusic",BackgroundMusicTracks.MUSIC_NONE);
                                             if(!_loc7_)
                                             {
                                                this.SetInitialValue("m_currMoney",0);
                                                if(!_loc7_)
                                                {
                                                   this.SetInitialValue("m_currKeysOnFloor",0);
                                                   this.SetInitialValue("m_currEggeryKeys",0);
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      addr198:
                                                      this.SetInitialValue("m_hasUnlockedBossDoor",false);
                                                      this.SetInitialValue("m_hasUnlockedEggeryDoor",false);
                                                      this.SetInitialValue("m_numOfMinionsLeftToChoose",1);
                                                   }
                                                   this.SetInitialValue("m_hasTalkedToTheGrandSageForTheFirstTime",false);
                                                   if(_loc6_ || Boolean(this))
                                                   {
                                                      this.SetInitialValue("m_numOfSpentStars",0);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         addr232:
                                                         this.SetInitialValue("_currSettingMinionID",0);
                                                         addr236:
                                                         this.SetInitialValue("m_areTutorialsOn",true);
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            addr254:
                                                            this.SetInitialValue("m_graphicsLevel",2);
                                                         }
                                                         var _loc2_:* = 0;
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               if(§§pop() < this.m_starUpgradeAmounts.length)
                                                               {
                                                                  this.SetInitialValue("m_starUpgradeAmounts",0,_loc2_);
                                                                  if(_loc7_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  _loc2_++;
                                                                  if(_loc6_ || Boolean(param1))
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            break;
                                                         }
                                                         var _loc3_:* = §§pop();
                                                         if(!(_loc7_ && _loc3_))
                                                         {
                                                            loop1:
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc7_)
                                                               {
                                                                  if(§§pop() < this.m_currTrainerStarCounts.length)
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc7_)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        if(!(_loc7_ && Boolean(this)))
                                                                        {
                                                                           loop2:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(§§pop() < this.m_currTrainerStarCounts[_loc3_].length)
                                                                                 {
                                                                                    this.SetInitialValue("m_currTrainerStarCounts",0,_loc3_,_loc5_);
                                                                                    this.SetInitialValue("m_bestTrainerStarCounts",0,_loc3_,_loc5_);
                                                                                    this.SetInitialValue("m_hasBeatenTrainer",false,_loc3_,_loc5_);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       _loc5_++;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 _loc3_++;
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr361:
                                                                                 _loc2_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       if(§§pop() < Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + Singleton.staticData.NUM_OF_FLOORS_IN_THE_HARD_TOWER)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                    break loop2;
                                                                                 }
                                                                                 addr377:
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr394:
                                                                           var _loc4_:* = §§pop();
                                                                           loop3:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(§§pop() >= 4)
                                                                                 {
                                                                                    addr417:
                                                                                    _loc3_ = 0;
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(!(_loc6_ || Boolean(_loc3_)))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(§§pop() >= this.m_hasTutorialsBeenSeen.length)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       this.SetInitialValue("m_hasTutorialsBeenSeen",false,_loc3_);
                                                                                       if(!(_loc6_ || Boolean(_loc2_)))
                                                                                       {
                                                                                          §§goto(addr500);
                                                                                       }
                                                                                       _loc3_++;
                                                                                    }
                                                                                    _loc3_ = §§pop();
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       loop5:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_ < this.m_isMapUnlocked.length)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(0);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             break loop3;
                                                                                          }
                                                                                          loop7:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() < this.m_minionsOwned.length)
                                                                                             {
                                                                                                this.SetInitialValue("m_minionsOwned",false,_loc5_);
                                                                                                break loop5;
                                                                                             }
                                                                                             addr500:
                                                                                             this.LoadGems();
                                                                                             addr502:
                                                                                             this.LoadMinions();
                                                                                             return;
                                                                                             addr495:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                continue loop7;
                                                                                             }
                                                                                             §§goto(addr500);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          this.SetInitialValue("m_minionsSeen",false,_loc5_);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             _loc5_++;
                                                                                             §§goto(addr495);
                                                                                          }
                                                                                          §§goto(addr500);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.SetInitialValue("m_animateNewFloorActive",false,_loc4_);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr502);
                                                                              }
                                                                              break;
                                                                           }
                                                                           _loc5_ = §§pop();
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§goto(addr495);
                                                                           }
                                                                           §§goto(addr500);
                                                                        }
                                                                     }
                                                                     §§goto(addr394);
                                                                  }
                                                                  §§push(0);
                                                                  if(_loc6_ || Boolean(_loc2_))
                                                                  {
                                                                     §§goto(addr361);
                                                                  }
                                                               }
                                                               §§goto(addr394);
                                                            }
                                                         }
                                                         §§goto(addr377);
                                                      }
                                                      §§goto(addr254);
                                                   }
                                                   §§goto(addr232);
                                                }
                                                §§goto(addr198);
                                             }
                                             §§goto(addr232);
                                          }
                                          §§goto(addr254);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr148);
                        }
                        this.SetInitialValue("m_isExtraSponsorGemsIn",false);
                        if(!_loc7_)
                        {
                           this.SetInitialValue("m_isExtraSponsorMinionEarned",false);
                           if(!(_loc7_ && Boolean(this)))
                           {
                              this.SetInitialValue("m_charDirectionsForSave",OrientationState.ORIENTATION_UP);
                              §§goto(addr109);
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr236);
                     }
                     §§goto(addr198);
                  }
                  §§goto(addr109);
               }
               §§goto(addr254);
            }
            §§goto(addr58);
         }
         §§goto(addr198);
      }
      
      private function LoadGems() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(this)))
         {
            this.m_ownedGems = new Vector.<OwnedGem>(150);
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_ownedGems.length)
         {
            §§push(this.m_sharedObject.data["gem" + _loc1_] == null);
            if(!(_loc2_ && _loc2_))
            {
               §§push(!§§pop());
               if(!(_loc2_ && _loc3_))
               {
                  addr63:
                  if(§§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§pop();
                        if(_loc2_ && Boolean(_loc1_))
                        {
                           continue;
                        }
                        §§push(Boolean(this.m_sharedObject.data["gem" + _loc1_]));
                     }
                  }
               }
               if(§§pop())
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this.m_ownedGems[_loc1_] = new OwnedGem();
                     if(!_loc2_)
                     {
                        this.m_ownedGems[_loc1_].CreateGemFromSlot(_loc1_);
                        if(_loc2_ && Boolean(this))
                        {
                        }
                        break;
                     }
                  }
                  continue;
               }
               _loc1_++;
               if(!_loc3_)
               {
                  break;
               }
               continue;
            }
            §§goto(addr63);
         }
      }
      
      private function LoadMinions() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.m_ownedMinions = new Vector.<OwnedMinion>(200);
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_ownedMinions.length)
         {
            §§push(this.m_sharedObject.data["minion" + _loc1_] == null);
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(!§§pop());
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                     }
                     addr77:
                     if(§§pop())
                     {
                        if(_loc3_ && Boolean(this))
                        {
                           continue;
                        }
                        this.m_ownedMinions[_loc1_] = new OwnedMinion(Singleton.dynamicData.m_sharedObject.data["minion" + _loc1_ + "dexID"]);
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           this.m_ownedMinions[_loc1_].CreateMinionFromSlot(_loc1_);
                           if(_loc2_ || _loc3_)
                           {
                           }
                           break;
                        }
                     }
                     _loc1_++;
                     if(_loc3_ && _loc2_)
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr77);
               }
               §§pop();
               if(_loc2_)
               {
                  §§goto(addr77);
                  §§push(Boolean(this.m_sharedObject.data["minion" + _loc1_]));
               }
            }
            §§goto(addr77);
         }
      }
      
      public function LoadInitialData() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.m_resetSaveData)
            {
               if(!_loc3_)
               {
                  SharedObject.getLocal("TCrpgInitialData").clear();
                  if(!_loc3_)
                  {
                     addr26:
                     this.m_sharedObject = SharedObject.getLocal("TCrpgInitialData");
                     if(!_loc3_)
                     {
                        this.SetInitialValue("m_isSoundOn",true);
                        if(_loc2_)
                        {
                           addr39:
                           this.SetInitialValue("m_isMusicOn",true);
                        }
                     }
                  }
                  §§goto(addr39);
               }
               var _loc1_:int = 0;
               while(_loc1_ < 3)
               {
                  §§push(this);
                  §§push("m_characterNames");
                  §§push("Temp");
                  if(_loc2_)
                  {
                     §§push(_loc1_);
                     if(!_loc3_)
                     {
                        addr63:
                        §§push(§§pop() + §§pop());
                        §§push(_loc1_);
                     }
                     §§pop().SetInitialValue(§§pop(),§§pop(),§§pop());
                     this.SetInitialValue("m_totalMinions",0,_loc1_);
                     this.SetInitialValue("m_totalSageSeals",0,_loc1_);
                     if(_loc2_ || _loc3_)
                     {
                        this.SetInitialValue("m_totalStars",0,_loc1_);
                     }
                     this.SetInitialValue("m_isSaveSlotInUse",false,_loc1_);
                     if(_loc2_)
                     {
                        this.SetInitialValue("m_isMaleMetaData",true,_loc1_);
                        _loc1_++;
                     }
                     continue;
                  }
                  §§goto(addr63);
               }
               return;
            }
            §§goto(addr26);
         }
         §§goto(addr39);
      }
      
      private function SetInitialValue(param1:String, param2:Object, param3:int = -99, param4:int = -99) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || Boolean(param1))
         {
            §§push(param3);
            if(!_loc6_)
            {
               §§push(-99);
               if(!(_loc6_ && Boolean(param3)))
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc6_ && Boolean(param2)))
                     {
                        if(this.m_sharedObject.data[param1] != null)
                        {
                           if(_loc5_)
                           {
                              addr48:
                              this[param1] = this.m_sharedObject.data[param1];
                           }
                           else
                           {
                              addr189:
                              return;
                              addr168:
                           }
                        }
                        else
                        {
                           this[param1] = param2;
                           this.m_sharedObject.data[param1] = param2;
                           if(!_loc5_)
                           {
                              addr93:
                              this[param1][param3] = this.m_sharedObject.data[param1 + param3];
                              if(_loc5_ || Boolean(param3))
                              {
                                 addr127:
                                 §§goto(addr189);
                              }
                              §§goto(addr127);
                           }
                        }
                        §§goto(addr189);
                     }
                     else
                     {
                        addr119:
                        this.m_sharedObject.data[param1 + param3] = param2;
                     }
                     §§goto(addr127);
                  }
                  else
                  {
                     addr72:
                     addr71:
                     if(param4 == -99)
                     {
                        if(_loc5_)
                        {
                           if(this.m_sharedObject.data[param1 + param3] != null)
                           {
                              if(_loc5_)
                              {
                                 §§goto(addr93);
                              }
                              §§goto(addr189);
                           }
                           else
                           {
                              this[param1][param3] = param2;
                              §§goto(addr119);
                           }
                        }
                        §§goto(addr189);
                     }
                     else if(this.m_sharedObject.data[param1 + param3 + "slot" + param4] != null)
                     {
                        this[param1][param3][param4] = this.m_sharedObject.data[param1 + param3 + "slot" + param4];
                        if(!_loc6_)
                        {
                           §§goto(addr168);
                        }
                        §§goto(addr189);
                     }
                     else
                     {
                        this[param1][param3][param4] = param2;
                     }
                     this.m_sharedObject.data[param1 + param3 + "slot" + param4] = param2;
                  }
                  §§goto(addr189);
               }
               §§goto(addr72);
            }
            §§goto(addr71);
         }
         §§goto(addr48);
      }
      
      private function SaveValue(param1:String, param2:int = -99, param3:int = -99) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && Boolean(param3)))
         {
            §§push(param2);
            if(!_loc4_)
            {
               §§push(-99);
               if(!(_loc4_ && Boolean(param2)))
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc5_)
                     {
                        this.m_sharedObject.data[param1] = this[param1];
                        if(!_loc4_)
                        {
                           addr52:
                        }
                     }
                  }
                  else
                  {
                     addr55:
                     if(param3 == -99)
                     {
                        if(!_loc4_)
                        {
                           this.m_sharedObject.data[param1 + param2] = this[param1][param2];
                           if(_loc4_ && Boolean(this))
                           {
                           }
                           §§goto(addr103);
                        }
                     }
                     else
                     {
                        this.m_sharedObject.data[param1 + param2 + "slot" + param3] = this[param1][param2][param3];
                     }
                  }
                  addr103:
                  return;
               }
            }
            §§goto(addr55);
         }
         §§goto(addr52);
      }
   }
}
