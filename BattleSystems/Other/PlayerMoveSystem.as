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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(!_loc2_)
            {
               addr24:
               m_isPlayerMoveSystem = true;
            }
            return;
         }
         §§goto(addr24);
      }
      
      override public function ChooseAMoveFor(param1:OwnedMinion) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:* = 0;
         super.ChooseAMoveFor(param1);
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            §§push(param1.m_isFrozen);
            if(!_loc6_)
            {
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     var _loc4_:*;
                     §§push((_loc4_ = param1).m_turnsFrozen);
                     if(!_loc6_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc5_:* = §§pop();
                     if(!_loc6_)
                     {
                        _loc4_.m_turnsFrozen = _loc5_;
                     }
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(param1.m_turnsFrozen);
                        if(!_loc6_)
                        {
                           §§push(1);
                           if(!(_loc6_ && Boolean(_loc3_)))
                           {
                              §§push(§§pop() + Math.random() * 3);
                              if(!_loc6_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    param1.m_isFrozen = false;
                                    TweenLite.to(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(param1).m_minionSprite,1,{"removeTint":true});
                                    if(!_loc6_)
                                    {
                                       TweenLite.to(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionTopLayerVisualObjectFor(param1).m_minionSprite,1,{"removeTint":true});
                                       if(!_loc6_)
                                       {
                                          §§push(Singleton.utility);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop().m_screenControllers);
                                             if(!(_loc6_ && Boolean(this)))
                                             {
                                                §§push(§§pop().m_battleScreen);
                                                if(_loc7_ || Boolean(this))
                                                {
                                                   §§push(§§pop().m_battleScreenVisualController);
                                                   if(!_loc6_)
                                                   {
                                                      §§pop().OpenUpTheGetMoveFor(param1);
                                                      addr522:
                                                      return;
                                                      addr168:
                                                      addr137:
                                                   }
                                                   else
                                                   {
                                                      addr215:
                                                      §§pop().OpenUpTheGetMoveFor(param1);
                                                   }
                                                }
                                                else
                                                {
                                                   addr165:
                                                   §§pop().StartQueuedMoves();
                                                   if(_loc7_)
                                                   {
                                                      §§goto(addr168);
                                                   }
                                                }
                                                §§goto(addr522);
                                             }
                                             else
                                             {
                                                addr206:
                                                §§push(§§pop().m_battleScreen);
                                                if(!(_loc6_ && Boolean(param1)))
                                                {
                                                   §§goto(addr215);
                                                   §§push(§§pop().m_battleScreenVisualController);
                                                }
                                                else
                                                {
                                                   addr231:
                                                   §§pop().StartQueuedMoves();
                                                }
                                             }
                                             addr232:
                                             §§goto(addr522);
                                          }
                                          else
                                          {
                                             addr198:
                                             §§push(§§pop().m_screenControllers);
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                §§goto(addr206);
                                             }
                                             else
                                             {
                                                addr230:
                                                §§push(§§pop().m_battleScreen);
                                             }
                                             §§goto(addr231);
                                          }
                                       }
                                       else
                                       {
                                          addr264:
                                          m_enemiesItHits = param1.m_chargeEnemiesItHits;
                                          _loc2_ = false;
                                          if(!_loc6_)
                                          {
                                             addr273:
                                             _loc3_ = 0;
                                             addr274:
                                             loop0:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                if(_loc7_ || Boolean(this))
                                                {
                                                   if(§§pop() >= m_alliesItHits.length)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr308:
                                                         §§push(0);
                                                         if(_loc7_ || _loc2_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc6_)
                                                               {
                                                                  break loop0;
                                                               }
                                                               addr337:
                                                               _loc3_++;
                                                            }
                                                            addr401:
                                                            if(!§§pop())
                                                            {
                                                               LoadUpTheQueueAndPlayMoves();
                                                            }
                                                            addr457:
                                                            §§goto(addr522);
                                                         }
                                                         if(§§pop() > 0)
                                                         {
                                                            addr462:
                                                            §§push((_loc4_ = param1).m_currExhaust);
                                                            if(_loc7_ || Boolean(_loc3_))
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc5_ = §§pop();
                                                            if(!_loc6_)
                                                            {
                                                               _loc4_.m_currExhaust = _loc5_;
                                                            }
                                                            addr482:
                                                            QueueUpExhaustedAnimation();
                                                            if(_loc7_)
                                                            {
                                                               §§push(Singleton.utility);
                                                               if(!(_loc6_ && Boolean(this)))
                                                               {
                                                                  addr502:
                                                                  §§push(§§pop().m_screenControllers);
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(§§pop().m_battleScreen);
                                                                     if(!(_loc6_ && Boolean(this)))
                                                                     {
                                                                        addr513:
                                                                        §§pop().StartQueuedMoves();
                                                                     }
                                                                     §§goto(addr522);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr518:
                                                                     §§push(§§pop().m_battleScreen);
                                                                  }
                                                                  §§pop().m_battleScreenVisualController.OpenUpTheGetMoveFor(param1);
                                                                  §§goto(addr522);
                                                               }
                                                               else
                                                               {
                                                                  addr517:
                                                                  §§push(§§pop().m_screenControllers);
                                                               }
                                                               §§goto(addr518);
                                                            }
                                                            §§goto(addr522);
                                                         }
                                                         else
                                                         {
                                                            §§push(Singleton.utility);
                                                         }
                                                         §§goto(addr517);
                                                      }
                                                      addr392:
                                                      param1.m_chargeEnemiesItHits = null;
                                                      if(!_loc6_)
                                                      {
                                                         param1.m_currChargeMove = null;
                                                         §§push(_loc2_);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr482);
                                                      }
                                                      §§goto(addr522);
                                                   }
                                                   else
                                                   {
                                                      if(m_alliesItHits[_loc3_].m_currHealth >= 0)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(true);
                                                      if(_loc7_ || Boolean(_loc3_))
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(_loc7_)
                                                         {
                                                            §§goto(addr308);
                                                         }
                                                         addr325:
                                                         §§push(true);
                                                         if(!_loc6_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(!(_loc6_ && Boolean(this)))
                                                            {
                                                               addr346:
                                                               §§push(_loc2_);
                                                               if(!(_loc6_ && Boolean(_loc3_)))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        m_alliesItHits = new Vector.<OwnedMinion>();
                                                                        m_enemiesItHits = new Vector.<OwnedMinion>();
                                                                     }
                                                                     m_currMinion.m_currCharge = -99;
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        this.GetRandomMinionsForMove(m_currMove);
                                                                        if(_loc7_)
                                                                        {
                                                                           addr384:
                                                                           m_currMinion.m_currCharge = 0;
                                                                           if(!_loc6_)
                                                                           {
                                                                              param1.m_chargeAlliesItHits = null;
                                                                              §§goto(addr392);
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr432:
                                                                        QueueUpChargeAnimation();
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(Singleton.utility);
                                                                           if(!(_loc6_ && Boolean(this)))
                                                                           {
                                                                              §§push(§§pop().m_screenControllers);
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§push(§§pop().m_battleScreen);
                                                                                 if(!(_loc6_ && Boolean(this)))
                                                                                 {
                                                                                    §§pop().StartQueuedMoves();
                                                                                    §§goto(addr457);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr513);
                                                                                 }
                                                                              }
                                                                              §§goto(addr522);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr502);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr513);
                                                                  }
                                                                  §§goto(addr384);
                                                               }
                                                               §§goto(addr401);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr462);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr401);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(§§pop() >= m_enemiesItHits.length)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §§goto(addr346);
                                                   }
                                                   §§goto(addr432);
                                                }
                                                else if(m_enemiesItHits[_loc3_].m_currHealth < 0)
                                                {
                                                   §§goto(addr325);
                                                }
                                                else
                                                {
                                                   §§goto(addr337);
                                                }
                                                §§goto(addr462);
                                             }
                                             §§goto(addr517);
                                          }
                                          §§goto(addr274);
                                       }
                                       §§goto(addr522);
                                    }
                                    §§goto(addr137);
                                 }
                                 else
                                 {
                                    QueueUpFrozenAnimation();
                                    §§push(Singleton.utility);
                                    if(_loc7_ || _loc2_)
                                    {
                                       §§push(§§pop().m_screenControllers);
                                       if(_loc7_ || Boolean(param1))
                                       {
                                          §§push(§§pop().m_battleScreen);
                                          if(!(_loc6_ && Boolean(_loc3_)))
                                          {
                                             §§goto(addr165);
                                          }
                                          else
                                          {
                                             §§goto(addr231);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr230);
                                       }
                                       §§goto(addr231);
                                    }
                                    else
                                    {
                                       §§goto(addr198);
                                    }
                                 }
                                 §§goto(addr198);
                              }
                              else
                              {
                                 addr186:
                                 if(§§pop() > §§pop())
                                 {
                                    if(!(_loc6_ && Boolean(param1)))
                                    {
                                       §§push(Singleton.utility);
                                       if(_loc7_)
                                       {
                                          §§goto(addr198);
                                       }
                                       else
                                       {
                                          addr229:
                                          §§push(§§pop().m_screenControllers);
                                       }
                                       §§goto(addr230);
                                    }
                                    §§goto(addr232);
                                 }
                                 else
                                 {
                                    QueueUpStunAnimation();
                                    if(_loc7_ || Boolean(param1))
                                    {
                                       addr227:
                                       §§goto(addr229);
                                       §§push(Singleton.utility);
                                    }
                                    else
                                    {
                                       addr239:
                                       §§push(param1.m_currCharge);
                                       if(_loc7_)
                                       {
                                          addr246:
                                          if(§§pop() == param1.m_currChargeMove.m_chargeTime)
                                          {
                                             m_currMove = param1.m_currChargeMove;
                                             if(!_loc6_)
                                             {
                                                m_alliesItHits = param1.m_chargeAlliesItHits;
                                             }
                                             §§goto(addr264);
                                          }
                                          else
                                          {
                                             §§push((_loc4_ = param1).m_currCharge);
                                             if(!(_loc6_ && Boolean(_loc3_)))
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             _loc5_ = §§pop();
                                             if(_loc7_ || _loc2_)
                                             {
                                                _loc4_.m_currCharge = _loc5_;
                                             }
                                             if(_loc7_)
                                             {
                                                §§goto(addr432);
                                             }
                                             §§goto(addr522);
                                          }
                                       }
                                       §§goto(addr273);
                                    }
                                 }
                                 §§goto(addr522);
                              }
                           }
                        }
                        §§goto(addr246);
                     }
                     §§goto(addr273);
                  }
                  §§goto(addr227);
               }
               else
               {
                  §§push(param1.m_isStunned);
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        §§push(50);
                        if(!(_loc6_ && Boolean(this)))
                        {
                           §§goto(addr186);
                           §§push(Math.random() * 100);
                        }
                        §§goto(addr273);
                     }
                     else if(param1.m_currChargeMove != null)
                     {
                        if(!_loc6_)
                        {
                           §§goto(addr239);
                        }
                        §§goto(addr264);
                     }
                     else
                     {
                        §§push(param1.m_currExhaust);
                     }
                     §§goto(addr308);
                  }
               }
            }
            §§goto(addr264);
         }
         §§goto(addr522);
      }
      
      public function MoveChosen(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         m_currMove = Singleton.staticData.GetBaseMinionMove(param1);
         if(m_currMove.m_onlyHitsSelf)
         {
            AddToAlliesItHits(m_currMinion);
            if(_loc2_)
            {
               §§push(Singleton.utility);
               if(!_loc3_)
               {
                  §§push(§§pop().m_screenControllers);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(§§pop().m_battleScreen);
                     if(_loc2_ || Boolean(this))
                     {
                        §§push(§§pop().m_battleScreenVisualController);
                        if(_loc2_)
                        {
                           §§pop().CloseGetMoveForCurrentMinion();
                        }
                        else
                        {
                           addr130:
                           §§pop().CloseGetMoveForCurrentMinion();
                           if(_loc3_)
                           {
                              addr192:
                              this.GetRandomMinionsForMove(m_currMove);
                              §§push(Singleton.utility);
                              if(_loc2_ || _loc2_)
                              {
                                 addr204:
                                 §§push(§§pop().m_screenControllers);
                                 if(_loc2_)
                                 {
                                    addr207:
                                    §§push(§§pop().m_battleScreen);
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr222:
                                       §§push(§§pop().m_battleScreenVisualController);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          addr230:
                                          §§pop().CloseGetMoveForCurrentMinion();
                                       }
                                       §§goto(addr238);
                                    }
                                    else
                                    {
                                       addr236:
                                       §§push(§§pop().m_battleScreenVisualController);
                                    }
                                    addr237:
                                    §§pop().SetupSelectAnAlly();
                                    §§goto(addr238);
                                 }
                                 else
                                 {
                                    addr235:
                                    §§push(§§pop().m_battleScreen);
                                 }
                                 §§goto(addr236);
                              }
                              else
                              {
                                 addr234:
                                 §§push(§§pop().m_screenControllers);
                              }
                              §§goto(addr235);
                           }
                           else
                           {
                              addr165:
                           }
                        }
                        addr238:
                        return;
                     }
                     addr127:
                     §§push(§§pop().m_battleScreenVisualController);
                     if(_loc2_)
                     {
                        §§goto(addr130);
                     }
                     §§goto(addr230);
                  }
                  else
                  {
                     addr124:
                     §§push(§§pop().m_battleScreen);
                     if(!_loc3_)
                     {
                        §§goto(addr127);
                     }
                  }
                  §§goto(addr222);
               }
               §§goto(addr204);
            }
            else
            {
               addr56:
               §§push(m_currMove.m_hitsRandomTargets);
               if(_loc2_)
               {
                  §§push(§§pop());
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(!§§pop())
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr77:
                           §§pop();
                           §§push(m_currMove.m_enemiesItHits == 5);
                           if(!(_loc2_ || Boolean(param1)))
                           {
                              addr181:
                              if(!§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§pop();
                                    §§push(m_currMove.m_alliesItHits == 5);
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                 }
                                 §§goto(addr192);
                              }
                              else
                              {
                                 §§goto(addr234);
                                 §§push(Singleton.utility);
                              }
                           }
                           §§goto(addr234);
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           this.GetRandomMinionsForMove(m_currMove);
                           §§push(Singleton.utility);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(§§pop().m_screenControllers);
                              if(_loc2_ || _loc3_)
                              {
                                 §§goto(addr124);
                              }
                              §§goto(addr235);
                           }
                           else
                           {
                              addr143:
                              §§push(§§pop().m_screenControllers);
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 §§push(§§pop().m_battleScreen);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop().m_battleScreenVisualController);
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§pop().SetupSelectAnEnemy();
                                       if(_loc2_)
                                       {
                                          §§goto(addr165);
                                       }
                                       else
                                       {
                                          §§goto(addr192);
                                       }
                                    }
                                    §§goto(addr237);
                                 }
                                 §§goto(addr222);
                              }
                           }
                           §§goto(addr207);
                        }
                        §§goto(addr230);
                     }
                     else
                     {
                        §§push(Singleton.utility);
                        if(_loc2_ || Boolean(this))
                        {
                           §§goto(addr143);
                        }
                     }
                     §§goto(addr204);
                  }
                  §§goto(addr181);
               }
               §§goto(addr77);
            }
         }
         else
         {
            if(m_currMove.m_enemiesItHits > 0)
            {
               §§goto(addr56);
            }
            else if(m_currMove.m_alliesItHits > 0)
            {
               §§push(m_currMove.m_hitsRandomTargets);
               if(_loc2_ || _loc2_)
               {
               }
               §§goto(addr181);
            }
            §§goto(addr230);
         }
         §§goto(addr56);
      }
      
      private function GetRandomMinionsForMove(param1:BaseMinionMove) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:OwnedMinion = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(!_loc7_)
         {
            §§push(param1.m_enemiesItHits);
            if(!_loc7_)
            {
               if(§§pop() > 0)
               {
                  if(!_loc7_)
                  {
                     §§push(0);
                     if(!(_loc7_ && Boolean(this)))
                     {
                        addr40:
                        _loc3_ = §§pop();
                        addr45:
                        if(!_loc7_)
                        {
                           addr43:
                           §§push(0);
                        }
                        loop11:
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(5);
                           if(_loc6_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 §§push(0);
                                 if(!_loc7_)
                                 {
                                    _loc5_ = §§pop();
                                    if(!_loc7_)
                                    {
                                       loop16:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          if(!_loc7_)
                                          {
                                             §§push(100);
                                             if(_loc6_ || Boolean(_loc2_))
                                             {
                                                break loop11;
                                             }
                                             addr271:
                                             if(§§pop() > §§pop())
                                             {
                                                if(_loc6_)
                                                {
                                                   §§push(0);
                                                   if(_loc6_ || Boolean(param1))
                                                   {
                                                      _loc3_ = §§pop();
                                                      _loc4_ = 0;
                                                      addr285:
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         if(!(_loc7_ && Boolean(_loc2_)))
                                                         {
                                                            addr478:
                                                            §§push(5);
                                                            if(!(_loc7_ && Boolean(_loc2_)))
                                                            {
                                                               loop2:
                                                               while(§§pop() < §§pop())
                                                               {
                                                                  §§push(Singleton.dynamicData);
                                                                  §§push(_loc4_);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                     if(!(_loc7_ && Boolean(param1)))
                                                                     {
                                                                        addr401:
                                                                        §§push(§§pop() == null);
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr393:
                                                                              §§push(§§pop());
                                                                              if(_loc6_ || Boolean(_loc3_))
                                                                              {
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc6_ || Boolean(param1))
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             addr410:
                                                                                             §§push(Singleton.dynamicData);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                addr328:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   addr329:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                                                      if(_loc7_ && Boolean(_loc3_))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().m_currHealth);
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                   }
                                                                                                   addr417:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc2_ = §§pop();
                                                                                                      if(_loc6_ || Boolean(_loc2_))
                                                                                                      {
                                                                                                         §§push(_loc2_ == null);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                            if(_loc6_ || Boolean(_loc3_))
                                                                                                            {
                                                                                                               addr439:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(_loc6_ || Boolean(this))
                                                                                                                     {
                                                                                                                        addr462:
                                                                                                                        addr458:
                                                                                                                        if(_loc2_.m_currHealth > 0)
                                                                                                                        {
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              addr465:
                                                                                                                              AddToAlliesItHits(_loc2_);
                                                                                                                              if(_loc7_ && Boolean(_loc2_))
                                                                                                                              {
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 break loop1;
                                                                                                                              }
                                                                                                                              addr476:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        _loc5_++;
                                                                                                                        §§goto(addr476);
                                                                                                                     }
                                                                                                                     §§goto(addr465);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr462);
                                                                                                         }
                                                                                                         §§goto(addr439);
                                                                                                      }
                                                                                                      §§goto(addr458);
                                                                                                   }
                                                                                                }
                                                                                                addr328:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr417);
                                                                                             }
                                                                                             addr410:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(m_alliesItHits.length == _loc3_);
                                                                                             break loop17;
                                                                                          }
                                                                                          addr402:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    addr385:
                                                                                    addr347:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc6_ || Boolean(_loc3_)))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          _loc3_++;
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             break loop2;
                                                                                          }
                                                                                       }
                                                                                       continue loop1;
                                                                                    }
                                                                                    §§goto(addr465);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§goto(addr479);
                                                                                    }
                                                                                    §§goto(addr410);
                                                                                    §§push(Singleton.dynamicData);
                                                                                 }
                                                                                 addr406:
                                                                                 addr313:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(_loc6_ || Boolean(_loc2_))
                                                                                    {
                                                                                       break loop22;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr406);
                                                                              }
                                                                              addr479:
                                                                              return;
                                                                              addr393:
                                                                           }
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           §§goto(addr402);
                                                                        }
                                                                        addr302:
                                                                        addr401:
                                                                     }
                                                                     §§goto(addr337);
                                                                  }
                                                                  §§goto(addr329);
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc7_ && Boolean(param1))
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     §§goto(addr347);
                                                                     §§push(§§pop() > §§pop());
                                                                  }
                                                               }
                                                               §§push(0);
                                                               if(!(_loc7_ && Boolean(this)))
                                                               {
                                                                  break loop16;
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  §§goto(addr393);
                                                                  §§push(m_alliesItHits.length == m_currMove.m_alliesItHits);
                                                                  §§push(m_alliesItHits.length == m_currMove.m_alliesItHits);
                                                               }
                                                               §§goto(addr479);
                                                            }
                                                            addr478:
                                                         }
                                                         break;
                                                      }
                                                      addr359:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr478);
                                                      §§goto(addr465);
                                                   }
                                                }
                                                §§goto(addr285);
                                             }
                                             §§goto(addr479);
                                          }
                                          break;
                                       }
                                       _loc5_ = §§pop();
                                       §§goto(addr385);
                                       addr242:
                                    }
                                    addr261:
                                    §§push(param1.m_alliesItHits);
                                    §§push(0);
                                    if(_loc6_ || Boolean(_loc3_))
                                    {
                                       §§goto(addr271);
                                    }
                                    §§goto(addr478);
                                 }
                                 §§goto(addr338);
                              }
                              else
                              {
                                 §§push(Singleton.dynamicData);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop().m_opponentsMinions[_loc4_] == null);
                                    if(_loc6_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc6_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc7_ && Boolean(param1)))
                                          {
                                             if(§§pop())
                                             {
                                                §§pop();
                                                if(_loc6_ || Boolean(_loc2_))
                                                {
                                                   §§push(Singleton.dynamicData);
                                                   if(_loc6_)
                                                   {
                                                      addr88:
                                                      §§push(§§pop().m_opponentsMinions[_loc4_].m_currHealth > 0);
                                                      §§push(§§pop().m_opponentsMinions[_loc4_].m_currHealth > 0);
                                                      if(_loc6_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§pop();
                                                            §§push(Singleton.dynamicData);
                                                            if(_loc6_ || Boolean(_loc3_))
                                                            {
                                                               §§push(!§§pop().m_opponentsMinions[_loc4_].m_isBattleModShieldActive);
                                                               if(_loc6_)
                                                               {
                                                                  addr109:
                                                                  if(!§§pop())
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc6_ || Boolean(param1))
                                                                  {
                                                                     _loc3_++;
                                                                     continue;
                                                                  }
                                                                  §§goto(addr358);
                                                               }
                                                               §§goto(addr302);
                                                            }
                                                            §§goto(addr328);
                                                         }
                                                         §§goto(addr109);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               addr143:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(m_enemiesItHits.length == _loc3_);
                                                                     if(_loc6_ || Boolean(param1))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              §§push(Singleton.dynamicData);
                                                                              if(_loc6_)
                                                                              {
                                                                                 _loc2_ = §§pop().m_opponentsMinions[int(Math.random() * 5)];
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§push(_loc2_ != null);
                                                                                    if(_loc6_ || Boolean(_loc3_))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§pop();
                                                                                             if(!(_loc7_ && Boolean(this)))
                                                                                             {
                                                                                                addr198:
                                                                                                §§push(_loc2_.m_currHealth > 0);
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   addr204:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc6_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            §§push(_loc2_.m_isBattleModShieldActive);
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               addr221:
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     addr224:
                                                                                                                     AddToEnemiesItHits(_loc2_);
                                                                                                                     if(_loc6_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        addr241:
                                                                                                                        _loc5_++;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr242);
                                                                                                               }
                                                                                                               §§goto(addr241);
                                                                                                            }
                                                                                                            §§goto(addr221);
                                                                                                         }
                                                                                                         §§goto(addr224);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr221);
                                                                                             }
                                                                                             §§goto(addr241);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr204);
                                                                                    }
                                                                                    §§goto(addr221);
                                                                                 }
                                                                                 §§goto(addr198);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr261);
                                                                           §§goto(addr271);
                                                                        }
                                                                        §§goto(addr410);
                                                                        addr157:
                                                                     }
                                                                     §§goto(addr401);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr359);
                                                               addr143:
                                                            }
                                                            §§goto(addr157);
                                                         }
                                                         addr142:
                                                      }
                                                   }
                                                   §§goto(addr410);
                                                }
                                                §§goto(addr285);
                                             }
                                             §§goto(addr88);
                                          }
                                          §§goto(addr393);
                                       }
                                       §§goto(addr143);
                                    }
                                    §§goto(addr88);
                                 }
                              }
                              §§goto(addr328);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc6_ || Boolean(this))
                              {
                                 §§goto(addr261);
                              }
                              §§goto(addr285);
                           }
                           else
                           {
                              §§push(m_enemiesItHits.length == m_currMove.m_enemiesItHits);
                              if(!_loc7_)
                              {
                                 §§push(§§pop());
                                 if(_loc6_)
                                 {
                                    §§goto(addr142);
                                 }
                                 §§goto(addr313);
                              }
                              §§goto(addr143);
                           }
                        }
                     }
                     _loc4_ = §§pop();
                     §§goto(addr45);
                  }
                  §§goto(addr43);
               }
               §§goto(addr261);
            }
         }
         §§goto(addr40);
      }
   }
}
