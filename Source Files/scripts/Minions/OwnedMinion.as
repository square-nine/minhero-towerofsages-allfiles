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
         super();
         this.m_minionDexID = param1;
         this.m_isPlayersMinion = param2;
         this.m_currentExp = 1;
         this.m_isExtraBattleModMinion = false;
         this.m_minionName = Singleton.staticData.GetBaseMinion(this.m_minionDexID).m_baseMinionName;
         this.m_IVs = new Vector.<int>(5);
         this._minionID = Singleton.dynamicData.GetNextSettingMinionID();
         this._allMoves = new Vector.<int>();
         var _loc3_:int = 0;
         while(_loc3_ < 25)
         {
            this._allMoves.push(Singleton.staticData.NO_MOVE);
            _loc3_++;
         }
         this.m_currStatStages = new Vector.<int>(5);
         var _loc4_:int = 0;
         while(_loc4_ < this.m_currStatStages.length)
         {
            this.m_currStatStages[_loc4_] = 0;
            _loc4_++;
         }
         this.m_gems = new Vector.<OwnedGem>(4);
         this.m_trainedMove = Singleton.staticData.NO_MOVE;
         this.AddDefaultMoves();
         this.m_statBonus = int(Math.random() * 5);
         this.CalculateCurrStats();
         this.m_currHealth = this.m_currHealthStat;
         this.m_currEnergy = this.m_currEnergyStat;
         this.m_currExhaust = 0;
         this.m_trainerType = TrainerType.NO_TRAINER;
         this.SetupForCombat();
      }
      
      public function get m_baseMinion() : BaseMinion
      {
         return Singleton.staticData.GetBaseMinion(this.m_minionDexID);
      }
      
      public function AddDefaultMoves() : void
      {
         var _loc1_:BaseMinion = Singleton.staticData.GetBaseMinion(this.m_minionDexID);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.m_startingMoves.length)
         {
            this.AddMove(_loc1_.m_startingMoves[_loc2_]);
            _loc2_++;
         }
      }
      
      public function AddMove(param1:int) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._allMoves.length)
         {
            if(this._allMoves[_loc2_] == Singleton.staticData.NO_MOVE)
            {
               this._allMoves[_loc2_] = param1;
               return;
            }
            _loc2_++;
         }
      }
      
      public function IsMoveOwned(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._allMoves.length)
         {
            if(this._allMoves[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function ClearBuffsAndDebuffs() : void
      {
         this.m_currDOTsAndHOTs = new Vector.<int>();
         this.m_turnsDOTsAndHOTsHaveBeenIn = new Vector.<int>();
         this.m_minionForDOTsAndHOTs = new Vector.<OwnedMinion>();
         var _loc1_:int = 0;
         while(_loc1_ < this.m_currStatStages.length)
         {
            this.m_currStatStages[_loc1_] = 0;
            _loc1_++;
         }
         this.m_isFrozen = false;
         this.m_turnsFrozen = 0;
         this.m_isStunned = false;
         var _loc2_:BattleScreenMinionVisual = Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(this);
         if(_loc2_ != null && _loc2_.m_minionSprite != null)
         {
            TweenLite.to(_loc2_.m_minionSprite,1,{"removeTint":true});
            TweenLite.to(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionTopLayerVisualObjectFor(this).m_minionSprite,1,{"removeTint":true});
         }
      }
      
      public function SetupForCombat() : void
      {
         this.m_currDOTsAndHOTs = new Vector.<int>();
         this.m_turnsDOTsAndHOTsHaveBeenIn = new Vector.<int>();
         this.m_minionForDOTsAndHOTs = new Vector.<OwnedMinion>();
         this.m_currMovesOnCoolDown = new Vector.<int>();
         this.m_turnsMovesOnCoolDownHaveBeenIn = new Vector.<int>();
         var _loc1_:int = 0;
         while(_loc1_ < this.m_currStatStages.length)
         {
            this.m_currStatStages[_loc1_] = 0;
            _loc1_++;
         }
         this.m_currExhaust = 0;
         this.m_currChargeMove = null;
         this.m_chargeAlliesItHits = null;
         this.m_chargeEnemiesItHits = null;
         this.m_currCharge = 0;
         this.m_isFrozen = false;
         this.m_turnsFrozen = 0;
         this.m_isStunned = false;
         this._currShield = 0;
         this._maxShield = 0;
         this.m_isBattleModShieldActive = false;
      }
      
      public function AddToStatStages(param1:int, param2:int) : void
      {
         this.m_currStatStages[param1] += param2;
      }
      
      public function AddMoveToCoolDowns(param1:int) : void
      {
         this.m_currMovesOnCoolDown.push(param1);
         this.m_turnsMovesOnCoolDownHaveBeenIn.push(0);
      }
      
      public function GetRatioOfTurnsLeftOnCoolDown(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.m_currMovesOnCoolDown.length)
         {
            if(this.m_currMovesOnCoolDown[_loc2_] == param1)
            {
               return this.m_turnsMovesOnCoolDownHaveBeenIn[_loc2_] / (Singleton.staticData.GetBaseMinionMove(this.m_currMovesOnCoolDown[_loc2_]).m_moveCoolDownTime + 1);
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function TickTurn() : void
      {
         var _loc1_:int = int(this.m_currMovesOnCoolDown.length - 1);
         while(_loc1_ > -1)
         {
            if(this.m_turnsMovesOnCoolDownHaveBeenIn[_loc1_] == Singleton.staticData.GetBaseMinionMove(this.m_currMovesOnCoolDown[_loc1_]).m_moveCoolDownTime)
            {
               this.m_turnsMovesOnCoolDownHaveBeenIn.splice(_loc1_,1);
               this.m_currMovesOnCoolDown.splice(_loc1_,1);
            }
            else
            {
               ++this.m_turnsMovesOnCoolDownHaveBeenIn[_loc1_];
            }
            _loc1_--;
         }
      }
      
      public function IsHotOrDotActive(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.m_currDOTsAndHOTs.length)
         {
            if(this.m_currDOTsAndHOTs[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function AddDotOrHot(param1:int, param2:OwnedMinion) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.m_currDOTsAndHOTs.length)
         {
            if(this.m_currDOTsAndHOTs[_loc3_] == param1)
            {
               this.m_turnsDOTsAndHOTsHaveBeenIn[_loc3_] = 0;
               this.m_minionForDOTsAndHOTs[_loc3_] = param2;
               return;
            }
            _loc3_++;
         }
         this.m_currDOTsAndHOTs.push(param1);
         this.m_turnsDOTsAndHOTsHaveBeenIn.push(0);
         this.m_minionForDOTsAndHOTs.push(param2);
      }
      
      public function TickDotsAndHots() : Number
      {
         var _loc3_:BaseMinionMove = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc8_:BaseVisualMove = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc4_:Number = 1;
         var _loc7_:int = int(this.m_currDOTsAndHOTs.length - 1);
         while(_loc7_ > -1)
         {
            _loc3_ = Singleton.staticData.GetBaseMinionMove(this.m_currDOTsAndHOTs[_loc7_]);
            if(_loc3_.m_DOTDamage > 0 || _loc3_.m_additionalDOTDamage > 0)
            {
               _loc5_ = Singleton.staticData.CalculateDamageOrHealingAmount(_loc3_.m_DOTDamage,_loc3_.m_additionalDOTDamage,this.m_minionForDOTsAndHOTs[_loc7_].m_maxAttackStat,this.m_minionForDOTsAndHOTs[_loc7_].m_currLevel);
               _loc4_ = (_loc4_ = (_loc4_ = 1) * Singleton.staticData.CalculateEffectivenessModifier(_loc3_.m_moveType,this.m_baseMinion.m_minionType1)) * Singleton.staticData.CalculateEffectivenessModifier(_loc3_.m_moveType,this.m_baseMinion.m_minionType2);
               _loc5_ *= _loc4_;
               _loc2_ -= _loc5_;
               (_loc8_ = Singleton.staticData.GetVisualMinionMove(_loc3_.m_visualDOTMoveID)).CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,_loc3_,this.m_minionForDOTsAndHOTs[_loc7_],this);
               _loc8_.PlayMove();
               if(_loc8_.m_moveTime > _loc1_)
               {
                  _loc1_ = _loc8_.m_moveTime;
               }
            }
            if(_loc3_.m_HOTHealing > 0 || _loc3_.m_additionalHOTHealing > 0)
            {
               _loc6_ = Singleton.staticData.CalculateDamageOrHealingAmount(_loc3_.m_HOTHealing,_loc3_.m_additionalHOTHealing,this.m_minionForDOTsAndHOTs[_loc7_].m_maxHealingStat,this.m_minionForDOTsAndHOTs[_loc7_].m_currLevel);
               _loc4_ = (_loc4_ = (_loc4_ = 1) * Singleton.staticData.CalculateHealingEffectivenessModifier(_loc3_.m_moveType,this.m_baseMinion.m_minionType1)) * Singleton.staticData.CalculateHealingEffectivenessModifier(_loc3_.m_moveType,this.m_baseMinion.m_minionType2);
               _loc6_ *= _loc4_;
               _loc2_ += _loc6_;
               (_loc8_ = Singleton.staticData.GetVisualMinionMove(_loc3_.m_visualDOTMoveID)).CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,_loc3_,this.m_minionForDOTsAndHOTs[_loc7_],this);
               _loc8_.PlayMove();
               if(_loc8_.m_moveTime > _loc1_)
               {
                  _loc1_ = _loc8_.m_moveTime;
               }
            }
            ++this.m_turnsDOTsAndHOTsHaveBeenIn[_loc7_];
            if(this.m_turnsDOTsAndHOTsHaveBeenIn[_loc7_] >= _loc3_.m_overTimeTurnsActive)
            {
               this.m_currDOTsAndHOTs.splice(_loc7_,1);
               this.m_turnsDOTsAndHOTsHaveBeenIn.splice(_loc7_,1);
               this.m_minionForDOTsAndHOTs.splice(_loc7_,1);
            }
            _loc7_--;
         }
         this.AddToHealth(_loc2_);
         return _loc1_;
      }
      
      public function ResetMoves() : void
      {
         this._allMoves = new Vector.<int>();
         var _loc1_:int = 0;
         while(_loc1_ < 25)
         {
            this._allMoves.push(Singleton.staticData.NO_MOVE);
            _loc1_++;
         }
         this.AddDefaultMoves();
      }
      
      public function GetRandomIVs() : void
      {
         this.m_IVs[StatType.STAT_HEALTH] = Math.random() * this.m_maxNumOfIVs;
         this.m_IVs[StatType.STAT_ENERGY] = Math.random() * this.m_maxNumOfIVs;
         this.m_IVs[StatType.STAT_ATTACK] = Math.random() * this.m_maxNumOfIVs;
         this.m_IVs[StatType.STAT_HEALING] = Math.random() * this.m_maxNumOfIVs;
         this.m_IVs[StatType.STAT_SPEED] = Math.random() * this.m_maxNumOfIVs;
      }
      
      public function CalculateCurrStats() : void
      {
         this._currHealthStat = this.CalculateHealthStat(this.m_currLevel);
         this._currEnergyStat = this.CalculateEnergyStat(this.m_currLevel);
         this._currAttackStat = this.CalculateAttackStat(this.m_currLevel);
         this._currHealingStat = this.CalculateHealingStat(this.m_currLevel);
         this._currSpeedStat = this.CalculateSpeedStat(this.m_currLevel);
      }
      
      public function CalculateHealthStat(param1:int) : int
      {
         var _loc2_:int = Singleton.staticData.GetBaseMinion(this.m_minionDexID).m_baseHealth;
         var _loc3_:Number = (this.m_IVs[StatType.STAT_HEALTH] + _loc2_) * param1;
         var _loc4_:Number = (_loc4_ = (_loc4_ = _loc3_ / this.GetHeathStatDivisor(param1) + this.m_baseHealth) + this.GetExtraStatFromGem(StatType.STAT_HEALTH)) * Singleton.staticData.GetStatStageModificationAmount(this.m_currStatStages[StatType.STAT_HEALTH]);
         if(this.m_statBonus == StatType.STAT_HEALTH)
         {
            _loc4_ *= 1.05;
         }
         _loc4_ *= this.GetPassiveIncreasePercentageForStat(StatType.STAT_HEALTH);
         if(this.m_isPlayersMinion)
         {
            _loc4_ *= 1 + Singleton.dynamicData.GetStarUpgradeAmount(StarUpgradeTypes.STAR_UPGRADE_HEALTH) * 0.02;
         }
         else
         {
            _loc4_ *= Singleton.staticData.GetEnemyStatBonusForCurrentFloor(StatType.STAT_HEALTH,this);
         }
         return _loc4_;
      }
      
      private function GetHeathStatDivisor(param1:int) : Number
      {
         var _loc2_:Number = 20;
         if(param1 > 14)
         {
            _loc2_ -= (param1 - 15) / 45 * 12;
         }
         if(_loc2_ < 10)
         {
            _loc2_ = 10;
         }
         return _loc2_;
      }
      
      public function CalculateEnergyStat(param1:int) : int
      {
         var _loc2_:int = Singleton.staticData.GetBaseMinion(this.m_minionDexID).m_baseEnergy;
         var _loc3_:Number = (this.m_IVs[StatType.STAT_ENERGY] + _loc2_) * param1;
         var _loc4_:Number = (_loc4_ = _loc3_ / this.m_statDivisor + this.m_baseHealth) + this.GetExtraStatFromGem(StatType.STAT_ENERGY);
         if(this.m_statBonus == StatType.STAT_ENERGY)
         {
            _loc4_ *= 1.05;
         }
         _loc4_ = (_loc4_ *= Singleton.staticData.GetStatStageModificationAmount(this.m_currStatStages[StatType.STAT_ENERGY])) * this.GetPassiveIncreasePercentageForStat(StatType.STAT_ENERGY);
         if(this.m_isPlayersMinion)
         {
            _loc4_ *= 1 + Singleton.dynamicData.GetStarUpgradeAmount(StarUpgradeTypes.STAR_UPGRADE_ENERGY) * 0.02;
         }
         else
         {
            _loc4_ *= Singleton.staticData.GetEnemyStatBonusForCurrentFloor(StatType.STAT_ENERGY,this);
         }
         return _loc4_ * 1.5;
      }
      
      public function CalculateAttackStat(param1:int) : int
      {
         var _loc2_:int = Singleton.staticData.GetBaseMinion(this.m_minionDexID).m_baseAttack;
         var _loc3_:Number = (this.m_IVs[StatType.STAT_ATTACK] + _loc2_) * param1;
         var _loc4_:Number = (_loc4_ = _loc3_ / this.m_statDivisor + this.m_baseStat) + this.GetExtraStatFromGem(StatType.STAT_ATTACK);
         if(this.m_statBonus == StatType.STAT_ATTACK)
         {
            _loc4_ *= 1.05;
         }
         _loc4_ = (_loc4_ *= Singleton.staticData.GetStatStageModificationAmount(this.m_currStatStages[StatType.STAT_ATTACK])) * this.GetPassiveIncreasePercentageForStat(StatType.STAT_ATTACK);
         if(this.m_isPlayersMinion)
         {
            _loc4_ *= 1 + Singleton.dynamicData.GetStarUpgradeAmount(StarUpgradeTypes.STAR_UPGRADE_ATTACK) * 0.02;
         }
         else
         {
            _loc4_ *= Singleton.staticData.GetEnemyStatBonusForCurrentFloor(StatType.STAT_ATTACK,this);
         }
         return _loc4_;
      }
      
      public function CalculateHealingStat(param1:int) : int
      {
         var _loc2_:int = Singleton.staticData.GetBaseMinion(this.m_minionDexID).m_baseHealing;
         var _loc3_:Number = (this.m_IVs[StatType.STAT_HEALING] + _loc2_) * param1;
         var _loc4_:Number = (_loc4_ = _loc3_ / this.m_statDivisor + this.m_baseStat) + this.GetExtraStatFromGem(StatType.STAT_HEALING);
         if(this.m_statBonus == StatType.STAT_HEALING)
         {
            _loc4_ *= 1.05;
         }
         _loc4_ = (_loc4_ *= Singleton.staticData.GetStatStageModificationAmount(this.m_currStatStages[StatType.STAT_HEALING])) * this.GetPassiveIncreasePercentageForStat(StatType.STAT_HEALING);
         if(this.m_isPlayersMinion)
         {
            _loc4_ *= 1 + Singleton.dynamicData.GetStarUpgradeAmount(StarUpgradeTypes.STAR_UPGRADE_HEALING) * 0.04;
         }
         else
         {
            _loc4_ *= Singleton.staticData.GetEnemyStatBonusForCurrentFloor(StatType.STAT_HEALING,this);
         }
         return _loc4_;
      }
      
      public function CalculateSpeedStat(param1:int) : int
      {
         var _loc2_:int = Singleton.staticData.GetBaseMinion(this.m_minionDexID).m_baseSpeed;
         var _loc3_:Number = (this.m_IVs[StatType.STAT_SPEED] + _loc2_) * param1;
         var _loc4_:Number = (_loc4_ = _loc3_ / this.m_statDivisor + this.m_baseStat) + this.GetExtraStatFromGem(StatType.STAT_SPEED);
         if(this.m_statBonus == StatType.STAT_SPEED)
         {
            _loc4_ *= 1.05;
         }
         _loc4_ = (_loc4_ *= Singleton.staticData.GetStatStageModificationAmount(this.m_currStatStages[StatType.STAT_SPEED])) * this.GetPassiveIncreasePercentageForStat(StatType.STAT_SPEED);
         if(this.m_isPlayersMinion)
         {
            _loc4_ *= 1 + Singleton.dynamicData.GetStarUpgradeAmount(StarUpgradeTypes.STAR_UPGRADE_SPEED) * 0.02;
         }
         else
         {
            _loc4_ *= Singleton.staticData.GetEnemyStatBonusForCurrentFloor(StatType.STAT_SPEED,this);
         }
         return _loc4_;
      }
      
      private function GetPassiveIncreasePercentageForStat(param1:int) : Number
      {
         var _loc3_:BaseMinionMove = null;
         var _loc5_:Vector.<int> = null;
         var _loc2_:Number = 1;
         var _loc4_:Vector.<int> = this.m_allMovesJustHighestTier;
         if(this.m_isPlayersMinion)
         {
            _loc5_ = Singleton.dynamicData.GetGlobalPassiveMovesForPlayer();
         }
         else
         {
            _loc5_ = Singleton.dynamicData.GetGlobalPassiveMovesForOpponet();
         }
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_.length)
         {
            if(_loc4_[_loc6_] != Singleton.staticData.NO_MOVE)
            {
               _loc3_ = Singleton.staticData.GetBaseMinionMove(_loc4_[_loc6_]);
               if(_loc3_.m_isPassive && _loc3_.m_statTypesToBuff.length > 0)
               {
                  if(_loc3_.m_statTypesToBuff[0] == param1)
                  {
                     _loc2_ += _loc3_.m_amountOfStatTypeToBuffPercentage / 100;
                  }
               }
            }
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc5_.length)
         {
            if(_loc5_[_loc6_] != Singleton.staticData.NO_MOVE)
            {
               _loc3_ = Singleton.staticData.GetBaseMinionMove(_loc5_[_loc6_]);
               if(_loc3_.m_isGlobalPassive && _loc3_.m_statTypesToBuff.length > 0)
               {
                  if(_loc3_.m_statTypesToBuff[0] == param1)
                  {
                     _loc2_ += _loc3_.m_amountOfStatTypeToBuffPercentage / 100;
                  }
               }
            }
            _loc6_++;
         }
         return _loc2_;
      }
      
      public function SetLevel(param1:int) : void
      {
         this.m_currentExp = param1 * 1000;
      }
      
      public function ReFillHealthAndEnergy() : void
      {
         this.ClearBuffsAndDebuffs();
         this.CalculateCurrStats();
         this.m_currHealth = this.m_currHealthStat;
         this.m_currEnergy = this.m_currEnergyStat;
      }
      
      public function AddShield(param1:int) : void
      {
         if(param1 > this._currShield)
         {
            this._currShield = param1;
            this._maxShield = param1;
         }
      }
      
      public function AddToGems(param1:OwnedGem) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.m_gems.length)
         {
            if(this.m_gems[_loc2_] == null)
            {
               this.m_gems[_loc2_] = param1;
               return;
            }
            _loc2_++;
         }
      }
      
      public function GetExtraStatFromGem(param1:int) : int
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this.m_gems.length)
         {
            if(this.m_gems[_loc3_] != null)
            {
               _loc2_ += this.m_gems[_loc3_].GetExtraStat(param1);
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function SetGemAt(param1:OwnedGem, param2:int) : void
      {
         this.m_gems[param2] = param1;
      }
      
      public function GetGemAt(param1:int) : OwnedGem
      {
         return this.m_gems[param1];
      }
      
      public function RemoveGemAt(param1:int) : void
      {
         this.m_gems[param1] = null;
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
         if(this._currShield == 0 || this._maxShield == 0)
         {
            return 0;
         }
         return this._currShield / this._maxShield;
      }
      
      public function get m_currReflectDamagePercentage() : Number
      {
         var _loc2_:BaseMinionMove = null;
         var _loc5_:Vector.<int> = null;
         var _loc1_:Number = 0;
         var _loc3_:int = int(this.m_currDOTsAndHOTs.length - 1);
         while(_loc3_ > -1)
         {
            _loc2_ = Singleton.staticData.GetBaseMinionMove(this.m_currDOTsAndHOTs[_loc3_]);
            _loc1_ += _loc2_.m_setReflectDamageAmount / 100;
            _loc3_--;
         }
         var _loc4_:Vector.<int> = this.m_allMovesJustHighestTier;
         if(this.m_isPlayersMinion)
         {
            _loc5_ = Singleton.dynamicData.GetGlobalPassiveMovesForPlayer();
         }
         else
         {
            _loc5_ = Singleton.dynamicData.GetGlobalPassiveMovesForOpponet();
         }
         _loc3_ = 0;
         while(_loc3_ < _loc4_.length)
         {
            if(_loc4_[_loc3_] != Singleton.staticData.NO_MOVE)
            {
               _loc2_ = Singleton.staticData.GetBaseMinionMove(_loc4_[_loc3_]);
               if(_loc2_.m_isPassive && _loc2_.m_setReflectDamageAmount != 0)
               {
                  _loc1_ += _loc2_.m_setReflectDamageAmount / 100;
               }
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < _loc5_.length)
         {
            if(_loc5_[_loc3_] != Singleton.staticData.NO_MOVE)
            {
               _loc2_ = Singleton.staticData.GetBaseMinionMove(_loc5_[_loc3_]);
               if(_loc2_.m_isGlobalPassive && _loc2_.m_setReflectDamageAmount != 0)
               {
                  _loc1_ += _loc2_.m_setReflectDamageAmount / 100;
               }
            }
            _loc3_++;
         }
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return _loc1_;
      }
      
      public function get m_currRedirectDamage() : int
      {
         var _loc2_:BaseMinionMove = null;
         if(this.m_isBattleModShieldActive)
         {
            return 0;
         }
         var _loc1_:Number = 0;
         var _loc3_:Vector.<int> = this.m_allMovesJustHighestTier;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length)
         {
            if(_loc3_[_loc4_] != Singleton.staticData.NO_MOVE)
            {
               _loc2_ = Singleton.staticData.GetBaseMinionMove(_loc3_[_loc4_]);
               if((_loc2_.m_isGlobalPassive || _loc2_.m_isPassive) && _loc2_.m_percentageOfDamageThatGetsRedirectedAtMinion != 0)
               {
                  _loc1_ += _loc2_.m_percentageOfDamageThatGetsRedirectedAtMinion;
               }
            }
            _loc4_++;
         }
         return _loc1_;
      }
      
      public function get m_currLevel() : int
      {
         var _loc1_:int = this.m_currentExp / 1000;
         if(_loc1_ < 60)
         {
            return _loc1_;
         }
         return 60;
      }
      
      public function get m_minionID() : int
      {
         return this._minionID;
      }
      
      public function get m_currExpPercentageToNextLevel() : Number
      {
         var _loc1_:int = (this.m_currLevel + 1) * 1000;
         var _loc2_:int = this.m_currLevel * 1000;
         var _loc3_:int = _loc1_ - _loc2_;
         var _loc4_:int;
         return (_loc4_ = this.m_currentExp - _loc2_) / _loc3_;
      }
      
      public function get m_allMoves() : Vector.<int>
      {
         return this._allMoves;
      }
      
      public function get m_allMovesJustHighestTier() : Vector.<int>
      {
         var _loc2_:BaseMinionMove = null;
         var _loc3_:BaseMinionMove = null;
         var _loc4_:Boolean = false;
         var _loc6_:int = 0;
         var _loc1_:Vector.<int> = new Vector.<int>();
         var _loc5_:int = 0;
         while(_loc5_ < this._allMoves.length)
         {
            if(this._allMoves[_loc5_] != Singleton.staticData.NO_MOVE)
            {
               _loc2_ = Singleton.staticData.GetBaseMinionMove(this._allMoves[_loc5_]);
               _loc4_ = false;
               _loc6_ = 0;
               while(_loc6_ < _loc1_.length)
               {
                  _loc3_ = Singleton.staticData.GetBaseMinionMove(_loc1_[_loc6_]);
                  if(_loc2_.m_moveClass == _loc3_.m_moveClass)
                  {
                     _loc4_ = true;
                     if(_loc2_.m_moveTier > _loc3_.m_moveTier)
                     {
                        _loc1_[_loc6_] = _loc2_.m_moveID;
                     }
                  }
                  _loc6_++;
               }
               if(!_loc4_)
               {
                  _loc1_.push(this._allMoves[_loc5_]);
               }
            }
            _loc5_++;
         }
         return _loc1_;
      }
      
      public function get m_allMovesJustHighestTier_asActualMoves() : Vector.<BaseMinionMove>
      {
         var _loc2_:BaseMinionMove = null;
         var _loc3_:BaseMinionMove = null;
         var _loc4_:Boolean = false;
         var _loc6_:int = 0;
         var _loc1_:Vector.<BaseMinionMove> = new Vector.<BaseMinionMove>();
         var _loc5_:int = 0;
         while(_loc5_ < this._allMoves.length)
         {
            if(this._allMoves[_loc5_] != Singleton.staticData.NO_MOVE)
            {
               _loc2_ = Singleton.staticData.GetBaseMinionMove(this._allMoves[_loc5_]);
               _loc4_ = false;
               _loc6_ = 0;
               while(_loc6_ < _loc1_.length)
               {
                  _loc3_ = _loc1_[_loc6_];
                  if(_loc2_.m_moveClass == _loc3_.m_moveClass)
                  {
                     _loc4_ = true;
                     if(_loc2_.m_moveTier > _loc3_.m_moveTier)
                     {
                        _loc1_[_loc6_] = _loc2_;
                     }
                  }
                  _loc6_++;
               }
               if(!_loc4_)
               {
                  _loc1_.push(Singleton.staticData.GetBaseMinionMove(this._allMoves[_loc5_]));
               }
            }
            _loc5_++;
         }
         return _loc1_;
      }
      
      public function get m_activeMoves() : Vector.<int>
      {
         var _loc2_:BaseMinionMove = null;
         var _loc1_:Vector.<int> = this.m_allMovesJustHighestTier;
         var _loc3_:int = int(_loc1_.length - 1);
         while(_loc3_ > -1)
         {
            _loc2_ = Singleton.staticData.GetBaseMinionMove(_loc1_[_loc3_]);
            if(_loc2_.m_isPassive || _loc2_.m_isGlobalPassive)
            {
               _loc1_.splice(_loc1_.indexOf(_loc1_[_loc3_]),1);
            }
            _loc3_--;
         }
         return _loc1_;
      }
      
      public function get m_globalMoves() : Vector.<int>
      {
         var _loc1_:BaseMinionMove = null;
         var _loc2_:Vector.<int> = this.m_allMovesJustHighestTier;
         var _loc3_:Vector.<int> = new Vector.<int>();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            if(_loc2_[_loc4_] != Singleton.staticData.NO_MOVE)
            {
               _loc1_ = Singleton.staticData.GetBaseMinionMove(_loc2_[_loc4_]);
               if(_loc1_.m_isGlobalPassive)
               {
                  _loc3_.push(_loc2_[_loc4_]);
               }
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get m_maxTalentPoints() : int
      {
         var _loc1_:Number = this.m_currLevel;
         if(_loc1_ < 31)
         {
            _loc1_ -= 3;
            _loc1_ /= 3;
         }
         else
         {
            _loc1_ -= 30;
            _loc1_ /= 4;
            _loc1_ += 27 / 3;
         }
         if(this.m_currLevel == 60)
         {
            _loc1_++;
         }
         return _loc1_;
      }
      
      public function IsTalentPointEarnedOnLevel(param1:int) : Boolean
      {
         if(param1 == 3)
         {
            return false;
         }
         var _loc2_:Number = param1;
         if(_loc2_ < 31)
         {
            _loc2_ -= 3;
            _loc2_ /= 3;
         }
         else
         {
            _loc2_ -= 30;
            _loc2_ /= 4;
            _loc2_ += 27 / 3;
         }
         if(param1 == 60)
         {
            return true;
         }
         return !this.CheckForDecimal(_loc2_);
      }
      
      private function CheckForDecimal(param1:Number) : Boolean
      {
         return !!(param1 % 1) ? true : false;
      }
      
      public function get m_availableTalentPoints() : int
      {
         var _loc1_:Number = this._allMoves.length;
         var _loc2_:int = 0;
         while(_loc2_ < this._allMoves.length)
         {
            if(this._allMoves[_loc2_] == Singleton.staticData.NO_MOVE)
            {
               _loc1_ = _loc2_;
               break;
            }
            _loc2_++;
         }
         var _loc3_:BaseMinion = Singleton.staticData.GetBaseMinion(this.m_minionDexID);
         _loc1_ -= _loc3_.m_startingMoves.length;
         if(this.m_trainedMove != Singleton.staticData.NO_MOVE)
         {
            _loc1_--;
         }
         return this.m_maxTalentPoints - _loc1_;
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
         var _loc2_:BaseMinionMove = null;
         var _loc4_:Vector.<int> = null;
         var _loc1_:Number = 6.25;
         var _loc3_:Vector.<int> = this.m_allMovesJustHighestTier;
         if(this.m_isPlayersMinion)
         {
            _loc4_ = Singleton.dynamicData.GetGlobalPassiveMovesForPlayer();
         }
         else
         {
            _loc4_ = Singleton.dynamicData.GetGlobalPassiveMovesForOpponet();
         }
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.length)
         {
            if(_loc3_[_loc5_] != Singleton.staticData.NO_MOVE)
            {
               _loc2_ = Singleton.staticData.GetBaseMinionMove(_loc3_[_loc5_]);
               if(_loc2_.m_isPassive && _loc2_.m_increasedExtraCritChance != 0)
               {
                  _loc1_ += _loc2_.m_increasedExtraCritChance;
               }
            }
            _loc5_++;
         }
         _loc5_ = 0;
         while(_loc5_ < _loc4_.length)
         {
            if(_loc4_[_loc5_] != Singleton.staticData.NO_MOVE)
            {
               _loc2_ = Singleton.staticData.GetBaseMinionMove(_loc4_[_loc5_]);
               if(_loc2_.m_isGlobalPassive && _loc2_.m_increasedExtraCritChance != 0)
               {
                  _loc1_ += _loc2_.m_increasedExtraCritChance;
               }
            }
            _loc5_++;
         }
         return _loc1_;
      }
      
      public function get m_currHealth() : int
      {
         return this._currHealth;
      }
      
      public function set m_currHealth(param1:int) : void
      {
         this._currHealth = param1;
         if(this._currHealth > this.m_currHealthStat)
         {
            this._currHealth = this.m_currHealthStat;
         }
      }
      
      public function AddToHealth(param1:int) : void
      {
         if(param1 < 0 && this.m_isBattleModShieldActive)
         {
            return;
         }
         var _loc2_:int = param1;
         if(this._currShield > 0 && param1 < 0)
         {
            this._currShield += _loc2_;
            if(this._currShield > 0)
            {
               _loc2_ = 0;
            }
            else
            {
               _loc2_ = this._currShield;
            }
         }
         this.m_currHealth += _loc2_;
      }
      
      public function get m_currEnergy() : int
      {
         if(this._currEnergy > this.m_currEnergyStat)
         {
            this._currEnergy = this.m_currEnergyStat;
         }
         return this._currEnergy;
      }
      
      public function set m_currEnergy(param1:int) : void
      {
         this._currEnergy = param1;
         if(this._currEnergy > this.m_currEnergyStat)
         {
            this._currEnergy = this.m_currEnergyStat;
         }
      }
      
      public function get m_currSpecialization() : int
      {
         if(this.IsMoveOwned(this.m_baseMinion.m_spealizationMoves[1]))
         {
            return 1;
         }
         if(this.IsMoveOwned(this.m_baseMinion.m_spealizationMoves[2]))
         {
            return 2;
         }
         return 0;
      }
      
      public function get m_currArmorModRate() : Number
      {
         var _loc2_:BaseMinionMove = null;
         var _loc5_:Vector.<int> = null;
         var _loc1_:Number = 1;
         var _loc3_:int = int(this.m_currDOTsAndHOTs.length - 1);
         while(_loc3_ > -1)
         {
            _loc2_ = Singleton.staticData.GetBaseMinionMove(this.m_currDOTsAndHOTs[_loc3_]);
            _loc1_ -= _loc2_.m_armor / 100;
            _loc3_--;
         }
         var _loc4_:Vector.<int> = this.m_allMovesJustHighestTier;
         if(this.m_isPlayersMinion)
         {
            _loc5_ = Singleton.dynamicData.GetGlobalPassiveMovesForPlayer();
         }
         else
         {
            _loc5_ = Singleton.dynamicData.GetGlobalPassiveMovesForOpponet();
         }
         _loc3_ = 0;
         while(_loc3_ < _loc4_.length)
         {
            if(_loc4_[_loc3_] != Singleton.staticData.NO_MOVE)
            {
               _loc2_ = Singleton.staticData.GetBaseMinionMove(_loc4_[_loc3_]);
               if(_loc2_.m_isPassive && _loc2_.m_armor != 0)
               {
                  _loc1_ -= _loc2_.m_armor / 100;
               }
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < _loc5_.length)
         {
            if(_loc5_[_loc3_] != Singleton.staticData.NO_MOVE)
            {
               _loc2_ = Singleton.staticData.GetBaseMinionMove(_loc5_[_loc3_]);
               if(_loc2_.m_isGlobalPassive && _loc2_.m_armor != 0)
               {
                  _loc1_ -= _loc2_.m_armor / 100;
               }
            }
            _loc3_++;
         }
         if(_loc1_ < 0.05)
         {
            _loc1_ = 0.05;
         }
         else if(_loc1_ > 2)
         {
            _loc1_ = 2;
         }
         return _loc1_;
      }
      
      public function SaveMinionAtSlot(param1:int) : void
      {
         Singleton.dynamicData.m_sharedObject.data["minion" + param1] = true;
         Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "dexID"] = this.m_minionDexID;
         Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "name"] = this.m_minionName;
         Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "exp"] = this.m_currentExp;
         Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "statBonus"] = this.m_statBonus;
         var _loc2_:int = 0;
         while(_loc2_ < this._allMoves.length)
         {
            Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "move" + _loc2_] = this._allMoves[_loc2_];
            _loc2_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.m_gems.length)
         {
            if(this.m_gems[_loc3_] != null)
            {
               Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "gem" + _loc3_] = true;
               this.m_gems[_loc3_].SaveGemAtSlot(_loc3_,"minion" + param1);
            }
            else
            {
               Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "gem" + _loc3_] = false;
            }
            _loc3_++;
         }
      }
      
      public function CreateMinionFromSlot(param1:int) : void
      {
         this.m_minionDexID = Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "dexID"];
         this.m_minionName = Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "name"];
         this.m_currentExp = Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "exp"];
         this.m_statBonus = Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "statBonus"];
         var _loc2_:int = 0;
         while(_loc2_ < this._allMoves.length)
         {
            this._allMoves[_loc2_] = Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "move" + _loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.m_gems.length)
         {
            if(Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "gem" + _loc2_] != null && Boolean(Singleton.dynamicData.m_sharedObject.data["minion" + param1 + "gem" + _loc2_]))
            {
               this.m_gems[_loc2_] = new OwnedGem();
               this.m_gems[_loc2_].CreateGemFromSlot(_loc2_,"minion" + param1);
            }
            _loc2_++;
         }
      }
   }
}
