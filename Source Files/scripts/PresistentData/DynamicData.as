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
         super();
      }
      
      public function CreateObjects() : void
      {
         this.m_saveSlot = 0;
         this.m_ownedMinions = new Vector.<OwnedMinion>(200);
         this.m_playerMinionsForTheBattleMod = new Vector.<OwnedMinion>(5);
         var _loc1_:int = 0;
         while(_loc1_ < this.m_ownedMinions.length)
         {
            this.m_ownedMinions[_loc1_] = null;
            _loc1_++;
         }
         this.ResetThePlayersBattleModMinions();
         this.m_currTrainerStarCounts = new Vector.<Vector.<int>>();
         this.m_bestTrainerStarCounts = new Vector.<Vector.<int>>();
         this.m_hasBeatenTrainer = new Vector.<Vector.<Boolean>>();
         _loc1_ = 0;
         while(_loc1_ < Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + Singleton.staticData.NUM_OF_FLOORS_IN_THE_HARD_TOWER)
         {
            this.m_currTrainerStarCounts[_loc1_] = new Vector.<int>();
            this.m_bestTrainerStarCounts[_loc1_] = new Vector.<int>();
            this.m_hasBeatenTrainer[_loc1_] = new Vector.<Boolean>();
            _loc1_++;
         }
         this.m_hasBeatenFloor = new Vector.<Boolean>();
         this.m_animateNewFloorActive = new Vector.<Boolean>(4);
         this.m_characterNames = new Vector.<String>(3);
         this.m_isSaveSlotInUse = new Vector.<Boolean>(3);
         this.m_isMaleMetaData = new Vector.<Boolean>(3);
         this.m_totalMinions = new Vector.<int>(3);
         this.m_totalSageSeals = new Vector.<int>(3);
         this.m_totalStars = new Vector.<int>(3);
         this.m_starUpgradeAmounts = new Vector.<int>(8);
         this.m_isMapUnlocked = new Vector.<Boolean>(Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
         this.m_hasTutorialsBeenSeen = new Vector.<Boolean>(TutorialTypes.NUM_OF_TUTORIALS);
         this.m_minionsOwned = new Vector.<Boolean>(MinionDexID.TOTAL_NUM_OF_MINIONS - 4);
         this.m_minionsSeen = new Vector.<Boolean>(MinionDexID.TOTAL_NUM_OF_MINIONS - 4);
         this.m_ownedGems = new Vector.<OwnedGem>(150);
         Singleton.staticData.CreateObjectsAfterDynamicData();
         this.LoadInitialData();
         this.LoadData(this.m_saveSlot);
         this.m_isTalentTreeInSimpleMode = false;
         this.m_isInMysteryMode = false;
         this.m_isMovementTutorialActive = false;
         this.m_movementTutorialStepCounter = 0;
         this.m_numberOfDeathsSinceVictory = 0;
         this.m_numOfAvailbleStars = 1000;
      }
      
      public function get m_currRoomOfTower() : int
      {
         return this._currRoomOfTower;
      }
      
      public function IsMinionOpponents(param1:OwnedMinion) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < 5)
         {
            if(this.m_opponentsMinions[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function set m_currRoomOfTower(param1:int) : void
      {
         this._prevRoomOfTower = this._currRoomOfTower;
         this._currRoomOfTower = param1;
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
         this._currFloorOfTower = param1;
      }
      
      public function get m_numOfSpentStars() : int
      {
         return this._numOfSpentStars;
      }
      
      public function set m_numOfSpentStars(param1:int) : void
      {
         this._numOfSpentStars = param1;
         this.CalculateTotatNumberOfAvailbleStars();
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
         this.m_isMaleMetaData[this.m_saveSlot] = param1;
      }
      
      public function CalculateTotatNumberOfAvailbleStars() : void
      {
         this.m_numOfAvailbleStars = this.CalculateTotalNumberOfStars() - this.m_numOfSpentStars;
      }
      
      public function CalculateTotalNumberOfStars() : int
      {
         var _loc3_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + Singleton.staticData.NUM_OF_FLOORS_IN_THE_HARD_TOWER)
         {
            _loc3_ = 0;
            while(_loc3_ < this.m_bestTrainerStarCounts[_loc2_].length)
            {
               _loc1_ += this.m_bestTrainerStarCounts[_loc2_][_loc3_];
               _loc3_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function ResetThePlayersBattleModMinions() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this.m_playerMinionsForTheBattleMod[_loc1_] = null;
            _loc1_++;
         }
      }
      
      public function SetExtraBattleModMinion(param1:OwnedMinion, param2:int) : void
      {
         this.m_playerMinionsForTheBattleMod[param2] = param1;
      }
      
      public function GetTotalNumberOfMinions() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_ownedMinions.length)
         {
            if(this.m_ownedMinions[_loc2_] != null)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function DoAnyOfTheMinionsHaveUnspentTalentPoints() : Boolean
      {
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            if(this.m_ownedMinions[_loc1_] != null && this.m_ownedMinions[_loc1_].m_availableTalentPoints > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function GetNextSettingMinionID() : int
      {
         ++this._currSettingMinionID;
         return this._currSettingMinionID;
      }
      
      public function SetHasBeatenTheCurrTrainer(param1:Boolean) : void
      {
         if(this.m_currTrainerID == 0)
         {
            this.m_hasBeatenTrainer[this.m_currFloorOfTower][this.m_currTrainerID] = param1;
         }
         else
         {
            this.m_hasBeatenTrainer[this.m_currFloorOfTower][this.m_currTrainerID - 1] = param1;
         }
      }
      
      public function HasBeatenCurrentTrainer() : Boolean
      {
         if(this.m_currTrainerID == 0)
         {
            return this.m_hasBeatenTrainer[this.m_currFloorOfTower][this.m_currTrainerID];
         }
         return this.m_hasBeatenTrainer[this.m_currFloorOfTower][this.m_currTrainerID - 1];
      }
      
      public function UpdateTrainersStarsForCurrentTrainer() : void
      {
         var _loc1_:int = this.GetNumberOfStarsEarnedForTheCurrentTrainer();
         if(this.m_currTrainerID == 0)
         {
            if(_loc1_ > this.m_currTrainerStarCounts[this.m_currFloorOfTower][this.m_currTrainerID])
            {
               this.m_currTrainerStarCounts[this.m_currFloorOfTower][this.m_currTrainerID] = _loc1_;
               this.m_bestTrainerStarCounts[this.m_currFloorOfTower][this.m_currTrainerID] = _loc1_;
            }
         }
         else if(_loc1_ > this.m_currTrainerStarCounts[this.m_currFloorOfTower][this.m_currTrainerID - 1])
         {
            this.m_currTrainerStarCounts[this.m_currFloorOfTower][this.m_currTrainerID - 1] = _loc1_;
            this.m_bestTrainerStarCounts[this.m_currFloorOfTower][this.m_currTrainerID - 1] = _loc1_;
         }
         this.m_totalStars[this.m_saveSlot] = this.CalculateTotalNumberOfStars();
      }
      
      public function GetNumberOfStarsEarnedForTheCurrentTrainer() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 5)
         {
            if(this.GetOwnedMinionAt(_loc3_) != null)
            {
               _loc1_++;
            }
            if(this.GetOwnedMinionAt(_loc3_) != null && this.GetOwnedMinionAt(_loc3_).m_currHealth > 0)
            {
               _loc2_++;
            }
            _loc3_++;
         }
         var _loc4_:int;
         if((_loc4_ = _loc1_ - _loc2_) == 1 || _loc4_ == 0)
         {
            return 3;
         }
         if(_loc4_ == 2)
         {
            return 2;
         }
         if(_loc4_ == 3 || _loc4_ == 4)
         {
            return 1;
         }
         return 0;
      }
      
      public function GetNumberOfStarsEarnedForTheCurrentTrainer_old() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 5)
         {
            if(this.m_ownedMinions[_loc3_] != null)
            {
               _loc1_++;
            }
            if(this.m_ownedMinions[_loc3_] != null && this.m_ownedMinions[_loc3_].m_currHealth > 0)
            {
               _loc2_++;
            }
            _loc3_++;
         }
         var _loc4_:Number;
         if((_loc4_ = _loc2_ / _loc1_) == 1)
         {
            return 3;
         }
         if(_loc4_ > 0.45)
         {
            return 2;
         }
         if(_loc4_ > 0)
         {
            return 1;
         }
         return 0;
      }
      
      public function GetStarsForCurrentFloor() : int
      {
         return this.GetStarsForFloor(this.m_currFloorOfTower);
      }
      
      public function GetStarsForFloor(param1:int) : int
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this.m_currTrainerStarCounts[param1].length)
         {
            _loc2_ += this.m_currTrainerStarCounts[param1][_loc3_];
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function GetStarsForCurrentFloorAndRoom() : int
      {
         if(this.m_currTrainerID == 0)
         {
            return this.m_currTrainerStarCounts[this.m_currFloorOfTower][this.m_currTrainerID];
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
         this.m_minionsSeen[param1] = param2;
      }
      
      public function SetIsMinionOwned(param1:int, param2:Boolean) : void
      {
         this.m_minionsOwned[param1] = param2;
      }
      
      public function AddToOwnedMinions(param1:OwnedMinion) : void
      {
         this.m_minionsOwned[param1.m_minionDexID] = true;
         this.m_minionsSeen[param1.m_minionDexID] = true;
         this.m_totalMinions[this.m_saveSlot] = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_minionsOwned.length)
         {
            if(this.m_minionsOwned[_loc2_])
            {
               ++this.m_totalMinions[this.m_saveSlot];
            }
            _loc2_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.m_ownedMinions.length)
         {
            if(this.m_ownedMinions[_loc3_] == null)
            {
               this.m_ownedMinions[_loc3_] = param1;
               return;
            }
            _loc3_++;
         }
      }
      
      public function AddToOwnedGems(param1:OwnedGem) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.m_ownedGems.length)
         {
            if(this.m_ownedGems[_loc2_] == null)
            {
               this.m_ownedGems[_loc2_] = param1;
               return;
            }
            _loc2_++;
         }
      }
      
      public function AddTrainerStarCountToFloor(param1:int) : void
      {
         this.m_currTrainerStarCounts[param1].push(0);
         this.m_bestTrainerStarCounts[param1].push(0);
         this.m_hasBeatenTrainer[param1].push(false);
      }
      
      public function GetOwnedMinionAt(param1:int) : OwnedMinion
      {
         if(param1 < 5 && this.m_playerMinionsForTheBattleMod[param1] != null)
         {
            return this.m_playerMinionsForTheBattleMod[param1];
         }
         return this.m_ownedMinions[param1];
      }
      
      public function GetOwnedGemAt(param1:int) : OwnedGem
      {
         return this.m_ownedGems[param1];
      }
      
      public function SetGemAt(param1:OwnedGem, param2:int) : void
      {
         this.m_ownedGems[param2] = param1;
      }
      
      public function GetGemPosition(param1:OwnedGem) : int
      {
         var _loc2_:int = -99;
         var _loc3_:int = 0;
         while(_loc3_ < this.m_ownedGems.length)
         {
            if(this.m_ownedGems[_loc3_] == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function GetMinionPosition(param1:OwnedMinion) : int
      {
         var _loc2_:int = -99;
         var _loc3_:int = 0;
         while(_loc3_ < this.m_ownedMinions.length)
         {
            if(this.m_ownedMinions[_loc3_] == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function SwapGems(param1:int, param2:int) : void
      {
         var _loc3_:OwnedGem = this.m_ownedGems[param1];
         this.m_ownedGems[param1] = this.m_ownedGems[param2];
         this.m_ownedGems[param2] = _loc3_;
      }
      
      public function SwapMinions(param1:int, param2:int) : void
      {
         var _loc3_:OwnedMinion = this.m_ownedMinions[param1];
         this.m_ownedMinions[param1] = this.m_ownedMinions[param2];
         this.m_ownedMinions[param2] = _loc3_;
      }
      
      public function SetMinionTo(param1:int, param2:OwnedMinion) : void
      {
         this.m_ownedMinions[param1] = param2;
      }
      
      public function ResetOpponentsMinions() : void
      {
         this.m_opponentsMinions = new Vector.<OwnedMinion>(5);
      }
      
      public function SetHasUnlockedFloor(param1:int, param2:Boolean) : void
      {
         this.m_hasBeatenFloor[param1] = param2;
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
         var _loc1_:int = 0;
         while(_loc1_ < 8)
         {
            if(this.m_numOfAvailbleStars < this.GetStarUpgradeCost(_loc1_))
            {
               return false;
            }
            _loc1_++;
         }
         return true;
      }
      
      public function GetStarUpgradeAmount(param1:int) : int
      {
         return this.m_starUpgradeAmounts[param1];
      }
      
      public function ResetStarUpgradeAmounts() : void
      {
         this._numOfSpentStars = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_starUpgradeAmounts.length)
         {
            this.m_starUpgradeAmounts[_loc1_] = 0;
            _loc1_++;
         }
      }
      
      public function AddOneToStarUpgradeAmount(param1:int) : void
      {
         ++this.m_starUpgradeAmounts[param1];
      }
      
      public function GetHighestFloor() : int
      {
         var _loc1_:int = int(this.m_hasBeatenFloor.length - 1);
         while(_loc1_ > -1)
         {
            if(this.m_hasBeatenFloor[_loc1_])
            {
               if(_loc1_ == 61)
               {
                  return 61;
               }
               return _loc1_ + 1;
            }
            _loc1_--;
         }
         return 0;
      }
      
      public function SetNewReturnToOnDeathPoint() : void
      {
         this.m_deathReturnFloorOfTower = this._currFloorOfTower;
         this.m_deathReturnRoomOfTower = this._currRoomOfTower;
         this.m_deathReturnCharPositionX = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.x - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer.x;
         this.m_deathReturnCharPositionY = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.y - Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer.y;
         this.m_deathReturnCharOrientation = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.m_currDirection;
      }
      
      public function SetToReturnToOnDeathPoint() : void
      {
         this.m_currFloorOfTower = this.m_deathReturnFloorOfTower;
         this.m_currRoomOfTower = this.m_deathReturnRoomOfTower;
         this.m_topDownCharPositionX = this.m_deathReturnCharPositionX;
         this.m_topDownCharPositionY = this.m_deathReturnCharPositionY;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.SetDirectionForStill(this.m_deathReturnCharOrientation);
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_returnChatBox = null;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_returnTrianerForChatBox = null;
      }
      
      public function GetHighestStarCount(param1:int) : int
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this.m_bestTrainerStarCounts[param1].length)
         {
            _loc2_ += this.m_bestTrainerStarCounts[param1][_loc3_];
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function HealAllOfAPlayersInPartyMinions() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            if(this.m_ownedMinions[_loc1_] != null)
            {
               this.m_ownedMinions[_loc1_].ReFillHealthAndEnergy();
            }
            _loc1_++;
         }
      }
      
      public function GetGlobalPassiveMovesForPlayer() : Vector.<int>
      {
         var currGlobalMoves:Vector.<int> = null;
         var finalReturnArray:Vector.<int> = null;
         var toReturn:Vector.<int> = new Vector.<int>();
         var i:int = 0;
         while(i < 5)
         {
            if(this.GetOwnedMinionAt(i) != null && this.GetOwnedMinionAt(i).m_currHealth > 0)
            {
               currGlobalMoves = this.GetOwnedMinionAt(i).m_globalMoves;
               toReturn = toReturn.concat(currGlobalMoves);
            }
            i++;
         }
         finalReturnArray = toReturn.filter(function(param1:*, param2:int, param3:Vector.<int>):Boolean
         {
            return (!!finalReturnArray ? finalReturnArray : (finalReturnArray = new Vector.<int>())).indexOf(param1) >= 0 ? false : finalReturnArray.push(param1) >= 0;
         },this);
         if(this.m_currTrainerData != null && this.m_currTrainerData.m_passiveMoveForMoveOnTimer != -99)
         {
            finalReturnArray.push(this.m_currTrainerData.m_passiveMoveForMoveOnTimer);
         }
         return finalReturnArray;
      }
      
      public function ResetArrayDataForSaveLoad() : void
      {
      }
      
      public function ResetFloorData() : void
      {
         this.m_currRoomOfTower = 0;
         this.m_currTransitionID = 0;
         this.m_currKeysOnFloor = 0;
         this.m_currEggeryKeys = 0;
         this.m_hasUnlockedBossDoor = false;
         this.m_hasBeatenHardMode = false;
         this.m_hasUnlockedEggeryDoor = false;
         if(Singleton.dynamicData.GetTotalSageSeals() > 5)
         {
            this.m_numOfMinionsLeftToChoose = 3;
         }
         else if(Singleton.dynamicData.GetTotalSageSeals() > 2)
         {
            this.m_numOfMinionsLeftToChoose = 2;
         }
         else
         {
            this.m_numOfMinionsLeftToChoose = 1;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_currTrainerStarCounts[this.m_currFloorOfTower].length)
         {
            this.m_currTrainerStarCounts[this.m_currFloorOfTower][_loc1_] = 0;
            _loc1_++;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.m_hasBeatenTrainer[this.m_currFloorOfTower].length)
         {
            this.m_hasBeatenTrainer[this.m_currFloorOfTower][_loc2_] = false;
            _loc2_++;
         }
      }
      
      public function SetupDataForBringingInANewFloor(param1:int) : void
      {
         this.m_currFloorOfTower = param1;
         this.m_topDownCharPositionX = -99;
         this.m_topDownCharPositionY = -99;
         this.ResetFloorData();
      }
      
      public function AddAllStarsAndSetThatWeHaveBeatenAllTheTrainers() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.m_currTrainerStarCounts[this.m_currFloorOfTower].length)
         {
            this.m_currTrainerStarCounts[this.m_currFloorOfTower][_loc1_] = 3;
            this.m_bestTrainerStarCounts[this.m_currFloorOfTower][_loc1_] = 3;
            _loc1_++;
         }
         if(Singleton.dynamicData.m_currFloorOfTower < Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER && _loc1_ > 1)
         {
            this.m_currTrainerStarCounts[this.m_currFloorOfTower][3] = 0;
            this.m_bestTrainerStarCounts[this.m_currFloorOfTower][3] = 0;
            this.m_currTrainerStarCounts[this.m_currFloorOfTower][4] = 0;
            this.m_bestTrainerStarCounts[this.m_currFloorOfTower][4] = 0;
         }
         this.m_totalStars[this.m_saveSlot] = this.CalculateTotalNumberOfStars();
         var _loc2_:int = 0;
         while(_loc2_ < this.m_hasBeatenTrainer[this.m_currFloorOfTower].length)
         {
            this.m_hasBeatenTrainer[this.m_currFloorOfTower][_loc2_] = true;
            _loc2_++;
         }
         Singleton.utility.UnlockNextFloor();
      }
      
      public function HasTutorialBeenSeen(param1:int) : Boolean
      {
         if(!this.m_areTutorialsOn)
         {
            return true;
         }
         return this.m_hasTutorialsBeenSeen[param1];
      }
      
      public function SetHasTutorialBeenSeen(param1:int, param2:Boolean) : void
      {
         if(!this.m_areTutorialsOn)
         {
            return;
         }
         this.m_hasTutorialsBeenSeen[param1] = param2;
      }
      
      public function GetIsSaveSlotInUse(param1:int) : Boolean
      {
         return this.m_isSaveSlotInUse[param1];
      }
      
      public function SetIsSaveSlotInUse(param1:int, param2:Boolean) : void
      {
         this.m_isSaveSlotInUse[param1] = param2;
      }
      
      public function IsMapUnlocked() : Boolean
      {
         if(Singleton.dynamicData.m_currFloorOfTower > 30)
         {
            return this.m_isMapUnlocked[this.m_currFloorOfTower - 31];
         }
         return this.m_isMapUnlocked[this.m_currFloorOfTower];
      }
      
      public function SetIsMapUnlocked(param1:Boolean) : void
      {
         this.m_isMapUnlocked[this.m_currFloorOfTower] = param1;
      }
      
      public function GetCharName(param1:int) : String
      {
         return this.m_characterNames[param1];
      }
      
      public function SetCharName(param1:int, param2:String) : void
      {
         this.m_characterNames[param1] = param2;
      }
      
      public function GetTotalMinions(param1:int) : int
      {
         return this.m_totalMinions[param1];
      }
      
      public function SetTotalMinions(param1:int, param2:int) : void
      {
         this.m_totalMinions[param1] = param2;
      }
      
      public function GetTotalSageSeals(param1:int = -99) : int
      {
         if(param1 == -99)
         {
            return this.m_totalSageSeals[this.m_saveSlot];
         }
         return this.m_totalSageSeals[param1];
      }
      
      public function SetTotalSageSeals(param1:int, param2:int = -99) : void
      {
         if(param2 == -99)
         {
            this.m_totalSageSeals[this.m_saveSlot] = param1;
         }
         else
         {
            this.m_totalSageSeals[param2] = param1;
         }
      }
      
      public function GetTotalStars(param1:int) : int
      {
         return this.m_totalStars[param1];
      }
      
      public function SetTotalStars(param1:int, param2:int) : void
      {
         this.m_totalStars[param1] = param2;
      }
      
      public function GetAnimateNewFloorIn(param1:int) : Boolean
      {
         return this.m_animateNewFloorActive[param1];
      }
      
      public function SetAnimateNewFloor(param1:int, param2:Boolean) : void
      {
         this.m_animateNewFloorActive[param1] = param2;
      }
      
      public function ResetMetaDataForSaveSlot(param1:int) : void
      {
         this.m_characterNames[param1] = "Temp";
         this.m_totalMinions[param1] = 0;
         this.m_totalSageSeals[param1] = 0;
         this.m_totalStars[param1] = 0;
         this.m_isSaveSlotInUse[param1] = false;
         this.m_isMaleMetaData[param1] = true;
      }
      
      public function GetGlobalPassiveMovesForOpponet() : Vector.<int>
      {
         var currGlobalMoves:Vector.<int> = null;
         var finalReturnArray:Vector.<int> = null;
         var toReturn:Vector.<int> = new Vector.<int>();
         var i:int = 0;
         while(i < 5)
         {
            if(this.m_opponentsMinions[i] != null && this.m_opponentsMinions[i].m_currHealth > 0)
            {
               currGlobalMoves = this.m_opponentsMinions[i].m_globalMoves;
               toReturn = toReturn.concat(currGlobalMoves);
            }
            i++;
         }
         finalReturnArray = toReturn.filter(function(param1:*, param2:int, param3:Vector.<int>):Boolean
         {
            return (!!finalReturnArray ? finalReturnArray : (finalReturnArray = new Vector.<int>())).indexOf(param1) >= 0 ? false : finalReturnArray.push(param1) >= 0;
         },this);
         return finalReturnArray;
      }
      
      public function SaveAllData(param1:int) : void
      {
         var _loc5_:int = 0;
         this.m_sharedObject = SharedObject.getLocal("TCrpgSaveSlot" + param1);
         this.SaveValue("m_topDownCharPositionX");
         this.SaveValue("m_topDownCharPositionY");
         this.SaveValue("m_isExtraSponsorGemsIn");
         this.SaveValue("m_isExtraSponsorMinionEarned");
         this.SaveValue("m_charDirectionsForSave");
         this.SaveValue("m_currFloorOfTower");
         this.SaveValue("m_currRoomOfTower");
         this.SaveValue("m_currTransitionID");
         this.SaveValue("m_prevBackgroundMusic");
         this.SaveValue("m_currMoney");
         this.SaveValue("m_currKeysOnFloor");
         this.SaveValue("m_currEggeryKeys");
         this.SaveValue("m_hasUnlockedBossDoor");
         this.SaveValue("m_hasUnlockedEggeryDoor");
         this.SaveValue("m_numOfMinionsLeftToChoose");
         this.SaveValue("m_hasTalkedToTheGrandSageForTheFirstTime");
         this.SaveValue("m_numOfSpentStars");
         this.SaveValue("m_areTutorialsOn");
         this.SaveValue("m_graphicsLevel");
         this.SaveValue("_currSettingMinionID");
         var _loc2_:int = 0;
         while(_loc2_ < this.m_starUpgradeAmounts.length)
         {
            this.SaveValue("m_starUpgradeAmounts",_loc2_);
            _loc2_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.m_currTrainerStarCounts.length)
         {
            _loc5_ = 0;
            while(_loc5_ < this.m_currTrainerStarCounts[_loc3_].length)
            {
               this.SaveValue("m_currTrainerStarCounts",_loc3_,_loc5_);
               this.SaveValue("m_bestTrainerStarCounts",_loc3_,_loc5_);
               this.SaveValue("m_hasBeatenTrainer",_loc3_,_loc5_);
               _loc5_++;
            }
            _loc3_++;
         }
         _loc2_ = 0;
         while(_loc2_ < Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + Singleton.staticData.NUM_OF_FLOORS_IN_THE_HARD_TOWER)
         {
            this.SaveValue("m_hasBeatenFloor",_loc2_);
            _loc2_++;
         }
         var _loc4_:int = 0;
         while(_loc4_ < 4)
         {
            this.SaveValue("m_animateNewFloorActive",_loc4_);
            _loc4_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this.m_hasTutorialsBeenSeen.length)
         {
            this.SaveValue("m_hasTutorialsBeenSeen",_loc3_);
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this.m_isMapUnlocked.length)
         {
            this.SaveValue("m_isMapUnlocked",_loc3_);
            _loc3_++;
         }
         _loc5_ = 0;
         while(_loc5_ < this.m_minionsOwned.length)
         {
            this.SaveValue("m_minionsOwned",_loc5_);
            this.SaveValue("m_minionsSeen",_loc5_);
            _loc5_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.m_ownedGems.length)
         {
            if(this.m_ownedGems[_loc2_] != null)
            {
               this.m_ownedGems[_loc2_].SaveGemAtSlot(_loc2_);
            }
            else
            {
               this.m_sharedObject.data["gem" + _loc2_] = false;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.m_ownedMinions.length)
         {
            if(this.m_ownedMinions[_loc2_] != null)
            {
               this.m_ownedMinions[_loc2_].SaveMinionAtSlot(_loc2_);
            }
            else
            {
               this.m_sharedObject.data["minion" + _loc2_] = false;
            }
            _loc2_++;
         }
         this.m_sharedObject.flush();
         this.m_sharedObject = SharedObject.getLocal("TCrpgInitialData");
         this.SaveValue("m_isSoundOn");
         this.SaveValue("m_isMusicOn");
         this.SaveValue("m_characterNames",param1);
         this.SaveValue("m_totalMinions",param1);
         this.SaveValue("m_totalSageSeals",param1);
         this.SaveValue("m_totalStars",param1);
         this.SaveValue("m_isSaveSlotInUse",param1);
         this.SaveValue("m_isMaleMetaData",param1);
         this.m_sharedObject.flush();
         this.m_sharedObject = SharedObject.getLocal("TCrpgSaveSlot" + param1);
      }
      
      public function LoadData(param1:int) : void
      {
         var _loc5_:int = 0;
         if(this.m_resetSaveData)
         {
            SharedObject.getLocal("TCrpgSaveSlot0").clear();
            SharedObject.getLocal("TCrpgSaveSlot1").clear();
            SharedObject.getLocal("TCrpgSaveSlot2").clear();
         }
         this.m_sharedObject = SharedObject.getLocal("TCrpgSaveSlot" + param1);
         this.SetInitialValue("m_topDownCharPositionX",-99);
         this.SetInitialValue("m_topDownCharPositionY",-99);
         this.SetInitialValue("m_isExtraSponsorGemsIn",false);
         this.SetInitialValue("m_isExtraSponsorMinionEarned",false);
         this.SetInitialValue("m_charDirectionsForSave",OrientationState.ORIENTATION_UP);
         if(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar != null)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.SetDirectionForStill(this.m_charDirectionsForSave);
         }
         this.SetInitialValue("m_currFloorOfTower",0);
         this.SetInitialValue("m_currRoomOfTower",0);
         this.SetInitialValue("m_currTransitionID",0);
         this.SetInitialValue("m_prevBackgroundMusic",BackgroundMusicTracks.MUSIC_NONE);
         this.SetInitialValue("m_currMoney",0);
         this.SetInitialValue("m_currKeysOnFloor",0);
         this.SetInitialValue("m_currEggeryKeys",0);
         this.SetInitialValue("m_hasUnlockedBossDoor",false);
         this.SetInitialValue("m_hasUnlockedEggeryDoor",false);
         this.SetInitialValue("m_numOfMinionsLeftToChoose",1);
         this.SetInitialValue("m_hasTalkedToTheGrandSageForTheFirstTime",false);
         this.SetInitialValue("m_numOfSpentStars",0);
         this.SetInitialValue("_currSettingMinionID",0);
         this.SetInitialValue("m_areTutorialsOn",true);
         this.SetInitialValue("m_graphicsLevel",2);
         var _loc2_:int = 0;
         while(_loc2_ < this.m_starUpgradeAmounts.length)
         {
            this.SetInitialValue("m_starUpgradeAmounts",0,_loc2_);
            _loc2_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.m_currTrainerStarCounts.length)
         {
            _loc5_ = 0;
            while(_loc5_ < this.m_currTrainerStarCounts[_loc3_].length)
            {
               this.SetInitialValue("m_currTrainerStarCounts",0,_loc3_,_loc5_);
               this.SetInitialValue("m_bestTrainerStarCounts",0,_loc3_,_loc5_);
               this.SetInitialValue("m_hasBeatenTrainer",false,_loc3_,_loc5_);
               _loc5_++;
            }
            _loc3_++;
         }
         _loc2_ = 0;
         while(_loc2_ < Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + Singleton.staticData.NUM_OF_FLOORS_IN_THE_HARD_TOWER)
         {
            this.SetInitialValue("m_hasBeatenFloor",false,_loc2_);
            _loc2_++;
         }
         var _loc4_:int = 0;
         while(_loc4_ < 4)
         {
            this.SetInitialValue("m_animateNewFloorActive",false,_loc4_);
            _loc4_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this.m_hasTutorialsBeenSeen.length)
         {
            this.SetInitialValue("m_hasTutorialsBeenSeen",false,_loc3_);
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this.m_isMapUnlocked.length)
         {
            this.SetInitialValue("m_isMapUnlocked",false,_loc3_);
            _loc3_++;
         }
         _loc5_ = 0;
         while(_loc5_ < this.m_minionsOwned.length)
         {
            this.SetInitialValue("m_minionsOwned",false,_loc5_);
            this.SetInitialValue("m_minionsSeen",false,_loc5_);
            _loc5_++;
         }
         this.LoadGems();
         this.LoadMinions();
      }
      
      private function LoadGems() : void
      {
         this.m_ownedGems = new Vector.<OwnedGem>(150);
         var _loc1_:int = 0;
         while(_loc1_ < this.m_ownedGems.length)
         {
            if(this.m_sharedObject.data["gem" + _loc1_] != null && Boolean(this.m_sharedObject.data["gem" + _loc1_]))
            {
               this.m_ownedGems[_loc1_] = new OwnedGem();
               this.m_ownedGems[_loc1_].CreateGemFromSlot(_loc1_);
            }
            _loc1_++;
         }
      }
      
      private function LoadMinions() : void
      {
         this.m_ownedMinions = new Vector.<OwnedMinion>(200);
         var _loc1_:int = 0;
         while(_loc1_ < this.m_ownedMinions.length)
         {
            if(this.m_sharedObject.data["minion" + _loc1_] != null && Boolean(this.m_sharedObject.data["minion" + _loc1_]))
            {
               this.m_ownedMinions[_loc1_] = new OwnedMinion(Singleton.dynamicData.m_sharedObject.data["minion" + _loc1_ + "dexID"]);
               this.m_ownedMinions[_loc1_].CreateMinionFromSlot(_loc1_);
            }
            _loc1_++;
         }
      }
      
      public function LoadInitialData() : void
      {
         if(this.m_resetSaveData)
         {
            SharedObject.getLocal("TCrpgInitialData").clear();
         }
         this.m_sharedObject = SharedObject.getLocal("TCrpgInitialData");
         this.SetInitialValue("m_isSoundOn",true);
         this.SetInitialValue("m_isMusicOn",true);
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            this.SetInitialValue("m_characterNames","Temp" + _loc1_,_loc1_);
            this.SetInitialValue("m_totalMinions",0,_loc1_);
            this.SetInitialValue("m_totalSageSeals",0,_loc1_);
            this.SetInitialValue("m_totalStars",0,_loc1_);
            this.SetInitialValue("m_isSaveSlotInUse",false,_loc1_);
            this.SetInitialValue("m_isMaleMetaData",true,_loc1_);
            _loc1_++;
         }
      }
      
      private function SetInitialValue(param1:String, param2:Object, param3:int = -99, param4:int = -99) : void
      {
         if(param3 == -99)
         {
            if(this.m_sharedObject.data[param1] != null)
            {
               this[param1] = this.m_sharedObject.data[param1];
            }
            else
            {
               this[param1] = param2;
               this.m_sharedObject.data[param1] = param2;
            }
         }
         else if(param4 == -99)
         {
            if(this.m_sharedObject.data[param1 + param3] != null)
            {
               this[param1][param3] = this.m_sharedObject.data[param1 + param3];
            }
            else
            {
               this[param1][param3] = param2;
               this.m_sharedObject.data[param1 + param3] = param2;
            }
         }
         else if(this.m_sharedObject.data[param1 + param3 + "slot" + param4] != null)
         {
            this[param1][param3][param4] = this.m_sharedObject.data[param1 + param3 + "slot" + param4];
         }
         else
         {
            this[param1][param3][param4] = param2;
            this.m_sharedObject.data[param1 + param3 + "slot" + param4] = param2;
         }
      }
      
      private function SaveValue(param1:String, param2:int = -99, param3:int = -99) : void
      {
         if(param2 == -99)
         {
            this.m_sharedObject.data[param1] = this[param1];
         }
         else if(param3 == -99)
         {
            this.m_sharedObject.data[param1 + param2] = this[param1][param2];
         }
         else
         {
            this.m_sharedObject.data[param1 + param2 + "slot" + param3] = this[param1][param2][param3];
         }
      }
   }
}
