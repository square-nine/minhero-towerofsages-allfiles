package BattleSystems.Other
{
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   
   public class PlayerMoveSystem extends BaseMoveSystem
   {
       
      
      public function PlayerMoveSystem()
      {
         super();
         m_isPlayerMoveSystem = true;
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
               Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.OpenUpTheGetMoveFor(param1);
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
               Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.OpenUpTheGetMoveFor(param1);
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
            Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.OpenUpTheGetMoveFor(param1);
         }
      }
      
      public function MoveChosen(param1:int) : void
      {
         m_currMove = Singleton.staticData.GetBaseMinionMove(param1);
         if(m_currMove.m_onlyHitsSelf)
         {
            AddToAlliesItHits(m_currMinion);
            Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.CloseGetMoveForCurrentMinion();
         }
         else if(m_currMove.m_enemiesItHits > 0)
         {
            if(m_currMove.m_hitsRandomTargets || m_currMove.m_enemiesItHits == 5)
            {
               this.GetRandomMinionsForMove(m_currMove);
               Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.CloseGetMoveForCurrentMinion();
            }
            else
            {
               Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.SetupSelectAnEnemy();
            }
         }
         else if(m_currMove.m_alliesItHits > 0)
         {
            if(m_currMove.m_hitsRandomTargets || m_currMove.m_alliesItHits == 5)
            {
               this.GetRandomMinionsForMove(m_currMove);
               Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.CloseGetMoveForCurrentMinion();
            }
            else
            {
               Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.SetupSelectAnAlly();
            }
         }
      }
      
      private function GetRandomMinionsForMove(param1:BaseMinionMove) : void
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
               if(Singleton.dynamicData.m_opponentsMinions[_loc4_] != null && Singleton.dynamicData.m_opponentsMinions[_loc4_].m_currHealth > 0 && !Singleton.dynamicData.m_opponentsMinions[_loc4_].m_isBattleModShieldActive)
               {
                  _loc3_++;
               }
               _loc4_++;
            }
            _loc5_ = 0;
            while(_loc5_ < 100)
            {
               if(m_enemiesItHits.length == m_currMove.m_enemiesItHits || m_enemiesItHits.length == _loc3_)
               {
                  break;
               }
               _loc2_ = Singleton.dynamicData.m_opponentsMinions[int(Math.random() * 5)];
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
               if(Singleton.dynamicData.GetOwnedMinionAt(_loc4_) != null && Singleton.dynamicData.GetOwnedMinionAt(_loc4_).m_currHealth > 0)
               {
                  _loc3_++;
               }
               _loc4_++;
            }
            _loc5_ = 0;
            while(_loc5_ < 200)
            {
               if(m_alliesItHits.length == m_currMove.m_alliesItHits || m_alliesItHits.length == _loc3_)
               {
                  break;
               }
               _loc2_ = Singleton.dynamicData.GetOwnedMinionAt(int(Math.random() * 5));
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
