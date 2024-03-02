package BattleSystems.Other
{
   import BattleSystems.Visuals.VisualMoves.BaseStatModifyMove;
   import BattleSystems.Visuals.VisualMoves.BaseVisualMove;
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import States.MinionDexID;
   import States.MinionVisualMoveID;
   import States.StatType;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   
   public class BaseMoveSystem
   {
       
      
      public var m_currMove:BaseMinionMove;
      
      public var m_currMinion:OwnedMinion;
      
      protected var m_alliesItHits:Vector.<OwnedMinion>;
      
      protected var m_enemiesItHits:Vector.<OwnedMinion>;
      
      protected var m_isPlayerMoveSystem:Boolean;
      
      protected var m_applyBuffChance:int;
      
      protected var m_applyMissChance:int;
      
      protected var m_stunChance:int;
      
      protected var m_freezeChance:int;
      
      public function BaseMoveSystem()
      {
         super();
         this.Reset();
      }
      
      public function Reset() : void
      {
         this.m_currMove = null;
         this.m_currMinion = null;
         this.m_alliesItHits = new Vector.<OwnedMinion>();
         this.m_enemiesItHits = new Vector.<OwnedMinion>();
      }
      
      public function AddToAlliesItHits(param1:OwnedMinion) : void
      {
         var _loc3_:int = 0;
         if(this.m_alliesItHits.indexOf(param1) == -1)
         {
            this.m_alliesItHits.push(param1);
         }
         var _loc2_:int = 0;
         if(this.m_isPlayerMoveSystem)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               if(Singleton.dynamicData.GetOwnedMinionAt(_loc3_) != null && Singleton.dynamicData.GetOwnedMinionAt(_loc3_).m_currHealth > 0)
               {
                  _loc2_++;
               }
               _loc3_++;
            }
         }
         else
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               if(Singleton.dynamicData.m_opponentsMinions[_loc3_] != null && Singleton.dynamicData.m_opponentsMinions[_loc3_].m_currHealth > 0)
               {
                  _loc2_++;
               }
               _loc3_++;
            }
         }
         if(this.m_currMove.m_alliesItHits == this.m_alliesItHits.length || this.m_alliesItHits.length == _loc2_)
         {
            if(this.m_currMove.m_chargeTime > 0 && this.m_currMinion.m_currCharge != -99)
            {
               this.m_currMinion.m_currChargeMove = this.m_currMove;
               this.m_currMinion.m_chargeAlliesItHits = this.m_alliesItHits;
               this.m_currMinion.m_chargeEnemiesItHits = this.m_enemiesItHits;
               this.m_currMinion.m_currCharge = 1;
               this.QueueUpChargeAnimation();
               Singleton.utility.m_screenControllers.m_battleScreen.StartQueuedMoves();
            }
            else
            {
               Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.m_collList.dispose();
               this.LoadUpTheQueueAndPlayMoves();
            }
            Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.TurnOffTopLayerMinions();
         }
      }
      
      public function RemoveFromAlliesItHits(param1:OwnedMinion) : void
      {
         this.m_alliesItHits.splice(this.m_alliesItHits.indexOf(param1),1);
      }
      
      public function AddToEnemiesItHits(param1:OwnedMinion) : void
      {
         var _loc3_:int = 0;
         if(this.m_enemiesItHits.indexOf(param1) == -1)
         {
            this.m_enemiesItHits.push(param1);
         }
         var _loc2_:int = 0;
         if(this.m_isPlayerMoveSystem)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               if(Singleton.dynamicData.m_opponentsMinions[_loc3_] != null && Singleton.dynamicData.m_opponentsMinions[_loc3_].m_currHealth > 0 && !Singleton.dynamicData.m_opponentsMinions[_loc3_].m_isBattleModShieldActive)
               {
                  _loc2_++;
               }
               _loc3_++;
            }
         }
         else
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               if(Singleton.dynamicData.GetOwnedMinionAt(_loc3_) != null && Singleton.dynamicData.GetOwnedMinionAt(_loc3_).m_currHealth > 0 && !Singleton.dynamicData.GetOwnedMinionAt(_loc3_).m_isBattleModShieldActive)
               {
                  _loc2_++;
               }
               _loc3_++;
            }
         }
         if(this.m_currMove.m_enemiesItHits == this.m_enemiesItHits.length || this.m_enemiesItHits.length == _loc2_)
         {
            if(this.m_currMove.m_chargeTime > 0 && this.m_currMinion.m_currCharge != -99)
            {
               this.m_currMinion.m_currChargeMove = this.m_currMove;
               this.m_currMinion.m_chargeAlliesItHits = this.m_alliesItHits;
               this.m_currMinion.m_chargeEnemiesItHits = this.m_enemiesItHits;
               this.m_currMinion.m_currCharge = 1;
               this.QueueUpChargeAnimation();
               Singleton.utility.m_screenControllers.m_battleScreen.StartQueuedMoves();
            }
            else
            {
               Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.m_collList.dispose();
               this.LoadUpTheQueueAndPlayMoves();
            }
            Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.TurnOffTopLayerMinions();
         }
      }
      
      public function RemoveFromEnemiesItHits(param1:OwnedMinion) : void
      {
         this.m_enemiesItHits.splice(this.m_enemiesItHits.indexOf(param1),1);
      }
      
      public function LoadUpTheQueueAndPlayMoves() : void
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:BaseVisualMove = null;
         var _loc6_:int = 0;
         var _loc7_:BaseStatModifyMove = null;
         Singleton.utility.m_screenControllers.m_battleScreen.m_moveQueue = new Vector.<MoveQueueObject>();
         this.m_applyBuffChance = Math.random() * 100;
         this.m_applyMissChance = Math.random() * 100;
         this.m_stunChance = Math.random() * 100;
         this.m_freezeChance = Math.random() * 100;
         var _loc1_:Vector.<MoveQueueObject> = Singleton.utility.m_screenControllers.m_battleScreen.m_moveQueue;
         if(!this.m_currMove.m_isThereABufferBetweenVisualMovesOnMultipleEnemies)
         {
            _loc1_.push(new MoveQueueObject(0.1,this.MoveCurrentMinion));
         }
         if(!this.m_currMove.m_doesHitEachEnemy && this.m_enemiesItHits.length > 0)
         {
            _loc2_ = 1;
         }
         else
         {
            _loc2_ = int(this.m_enemiesItHits.length);
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.m_currMove.m_accuracy < this.m_applyMissChance)
            {
               (_loc5_ = Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_MOVE_MISS)).CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_enemiesItHits[_loc3_]);
               if(this.m_currMove.m_isThereABufferBetweenVisualMovesOnMultipleEnemies)
               {
                  _loc1_.push(new MoveQueueObject(0.1,this.MoveCurrentMinion));
                  _loc1_.push(new MoveQueueObject(_loc5_.m_moveTime - 0.1,_loc5_.PlayMove));
               }
               else
               {
                  _loc1_.push(new MoveQueueObject(0,_loc5_.PlayMove));
               }
            }
            else
            {
               (_loc5_ = Singleton.staticData.GetVisualMinionMove(this.m_currMove.m_visualMoveID)).CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_enemiesItHits[_loc3_]);
               if(this.m_currMove.m_isThereABufferBetweenVisualMovesOnMultipleEnemies)
               {
                  _loc1_.push(new MoveQueueObject(0.1,this.MoveCurrentMinion));
                  _loc1_.push(new MoveQueueObject(_loc5_.m_moveTime - 0.1,_loc5_.PlayMove));
               }
               else
               {
                  _loc1_.push(new MoveQueueObject(0,_loc5_.PlayMove));
               }
               if(this.m_currMove.m_stunChance > this.m_stunChance)
               {
                  (_loc5_ = Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_MOVE_STUNNED)).CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_enemiesItHits[_loc3_]);
                  _loc1_.push(new MoveQueueObject(_loc5_.m_moveTime - 0.1,_loc5_.PlayMove));
               }
               if(this.m_currMove.m_freezeChance > this.m_freezeChance)
               {
                  (_loc5_ = Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_MOVE_FROZEN)).CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_enemiesItHits[_loc3_]);
                  _loc1_.push(new MoveQueueObject(_loc5_.m_moveTime - 0.1,_loc5_.PlayMove));
               }
               if(this.m_enemiesItHits[_loc3_].m_currReflectDamagePercentage > 0)
               {
                  (_loc5_ = Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_MOVE_DAMAGE_REFLECTED)).CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_enemiesItHits[_loc3_]);
                  _loc1_.push(new MoveQueueObject(_loc5_.m_moveTime - 0.1,_loc5_.PlayMove));
               }
            }
            _loc3_++;
         }
         if(!this.m_currMove.m_doesHitEachEnemy && this.m_alliesItHits.length > 0)
         {
            _loc4_ = 1;
         }
         else
         {
            _loc4_ = int(this.m_alliesItHits.length);
         }
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            (_loc5_ = Singleton.staticData.GetVisualMinionMove(this.m_currMove.m_visualMoveID)).CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_alliesItHits[_loc3_]);
            if(this.m_currMove.m_isThereABufferBetweenVisualMovesOnMultipleEnemies)
            {
               _loc1_.push(new MoveQueueObject(0.1,this.MoveCurrentMinion));
               _loc1_.push(new MoveQueueObject(_loc5_.m_moveTime - 0.1,_loc5_.PlayMove));
            }
            else
            {
               _loc1_.push(new MoveQueueObject(0,_loc5_.PlayMove));
            }
            _loc3_++;
         }
         if(!this.m_currMove.m_isThereABufferBetweenVisualMovesOnMultipleEnemies)
         {
            _loc1_.push(new MoveQueueObject(_loc5_.m_moveTime - 0.1));
         }
         if(this.m_currMove.m_accuracy < this.m_applyMissChance)
         {
            _loc1_.push(new MoveQueueObject(0.2,this.ApplyEffectsOfCurrentMove));
            _loc1_.push(new MoveQueueObject(0.4));
            Singleton.utility.m_screenControllers.m_battleScreen.StartQueuedMoves();
            return;
         }
         if(this.m_currMove.m_doesBuffSelf)
         {
            _loc6_ = 0;
            while(_loc6_ < this.m_currMove.m_statTypesToBuff.length)
            {
               if(this.m_applyBuffChance < this.m_currMove.m_chanceToBuff)
               {
                  (_loc7_ = BaseStatModifyMove(Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_STAT_CHANGE))).m_isPositiveIncrease = true;
                  _loc7_.m_statName = this.GetStatTypeNameAsString(this.m_currMove.m_statTypesToBuff[_loc6_]);
                  _loc7_.CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_currMinion);
                  _loc1_.push(new MoveQueueObject(0.1));
                  _loc1_.push(new MoveQueueObject(0.3,_loc7_.PlayMove));
               }
               _loc6_++;
            }
         }
         if(this.m_currMove.m_doesDeBuffSelf)
         {
            _loc6_ = 0;
            while(_loc6_ < this.m_currMove.m_statTypesToDeBuff.length)
            {
               if(this.m_applyBuffChance < this.m_currMove.m_chanceToDeBuff)
               {
                  (_loc7_ = BaseStatModifyMove(Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_STAT_CHANGE))).m_isPositiveIncrease = false;
                  _loc7_.m_statName = this.GetStatTypeNameAsString(this.m_currMove.m_statTypesToDeBuff[_loc6_]);
                  _loc7_.CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_currMinion);
                  _loc1_.push(new MoveQueueObject(0.1));
                  _loc1_.push(new MoveQueueObject(0.3,_loc7_.PlayMove));
               }
               _loc6_++;
            }
         }
         if(this.m_currMove.m_doesBuffTargets)
         {
            _loc3_ = 0;
            while(_loc3_ < this.m_alliesItHits.length)
            {
               _loc6_ = 0;
               while(_loc6_ < this.m_currMove.m_statTypesToBuff.length)
               {
                  if(this.m_applyBuffChance < this.m_currMove.m_chanceToBuff)
                  {
                     (_loc7_ = BaseStatModifyMove(Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_STAT_CHANGE))).m_isPositiveIncrease = true;
                     _loc7_.m_statName = this.GetStatTypeNameAsString(this.m_currMove.m_statTypesToBuff[_loc6_]);
                     _loc7_.CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_alliesItHits[_loc3_]);
                     _loc1_.push(new MoveQueueObject(0.1));
                     _loc1_.push(new MoveQueueObject(0.3,_loc7_.PlayMove));
                  }
                  _loc6_++;
               }
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < this.m_enemiesItHits.length)
            {
               _loc6_ = 0;
               while(_loc6_ < this.m_currMove.m_statTypesToBuff.length)
               {
                  if(this.m_applyBuffChance < this.m_currMove.m_chanceToBuff)
                  {
                     (_loc7_ = BaseStatModifyMove(Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_STAT_CHANGE))).m_isPositiveIncrease = true;
                     _loc7_.m_statName = this.GetStatTypeNameAsString(this.m_currMove.m_statTypesToBuff[_loc6_]);
                     _loc7_.CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_enemiesItHits[_loc3_]);
                     _loc1_.push(new MoveQueueObject(0.3,_loc7_.PlayMove));
                  }
                  _loc6_++;
               }
               _loc3_++;
            }
         }
         if(this.m_currMove.m_doesDeBuffTargets)
         {
            _loc3_ = 0;
            while(_loc3_ < this.m_alliesItHits.length)
            {
               _loc6_ = 0;
               while(_loc6_ < this.m_currMove.m_statTypesToDeBuff.length)
               {
                  if(this.m_applyBuffChance < this.m_currMove.m_chanceToDeBuff)
                  {
                     (_loc7_ = BaseStatModifyMove(Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_STAT_CHANGE))).m_isPositiveIncrease = false;
                     _loc7_.m_statName = this.GetStatTypeNameAsString(this.m_currMove.m_statTypesToDeBuff[_loc6_]);
                     _loc7_.CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_alliesItHits[_loc3_]);
                     _loc1_.push(new MoveQueueObject(0.3,_loc7_.PlayMove));
                  }
                  _loc6_++;
               }
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < this.m_enemiesItHits.length)
            {
               _loc6_ = 0;
               while(_loc6_ < this.m_currMove.m_statTypesToDeBuff.length)
               {
                  if(this.m_applyBuffChance < this.m_currMove.m_chanceToDeBuff)
                  {
                     (_loc7_ = BaseStatModifyMove(Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_STAT_CHANGE))).m_isPositiveIncrease = false;
                     _loc7_.m_statName = this.GetStatTypeNameAsString(this.m_currMove.m_statTypesToDeBuff[_loc6_]);
                     _loc7_.CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_enemiesItHits[_loc3_]);
                     _loc1_.push(new MoveQueueObject(0.3,_loc7_.PlayMove));
                  }
                  _loc6_++;
               }
               _loc3_++;
            }
         }
         _loc1_.push(new MoveQueueObject(0.2,this.ApplyEffectsOfCurrentMove));
         _loc1_.push(new MoveQueueObject(0.4));
         Singleton.utility.m_screenControllers.m_battleScreen.StartQueuedMoves();
      }
      
      private function GetStatTypeNameAsString(param1:int) : String
      {
         switch(param1)
         {
            case StatType.STAT_ENERGY:
               return "Energy";
            case StatType.STAT_ATTACK:
               return "Attack";
            case StatType.STAT_HEALING:
               return "Healing";
            case StatType.STAT_SPEED:
               return "Speed";
            default:
               return "Health";
         }
      }
      
      private function MoveCurrentMinion() : void
      {
         if(this.m_currMinion.m_minionDexID == MinionDexID.DEX_ID_battleModMinion_1 || this.m_currMinion.m_minionDexID == MinionDexID.DEX_ID_battleModMinion_2 || this.m_currMinion.m_minionDexID == MinionDexID.DEX_ID_battleModMinion_3)
         {
            return;
         }
         Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.MakeMoveForCurrentMinion(this.m_currMinion);
      }
      
      private function ApplyEffectsOfCurrentMove() : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         var _loc14_:Number = NaN;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         this.m_currMinion.m_currEnergy -= this.m_currMove.m_energyUsed;
         if(this.m_currMove.m_energyPercentageRestored > 0)
         {
            this.m_currMinion.m_currEnergy += this.m_currMinion.m_currEnergyStat * (this.m_currMove.m_energyPercentageRestored / 100);
         }
         if(this.m_currMove.m_accuracy < this.m_applyMissChance)
         {
            return;
         }
         this.m_currMinion.m_currExhaust = this.m_currMove.m_exhaustTime;
         var _loc1_:Number = Singleton.staticData.CalculateDamageOrHealingAmount(this.m_currMove.m_damage,this.m_currMove.m_additionalRandomDamage,this.m_currMinion.m_maxAttackStat,this.m_currMinion.m_currLevel);
         var _loc2_:Number = Singleton.staticData.CalculateDamageOrHealingAmount(this.m_currMove.m_healing,this.m_currMove.m_additionalRandomHealing,this.m_currMinion.m_maxHealingStat,this.m_currMinion.m_currLevel);
         var _loc3_:Number = Singleton.staticData.CalculateDamageOrHealingAmount(this.m_currMove.m_setShieldAmount,0,this.m_currMinion.m_maxHealingStat,this.m_currMinion.m_currLevel,false);
         if(this.m_currMinion.m_baseMinion.m_minionType1 == this.m_currMove.m_moveType)
         {
            _loc1_ *= Singleton.staticData.STAB_MODIFIER;
            _loc2_ *= Singleton.staticData.STAB_MODIFIER;
         }
         else if(this.m_currMinion.m_baseMinion.m_minionType2 == this.m_currMove.m_moveType)
         {
            _loc1_ *= Singleton.staticData.STAB_MODIFIER;
            _loc2_ *= Singleton.staticData.STAB_MODIFIER;
         }
         var _loc7_:Number = 1;
         var _loc8_:Vector.<OwnedMinion> = new Vector.<OwnedMinion>();
         var _loc9_:Number = 0;
         var _loc10_:int = 0;
         while(_loc10_ < 5)
         {
            if(this.m_isPlayerMoveSystem)
            {
               if(Singleton.dynamicData.m_opponentsMinions[_loc10_] != null && Singleton.dynamicData.m_opponentsMinions[_loc10_].m_currHealth > 0)
               {
                  if(Singleton.dynamicData.m_opponentsMinions[_loc10_].m_currRedirectDamage > 0)
                  {
                     _loc8_.push(Singleton.dynamicData.m_opponentsMinions[_loc10_]);
                     _loc9_ += Singleton.dynamicData.m_opponentsMinions[_loc10_].m_currRedirectDamage;
                     if(this.m_currMove.m_damage > 0 || Boolean(this.m_currMove.m_additionalRandomDamage))
                     {
                        Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.PlayRedirectedAnimation(Singleton.dynamicData.m_opponentsMinions[_loc10_]);
                     }
                  }
               }
            }
            else if(Singleton.dynamicData.GetOwnedMinionAt(_loc10_) != null && Singleton.dynamicData.GetOwnedMinionAt(_loc10_).m_currHealth > 0)
            {
               if(Singleton.dynamicData.GetOwnedMinionAt(_loc10_).m_currRedirectDamage > 0)
               {
                  _loc8_.push(Singleton.dynamicData.GetOwnedMinionAt(_loc10_));
                  _loc9_ += Singleton.dynamicData.GetOwnedMinionAt(_loc10_).m_currRedirectDamage;
                  if(this.m_currMove.m_damage > 0 || Boolean(this.m_currMove.m_additionalRandomDamage))
                  {
                     Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.PlayRedirectedAnimation(Singleton.dynamicData.GetOwnedMinionAt(_loc10_));
                  }
               }
            }
            _loc10_++;
         }
         var _loc11_:int = 0;
         while(_loc11_ < this.m_enemiesItHits.length)
         {
            _loc4_ = _loc1_;
            if((_loc7_ = (_loc7_ = (_loc7_ = 1) * Singleton.staticData.CalculateEffectivenessModifier(this.m_currMove.m_moveType,this.m_enemiesItHits[_loc11_].m_baseMinion.m_minionType1)) * Singleton.staticData.CalculateEffectivenessModifier(this.m_currMove.m_moveType,this.m_enemiesItHits[_loc11_].m_baseMinion.m_minionType2)) > 1.4)
            {
               Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.PlaySuperEffectiveAnimation(this.m_enemiesItHits[_loc11_]);
            }
            else if(_loc7_ < 0.7)
            {
               Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.PlayNotEffectiveAnimation(this.m_enemiesItHits[_loc11_]);
            }
            _loc4_ *= _loc7_;
            if(this.m_currMinion.m_currCritChance > Math.random() * 100)
            {
               _loc4_ *= 2;
               Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.PlayCritAnimation(this.m_enemiesItHits[_loc11_]);
            }
            _loc9_ /= 100;
            _loc12_ = _loc4_;
            _loc13_ = 0;
            while(_loc13_ < _loc8_.length)
            {
               _loc14_ = _loc8_[_loc13_].m_currRedirectDamage / 100;
               if(_loc9_ > 1)
               {
                  _loc15_ = _loc12_ * (_loc14_ / _loc9_);
               }
               else
               {
                  _loc15_ = _loc12_ * _loc14_;
               }
               _loc4_ -= _loc15_;
               this.m_currMinion.AddToHealth(-_loc15_ * this.m_enemiesItHits[_loc11_].m_currReflectDamagePercentage);
               _loc15_ *= _loc8_[_loc13_].m_currArmorModRate;
               _loc8_[_loc13_].AddToHealth(-_loc15_);
               _loc13_++;
            }
            this.m_currMinion.AddToHealth(-_loc4_ * this.m_enemiesItHits[_loc11_].m_currReflectDamagePercentage);
            _loc4_ *= this.m_enemiesItHits[_loc11_].m_currArmorModRate;
            this.m_enemiesItHits[_loc11_].AddToHealth(-_loc4_);
            if(this.m_currMove.m_DOTDamage > 0 || this.m_currMove.m_additionalDOTDamage > 0 || this.m_currMove.m_armor != 0 || this.m_currMove.m_setReflectDamageAmount > 0)
            {
               if(!this.m_enemiesItHits[_loc11_].m_isBattleModShieldActive)
               {
                  this.m_enemiesItHits[_loc11_].AddDotOrHot(this.m_currMove.m_moveID,this.m_currMinion);
               }
            }
            if(this.m_currMove.m_clearBuffsAndDebuffsChance > Math.random() * 100)
            {
               this.m_enemiesItHits[_loc11_].ClearBuffsAndDebuffs();
            }
            if(this.m_currMove.m_freezeChance > this.m_freezeChance)
            {
               this.m_enemiesItHits[_loc11_].m_isFrozen = true;
               this.m_enemiesItHits[_loc11_].m_turnsFrozen = 0;
               TweenLite.to(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(this.m_enemiesItHits[_loc11_]).m_minionSprite,1,{"colorTransform":{
                  "tint":3381759,
                  "tintAmount":0.5
               }});
               TweenLite.to(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionTopLayerVisualObjectFor(this.m_enemiesItHits[_loc11_]).m_minionSprite,1,{"colorTransform":{
                  "tint":3381759,
                  "tintAmount":0.5
               }});
            }
            if(this.m_currMove.m_stunChance > this.m_stunChance)
            {
               this.m_enemiesItHits[_loc11_].m_isStunned = true;
               TweenLite.to(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(this.m_enemiesItHits[_loc11_]).m_minionSprite,1,{"colorTransform":{
                  "tint":16777062,
                  "tintAmount":0.5
               }});
               TweenLite.to(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionTopLayerVisualObjectFor(this.m_enemiesItHits[_loc11_]).m_minionSprite,1,{"colorTransform":{
                  "tint":16777062,
                  "tintAmount":0.5
               }});
            }
            _loc11_++;
         }
         _loc11_ = 0;
         while(_loc11_ < this.m_alliesItHits.length)
         {
            _loc5_ = _loc2_;
            _loc6_ = _loc3_;
            if((_loc7_ = (_loc7_ = (_loc7_ = 1) * Singleton.staticData.CalculateHealingEffectivenessModifier(this.m_currMove.m_moveType,this.m_alliesItHits[_loc11_].m_baseMinion.m_minionType1)) * Singleton.staticData.CalculateHealingEffectivenessModifier(this.m_currMove.m_moveType,this.m_alliesItHits[_loc11_].m_baseMinion.m_minionType2)) > 1.4 && _loc5_ > 0)
            {
               Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.PlaySuperEffectiveAnimation(this.m_alliesItHits[_loc11_]);
            }
            else if(_loc7_ < 0.7 && _loc5_ > 0)
            {
               Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.PlayNotEffectiveAnimation(this.m_alliesItHits[_loc11_]);
            }
            _loc5_ *= _loc7_;
            if(this.m_currMinion.m_currCritChance > Math.random() * 100)
            {
               if((_loc5_ *= 2) > 0)
               {
                  Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.PlayCritAnimation(this.m_alliesItHits[_loc11_]);
               }
            }
            this.m_alliesItHits[_loc11_].AddToHealth(_loc5_);
            this.m_alliesItHits[_loc11_].AddShield(_loc6_);
            if(this.m_currMove.m_clearBuffsAndDebuffsChance > Math.random() * 100)
            {
               this.m_alliesItHits[_loc11_].ClearBuffsAndDebuffs();
            }
            if(this.m_currMove.m_HOTHealing > 0 || this.m_currMove.m_additionalHOTHealing > 0 || this.m_currMove.m_armor != 0 || this.m_currMove.m_setReflectDamageAmount > 0)
            {
               this.m_alliesItHits[_loc11_].AddDotOrHot(this.m_currMove.m_moveID,this.m_currMinion);
            }
            _loc11_++;
         }
         _loc1_ = Singleton.staticData.CalculateDamageOrHealingAmount(this.m_currMove.m_selfDamage,this.m_currMove.m_additionalRandomSelfDamage,this.m_currMinion.m_maxAttackStat,this.m_currMinion.m_currLevel);
         this.m_currMinion.AddToHealth(-_loc1_);
         this.m_currMinion.AddToHealth(-(this.m_currMove.m_selfPercentageDamage / 100) * this.m_currMinion.m_currHealthStat);
         _loc2_ = Singleton.staticData.CalculateDamageOrHealingAmount(this.m_currMove.m_selfHeal,this.m_currMove.m_additionalRandomSelfHeal,this.m_currMinion.m_maxHealingStat,this.m_currMinion.m_currLevel);
         this.m_currMinion.AddToHealth(_loc2_);
         if(this.m_currMove.m_moveCoolDownTime > 0)
         {
            this.m_currMinion.AddMoveToCoolDowns(this.m_currMove.m_moveID);
         }
         if(this.m_currMove.m_doesBuffSelf)
         {
            _loc16_ = 0;
            while(_loc16_ < this.m_currMove.m_statTypesToBuff.length)
            {
               if(this.m_applyBuffChance < this.m_currMove.m_chanceToBuff)
               {
                  this.m_currMinion.AddToStatStages(this.m_currMove.m_statTypesToBuff[_loc16_],this.m_currMove.m_stagesOfStatTypeToBuff);
               }
               _loc16_++;
            }
         }
         if(this.m_currMove.m_doesDeBuffSelf)
         {
            _loc16_ = 0;
            while(_loc16_ < this.m_currMove.m_statTypesToDeBuff.length)
            {
               if(this.m_applyBuffChance < this.m_currMove.m_chanceToDeBuff)
               {
                  this.m_currMinion.AddToStatStages(this.m_currMove.m_statTypesToDeBuff[_loc16_],this.m_currMove.m_stagesOfStatTypeToDeBuff);
               }
               _loc16_++;
            }
         }
         if(this.m_currMove.m_doesBuffTargets)
         {
            _loc11_ = 0;
            while(_loc11_ < this.m_alliesItHits.length)
            {
               _loc16_ = 0;
               while(_loc16_ < this.m_currMove.m_statTypesToBuff.length)
               {
                  if(this.m_applyBuffChance < this.m_currMove.m_chanceToBuff)
                  {
                     this.m_alliesItHits[_loc11_].AddToStatStages(this.m_currMove.m_statTypesToBuff[_loc16_],this.m_currMove.m_stagesOfStatTypeToBuff);
                  }
                  _loc16_++;
               }
               _loc11_++;
            }
            _loc11_ = 0;
            while(_loc11_ < this.m_enemiesItHits.length)
            {
               _loc16_ = 0;
               while(_loc16_ < this.m_currMove.m_statTypesToBuff.length)
               {
                  if(this.m_applyBuffChance < this.m_currMove.m_chanceToBuff)
                  {
                     this.m_enemiesItHits[_loc11_].AddToStatStages(this.m_currMove.m_statTypesToBuff[_loc16_],this.m_currMove.m_stagesOfStatTypeToBuff);
                  }
                  _loc16_++;
               }
               _loc11_++;
            }
         }
         if(this.m_currMove.m_doesDeBuffTargets)
         {
            _loc11_ = 0;
            while(_loc11_ < this.m_alliesItHits.length)
            {
               _loc16_ = 0;
               while(_loc16_ < this.m_currMove.m_statTypesToDeBuff.length)
               {
                  if(this.m_applyBuffChance < this.m_currMove.m_chanceToDeBuff)
                  {
                     this.m_alliesItHits[_loc11_].AddToStatStages(this.m_currMove.m_statTypesToDeBuff[_loc16_],this.m_currMove.m_stagesOfStatTypeToDeBuff);
                  }
                  _loc16_++;
               }
               _loc11_++;
            }
            _loc11_ = 0;
            while(_loc11_ < this.m_enemiesItHits.length)
            {
               _loc16_ = 0;
               while(_loc16_ < this.m_currMove.m_statTypesToDeBuff.length)
               {
                  if(this.m_applyBuffChance < this.m_currMove.m_chanceToDeBuff)
                  {
                     this.m_enemiesItHits[_loc11_].AddToStatStages(this.m_currMove.m_statTypesToDeBuff[_loc16_],this.m_currMove.m_stagesOfStatTypeToDeBuff);
                  }
                  _loc16_++;
               }
               _loc11_++;
            }
         }
         Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.UpdateMinionHealth();
      }
      
      public function ChooseAMoveFor(param1:OwnedMinion) : void
      {
         this.m_currMinion = param1;
      }
      
      protected function QueueUpChargeAnimation() : void
      {
         Singleton.utility.m_screenControllers.m_battleScreen.m_moveQueue = new Vector.<MoveQueueObject>();
         var _loc1_:Vector.<MoveQueueObject> = Singleton.utility.m_screenControllers.m_battleScreen.m_moveQueue;
         var _loc2_:BaseVisualMove = Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_MOVE_CHARGING);
         _loc2_.CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_currMinion);
         _loc1_.push(new MoveQueueObject(0.2));
         _loc1_.push(new MoveQueueObject(_loc2_.m_moveTime - 0.1,_loc2_.PlayMove));
         _loc1_.push(new MoveQueueObject(1.1));
      }
      
      protected function QueueUpExhaustedAnimation() : void
      {
         Singleton.utility.m_screenControllers.m_battleScreen.m_moveQueue = new Vector.<MoveQueueObject>();
         var _loc1_:Vector.<MoveQueueObject> = Singleton.utility.m_screenControllers.m_battleScreen.m_moveQueue;
         var _loc2_:BaseVisualMove = Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_MOVE_EXHAUST);
         _loc2_.CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_currMinion);
         _loc1_.push(new MoveQueueObject(0.2));
         _loc1_.push(new MoveQueueObject(_loc2_.m_moveTime - 0.1,_loc2_.PlayMove));
         _loc1_.push(new MoveQueueObject(1.1));
      }
      
      protected function QueueUpFrozenAnimation() : void
      {
         Singleton.utility.m_screenControllers.m_battleScreen.m_moveQueue = new Vector.<MoveQueueObject>();
         var _loc1_:Vector.<MoveQueueObject> = Singleton.utility.m_screenControllers.m_battleScreen.m_moveQueue;
         var _loc2_:BaseVisualMove = Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_MOVE_FROZEN);
         _loc2_.CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_currMinion);
         _loc1_.push(new MoveQueueObject(0.2));
         _loc1_.push(new MoveQueueObject(_loc2_.m_moveTime - 0.1,_loc2_.PlayMove));
         _loc1_.push(new MoveQueueObject(1.1));
      }
      
      protected function QueueUpStunAnimation() : void
      {
         Singleton.utility.m_screenControllers.m_battleScreen.m_moveQueue = new Vector.<MoveQueueObject>();
         var _loc1_:Vector.<MoveQueueObject> = Singleton.utility.m_screenControllers.m_battleScreen.m_moveQueue;
         var _loc2_:BaseVisualMove = Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_MOVE_STUNNED);
         _loc2_.CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_currMinion);
         _loc1_.push(new MoveQueueObject(0.2));
         _loc1_.push(new MoveQueueObject(_loc2_.m_moveTime - 0.1,_loc2_.PlayMove));
         _loc1_.push(new MoveQueueObject(1.1));
      }
   }
}
