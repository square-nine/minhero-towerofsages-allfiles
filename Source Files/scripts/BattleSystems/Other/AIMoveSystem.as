package BattleSystems.Other
{
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import States.MinionMoveID;
   import States.StatType;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   
   public class AIMoveSystem extends BaseMoveSystem
   {
       
      
      private var m_enemyThreatLevels:Array;
      
      private var m_enemyThreatRatios:Array;
      
      private var m_enemyRedirectDamage:Number;
      
      private var m_ourThreatLevels:Array;
      
      private var m_ourThreatRatios:Array;
      
      private var m_ourRedirectDamage:Number;
      
      public function AIMoveSystem()
      {
         super();
         m_isPlayerMoveSystem = false;
      }
      
      override public function ChooseAMoveFor(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         super.ChooseAMoveFor(param1);
         if(param1.m_isFrozen)
         {
            ++param1.m_turnsFrozen;
            if(param1.m_turnsFrozen > 1 + Math.random() * 3)
            {
               param1.m_isFrozen = false;
               TweenLite.to(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(param1).m_minionSprite,1,{"removeTint":true});
               TweenLite.to(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionTopLayerVisualObjectFor(param1).m_minionSprite,1,{"removeTint":true});
               m_currMinion = param1;
               Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.SetupTheGetForAiMinion(param1);
               TweenLite.to(this,0.7,{"onComplete":this.GetMoveAfterDelay});
            }
            else
            {
               QueueUpFrozenAnimation();
               Singleton.utility.m_screenControllers.m_battleScreen.StartQueuedMoves();
            }
         }
         else if(param1.m_isStunned)
         {
            if(50 > Math.random() * 100)
            {
               m_currMinion = param1;
               Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.SetupTheGetForAiMinion(param1);
               TweenLite.to(this,0.7,{"onComplete":this.GetMoveAfterDelay});
            }
            else
            {
               QueueUpStunAnimation();
               Singleton.utility.m_screenControllers.m_battleScreen.StartQueuedMoves();
            }
         }
         else if(param1.m_currChargeMove != null)
         {
            if(param1.m_currCharge == param1.m_currChargeMove.m_chargeTime)
            {
               m_currMove = param1.m_currChargeMove;
               m_alliesItHits = param1.m_chargeAlliesItHits;
               m_enemiesItHits = param1.m_chargeEnemiesItHits;
               _loc2_ = false;
               _loc3_ = 0;
               while(_loc3_ < m_alliesItHits.length)
               {
                  if(m_alliesItHits[_loc3_].m_currHealth < 0)
                  {
                     _loc2_ = true;
                     break;
                  }
                  _loc3_++;
               }
               _loc3_ = 0;
               while(_loc3_ < m_enemiesItHits.length)
               {
                  if(m_enemiesItHits[_loc3_].m_currHealth < 0)
                  {
                     _loc2_ = true;
                     break;
                  }
                  _loc3_++;
               }
               if(_loc2_)
               {
                  m_alliesItHits = new Vector.<OwnedMinion>();
                  m_enemiesItHits = new Vector.<OwnedMinion>();
                  m_currMinion.m_currCharge = -99;
                  this.GetRandomMinionsForMove(m_currMove);
               }
               m_currMinion.m_currCharge = 0;
               param1.m_chargeAlliesItHits = null;
               param1.m_chargeEnemiesItHits = null;
               param1.m_currChargeMove = null;
               if(!_loc2_)
               {
                  LoadUpTheQueueAndPlayMoves();
               }
            }
            else
            {
               ++param1.m_currCharge;
               QueueUpChargeAnimation();
               Singleton.utility.m_screenControllers.m_battleScreen.StartQueuedMoves();
            }
         }
         else if(param1.m_currExhaust > 0)
         {
            --param1.m_currExhaust;
            QueueUpExhaustedAnimation();
            Singleton.utility.m_screenControllers.m_battleScreen.StartQueuedMoves();
         }
         else
         {
            m_currMinion = param1;
            Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.SetupTheGetForAiMinion(param1);
            TweenLite.to(this,0.7,{"onComplete":this.GetMoveAfterDelay});
         }
      }
      
      private function GetMoveAfterDelay() : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < 5)
         {
            if(Singleton.dynamicData.m_opponentsMinions[_loc2_] != null && Singleton.dynamicData.m_opponentsMinions[_loc2_].m_currHealth > 0)
            {
               _loc1_.push(Singleton.dynamicData.m_opponentsMinions[_loc2_]);
            }
            _loc2_++;
         }
         _loc1_ = _loc1_.sortOn("m_moveOrderPosition",Array.NUMERIC);
         var _loc3_:Array = new Array();
         _loc2_ = 0;
         while(_loc2_ < 5)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc2_) != null && Singleton.dynamicData.GetOwnedMinionAt(_loc2_).m_currHealth > 0 && !Singleton.dynamicData.GetOwnedMinionAt(_loc2_).m_isBattleModShieldActive)
            {
               _loc3_.push(Singleton.dynamicData.GetOwnedMinionAt(_loc2_));
            }
            _loc2_++;
         }
         if(this.m_enemyThreatLevels == null)
         {
            _loc8_ = 1;
            this.m_enemyThreatLevels = new Array(0,0,0,0,0);
            _loc9_ = 0;
            while(_loc9_ < _loc3_.length)
            {
               this.m_enemyThreatLevels[_loc9_] = _loc3_[_loc9_].m_currLevel * _loc8_;
               _loc9_++;
            }
            this.m_enemyThreatRatios = new Array(1,1,1,1,1);
            this.m_ourThreatLevels = new Array(0,0,0,0,0);
            _loc9_ = 0;
            while(_loc9_ < _loc1_.length)
            {
               this.m_ourThreatLevels[_loc9_] = _loc1_[_loc9_].m_currLevel * _loc8_;
               _loc9_++;
            }
            this.m_ourThreatRatios = new Array(1,1,1,1,1);
         }
         this.CalculateTotalTeamThreat(_loc3_,_loc1_,true);
         this.CalculateTotalTeamThreat(_loc1_,_loc3_,false);
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            if(_loc1_[_loc5_] == m_currMinion)
            {
               _loc4_ = _loc5_;
               break;
            }
            _loc5_++;
         }
         var _loc6_:AIMovePacket = new AIMovePacket();
         this.BuildMoveChainThreat(_loc4_,_loc1_,_loc3_,_loc6_);
         var _loc7_:* = "";
         _loc2_ = 0;
         while(_loc2_ < 5)
         {
            if(_loc6_.m_bestMoves[_loc2_])
            {
               _loc7_ += _loc6_.m_bestMoves[_loc2_].m_moveName + "(" + _loc6_.m_bestMinionsAttacked[_loc2_][0].m_baseMinion.m_baseMinionName + "), ";
            }
            else
            {
               _loc7_ += "null ";
            }
            _loc2_++;
         }
         m_currMove = _loc6_.m_bestMoves[_loc4_];
         if(m_currMove.m_hitsRandomTargets)
         {
            this.GetRandomMinionsForMove(m_currMove);
         }
         else if(m_currMove.m_alliesItHits > 0)
         {
            _loc10_ = 0;
            while(_loc10_ < _loc6_.m_bestMinionsAttacked[_loc4_].length)
            {
               AddToAlliesItHits(_loc6_.m_bestMinionsAttacked[_loc4_][_loc10_]);
               _loc10_++;
            }
         }
         else
         {
            _loc10_ = 0;
            while(_loc10_ < _loc6_.m_bestMinionsAttacked[_loc4_].length)
            {
               AddToEnemiesItHits(_loc6_.m_bestMinionsAttacked[_loc4_][_loc10_]);
               _loc10_++;
            }
         }
      }
      
      private function BuildMoveChainThreat(param1:int, param2:Array, param3:Array, param4:AIMovePacket) : void
      {
         var _loc5_:Vector.<BaseMinionMove> = null;
         var _loc6_:int = 0;
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         if(param1 < param2.length)
         {
            (_loc5_ = param2[param1].m_allMovesJustHighestTier_asActualMoves).push(Singleton.staticData.GetBaseMinionMove(MinionMoveID.desperation_t1));
            _loc6_ = 0;
            while(_loc6_ < _loc5_.length)
            {
               if(!(_loc5_[_loc6_].m_isPassive || _loc5_[_loc6_].m_isGlobalPassive))
               {
                  _loc7_ = new Array();
                  if(_loc5_[_loc6_].m_alliesItHits > 0)
                  {
                     _loc8_ = 0;
                     while(_loc8_ < param2.length)
                     {
                        _loc10_ = this.CalculateHealingMoveThreat(_loc5_[_loc6_],param2[param1],param2,_loc8_,true,param1,this.m_enemyRedirectDamage);
                        _loc7_.push(new AiMoveStruct());
                        _loc7_[_loc8_].m_moveThreat = _loc10_;
                        _loc7_[_loc8_].m_minionHit = param2[_loc8_];
                        _loc8_++;
                     }
                     _loc7_ = _loc7_.sortOn("m_moveThreat",Array.DESCENDING | Array.NUMERIC);
                     param4.m_currMoves[param1] = _loc5_[_loc6_];
                     _loc9_ = 0;
                     while(_loc9_ < param2.length)
                     {
                        param4.m_threatPerMove[param1] += _loc7_[_loc9_].m_moveThreat;
                        param4.m_currMinionsAttacked[param1].push(_loc7_[_loc9_].m_minionHit);
                        if(_loc9_ > _loc5_[_loc6_].m_alliesItHits - 2 && !_loc5_[_loc6_].m_hitsRandomTargets)
                        {
                           break;
                        }
                        _loc9_++;
                     }
                     if(_loc5_[_loc6_].m_hitsRandomTargets)
                     {
                        param4.m_threatPerMove[param1] /= param2.length;
                        if(param2.length < _loc5_[_loc6_].m_alliesItHits)
                        {
                           param4.m_threatPerMove[param1] *= param2.length;
                        }
                        else
                        {
                           param4.m_threatPerMove[param1] *= _loc5_[_loc6_].m_alliesItHits;
                        }
                     }
                     if(param4.GetTotalCurrThreat() > param4.GetTotalBestThreat())
                     {
                        param4.SetCurrMovesToBestMoves();
                     }
                  }
                  else
                  {
                     _loc8_ = 0;
                     while(_loc8_ < param3.length)
                     {
                        _loc10_ = this.CalculateDamageMoveThreat(_loc5_[_loc6_],param2[param1],param3,_loc8_,true,param1,this.m_enemyRedirectDamage);
                        _loc7_.push(new AiMoveStruct());
                        _loc7_[_loc8_].m_moveThreat = _loc10_;
                        _loc7_[_loc8_].m_minionHit = param3[_loc8_];
                        _loc8_++;
                     }
                     _loc7_ = _loc7_.sortOn("m_moveThreat",Array.DESCENDING | Array.NUMERIC);
                     param4.m_currMoves[param1] = _loc5_[_loc6_];
                     _loc9_ = 0;
                     while(_loc9_ < param3.length)
                     {
                        param4.m_threatPerMove[param1] += _loc7_[_loc9_].m_moveThreat;
                        param4.m_currMinionsAttacked[param1].push(_loc7_[_loc9_].m_minionHit);
                        if(_loc9_ > _loc5_[_loc6_].m_enemiesItHits - 2 && !_loc5_[_loc6_].m_hitsRandomTargets)
                        {
                           break;
                        }
                        _loc9_++;
                     }
                     if(_loc5_[_loc6_].m_hitsRandomTargets)
                     {
                        param4.m_threatPerMove[param1] /= param3.length;
                        if(param3.length < _loc5_[_loc6_].m_enemiesItHits)
                        {
                           param4.m_threatPerMove[param1] *= param3.length;
                        }
                        else
                        {
                           param4.m_threatPerMove[param1] *= _loc5_[_loc6_].m_enemiesItHits;
                        }
                     }
                     if(param4.GetTotalCurrThreat() > param4.GetTotalBestThreat())
                     {
                        param4.SetCurrMovesToBestMoves();
                     }
                  }
                  param4.m_currMoves[param1] = null;
                  param4.m_threatPerMove[param1] = 0;
                  param4.m_currMinionsAttacked[param1] = new Vector.<OwnedMinion>();
               }
               _loc6_++;
            }
         }
      }
      
      private function CalculateDamageMoveThreat(param1:BaseMinionMove, param2:OwnedMinion, param3:Array, param4:int, param5:Boolean = true, param6:int = 0, param7:Number = 0) : Number
      {
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         if(param3[param4].m_isBattleModShieldActive)
         {
            return 0;
         }
         if(param1.m_moveID == MinionMoveID.desperation_t1)
         {
            return 1;
         }
         if(param1.m_moveCoolDownTime)
         {
            if(param2.GetRatioOfTurnsLeftOnCoolDown(param1.m_moveID))
            {
               return 0;
            }
         }
         if(param2.m_currEnergy < param1.m_energyUsed)
         {
            return 0;
         }
         var _loc8_:Number = 0;
         var _loc9_:Number = (_loc9_ = param1.m_damage) + param1.m_additionalRandomDamage / 2;
         var _loc10_:Number = Singleton.staticData.CalculateDamageOrHealingAmount(_loc9_,0,param2.m_maxAttackStat,param2.m_currLevel);
         if(param1.m_DOTDamage > 0 || param1.m_additionalDOTDamage > 0)
         {
            if(!param3[param4].IsHotOrDotActive(param1.m_moveID))
            {
               _loc14_ = (_loc14_ = param1.m_DOTDamage) + param1.m_additionalDOTDamage / 2;
               _loc15_ = Singleton.staticData.CalculateDamageOrHealingAmount(_loc14_,0,param2.m_maxAttackStat,param2.m_currLevel);
               _loc10_ += _loc14_;
            }
         }
         if(param2.m_baseMinion.m_minionType1 == param1.m_moveType)
         {
            _loc10_ *= Singleton.staticData.STAB_MODIFIER;
         }
         else if(param2.m_baseMinion.m_minionType2 == param1.m_moveType)
         {
            _loc10_ *= Singleton.staticData.STAB_MODIFIER;
         }
         var _loc11_:Number = (_loc11_ = (_loc11_ = 1) * Singleton.staticData.CalculateEffectivenessModifier(param1.m_moveType,param3[param4].m_baseMinion.m_minionType1)) * Singleton.staticData.CalculateEffectivenessModifier(param1.m_moveType,param3[param4].m_baseMinion.m_minionType2);
         _loc10_ *= _loc11_;
         if(this.m_enemyThreatLevels != null)
         {
            if(!param3[param4].m_isStunned)
            {
               _loc10_ += param1.m_stunChance / 100 * (this.m_enemyThreatLevels[param4] / 2);
            }
            if(!param3[param4].m_isFrozen)
            {
               _loc10_ += param1.m_freezeChance / 100 * (this.m_enemyThreatLevels[param4] / 1.1);
            }
         }
         var _loc12_:Number = 1 - param7;
         if(this.m_enemyThreatLevels != null && _loc12_ * _loc10_ > param3[param4].m_currHealth)
         {
            _loc10_ = this.m_enemyThreatLevels[param4] * 1.5;
            if(!param3[param4].m_hasMovedOnThisTurn)
            {
               _loc10_ *= 1.3;
            }
         }
         if(param2.m_currEnergy > 0)
         {
            _loc10_ += _loc10_ / 10 * (1 - param1.m_energyUsed / param2.m_currEnergy);
         }
         if(param1.m_selfDamage > 0 || param1.m_additionalRandomSelfDamage > 0)
         {
            _loc16_ = (_loc16_ = param1.m_selfDamage) + param1.m_additionalRandomSelfDamage / 2;
            _loc17_ = Singleton.staticData.CalculateDamageOrHealingAmount(_loc16_,0,param2.m_maxAttackStat,param2.m_currLevel);
            if(param2.m_baseMinion.m_minionType1 == param1.m_moveType)
            {
               _loc17_ *= Singleton.staticData.STAB_MODIFIER;
            }
            else if(param2.m_baseMinion.m_minionType2 == param1.m_moveType)
            {
               _loc17_ *= Singleton.staticData.STAB_MODIFIER;
            }
            _loc11_ = (_loc11_ = (_loc11_ = 1) * Singleton.staticData.CalculateEffectivenessModifier(param1.m_moveType,param2.m_baseMinion.m_minionType1)) * Singleton.staticData.CalculateEffectivenessModifier(param1.m_moveType,param2.m_baseMinion.m_minionType2);
            _loc17_ *= _loc11_;
            if(this.m_ourThreatLevels != null && _loc17_ > param2.m_currHealth)
            {
               _loc17_ = this.m_ourThreatLevels[param6] * 1.3;
            }
            _loc8_ -= _loc17_;
         }
         if(param1.m_selfHeal > 0 || param1.m_additionalRandomSelfHeal > 0)
         {
            _loc18_ = (_loc18_ = param1.m_selfHeal) + param1.m_additionalRandomSelfHeal / 2;
            _loc19_ = Singleton.staticData.CalculateDamageOrHealingAmount(_loc18_,0,param2.m_maxHealingStat,param2.m_currLevel);
            if(param2.m_baseMinion.m_minionType1 == param1.m_moveType)
            {
               _loc19_ *= Singleton.staticData.STAB_MODIFIER;
            }
            else if(param2.m_baseMinion.m_minionType2 == param1.m_moveType)
            {
               _loc19_ *= Singleton.staticData.STAB_MODIFIER;
            }
            _loc11_ = (_loc11_ = (_loc11_ = 1) * Singleton.staticData.CalculateEffectivenessModifier(param1.m_moveType,param2.m_baseMinion.m_minionType1)) * Singleton.staticData.CalculateEffectivenessModifier(param1.m_moveType,param2.m_baseMinion.m_minionType2);
            _loc19_ *= _loc11_;
            if(param2.m_currHealth + _loc19_ > param2.m_currHealthStat)
            {
               _loc19_ = param2.m_currHealthStat - param2.m_currHealth;
            }
            _loc8_ += _loc19_;
         }
         if(this.m_ourThreatLevels != null)
         {
            _loc8_ = (_loc8_ -= param1.m_exhaustTime * (_loc8_ * 0.5)) - param1.m_exhaustTime * (_loc8_ * 0.66);
         }
         var _loc13_:int = 0;
         while(_loc13_ < param1.m_statTypesToDeBuff.length)
         {
            _loc20_ = 0;
            if(param1.m_doesDeBuffTargets && param1.m_enemiesItHits > 0)
            {
               if(this.m_enemyThreatLevels != null)
               {
                  _loc20_ += this.CalculateBuffValue(param1.m_statTypesToDeBuff[_loc13_],param1.m_stagesOfStatTypeToDeBuff,param3[param4],this.m_enemyThreatLevels[param4]);
               }
            }
            if(param1.m_doesDeBuffSelf)
            {
               if(this.m_ourThreatLevels != null)
               {
                  _loc20_ -= this.CalculateBuffValue(param1.m_statTypesToDeBuff[_loc13_],param1.m_stagesOfStatTypeToDeBuff,param2,this.m_ourThreatLevels[param6]);
               }
            }
            _loc20_ *= param1.m_chanceToDeBuff / 100;
            _loc10_ += _loc20_;
            _loc13_++;
         }
         _loc13_ = 0;
         while(_loc13_ < param1.m_statTypesToBuff.length)
         {
            _loc21_ = 0;
            if(param1.m_doesBuffTargets && param1.m_enemiesItHits > 0)
            {
               if(this.m_enemyThreatLevels != null)
               {
                  _loc21_ -= this.CalculateBuffValue(param1.m_statTypesToBuff[_loc13_],param1.m_stagesOfStatTypeToBuff,param3[param4],this.m_enemyThreatLevels[param4]);
               }
            }
            if(param1.m_doesBuffSelf)
            {
               if(this.m_ourThreatLevels != null)
               {
                  _loc21_ += this.CalculateBuffValue(param1.m_statTypesToBuff[_loc13_],param1.m_stagesOfStatTypeToBuff,param2,this.m_ourThreatLevels[param6]);
               }
            }
            _loc21_ *= param1.m_chanceToBuff / 100;
            _loc10_ += _loc21_;
            _loc13_++;
         }
         if(param1.m_armor)
         {
            if(!param3[param4].IsHotOrDotActive(param1.m_moveID))
            {
               _loc10_ += param3[param4].m_currHealthStat * (param1.m_armor / 100 * -1);
            }
         }
         if(param5 && _loc12_ != 0)
         {
            _loc10_ *= _loc12_ * this.m_enemyThreatRatios[param4];
         }
         _loc8_ = (_loc8_ = (_loc8_ += _loc10_) * (param1.m_accuracy / 100)) * param3[param4].m_currArmorModRate;
         if(param5)
         {
            _loc8_ += Singleton.staticData.GetDifficultyModifierForMinion(m_currMinion);
         }
         return _loc8_;
      }
      
      private function CalculateHealingMoveThreat(param1:BaseMinionMove, param2:OwnedMinion, param3:Array, param4:int, param5:Boolean = true, param6:int = 0, param7:Number = 0) : Number
      {
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         if(param1.m_moveCoolDownTime)
         {
            if(param2.GetRatioOfTurnsLeftOnCoolDown(param1.m_moveID))
            {
               return 0;
            }
         }
         if(param2.m_currEnergy < param1.m_energyUsed)
         {
            return 0;
         }
         var _loc8_:Number = 0;
         var _loc9_:Number = (_loc9_ = param1.m_healing) + param1.m_additionalRandomHealing / 2;
         var _loc10_:Number = Singleton.staticData.CalculateDamageOrHealingAmount(_loc9_,0,param2.m_maxHealingStat,param2.m_currLevel);
         if(param2.m_baseMinion.m_minionType1 == param1.m_moveType)
         {
            _loc10_ *= Singleton.staticData.STAB_MODIFIER;
         }
         else if(param2.m_baseMinion.m_minionType2 == param1.m_moveType)
         {
            _loc10_ *= Singleton.staticData.STAB_MODIFIER;
         }
         var _loc11_:Number = (_loc11_ = (_loc11_ = 1) * Singleton.staticData.CalculateHealingEffectivenessModifier(param1.m_moveType,param3[param4].m_baseMinion.m_minionType1)) * Singleton.staticData.CalculateHealingEffectivenessModifier(param1.m_moveType,param3[param4].m_baseMinion.m_minionType2);
         _loc10_ *= _loc11_;
         if(param3[param4].m_currHealth + _loc10_ > param3[param4].m_currHealthStat)
         {
            _loc10_ = param3[param4].m_currHealthStat - param3[param4].m_currHealth;
         }
         if(param1.m_setShieldAmount > 0)
         {
            _loc13_ = Singleton.staticData.CalculateDamageOrHealingAmount(param1.m_setShieldAmount,0,param2.m_maxHealingStat,param2.m_currLevel);
            if(param2.m_baseMinion.m_minionType1 == param1.m_moveType)
            {
               _loc13_ *= Singleton.staticData.STAB_MODIFIER;
            }
            else if(param2.m_baseMinion.m_minionType2 == param1.m_moveType)
            {
               _loc13_ *= Singleton.staticData.STAB_MODIFIER;
            }
            if((_loc13_ *= _loc11_) > param3[param4].m_currShield)
            {
               _loc13_ -= param3[param4].m_currShield;
            }
            _loc10_ += _loc13_;
         }
         if(param1.m_HOTHealing > 0 || param1.m_additionalHOTHealing > 0)
         {
            if(!param3[param4].IsHotOrDotActive(param1.m_moveID))
            {
               _loc14_ = (_loc14_ = param1.m_HOTHealing) + param1.m_additionalHOTHealing / 2;
               _loc15_ = Singleton.staticData.CalculateDamageOrHealingAmount(_loc14_,0,param2.m_maxHealingStat,param2.m_currLevel);
               if(param2.m_baseMinion.m_minionType1 == param1.m_moveType)
               {
                  _loc14_ *= Singleton.staticData.STAB_MODIFIER;
               }
               else if(param2.m_baseMinion.m_minionType2 == param1.m_moveType)
               {
                  _loc14_ *= Singleton.staticData.STAB_MODIFIER;
               }
               _loc14_ *= _loc11_;
               if(param3[param4].m_currHealth + _loc14_ > param3[param4].m_currHealthStat)
               {
                  _loc14_ = (_loc14_ = param3[param4].m_currHealthStat - param3[param4].m_currHealth) * 2;
               }
               _loc10_ += _loc14_;
            }
         }
         if(param2.m_currEnergy > 0)
         {
            _loc10_ += _loc10_ / 10 * (1 - param1.m_energyUsed / param2.m_currEnergy);
         }
         if(param1.m_selfDamage > 0 || param1.m_additionalRandomSelfDamage > 0)
         {
            _loc16_ = (_loc16_ = param1.m_selfDamage) + param1.m_additionalRandomSelfDamage / 2;
            _loc17_ = Singleton.staticData.CalculateDamageOrHealingAmount(_loc16_,0,param2.m_maxAttackStat,param2.m_currLevel);
            if(param2.m_baseMinion.m_minionType1 == param1.m_moveType)
            {
               _loc17_ *= Singleton.staticData.STAB_MODIFIER;
            }
            else if(param2.m_baseMinion.m_minionType2 == param1.m_moveType)
            {
               _loc17_ *= Singleton.staticData.STAB_MODIFIER;
            }
            _loc11_ = (_loc11_ = (_loc11_ = 1) * Singleton.staticData.CalculateEffectivenessModifier(param1.m_moveType,param2.m_baseMinion.m_minionType1)) * Singleton.staticData.CalculateEffectivenessModifier(param1.m_moveType,param2.m_baseMinion.m_minionType2);
            _loc17_ *= _loc11_;
            if(this.m_ourThreatLevels != null && _loc17_ > param2.m_currHealth)
            {
               _loc17_ = this.m_ourThreatLevels[param6] * 1.3;
            }
            _loc8_ -= _loc17_;
         }
         if(param1.m_selfHeal > 0 || param1.m_additionalRandomSelfHeal > 0)
         {
            _loc18_ = (_loc18_ = param1.m_selfHeal) + param1.m_additionalRandomSelfHeal / 2;
            _loc19_ = Singleton.staticData.CalculateDamageOrHealingAmount(_loc18_,0,param2.m_maxHealingStat,param2.m_currLevel);
            if(param2.m_baseMinion.m_minionType1 == param1.m_moveType)
            {
               _loc19_ *= Singleton.staticData.STAB_MODIFIER;
            }
            else if(param2.m_baseMinion.m_minionType2 == param1.m_moveType)
            {
               _loc19_ *= Singleton.staticData.STAB_MODIFIER;
            }
            _loc11_ = (_loc11_ = (_loc11_ = 1) * Singleton.staticData.CalculateEffectivenessModifier(param1.m_moveType,param2.m_baseMinion.m_minionType1)) * Singleton.staticData.CalculateEffectivenessModifier(param1.m_moveType,param2.m_baseMinion.m_minionType2);
            _loc19_ *= _loc11_;
            if(param2.m_currHealth + _loc19_ > param2.m_currHealthStat)
            {
               _loc19_ = param2.m_currHealthStat - param2.m_currHealth;
            }
            _loc8_ += _loc19_;
         }
         if(this.m_ourThreatLevels != null)
         {
            _loc8_ = (_loc8_ -= param1.m_exhaustTime * (_loc8_ * 0.5)) - param1.m_exhaustTime * (_loc8_ * 0.66);
         }
         var _loc12_:int = 0;
         while(_loc12_ < param1.m_statTypesToDeBuff.length)
         {
            _loc20_ = 0;
            if(param1.m_doesDeBuffTargets && param1.m_alliesItHits > 0)
            {
               if(this.m_ourThreatLevels != null)
               {
                  _loc20_ -= this.CalculateBuffValue(param1.m_statTypesToDeBuff[_loc12_],param1.m_stagesOfStatTypeToDeBuff,param3[param4],this.m_ourThreatLevels[param4]);
               }
            }
            if(param1.m_doesDeBuffSelf)
            {
               if(this.m_ourThreatLevels != null)
               {
                  _loc20_ -= this.CalculateBuffValue(param1.m_statTypesToDeBuff[_loc12_],param1.m_stagesOfStatTypeToDeBuff,param2,this.m_ourThreatLevels[param6]);
               }
            }
            _loc20_ *= param1.m_chanceToDeBuff / 100;
            _loc10_ += _loc20_;
            _loc12_++;
         }
         _loc12_ = 0;
         while(_loc12_ < param1.m_statTypesToBuff.length)
         {
            _loc21_ = 0;
            if(param1.m_doesBuffTargets && param1.m_alliesItHits > 0)
            {
               if(this.m_enemyThreatLevels != null)
               {
                  _loc21_ += this.CalculateBuffValue(param1.m_statTypesToBuff[_loc12_],param1.m_stagesOfStatTypeToBuff,param3[param4],this.m_ourThreatLevels[param4]);
               }
            }
            if(param1.m_doesBuffSelf)
            {
               if(this.m_ourThreatLevels != null)
               {
                  _loc21_ += this.CalculateBuffValue(param1.m_statTypesToBuff[_loc12_],param1.m_stagesOfStatTypeToBuff,param2,this.m_ourThreatLevels[param6]);
               }
            }
            _loc21_ *= param1.m_chanceToBuff / 100;
            _loc10_ += _loc21_;
            _loc12_++;
         }
         if(param1.m_armor)
         {
            if(!param3[param4].IsHotOrDotActive(param1.m_moveID))
            {
               _loc10_ += param3[param4].m_currHealthStat * (param1.m_armor / 100);
            }
         }
         if(this.m_ourThreatRatios != null)
         {
            _loc10_ *= this.m_ourThreatRatios[param4];
         }
         _loc8_ = (_loc8_ += _loc10_) * (param1.m_accuracy / 100);
         if(param3[param4].m_currArmorModRate < 1)
         {
            _loc8_ *= 1 / param3[param4].m_currArmorModRate;
         }
         _loc8_ *= 1 + param3[param4].m_currRedirectDamage / 100;
         if(param5)
         {
            _loc8_ += Singleton.staticData.GetDifficultyModifierForMinion(m_currMinion);
         }
         return _loc8_;
      }
      
      private function CalculateBuffValue(param1:int, param2:int, param3:OwnedMinion, param4:Number) : Number
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc5_:Number = 1;
         if(param1 == StatType.STAT_ATTACK)
         {
            if(param3.m_currHealingStat > param3.m_currAttackStat)
            {
               _loc5_ = param3.m_currAttackStat / param3.m_currHealingStat;
            }
            return _loc5_ * param4 * (1 - Singleton.staticData.GetStatStageModificationAmount(param2));
         }
         if(param1 == StatType.STAT_HEALING)
         {
            if(param3.m_currAttackStat > param3.m_currHealingStat)
            {
               _loc5_ = param3.m_currHealingStat / param3.m_currAttackStat;
            }
            return _loc5_ * param4 * Singleton.staticData.GetStatStageModificationAmount(param2);
         }
         if(param1 == StatType.STAT_SPEED)
         {
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < 5)
            {
               if(Singleton.dynamicData.GetOwnedMinionAt(_loc7_) != null && Singleton.dynamicData.GetOwnedMinionAt(_loc7_).m_currHealth > 0)
               {
                  _loc6_++;
               }
               if(Singleton.dynamicData.m_opponentsMinions[_loc7_] != null && Singleton.dynamicData.m_opponentsMinions[_loc7_].m_currHealth > 0)
               {
                  _loc6_++;
               }
               _loc7_++;
            }
            _loc5_ = (_loc6_ - param3.m_moveOrderPosition) / 10;
            if(!param3.m_hasMovedOnThisTurn)
            {
               _loc5_ *= 0.3;
            }
            else
            {
               _loc5_ *= 0.1;
            }
            return _loc5_ * param4 * Singleton.staticData.GetStatStageModificationAmount(param2);
         }
         if(param1 == StatType.STAT_ENERGY)
         {
            return (_loc5_ = param3.m_currEnergy / param3.m_currEnergyStat) * param4 * (1 - Singleton.staticData.GetStatStageModificationAmount(param2));
         }
         if(param1 == StatType.STAT_HEALTH)
         {
            return (_loc5_ = param3.m_currHealthStat / 150) * param4 * Singleton.staticData.GetStatStageModificationAmount(param2);
         }
         return 0;
      }
      
      private function CalculateTotalTeamThreat(param1:Array, param2:Array, param3:Boolean) : void
      {
         var _loc9_:Vector.<BaseMinionMove> = null;
         var _loc10_:int = 0;
         var _loc11_:Array = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc4_:Array = new Array(0,0,0,0,0);
         var _loc5_:Array = new Array(0,0,0,0,0);
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         var _loc8_:int = 0;
         while(_loc8_ < param1.length)
         {
            (_loc9_ = param1[_loc8_].m_allMovesJustHighestTier_asActualMoves).push(Singleton.staticData.GetBaseMinionMove(MinionMoveID.desperation_t1));
            _loc6_ += param1[_loc8_].m_currRedirectDamage;
            _loc10_ = 0;
            while(_loc10_ < _loc9_.length)
            {
               if(!(_loc9_[_loc10_].m_isPassive || _loc9_[_loc10_].m_isGlobalPassive))
               {
                  _loc11_ = new Array();
                  if(_loc9_[_loc10_].m_alliesItHits > 0)
                  {
                     _loc12_ = 0;
                     while(_loc12_ < param1.length)
                     {
                        if(param3)
                        {
                           _loc13_ = this.CalculateHealingMoveThreat(_loc9_[_loc10_],param1[_loc8_],param1,_loc12_,false,this.m_ourRedirectDamage);
                        }
                        else
                        {
                           _loc13_ = this.CalculateHealingMoveThreat(_loc9_[_loc10_],param1[_loc8_],param1,_loc12_,false,this.m_enemyRedirectDamage);
                        }
                        _loc11_.push(new AiMoveStruct());
                        _loc11_[_loc12_].m_moveThreat = _loc13_;
                        _loc12_++;
                     }
                     _loc11_ = _loc11_.sortOn("m_moveThreat",Array.DESCENDING | Array.NUMERIC);
                     _loc13_ = 0;
                     _loc12_ = 0;
                     while(_loc12_ < param1.length)
                     {
                        _loc13_ += _loc11_[_loc12_].m_moveThreat;
                        if(_loc12_ > _loc9_[_loc10_].m_alliesItHits - 2 && !_loc9_[_loc10_].m_hitsRandomTargets)
                        {
                           break;
                        }
                        _loc12_++;
                     }
                     if(_loc9_[_loc10_].m_hitsRandomTargets)
                     {
                        _loc13_ /= param1.length;
                        if(param1.length < _loc9_[_loc10_].m_alliesItHits)
                        {
                           _loc13_ *= param1.length;
                        }
                        else
                        {
                           _loc13_ *= _loc9_[_loc10_].m_alliesItHits;
                        }
                     }
                     if(_loc13_ > _loc4_[_loc8_])
                     {
                        _loc4_[_loc8_] = _loc13_;
                        if(_loc13_ > _loc7_)
                        {
                           _loc7_ = _loc13_;
                        }
                     }
                  }
                  else
                  {
                     _loc12_ = 0;
                     while(_loc12_ < param2.length)
                     {
                        if(param3)
                        {
                           _loc13_ = this.CalculateDamageMoveThreat(_loc9_[_loc10_],param1[_loc8_],param2,_loc12_,false,this.m_ourRedirectDamage);
                        }
                        else
                        {
                           _loc13_ = this.CalculateDamageMoveThreat(_loc9_[_loc10_],param1[_loc8_],param2,_loc12_,false,this.m_enemyRedirectDamage);
                        }
                        _loc11_.push(new AiMoveStruct());
                        _loc11_[_loc12_].m_moveThreat = _loc13_;
                        _loc12_++;
                     }
                     _loc11_ = _loc11_.sortOn("m_moveThreat",Array.DESCENDING | Array.NUMERIC);
                     _loc13_ = 0;
                     _loc12_ = 0;
                     while(_loc12_ < param2.length)
                     {
                        _loc13_ += _loc11_[_loc12_].m_moveThreat;
                        if(_loc12_ > _loc9_[_loc10_].m_enemiesItHits - 2 && !_loc9_[_loc10_].m_hitsRandomTargets)
                        {
                           break;
                        }
                        _loc12_++;
                     }
                     if(_loc9_[_loc10_].m_hitsRandomTargets)
                     {
                        _loc13_ /= param2.length;
                        if(param2.length < _loc9_[_loc10_].m_enemiesItHits)
                        {
                           _loc13_ *= param2.length;
                        }
                        else
                        {
                           _loc13_ *= _loc9_[_loc10_].m_enemiesItHits;
                        }
                     }
                     if(_loc13_ > _loc4_[_loc8_])
                     {
                        _loc4_[_loc8_] = _loc13_;
                        if(_loc13_ > _loc7_)
                        {
                           _loc7_ = _loc13_;
                        }
                     }
                  }
               }
               _loc10_++;
            }
            _loc8_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc4_.length)
         {
            if(_loc4_[_loc10_] > 0)
            {
               _loc5_[_loc10_] = _loc4_[_loc10_] / _loc7_;
            }
            _loc10_++;
         }
         if((_loc6_ /= 100) > 1)
         {
            _loc6_ = 1;
         }
         if(param3)
         {
            this.m_enemyThreatLevels = _loc4_;
            this.m_enemyThreatRatios = _loc5_;
            this.m_enemyRedirectDamage = _loc6_;
         }
         else
         {
            this.m_ourThreatLevels = _loc4_;
            this.m_ourThreatRatios = _loc5_;
            this.m_ourRedirectDamage = _loc6_;
         }
      }
      
      public function GetRandomMinionsForMove(param1:BaseMinionMove) : void
      {
         var _loc2_:OwnedMinion = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param1.m_enemiesItHits > 0)
         {
            _loc3_ = 0;
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               if(Singleton.dynamicData.GetOwnedMinionAt(_loc4_) != null && Singleton.dynamicData.GetOwnedMinionAt(_loc4_).m_currHealth > 0 && !Singleton.dynamicData.GetOwnedMinionAt(_loc4_).m_isBattleModShieldActive)
               {
                  _loc3_++;
               }
               _loc4_++;
            }
            _loc5_ = 0;
            while(_loc5_ < 100)
            {
               if(m_currMove.m_enemiesItHits == m_enemiesItHits.length || m_enemiesItHits.length == _loc3_)
               {
                  break;
               }
               _loc2_ = Singleton.dynamicData.GetOwnedMinionAt(Math.random() * 5);
               if(_loc2_ != null && _loc2_.m_currHealth > 0 && !_loc2_.m_isBattleModShieldActive)
               {
                  AddToEnemiesItHits(_loc2_);
               }
               _loc5_++;
            }
         }
         if(param1.m_alliesItHits > 0)
         {
            _loc3_ = 0;
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               if(Singleton.dynamicData.m_opponentsMinions[_loc4_] != null && Singleton.dynamicData.m_opponentsMinions[_loc4_].m_currHealth > 0)
               {
                  _loc3_++;
               }
               _loc4_++;
            }
            _loc5_ = 0;
            while(_loc5_ < 100)
            {
               if(m_currMove.m_alliesItHits == m_alliesItHits.length || m_alliesItHits.length == _loc3_)
               {
                  break;
               }
               _loc2_ = Singleton.dynamicData.m_opponentsMinions[int(Math.random() * 5)];
               if(_loc2_ != null && _loc2_.m_currHealth > 0)
               {
                  AddToAlliesItHits(_loc2_);
               }
               _loc5_++;
            }
         }
      }
   }
}
