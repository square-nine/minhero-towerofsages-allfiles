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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(_loc1_)
            {
               m_isPlayerMoveSystem = false;
            }
         }
      }
      
      override public function ChooseAMoveFor(param1:OwnedMinion) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:* = 0;
         if(!_loc6_)
         {
            super.ChooseAMoveFor(param1);
            if(_loc7_ || Boolean(_loc3_))
            {
               §§push(param1.m_isFrozen);
               if(_loc7_)
               {
                  if(§§pop())
                  {
                     addr35:
                     var _loc4_:*;
                     §§push((_loc4_ = param1).m_turnsFrozen);
                     if(_loc7_ || _loc2_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc5_:* = §§pop();
                     if(!_loc6_)
                     {
                        _loc4_.m_turnsFrozen = _loc5_;
                     }
                     if(_loc7_ || Boolean(param1))
                     {
                        §§push(param1.m_turnsFrozen);
                        if(!(_loc6_ && _loc2_))
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
                                    if(_loc7_ || Boolean(param1))
                                    {
                                       TweenLite.to(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionTopLayerVisualObjectFor(param1).m_minionSprite,1,{"removeTint":true});
                                       if(_loc7_ || Boolean(param1))
                                       {
                                          m_currMinion = param1;
                                          addr135:
                                          §§push(Singleton.utility);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop().m_screenControllers);
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                §§push(§§pop().m_battleScreen);
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   §§push(§§pop().m_battleScreenVisualController);
                                                   if(!_loc6_)
                                                   {
                                                      §§pop().SetupTheGetForAiMinion(param1);
                                                      addr160:
                                                      TweenLite.to(this,0.7,{"onComplete":this.GetMoveAfterDelay});
                                                      addr194:
                                                   }
                                                   else
                                                   {
                                                      addr234:
                                                      §§pop().SetupTheGetForAiMinion(param1);
                                                      addr236:
                                                      TweenLite.to(this,0.7,{"onComplete":this.GetMoveAfterDelay});
                                                      addr252:
                                                   }
                                                   §§goto(addr577);
                                                }
                                                else
                                                {
                                                   addr251:
                                                   §§pop().StartQueuedMoves();
                                                }
                                                §§goto(addr252);
                                             }
                                             else
                                             {
                                                addr230:
                                                §§push(§§pop().m_battleScreen);
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr234);
                                                   §§push(§§pop().m_battleScreenVisualController);
                                                }
                                                else
                                                {
                                                   §§goto(addr251);
                                                }
                                                §§goto(addr234);
                                             }
                                          }
                                          else
                                          {
                                             addr175:
                                             §§push(§§pop().m_screenControllers);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop().m_battleScreen);
                                                if(!(_loc6_ && Boolean(this)))
                                                {
                                                   §§pop().StartQueuedMoves();
                                                   if(_loc7_ || Boolean(this))
                                                   {
                                                      §§goto(addr194);
                                                   }
                                                   else
                                                   {
                                                      addr207:
                                                      §§push(50);
                                                      if(!_loc6_)
                                                      {
                                                         addr214:
                                                         if(§§pop() > Math.random() * 100)
                                                         {
                                                            m_currMinion = param1;
                                                            addr218:
                                                            §§push(Singleton.utility);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop().m_screenControllers);
                                                               if(!(_loc6_ && Boolean(_loc3_)))
                                                               {
                                                                  §§goto(addr230);
                                                               }
                                                               §§goto(addr251);
                                                            }
                                                            else
                                                            {
                                                               addr249:
                                                               §§push(§§pop().m_screenControllers);
                                                            }
                                                            §§goto(addr251);
                                                            §§push(§§pop().m_battleScreen);
                                                         }
                                                         else
                                                         {
                                                            QueueUpStunAnimation();
                                                            §§goto(addr249);
                                                            §§push(Singleton.utility);
                                                         }
                                                         §§goto(addr249);
                                                      }
                                                      else
                                                      {
                                                         addr315:
                                                         _loc3_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc7_)
                                                            {
                                                               if(§§pop() < m_alliesItHits.length)
                                                               {
                                                                  if(m_alliesItHits[_loc3_].m_currHealth < 0)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(true);
                                                                        if(_loc7_ || _loc2_)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           addr345:
                                                                           §§push(0);
                                                                           if(_loc7_ || Boolean(this))
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              §§goto(addr422);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr441);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc3_++;
                                                                     if(_loc7_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr407:
                                                                     m_enemiesItHits = new Vector.<OwnedMinion>();
                                                                     m_currMinion.m_currCharge = -99;
                                                                     this.GetRandomMinionsForMove(m_currMove);
                                                                  }
                                                                  §§goto(addr419);
                                                               }
                                                               §§goto(addr345);
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() >= m_enemiesItHits.length)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  addr392:
                                                                  §§push(_loc2_);
                                                                  if(_loc7_ || Boolean(_loc3_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        m_alliesItHits = new Vector.<OwnedMinion>();
                                                                        §§goto(addr407);
                                                                     }
                                                                     addr419:
                                                                     m_currMinion.m_currCharge = 0;
                                                                     addr422:
                                                                     if(_loc7_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!_loc6_)
                                                                           {
                                                                              break loop0;
                                                                           }
                                                                           addr495:
                                                                           if(§§pop() <= 0)
                                                                           {
                                                                              m_currMinion = param1;
                                                                              break;
                                                                           }
                                                                           if(!_loc7_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push((_loc4_ = param1).m_currExhaust);
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                           }
                                                                           _loc5_ = §§pop();
                                                                           if(_loc7_)
                                                                           {
                                                                              _loc4_.m_currExhaust = _loc5_;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr516:
                                                                              QueueUpExhaustedAnimation();
                                                                           }
                                                                           §§push(Singleton.utility);
                                                                           if(!(_loc6_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop().m_screenControllers);
                                                                              if(_loc7_ || Boolean(_loc3_))
                                                                              {
                                                                                 addr535:
                                                                                 §§push(§§pop().m_battleScreen);
                                                                                 if(_loc7_ || _loc2_)
                                                                                 {
                                                                                    §§pop().StartQueuedMoves();
                                                                                    if(_loc7_ || Boolean(this))
                                                                                    {
                                                                                       addr558:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr577);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr565:
                                                                                 §§push(§§pop().m_battleScreen);
                                                                              }
                                                                              addr566:
                                                                              §§pop().m_battleScreenVisualController.SetupTheGetForAiMinion(param1);
                                                                              addr569:
                                                                              TweenLite.to(this,0.7,{"onComplete":this.GetMoveAfterDelay});
                                                                              §§goto(addr577);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr564:
                                                                              §§push(§§pop().m_screenControllers);
                                                                           }
                                                                           §§goto(addr565);
                                                                           addr376:
                                                                           _loc3_++;
                                                                           if(_loc7_ || Boolean(_loc3_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr558);
                                                                        }
                                                                        addr562:
                                                                        §§goto(addr564);
                                                                        §§push(Singleton.utility);
                                                                     }
                                                                     param1.m_chargeAlliesItHits = null;
                                                                     if(!(_loc6_ && Boolean(param1)))
                                                                     {
                                                                        param1.m_chargeEnemiesItHits = null;
                                                                        if(_loc7_)
                                                                        {
                                                                           param1.m_currChargeMove = null;
                                                                           addr441:
                                                                           if(!_loc2_)
                                                                           {
                                                                              LoadUpTheQueueAndPlayMoves();
                                                                              if(_loc7_)
                                                                              {
                                                                              }
                                                                              §§goto(addr577);
                                                                           }
                                                                        }
                                                                        addr492:
                                                                     }
                                                                     §§goto(addr577);
                                                                  }
                                                                  §§goto(addr441);
                                                               }
                                                            }
                                                            else if(m_enemiesItHits[_loc3_].m_currHealth < 0)
                                                            {
                                                               §§push(true);
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  if(_loc7_)
                                                                  {
                                                                     §§goto(addr392);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr562);
                                                                  }
                                                               }
                                                               §§goto(addr441);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr376);
                                                            }
                                                            §§goto(addr569);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr577);
                                                }
                                                §§goto(addr251);
                                             }
                                          }
                                          §§goto(addr230);
                                       }
                                       §§goto(addr160);
                                    }
                                    else
                                    {
                                       addr294:
                                       m_enemiesItHits = param1.m_chargeEnemiesItHits;
                                       if(!(_loc6_ && Boolean(_loc3_)))
                                       {
                                          addr306:
                                          _loc2_ = false;
                                          if(_loc7_ || _loc2_)
                                          {
                                             §§goto(addr315);
                                             §§push(0);
                                          }
                                       }
                                    }
                                    §§goto(addr315);
                                 }
                                 else
                                 {
                                    QueueUpFrozenAnimation();
                                    §§push(Singleton.utility);
                                    if(_loc7_)
                                    {
                                       §§goto(addr175);
                                    }
                                 }
                                 §§goto(addr249);
                              }
                              §§goto(addr214);
                           }
                           else
                           {
                              addr271:
                              if(§§pop() == §§pop())
                              {
                                 m_currMove = param1.m_currChargeMove;
                                 m_alliesItHits = param1.m_chargeAlliesItHits;
                                 addr276:
                                 if(_loc7_ || Boolean(param1))
                                 {
                                    §§goto(addr294);
                                 }
                                 §§goto(addr315);
                              }
                              else
                              {
                                 §§push((_loc4_ = param1).m_currCharge);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 _loc5_ = §§pop();
                                 if(_loc7_ || Boolean(this))
                                 {
                                    _loc4_.m_currCharge = _loc5_;
                                 }
                                 QueueUpChargeAnimation();
                                 §§push(Singleton.utility);
                                 if(_loc7_ || Boolean(this))
                                 {
                                    §§push(§§pop().m_screenControllers);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop().m_battleScreen);
                                       if(_loc7_ || _loc2_)
                                       {
                                          §§pop().StartQueuedMoves();
                                          if(_loc7_)
                                          {
                                             §§goto(addr492);
                                          }
                                          else
                                          {
                                             §§goto(addr516);
                                          }
                                       }
                                       §§goto(addr566);
                                    }
                                    §§goto(addr535);
                                 }
                              }
                           }
                           §§goto(addr564);
                        }
                        §§goto(addr214);
                     }
                     §§goto(addr135);
                  }
                  else
                  {
                     §§push(param1.m_isStunned);
                     if(_loc7_)
                     {
                        addr199:
                        if(§§pop())
                        {
                           if(!(_loc6_ && _loc2_))
                           {
                              §§goto(addr207);
                           }
                           §§goto(addr218);
                        }
                        else if(param1.m_currChargeMove != null)
                        {
                           if(_loc7_ || Boolean(param1))
                           {
                              §§push(param1.m_currCharge);
                              if(!_loc6_)
                              {
                                 §§goto(addr271);
                                 §§push(param1.m_currChargeMove.m_chargeTime);
                              }
                              §§goto(addr315);
                           }
                           §§goto(addr276);
                        }
                        else
                        {
                           §§push(param1.m_currExhaust);
                        }
                        §§goto(addr495);
                     }
                  }
                  §§goto(addr306);
               }
               §§goto(addr199);
            }
            §§goto(addr35);
         }
         §§goto(addr236);
      }
      
      private function GetMoveAfterDelay() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:* = 0;
         var _loc1_:Array = new Array();
         var _loc2_:* = 0;
         while(_loc2_ < 5)
         {
            §§push(Singleton.dynamicData);
            if(!_loc11_)
            {
               §§push(§§pop().m_opponentsMinions[_loc2_] == null);
               if(!(_loc11_ && Boolean(_loc2_)))
               {
                  §§push(!§§pop());
                  if(!_loc11_)
                  {
                     if(§§pop())
                     {
                        if(_loc11_)
                        {
                        }
                        addr67:
                        if(§§pop())
                        {
                           if(!_loc11_)
                           {
                              _loc1_.push(Singleton.dynamicData.m_opponentsMinions[_loc2_]);
                              if(!(_loc12_ || Boolean(_loc2_)))
                              {
                                 continue;
                              }
                           }
                           break;
                        }
                        _loc2_++;
                        if(!(_loc12_ || Boolean(_loc1_)))
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr67);
                  }
                  §§pop();
                  if(_loc11_ && Boolean(this))
                  {
                     continue;
                  }
                  addr61:
                  §§push(Singleton.dynamicData.m_opponentsMinions[_loc2_].m_currHealth > 0);
               }
               §§goto(addr67);
            }
            §§goto(addr61);
         }
         _loc1_ = _loc1_.sortOn("m_moveOrderPosition",Array.NUMERIC);
         var _loc3_:Array = new Array();
         if(_loc12_)
         {
            §§push(0);
            if(_loc12_)
            {
               _loc2_ = §§pop();
               if(_loc12_ || Boolean(_loc2_))
               {
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_);
                     §§push(5);
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc11_)
                           {
                              §§push(this.m_enemyThreatLevels);
                              if(_loc12_ || Boolean(_loc1_))
                              {
                                 if(§§pop() == null)
                                 {
                                    _loc8_ = 1;
                                    if(_loc12_ || Boolean(_loc1_))
                                    {
                                       this.m_enemyThreatLevels = new Array(0,0,0,0,0);
                                       break;
                                    }
                                    break;
                                 }
                                 addr326:
                                 this.CalculateTotalTeamThreat(_loc3_,_loc1_,true);
                                 if(_loc12_)
                                 {
                                    this.CalculateTotalTeamThreat(_loc1_,_loc3_,false);
                                 }
                                 var _loc4_:* = 0;
                                 var _loc5_:int = 0;
                                 if(_loc12_ || Boolean(_loc1_))
                                 {
                                 }
                                 loop10:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    while(§§pop() < 5)
                                    {
                                       if(_loc1_[_loc5_] == m_currMinion)
                                       {
                                          if(!_loc11_)
                                          {
                                             §§push(_loc5_);
                                             if(_loc12_ || Boolean(this))
                                             {
                                                §§push(§§pop());
                                                if(_loc12_ || Boolean(_loc3_))
                                                {
                                                   _loc4_ = §§pop();
                                                   if(_loc12_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                             continue;
                                          }
                                       }
                                       else
                                       {
                                          _loc5_++;
                                          if(_loc11_)
                                          {
                                             break;
                                          }
                                       }
                                       continue loop10;
                                    }
                                    var _loc6_:AIMovePacket = new AIMovePacket();
                                    if(!(_loc11_ && Boolean(_loc1_)))
                                    {
                                       this.BuildMoveChainThreat(_loc4_,_loc1_,_loc3_,_loc6_);
                                    }
                                    var _loc7_:* = "";
                                    §§push(0);
                                    if(!(_loc11_ && Boolean(this)))
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc12_)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc12_ || Boolean(_loc1_))
                                             {
                                                if(§§pop() >= 5)
                                                {
                                                   if(_loc12_)
                                                   {
                                                      m_currMove = _loc6_.m_bestMoves[_loc4_];
                                                      addr491:
                                                      if(m_currMove.m_hitsRandomTargets)
                                                      {
                                                         this.GetRandomMinionsForMove(m_currMove);
                                                         if(!_loc12_)
                                                         {
                                                            addr554:
                                                         }
                                                         §§goto(addr589);
                                                      }
                                                      if(m_currMove.m_alliesItHits <= 0)
                                                      {
                                                         §§push(0);
                                                         if(_loc11_ && Boolean(this))
                                                         {
                                                         }
                                                         break;
                                                      }
                                                      addr504:
                                                      §§push(0);
                                                      if(!(_loc11_ && Boolean(_loc1_)))
                                                      {
                                                         addr512:
                                                         _loc10_ = §§pop();
                                                         if(_loc11_ && Boolean(this))
                                                         {
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc10_);
                                                            if(!_loc12_)
                                                            {
                                                               addr570:
                                                               _loc10_ = §§pop();
                                                               break;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc10_);
                                                            break loop12;
                                                         }
                                                         addr538:
                                                         addr582:
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop() < _loc6_.m_bestMinionsAttacked[_loc4_].length)
                                                         {
                                                            AddToAlliesItHits(_loc6_.m_bestMinionsAttacked[_loc4_][_loc10_]);
                                                            _loc10_++;
                                                            if(!(_loc11_ && Boolean(_loc3_)))
                                                            {
                                                               §§goto(addr538);
                                                            }
                                                            break;
                                                         }
                                                         if(!(_loc12_ || Boolean(_loc3_)))
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr554);
                                                      }
                                                      while(true)
                                                      {
                                                         _loc10_++;
                                                         §§goto(addr582);
                                                         addr572:
                                                         AddToEnemiesItHits(_loc6_.m_bestMinionsAttacked[_loc4_][_loc10_]);
                                                      }
                                                      §§goto(addr570);
                                                      §§goto(addr554);
                                                   }
                                                   §§goto(addr504);
                                                }
                                                else
                                                {
                                                   if(_loc6_.m_bestMoves[_loc2_])
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         §§push(_loc7_);
                                                         if(!_loc11_)
                                                         {
                                                            §§push(_loc6_.m_bestMoves[_loc2_].m_moveName + "(");
                                                            if(!(_loc11_ && Boolean(this)))
                                                            {
                                                               §§push(§§pop() + _loc6_.m_bestMinionsAttacked[_loc2_][0].m_baseMinion.m_baseMinionName);
                                                               if(_loc12_)
                                                               {
                                                                  §§push(§§pop() + "), ");
                                                                  if(!(_loc11_ && Boolean(_loc3_)))
                                                                  {
                                                                     addr460:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc11_)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           continue;
                                                                        }
                                                                        addr470:
                                                                        §§push(§§pop() + "null ");
                                                                     }
                                                                     _loc7_ = §§pop();
                                                                     continue;
                                                                  }
                                                               }
                                                               §§goto(addr470);
                                                            }
                                                            §§goto(addr460);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr491);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc7_);
                                                   }
                                                   §§goto(addr470);
                                                }
                                             }
                                             break;
                                          }
                                          while(§§pop() < _loc6_.m_bestMinionsAttacked[_loc4_].length)
                                          {
                                             §§goto(addr572);
                                          }
                                          addr589:
                                          return;
                                       }
                                       §§goto(addr570);
                                    }
                                    §§goto(addr512);
                                 }
                              }
                              loop3:
                              while(true)
                              {
                                 §§push(_loc9_);
                                 if(!(_loc11_ && Boolean(_loc2_)))
                                 {
                                    §§push(_loc3_[_loc9_].m_currLevel * _loc8_);
                                    if(!_loc11_)
                                    {
                                       §§pop()[§§pop()] = §§pop();
                                       _loc9_++;
                                       if(_loc12_ || Boolean(_loc2_))
                                       {
                                          while(true)
                                          {
                                             §§push(_loc9_);
                                             if(!_loc11_)
                                             {
                                                if(§§pop() >= _loc3_.length)
                                                {
                                                   addr264:
                                                   this.m_enemyThreatRatios = new Array(1,1,1,1,1);
                                                   this.m_ourThreatLevels = new Array(0,0,0,0,0);
                                                   _loc9_ = 0;
                                                   if(!_loc11_)
                                                   {
                                                      addr293:
                                                      while(_loc9_ < _loc1_.length)
                                                      {
                                                         §§push(this.m_ourThreatLevels);
                                                         while(true)
                                                         {
                                                            §§push(_loc9_);
                                                            break loop3;
                                                         }
                                                      }
                                                      addr306:
                                                      if(_loc12_ || Boolean(_loc2_))
                                                      {
                                                         this.m_ourThreatRatios = new Array(1,1,1,1,1);
                                                      }
                                                      §§goto(addr326);
                                                      addr306:
                                                   }
                                                   loop4:
                                                   while(true)
                                                   {
                                                      _loc9_++;
                                                      §§goto(addr306);
                                                      addr304:
                                                      while(true)
                                                      {
                                                         §§pop()[§§pop()] = §§pop();
                                                         continue loop4;
                                                      }
                                                   }
                                                   addr305:
                                                }
                                                else
                                                {
                                                   §§push(this.m_enemyThreatLevels);
                                                   if(_loc12_)
                                                   {
                                                      continue loop3;
                                                   }
                                                }
                                                §§goto(addr297);
                                             }
                                             break;
                                          }
                                          §§goto(addr326);
                                          addr258:
                                       }
                                       §§goto(addr264);
                                    }
                                    §§goto(addr304);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§goto(addr304);
                              }
                           }
                           §§goto(addr306);
                        }
                        else
                        {
                           §§push(Singleton.dynamicData);
                           if(_loc12_)
                           {
                              §§push(_loc2_);
                              if(_loc12_)
                              {
                                 §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                 if(_loc12_)
                                 {
                                    §§push(§§pop() != null);
                                    §§push(§§pop() != null);
                                    if(!_loc11_)
                                    {
                                       if(§§pop())
                                       {
                                          §§pop();
                                          §§push(Singleton.dynamicData);
                                          if(_loc12_ || Boolean(_loc3_))
                                          {
                                             §§push(_loc2_);
                                             if(!(_loc11_ && Boolean(_loc2_)))
                                             {
                                                addr156:
                                                §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                if(!_loc11_)
                                                {
                                                   addr159:
                                                   §§push(§§pop().m_currHealth);
                                                   §§push(0);
                                                   if(!(_loc12_ || Boolean(_loc1_)))
                                                   {
                                                      continue;
                                                   }
                                                   addr169:
                                                   §§push(§§pop() > §§pop() && Singleton.dynamicData.GetOwnedMinionAt(_loc2_));
                                                }
                                                §§push(!§§pop().m_isBattleModShieldActive);
                                                continue loop1;
                                             }
                                          }
                                          §§goto(addr175);
                                       }
                                    }
                                    §§goto(addr169);
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr156);
                           }
                           §§goto(addr175);
                        }
                     }
                  }
               }
               _loc9_ = 0;
               if(_loc12_)
               {
                  §§goto(addr258);
               }
               §§goto(addr305);
            }
            §§goto(addr326);
         }
         §§goto(addr293);
      }
      
      private function BuildMoveChainThreat(param1:int, param2:Array, param3:Array, param4:AIMovePacket) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc5_:Vector.<BaseMinionMove> = null;
         var _loc6_:int = 0;
         var _loc7_:Array = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = NaN;
         if(!_loc12_)
         {
            if(param1 < param2.length)
            {
               addr33:
               (_loc5_ = param2[param1].m_allMovesJustHighestTier_asActualMoves).push(Singleton.staticData.GetBaseMinionMove(MinionMoveID.desperation_t1));
               if(_loc11_)
               {
                  _loc6_ = 0;
               }
               loop0:
               while(_loc6_ < _loc5_.length)
               {
                  §§push(_loc5_[_loc6_].m_isPassive);
                  if(_loc11_ || Boolean(param2))
                  {
                     if(!§§pop())
                     {
                        if(_loc11_ || Boolean(param1))
                        {
                           §§pop();
                           if(!(_loc12_ && Boolean(param1)))
                           {
                              addr86:
                              if(_loc5_[_loc6_].m_isGlobalPassive)
                              {
                                 if(_loc12_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 _loc7_ = new Array();
                                 if(!(_loc12_ && Boolean(param3)))
                                 {
                                    if(_loc5_[_loc6_].m_alliesItHits > 0)
                                    {
                                       §§push(0);
                                       if(!(_loc12_ && Boolean(param3)))
                                       {
                                          _loc8_ = §§pop();
                                          addr411:
                                          loop1:
                                          while(true)
                                          {
                                             §§push(_loc8_);
                                             if(_loc11_ || Boolean(param1))
                                             {
                                                §§push(param2);
                                                if(_loc11_ || Boolean(this))
                                                {
                                                   if(§§pop() >= §§pop().length)
                                                   {
                                                      if(_loc11_ || Boolean(param3))
                                                      {
                                                         _loc7_ = _loc7_.sortOn("m_moveThreat",Array.DESCENDING | Array.NUMERIC);
                                                         param4.m_currMoves[param1] = _loc5_[_loc6_];
                                                         if(_loc11_)
                                                         {
                                                            §§push(0);
                                                            if(!(_loc12_ && Boolean(this)))
                                                            {
                                                               _loc9_ = §§pop();
                                                               if(_loc11_ || Boolean(this))
                                                               {
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() < param2.length)
                                                                        {
                                                                           param4.m_threatPerMove[param1] += _loc7_[_loc9_].m_moveThreat;
                                                                           param4.m_currMinionsAttacked[param1].push(_loc7_[_loc9_].m_minionHit);
                                                                           if(!_loc12_)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              if(!(_loc11_ || Boolean(param2)))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() > _loc5_[_loc6_].m_alliesItHits - 2);
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          addr264:
                                                                                          §§pop();
                                                                                          §§push(!_loc5_[_loc6_].m_hitsRandomTargets);
                                                                                       }
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    §§goto(addr291);
                                                                                 }
                                                                                 §§goto(addr264);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        if(!(_loc12_ && Boolean(param1)))
                                                                        {
                                                                           addr291:
                                                                           if(_loc5_[_loc6_].m_hitsRandomTargets)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(param4.GetTotalCurrThreat() > param4.GetTotalBestThreat())
                                                                           {
                                                                              addr365:
                                                                              param4.SetCurrMovesToBestMoves();
                                                                           }
                                                                        }
                                                                        param4.m_currMoves[param1] = null;
                                                                        param4.m_threatPerMove[param1] = 0;
                                                                        if(_loc11_)
                                                                        {
                                                                           addr593:
                                                                           param4.m_currMinionsAttacked[param1] = new Vector.<OwnedMinion>();
                                                                        }
                                                                        continue loop0;
                                                                        §§goto(addr291);
                                                                     }
                                                                  }
                                                               }
                                                               param4.m_threatPerMove[param1] /= param2.length;
                                                               if(param2.length < _loc5_[_loc6_].m_alliesItHits)
                                                               {
                                                                  param4.m_threatPerMove[param1] *= param2.length;
                                                                  if(!(_loc12_ && Boolean(param3)))
                                                                  {
                                                                     §§goto(addr291);
                                                                  }
                                                                  §§goto(addr365);
                                                               }
                                                               else
                                                               {
                                                                  param4.m_threatPerMove[param1] *= _loc5_[_loc6_].m_alliesItHits;
                                                                  if(_loc11_ || Boolean(param1))
                                                                  {
                                                                     §§goto(addr291);
                                                                  }
                                                               }
                                                               §§goto(addr593);
                                                            }
                                                            §§goto(addr251);
                                                         }
                                                         §§goto(addr291);
                                                      }
                                                      else
                                                      {
                                                         addr392:
                                                         loop5:
                                                         while(true)
                                                         {
                                                            _loc7_.push(new AiMoveStruct());
                                                            _loc7_[_loc8_].m_moveThreat = _loc10_;
                                                            _loc7_[_loc8_].m_minionHit = param3[_loc8_];
                                                            _loc8_++;
                                                            if(_loc11_)
                                                            {
                                                               break loop1;
                                                            }
                                                            addr415:
                                                            _loc7_ = _loc7_.sortOn("m_moveThreat",Array.DESCENDING | Array.NUMERIC);
                                                            param4.m_currMoves[param1] = _loc5_[_loc6_];
                                                            §§push(0);
                                                            if(!_loc12_)
                                                            {
                                                               _loc9_ = §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(_loc9_);
                                                                  addr503:
                                                                  _loc9_++;
                                                               }
                                                            }
                                                            while(§§pop() < param3.length)
                                                            {
                                                               param4.m_threatPerMove[param1] += _loc7_[_loc9_].m_moveThreat;
                                                               if(_loc11_)
                                                               {
                                                                  param4.m_currMinionsAttacked[param1].push(_loc7_[_loc9_].m_minionHit);
                                                                  if(_loc12_)
                                                                  {
                                                                  }
                                                                  §§goto(addr574);
                                                               }
                                                               §§push(_loc9_);
                                                               if(_loc12_ && Boolean(param2))
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop() > _loc5_[_loc6_].m_enemiesItHits - 2);
                                                               if(_loc11_ || Boolean(param3))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc12_ && Boolean(this)))
                                                                     {
                                                                        §§pop();
                                                                        §§push(!_loc5_[_loc6_].m_hitsRandomTargets);
                                                                     }
                                                                  }
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr503);
                                                            }
                                                            if(_loc5_[_loc6_].m_hitsRandomTargets)
                                                            {
                                                               if(!(_loc12_ && Boolean(param1)))
                                                               {
                                                                  param4.m_threatPerMove[param1] /= param3.length;
                                                               }
                                                               if(param3.length < _loc5_[_loc6_].m_enemiesItHits)
                                                               {
                                                                  param4.m_threatPerMove[param1] *= param3.length;
                                                                  if(_loc12_)
                                                                  {
                                                                  }
                                                                  §§goto(addr574);
                                                               }
                                                               else
                                                               {
                                                                  param4.m_threatPerMove[param1] *= _loc5_[_loc6_].m_enemiesItHits;
                                                               }
                                                            }
                                                            addr391:
                                                            if(param4.GetTotalCurrThreat() > param4.GetTotalBestThreat())
                                                            {
                                                               if(!_loc12_)
                                                               {
                                                                  param4.SetCurrMovesToBestMoves();
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               _loc10_ = §§pop();
                                                               continue loop5;
                                                            }
                                                            §§goto(addr415);
                                                         }
                                                         addr392:
                                                      }
                                                      §§goto(addr574);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.CalculateHealingMoveThreat(_loc5_[_loc6_],param2[param1],param2,_loc8_,true,param1,this.m_enemyRedirectDamage));
                                                      if(!_loc12_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc12_)
                                                         {
                                                            _loc10_ = §§pop();
                                                            _loc7_.push(new AiMoveStruct());
                                                            if(!_loc12_)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr392);
                                                         }
                                                      }
                                                      §§goto(addr391);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() < §§pop().length)
                                                   {
                                                      §§push(this.CalculateDamageMoveThreat(_loc5_[_loc6_],param2[param1],param3,_loc8_,true,param1,this.m_enemyRedirectDamage));
                                                      if(!_loc12_)
                                                      {
                                                         §§push(§§pop());
                                                      }
                                                      §§goto(addr391);
                                                   }
                                                   §§goto(addr415);
                                                }
                                                addr413:
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(_loc8_);
                                             addr412:
                                             while(true)
                                             {
                                                §§goto(addr413);
                                             }
                                          }
                                          addr411:
                                       }
                                       addr371:
                                       _loc8_ = §§pop();
                                       §§goto(addr411);
                                    }
                                    else
                                    {
                                       §§push(0);
                                       if(_loc11_)
                                       {
                                          §§goto(addr371);
                                       }
                                    }
                                    §§goto(addr412);
                                 }
                                 §§goto(addr411);
                              }
                           }
                           continue;
                        }
                     }
                  }
                  §§goto(addr86);
                  _loc6_++;
                  if(_loc12_ && Boolean(param1))
                  {
                     break;
                  }
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      private function CalculateDamageMoveThreat(param1:BaseMinionMove, param2:OwnedMinion, param3:Array, param4:int, param5:Boolean = true, param6:int = 0, param7:Number = 0) : Number
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1870
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      private function CalculateHealingMoveThreat(param1:BaseMinionMove, param2:OwnedMinion, param3:Array, param4:int, param5:Boolean = true, param6:int = 0, param7:Number = 0) : Number
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2036
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      private function CalculateBuffValue(param1:int, param2:int, param3:OwnedMinion, param4:Number) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc5_:* = 1;
         if(_loc8_)
         {
            §§push(param1);
            if(_loc8_)
            {
               §§push(StatType.STAT_ATTACK);
               if(_loc8_ || Boolean(param3))
               {
                  if(§§pop() == §§pop())
                  {
                     if(param3.m_currHealingStat > param3.m_currAttackStat)
                     {
                        §§push(param3.m_currAttackStat);
                        if(_loc8_ || Boolean(param1))
                        {
                           §§push(param3.m_currHealingStat);
                           if(!_loc9_)
                           {
                              §§push(§§pop() / §§pop());
                              if(_loc8_ || Boolean(this))
                              {
                                 _loc5_ = §§pop();
                                 if(_loc8_)
                                 {
                                    addr65:
                                    §§push(_loc5_);
                                    if(!_loc9_)
                                    {
                                       addr141:
                                       §§push(param4);
                                       if(_loc8_ || Boolean(param1))
                                       {
                                          §§push(§§pop() * §§pop());
                                          §§push(1 - Singleton.staticData.GetStatStageModificationAmount(param2));
                                          if(_loc8_ || Boolean(this))
                                          {
                                             return §§pop() * §§pop();
                                          }
                                          addr136:
                                          §§push(§§pop() * §§pop());
                                          §§push(Singleton.staticData.GetStatStageModificationAmount(param2));
                                       }
                                       return §§pop() * §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr104:
                                    if(param3.m_currAttackStat > param3.m_currHealingStat)
                                    {
                                       §§push(param3.m_currHealingStat);
                                       §§push(param3.m_currAttackStat);
                                       if(_loc8_)
                                       {
                                          addr115:
                                          §§push(§§pop() / §§pop());
                                          if(!(_loc9_ && Boolean(param3)))
                                          {
                                             §§push(§§pop());
                                          }
                                          _loc5_ = §§pop();
                                          addr125:
                                          §§push(_loc5_);
                                          if(!_loc9_)
                                          {
                                             addr128:
                                             §§push(param4);
                                             if(!(_loc9_ && Boolean(param2)))
                                             {
                                                §§goto(addr136);
                                             }
                                             §§goto(addr141);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr149);
                                       }
                                    }
                                    §§goto(addr125);
                                 }
                                 return §§pop();
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr65);
                  }
                  else if(param1 == StatType.STAT_HEALING)
                  {
                     if(_loc8_ || Boolean(param1))
                     {
                        §§goto(addr104);
                     }
                     §§goto(addr115);
                  }
                  else
                  {
                     §§push(param1);
                     §§push(StatType.STAT_SPEED);
                  }
                  addr149:
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc9_ && Boolean(param3)))
                     {
                        addr158:
                        _loc6_ = 0;
                     }
                     addr160:
                     _loc7_ = 0;
                     while(true)
                     {
                        §§push(_loc7_);
                        §§push(5);
                        if(_loc8_ || Boolean(this))
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc8_ || Boolean(this))
                              {
                                 addr291:
                                 §§push(_loc6_);
                                 if(_loc8_)
                                 {
                                    addr296:
                                    §§push(§§pop() - param3.m_moveOrderPosition);
                                    if(_loc8_)
                                    {
                                       §§push(10);
                                       if(_loc8_)
                                       {
                                          _loc5_ = §§pop() / §§pop();
                                          addr305:
                                          if(!param3.m_hasMovedOnThisTurn)
                                          {
                                             if(!_loc9_)
                                             {
                                                §§push(_loc5_);
                                                §§push(0.3);
                                                if(_loc8_ || Boolean(this))
                                                {
                                                   _loc5_ = §§pop() * §§pop();
                                                   §§goto(addr339);
                                                }
                                                §§goto(addr361);
                                             }
                                             §§goto(addr339);
                                          }
                                          else
                                          {
                                             §§push(_loc5_);
                                             §§push(0.1);
                                             if(!(_loc9_ && Boolean(param1)))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc9_)
                                                {
                                                   _loc5_ = §§pop();
                                                   if(_loc8_)
                                                   {
                                                      addr339:
                                                      §§push(_loc5_);
                                                      if(_loc8_)
                                                      {
                                                         §§push(param4);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc9_)
                                                            {
                                                               addr348:
                                                               §§push(Singleton.staticData);
                                                               if(_loc8_ || Boolean(param3))
                                                               {
                                                                  §§push(param2);
                                                                  if(_loc8_)
                                                                  {
                                                                     addr362:
                                                                     return §§pop() * §§pop().GetStatStageModificationAmount(§§pop());
                                                                     addr361:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr473:
                                                                  §§push(param2);
                                                               }
                                                               §§push(§§pop().GetStatStageModificationAmount(§§pop()));
                                                            }
                                                            else
                                                            {
                                                               addr397:
                                                               §§push(1 - Singleton.staticData.GetStatStageModificationAmount(param2));
                                                               if(!(_loc9_ && Boolean(param3)))
                                                               {
                                                                  §§goto(addr411);
                                                               }
                                                            }
                                                            §§goto(addr476);
                                                         }
                                                         else
                                                         {
                                                            addr396:
                                                         }
                                                         addr396:
                                                         §§push(§§pop() * §§pop());
                                                         §§goto(addr397);
                                                      }
                                                      §§goto(addr476);
                                                   }
                                                   else
                                                   {
                                                      addr423:
                                                      §§push(param3.m_currHealthStat);
                                                      if(_loc8_ || Boolean(param1))
                                                      {
                                                         addr432:
                                                         §§push(§§pop() / 150);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc8_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc9_ && Boolean(param2)))
                                                               {
                                                                  addr447:
                                                                  _loc5_ = §§pop();
                                                                  addr455:
                                                                  §§push(param4);
                                                                  if(_loc8_ || Boolean(this))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc8_ || Boolean(param3))
                                                                     {
                                                                        addr471:
                                                                        §§goto(addr473);
                                                                        §§push(Singleton.staticData);
                                                                     }
                                                                     §§goto(addr476);
                                                                  }
                                                               }
                                                               §§goto(addr476);
                                                            }
                                                            §§goto(addr455);
                                                         }
                                                         §§goto(addr471);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr478);
                                                      }
                                                   }
                                                   §§goto(addr473);
                                                }
                                                §§goto(addr348);
                                             }
                                          }
                                          §§goto(addr396);
                                       }
                                       §§goto(addr397);
                                    }
                                    §§goto(addr362);
                                 }
                                 §§goto(addr432);
                              }
                              §§goto(addr305);
                           }
                           else
                           {
                              §§push(Singleton.dynamicData);
                              if(!_loc9_)
                              {
                                 §§push(_loc7_);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                    if(_loc8_ || Boolean(this))
                                    {
                                       §§push(§§pop() != null);
                                       §§push(§§pop() != null);
                                       if(!_loc9_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                §§pop();
                                                §§push(Singleton.dynamicData);
                                                if(_loc8_ || Boolean(param1))
                                                {
                                                   addr199:
                                                   §§push(§§pop().GetOwnedMinionAt(_loc7_).m_currHealth > 0);
                                                   if(_loc8_)
                                                   {
                                                      addr204:
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc8_ || Boolean(param1)))
                                                         {
                                                            addr412:
                                                            if(param1 == StatType.STAT_HEALTH)
                                                            {
                                                               if(_loc9_ && Boolean(param2))
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr423);
                                                            }
                                                            break;
                                                         }
                                                         _loc6_++;
                                                         if(!_loc9_)
                                                         {
                                                            addr215:
                                                            §§push(Singleton.dynamicData);
                                                            if(!(_loc9_ && Boolean(param3)))
                                                            {
                                                               §§push(§§pop().m_opponentsMinions[_loc7_] != null);
                                                               if(!_loc9_)
                                                               {
                                                                  addr240:
                                                                  if(!§§pop())
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§pop();
                                                                  if(!(_loc8_ || Boolean(this)))
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr251:
                                                                  §§push(Singleton.dynamicData.m_opponentsMinions[_loc7_].m_currHealth > 0);
                                                                  if(!(_loc9_ && Boolean(param2)))
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               §§goto(addr305);
                                                            }
                                                            §§goto(addr251);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr291);
                                                         }
                                                         §§goto(addr423);
                                                      }
                                                      §§goto(addr215);
                                                   }
                                                   §§goto(addr305);
                                                }
                                                §§goto(addr251);
                                             }
                                             §§goto(addr305);
                                          }
                                          §§goto(addr204);
                                       }
                                       §§goto(addr240);
                                    }
                                 }
                              }
                              §§goto(addr199);
                           }
                        }
                        §§goto(addr296);
                     }
                     addr478:
                     return §§pop();
                     §§push(0);
                  }
                  else
                  {
                     §§push(param1);
                     if(!_loc9_)
                     {
                        §§push(StatType.STAT_ENERGY);
                        if(_loc8_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!_loc9_)
                              {
                                 §§goto(addr383);
                              }
                              else
                              {
                                 §§goto(addr423);
                              }
                           }
                           else
                           {
                              §§goto(addr412);
                           }
                           §§goto(addr478);
                        }
                        §§goto(addr412);
                     }
                     addr383:
                     §§push(param3.m_currEnergy / param3.m_currEnergyStat);
                     if(!_loc9_)
                     {
                        §§push(§§pop());
                        if(_loc8_)
                        {
                           _loc5_ = §§pop();
                           §§push(param4);
                           if(_loc8_)
                           {
                              §§goto(addr396);
                           }
                           else
                           {
                              §§goto(addr447);
                           }
                           return §§pop() * §§pop();
                        }
                        §§goto(addr396);
                     }
                     §§goto(addr411);
                  }
                  addr411:
                  return §§pop() * §§pop();
               }
               §§goto(addr104);
            }
            §§goto(addr158);
         }
         §§goto(addr115);
      }
      
      private function CalculateTotalTeamThreat(param1:Array, param2:Array, param3:Boolean) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc9_:Vector.<BaseMinionMove> = null;
         var _loc10_:* = 0;
         var _loc11_:Array = null;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
         var _loc4_:Array = new Array(0,0,0,0,0);
         var _loc5_:Array = new Array(0,0,0,0,0);
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc8_);
            if(_loc15_)
            {
               if(§§pop() >= param1.length)
               {
                  if(_loc15_)
                  {
                     §§push(0);
                     if(!_loc14_)
                     {
                        break;
                     }
                     addr745:
                     if(§§pop() < _loc4_.length)
                     {
                        if(_loc4_[_loc10_] > 0)
                        {
                           if(_loc15_ || Boolean(param1))
                           {
                              _loc5_[_loc10_] = _loc4_[_loc10_] / _loc7_;
                              addr736:
                              _loc10_++;
                              while(true)
                              {
                                 §§push(_loc10_);
                                 if(!(_loc14_ && Boolean(this)))
                                 {
                                    §§goto(addr745);
                                 }
                                 break;
                                 §§goto(addr736);
                              }
                              addr790:
                              _loc6_ = §§pop();
                              if(!_loc14_)
                              {
                                 addr800:
                                 if(param3)
                                 {
                                    this.m_enemyThreatLevels = _loc4_;
                                    this.m_enemyThreatRatios = _loc5_;
                                    this.m_enemyRedirectDamage = _loc6_;
                                    if(_loc15_)
                                    {
                                    }
                                    §§goto(addr823);
                                 }
                                 else
                                 {
                                    this.m_ourThreatLevels = _loc4_;
                                    this.m_ourThreatRatios = _loc5_;
                                 }
                                 this.m_ourRedirectDamage = _loc6_;
                              }
                              addr823:
                              return;
                              addr737:
                           }
                           addr750:
                           §§push(_loc6_);
                           if(!(_loc14_ && Boolean(param1)))
                           {
                              §§push(100);
                              if(!(_loc14_ && Boolean(param2)))
                              {
                                 §§push(§§pop() / §§pop());
                                 if(_loc15_ || param3)
                                 {
                                    addr774:
                                    §§push(§§pop());
                                    if(!_loc14_)
                                    {
                                       §§push(_loc6_ = §§pop());
                                       if(_loc14_ && param3)
                                       {
                                       }
                                       §§goto(addr790);
                                    }
                                    addr787:
                                    if(§§pop() > 1)
                                    {
                                       addr788:
                                       §§goto(addr790);
                                       §§push(1);
                                    }
                                    §§goto(addr800);
                                 }
                                 §§goto(addr790);
                              }
                              §§goto(addr787);
                           }
                           §§goto(addr774);
                        }
                        §§goto(addr736);
                     }
                     if(!_loc14_)
                     {
                        §§goto(addr750);
                     }
                     §§goto(addr788);
                  }
                  §§goto(addr800);
               }
               else
               {
                  (_loc9_ = param1[_loc8_].m_allMovesJustHighestTier_asActualMoves).push(Singleton.staticData.GetBaseMinionMove(MinionMoveID.desperation_t1));
                  if(!_loc14_)
                  {
                     §§push(_loc6_);
                     if(_loc15_)
                     {
                        §§push(§§pop() + param1[_loc8_].m_currRedirectDamage);
                     }
                     _loc6_ = §§pop();
                     if(!(_loc14_ && Boolean(param1)))
                     {
                        §§push(0);
                        if(!(_loc14_ && param3))
                        {
                           _loc10_ = §§pop();
                           if(!_loc14_)
                           {
                              addr97:
                              loop21:
                              while(true)
                              {
                                 §§push(_loc10_);
                                 addr691:
                                 while(§§pop() < _loc9_.length)
                                 {
                                    §§push(_loc9_[_loc10_].m_isPassive);
                                    if(!_loc14_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc14_)
                                          {
                                             §§pop();
                                             addr119:
                                             if(_loc15_)
                                             {
                                                §§push(_loc9_[_loc10_].m_isGlobalPassive);
                                             }
                                             while(true)
                                             {
                                                addr689:
                                                while(true)
                                                {
                                                   _loc10_++;
                                                   continue loop21;
                                                }
                                             }
                                             addr119:
                                          }
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       §§goto(addr119);
                                    }
                                    else
                                    {
                                       _loc11_ = new Array();
                                       if(_loc9_[_loc10_].m_alliesItHits > 0)
                                       {
                                          §§push(0);
                                          if(!_loc14_)
                                          {
                                             _loc12_ = §§pop();
                                             loop7:
                                             while(true)
                                             {
                                                §§push(_loc12_);
                                                if(!_loc15_)
                                                {
                                                   addr452:
                                                   _loc12_ = §§pop();
                                                   if(_loc15_ || param3)
                                                   {
                                                      §§goto(addr507);
                                                   }
                                                   break;
                                                }
                                                §§push(param1);
                                                if(!_loc14_)
                                                {
                                                   if(§§pop() >= §§pop().length)
                                                   {
                                                      if(!(_loc14_ && Boolean(param1)))
                                                      {
                                                         _loc11_ = _loc11_.sortOn("m_moveThreat",Array.DESCENDING | Array.NUMERIC);
                                                         if(_loc15_ || Boolean(param2))
                                                         {
                                                            §§push(0);
                                                            if(_loc15_)
                                                            {
                                                               _loc13_ = §§pop();
                                                               if(!(_loc14_ && Boolean(this)))
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc14_ && Boolean(param2)))
                                                                  {
                                                                     _loc12_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc12_);
                                                                        addr317:
                                                                        _loc12_++;
                                                                        if(_loc15_ || Boolean(this))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr336:
                                                                        §§push(_loc13_);
                                                                        if(_loc15_ || Boolean(this))
                                                                        {
                                                                           §§push(param1);
                                                                           if(!(_loc14_ && Boolean(param1)))
                                                                           {
                                                                              §§push(§§pop() / §§pop().length);
                                                                              if(!_loc14_)
                                                                              {
                                                                                 _loc13_ = §§pop();
                                                                                 if(!(_loc14_ && Boolean(param2)))
                                                                                 {
                                                                                    if(param1.length < _loc9_[_loc10_].m_alliesItHits)
                                                                                    {
                                                                                       if(_loc15_ || param3)
                                                                                       {
                                                                                          addr381:
                                                                                          addr383:
                                                                                          §§push(_loc13_ * param1.length);
                                                                                          if(_loc15_ || Boolean(param1))
                                                                                          {
                                                                                             _loc13_ = §§pop();
                                                                                             addr415:
                                                                                             if(_loc13_ > _loc4_[_loc8_])
                                                                                             {
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   _loc4_[_loc8_] = _loc13_;
                                                                                                }
                                                                                                addr426:
                                                                                                §§push(_loc13_);
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   if(§§pop() > _loc7_)
                                                                                                   {
                                                                                                      addr448:
                                                                                                      if(_loc15_ || param3)
                                                                                                      {
                                                                                                         addr438:
                                                                                                         §§push(_loc13_);
                                                                                                         if(!(_loc14_ && param3))
                                                                                                         {
                                                                                                            addr446:
                                                                                                            §§push(§§pop());
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr689);
                                                                                                   }
                                                                                                   §§goto(addr448);
                                                                                                }
                                                                                                §§goto(addr446);
                                                                                             }
                                                                                             §§goto(addr448);
                                                                                             addr392:
                                                                                          }
                                                                                          _loc7_ = §§pop();
                                                                                          §§goto(addr448);
                                                                                       }
                                                                                       §§goto(addr438);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(_loc13_);
                                                                                       if(!(_loc14_ && Boolean(param1)))
                                                                                       {
                                                                                          §§push(§§pop() * _loc9_[_loc10_].m_alliesItHits);
                                                                                       }
                                                                                       _loc13_ = §§pop();
                                                                                    }
                                                                                    §§goto(addr415);
                                                                                 }
                                                                                 §§goto(addr448);
                                                                              }
                                                                              §§goto(addr446);
                                                                           }
                                                                           §§goto(addr381);
                                                                        }
                                                                        §§goto(addr446);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() < param1.length)
                                                                     {
                                                                        §§push(_loc13_ + _loc11_[_loc12_].m_moveThreat);
                                                                        if(!(_loc14_ && param3))
                                                                        {
                                                                           _loc13_ = §§pop();
                                                                           §§push(_loc12_);
                                                                           if(_loc14_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() > _loc9_[_loc10_].m_alliesItHits - 2);
                                                                              if(!(_loc14_ && Boolean(this)))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       addr295:
                                                                                       §§pop();
                                                                                       if(!(_loc14_ && param3))
                                                                                       {
                                                                                          §§push(!_loc9_[_loc10_].m_hitsRandomTargets);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc15_ || Boolean(param1))
                                                                                    {
                                                                                       §§goto(addr331);
                                                                                    }
                                                                                    §§goto(addr415);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr317);
                                                                                 }
                                                                              }
                                                                              §§goto(addr295);
                                                                           }
                                                                           §§goto(addr448);
                                                                        }
                                                                        break;
                                                                     }
                                                                     if(_loc15_)
                                                                     {
                                                                        addr331:
                                                                        if(_loc9_[_loc10_].m_hitsRandomTargets)
                                                                        {
                                                                           §§goto(addr336);
                                                                        }
                                                                        §§goto(addr415);
                                                                     }
                                                                     §§goto(addr392);
                                                                     §§goto(addr448);
                                                                  }
                                                                  §§goto(addr383);
                                                               }
                                                               §§goto(addr426);
                                                            }
                                                            §§goto(addr277);
                                                         }
                                                         §§goto(addr336);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                         }
                                                         addr481:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(param3);
                                                      if(_loc15_ || Boolean(this))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc15_ || Boolean(this))
                                                            {
                                                               §§push(this.CalculateHealingMoveThreat(_loc9_[_loc10_],param1[_loc8_],param1,_loc12_,false,this.m_ourRedirectDamage));
                                                               if(!(_loc14_ && Boolean(this)))
                                                               {
                                                                  _loc13_ = §§pop();
                                                                  if(_loc14_)
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr193:
                                                                  _loc13_ = §§pop();
                                                               }
                                                               _loc11_.push(new AiMoveStruct());
                                                               continue;
                                                            }
                                                            loop15:
                                                            while(true)
                                                            {
                                                               _loc13_ = this.CalculateDamageMoveThreat(_loc9_[_loc10_],param1[_loc8_],param2,_loc12_,false,this.m_ourRedirectDamage);
                                                               if(_loc15_)
                                                               {
                                                                  §§goto(addr481);
                                                               }
                                                               addr506:
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  _loc12_++;
                                                                  addr507:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc12_);
                                                                     addr508:
                                                                     while(true)
                                                                     {
                                                                        §§push(param2);
                                                                        addr509:
                                                                        while(§§pop() < §§pop().length)
                                                                        {
                                                                           §§push(param3);
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              §§push(this.CalculateDamageMoveThreat(_loc9_[_loc10_],param1[_loc8_],param2,_loc12_,false,this.m_enemyRedirectDamage));
                                                                           }
                                                                        }
                                                                        _loc11_ = _loc11_.sortOn("m_moveThreat",Array.DESCENDING | Array.NUMERIC);
                                                                        if(_loc15_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc15_)
                                                                           {
                                                                              _loc13_ = §§pop();
                                                                              §§push(0);
                                                                              if(_loc15_ || Boolean(this))
                                                                              {
                                                                                 addr536:
                                                                                 _loc12_ = §§pop();
                                                                                 loop11:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc12_);
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() < param2.length)
                                                                                       {
                                                                                          §§push(_loc13_);
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             §§push(§§pop() + _loc11_[_loc12_].m_moveThreat);
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                _loc13_ = §§pop();
                                                                                                §§push(_loc12_);
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() > _loc9_[_loc10_].m_enemiesItHits - 2);
                                                                                                   if(!(_loc14_ && Boolean(param2)))
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            addr572:
                                                                                                            §§pop();
                                                                                                            if(_loc15_ || Boolean(param1))
                                                                                                            {
                                                                                                               addr585:
                                                                                                               if(_loc9_[_loc10_].m_hitsRandomTargets)
                                                                                                               {
                                                                                                                  _loc12_++;
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                               if(_loc9_[_loc10_].m_hitsRandomTargets)
                                                                                                               {
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  addr636:
                                                                                                               }
                                                                                                               if(_loc13_ > _loc4_[_loc8_])
                                                                                                               {
                                                                                                                  if(_loc15_ || param3)
                                                                                                                  {
                                                                                                                     _loc4_[_loc8_] = _loc13_;
                                                                                                                     if(_loc15_)
                                                                                                                     {
                                                                                                                        addr672:
                                                                                                                        §§push(_loc13_);
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           if(§§pop() > _loc7_)
                                                                                                                           {
                                                                                                                              if(_loc15_ || param3)
                                                                                                                              {
                                                                                                                                 addr684:
                                                                                                                                 §§push(_loc13_);
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr688:
                                                                                                                                 _loc7_ = §§pop();
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr689);
                                                                                                                        }
                                                                                                                        §§goto(addr688);
                                                                                                                        §§push(§§pop());
                                                                                                                     }
                                                                                                                     §§goto(addr684);
                                                                                                                  }
                                                                                                                  §§goto(addr672);
                                                                                                               }
                                                                                                               §§goto(addr689);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr585);
                                                                                                   }
                                                                                                   §§goto(addr572);
                                                                                                }
                                                                                                §§push(_loc13_);
                                                                                                §§push(param2);
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop().length);
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      _loc13_ = §§pop();
                                                                                                      if(param2.length < _loc9_[_loc10_].m_enemiesItHits)
                                                                                                      {
                                                                                                         §§push(_loc13_);
                                                                                                         if(_loc15_ || Boolean(param2))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(_loc13_);
                                                                                                         if(!(_loc14_ && param3))
                                                                                                         {
                                                                                                            §§push(§§pop() * _loc9_[_loc10_].m_enemiesItHits);
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               addr653:
                                                                                                               _loc13_ = §§pop();
                                                                                                               §§goto(addr654);
                                                                                                            }
                                                                                                            §§goto(addr672);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr653);
                                                                                                   }
                                                                                                   §§goto(addr654);
                                                                                                }
                                                                                                §§push(§§pop() * §§pop().length);
                                                                                                if(!(_loc14_ && Boolean(this)))
                                                                                                {
                                                                                                   _loc13_ = §§pop();
                                                                                                   §§goto(addr636);
                                                                                                }
                                                                                                §§goto(addr672);
                                                                                             }
                                                                                             §§goto(addr684);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr592);
                                                                                    }
                                                                                    §§goto(addr625);
                                                                                 }
                                                                              }
                                                                              §§goto(addr554);
                                                                           }
                                                                           §§goto(addr536);
                                                                        }
                                                                        §§goto(addr672);
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(this.CalculateHealingMoveThreat(_loc9_[_loc10_],param1[_loc8_],param1,_loc12_,false,this.m_enemyRedirectDamage));
                                                            if(_loc15_)
                                                            {
                                                               §§goto(addr193);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            _loc13_ = §§pop();
                                                            addr497:
                                                            while(true)
                                                            {
                                                               _loc11_.push(new AiMoveStruct());
                                                               break loop7;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr463);
                                                   }
                                                   §§goto(addr497);
                                                }
                                                §§goto(addr509);
                                                §§goto(addr507);
                                             }
                                             while(true)
                                             {
                                                _loc11_[_loc12_].m_moveThreat = _loc13_;
                                                §§goto(addr506);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(0);
                                          if(_loc15_)
                                          {
                                             §§goto(addr452);
                                          }
                                       }
                                       §§goto(addr508);
                                    }
                                 }
                                 if(!(_loc14_ && param3))
                                 {
                                    addr701:
                                    _loc8_++;
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr691);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr701);
               }
            }
            break;
         }
         _loc10_ = §§pop();
         §§goto(addr737);
      }
      
      public function GetRandomMinionsForMove(param1:BaseMinionMove) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:OwnedMinion = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(_loc7_ || Boolean(_loc2_))
         {
            §§push(param1.m_enemiesItHits);
            if(_loc7_ || Boolean(this))
            {
               if(§§pop() > 0)
               {
                  if(!_loc6_)
                  {
                     addr43:
                     §§push(0);
                     if(!(_loc6_ && Boolean(_loc2_)))
                     {
                        _loc3_ = §§pop();
                        if(_loc7_ || Boolean(_loc3_))
                        {
                           addr60:
                           _loc4_ = 0;
                        }
                     }
                     §§goto(addr60);
                  }
                  loop0:
                  while(true)
                  {
                     §§push(_loc4_);
                     §§push(5);
                     if(_loc7_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(!(_loc6_ && Boolean(_loc3_)))
                           {
                              _loc5_ = 0;
                              if(!_loc6_)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    §§push(100);
                                    if(_loc7_ || Boolean(_loc2_))
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          addr357:
                                          §§push(m_currMove.m_enemiesItHits == m_enemiesItHits.length);
                                          §§push(m_currMove.m_enemiesItHits == m_enemiesItHits.length);
                                          if(!(_loc6_ && Boolean(_loc2_)))
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc7_ || Boolean(param1))
                                                   {
                                                      §§pop();
                                                      addr369:
                                                      while(true)
                                                      {
                                                         §§push(m_enemiesItHits.length == _loc3_);
                                                         if(!_loc6_)
                                                         {
                                                            addr232:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr306:
                                                                  §§push(param1.m_alliesItHits);
                                                                  §§push(0);
                                                                  if(!(_loc6_ && Boolean(_loc3_)))
                                                                  {
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc7_)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           §§push(0);
                                                                           if(!(_loc6_ && Boolean(this)))
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              if(!(_loc6_ && Boolean(param1)))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    addr373:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(5);
                                                                                       if(_loc7_ || Boolean(_loc3_))
                                                                                       {
                                                                                          break loop0;
                                                                                       }
                                                                                       addr461:
                                                                                       loop5:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             §§push(m_currMove.m_alliesItHits == m_alliesItHits.length);
                                                                                             loop2:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                addr392:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      §§push(m_alliesItHits.length == _loc3_);
                                                                                                   }
                                                                                                   addr398:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr399:
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      addr402:
                                                                                                      §§push(Singleton.dynamicData);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc2_ = §§pop().m_opponentsMinions[int(Math.random() * 5)];
                                                                                                         if(_loc7_ || Boolean(_loc2_))
                                                                                                         {
                                                                                                            §§push(_loc2_ == null);
                                                                                                            if(_loc7_ || Boolean(this))
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        addr443:
                                                                                                                        §§pop();
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           addr450:
                                                                                                                           addr446:
                                                                                                                           if(_loc2_.m_currHealth > 0)
                                                                                                                           {
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 AddToAlliesItHits(_loc2_);
                                                                                                                                 addr459:
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop5;
                                                                                                                                 }
                                                                                                                                 addr459:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           _loc5_++;
                                                                                                                        }
                                                                                                                        §§goto(addr459);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr450);
                                                                                                            }
                                                                                                            §§goto(addr443);
                                                                                                         }
                                                                                                         §§goto(addr446);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop2;
                                                                                                }
                                                                                             }
                                                                                             addr462:
                                                                                             return;
                                                                                             addr391:
                                                                                          }
                                                                                          §§goto(addr462);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr372:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc3_++;
                                                                                 addr371:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc4_++;
                                                                                    §§goto(addr372);
                                                                                 }
                                                                              }
                                                                              addr370:
                                                                           }
                                                                           §§goto(addr373);
                                                                        }
                                                                        addr383:
                                                                        _loc5_ = §§pop();
                                                                        §§goto(addr459);
                                                                     }
                                                                     §§goto(addr462);
                                                                  }
                                                                  §§goto(addr461);
                                                                  addr233:
                                                               }
                                                               else
                                                               {
                                                                  addr241:
                                                                  §§push(Singleton.dynamicData.GetOwnedMinionAt(Math.random() * 5));
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(_loc2_ != null);
                                                                        §§push(_loc2_ != null);
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(!(_loc6_ && Boolean(param1)))
                                                                                 {
                                                                                    §§push(_loc2_.m_currHealth > 0);
                                                                                    if(!(_loc6_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       addr274:
                                                                                       addr275:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr276:
                                                                                          §§pop();
                                                                                          addr295:
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(!_loc2_.m_isBattleModShieldActive);
                                                                                          }
                                                                                          _loc5_++;
                                                                                          continue loop10;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc7_ || Boolean(_loc2_)))
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          AddToEnemiesItHits(_loc2_);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr295);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr295);
                                                                              }
                                                                              §§goto(addr276);
                                                                           }
                                                                           §§goto(addr274);
                                                                        }
                                                                        §§goto(addr275);
                                                                     }
                                                                     §§goto(addr276);
                                                                  }
                                                                  addr241:
                                                               }
                                                            }
                                                            addr232:
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr370);
                                                         }
                                                         §§goto(addr371);
                                                      }
                                                      §§goto(addr461);
                                                      addr369:
                                                      addr219:
                                                   }
                                                   §§goto(addr391);
                                                }
                                                §§goto(addr232);
                                             }
                                             addr210:
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                §§pop();
                                                §§push(Singleton.dynamicData);
                                                if(!_loc6_)
                                                {
                                                   while(true)
                                                   {
                                                      §§goto(addr369);
                                                   }
                                                   addr363:
                                                }
                                                break;
                                             }
                                             §§goto(addr369);
                                          }
                                          §§goto(addr402);
                                          addr357:
                                       }
                                       §§goto(addr306);
                                    }
                                    break loop0;
                                 }
                              }
                              §§goto(addr219);
                           }
                           §§goto(addr233);
                        }
                        else
                        {
                           §§push(Singleton.dynamicData);
                           if(_loc7_ || Boolean(param1))
                           {
                              §§push(_loc4_);
                              if(!_loc6_)
                              {
                                 §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() != null);
                                    if(!(_loc6_ && Boolean(_loc3_)))
                                    {
                                       §§push(§§pop());
                                       if(_loc7_ || Boolean(param1))
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc6_ && Boolean(_loc3_)))
                                             {
                                                addr104:
                                                §§pop();
                                                if(_loc7_ || Boolean(_loc3_))
                                                {
                                                   §§push(Singleton.dynamicData);
                                                   §§push(_loc4_);
                                                   if(!(_loc6_ && Boolean(this)))
                                                   {
                                                      addr122:
                                                      §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                      if(_loc7_ || Boolean(this))
                                                      {
                                                         §§push(§§pop().m_currHealth);
                                                         §§push(0);
                                                         if(_loc7_)
                                                         {
                                                            addr135:
                                                            §§push(§§pop() > §§pop());
                                                            §§push(§§pop() > §§pop());
                                                            if(!(_loc6_ && Boolean(this)))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc7_)
                                                               {
                                                                  §§pop();
                                                                  §§push(Singleton.dynamicData);
                                                                  if(_loc7_ || Boolean(this))
                                                                  {
                                                                     addr157:
                                                                     §§push(§§pop().GetOwnedMinionAt(_loc4_));
                                                                     if(!(_loc6_ && Boolean(_loc2_)))
                                                                     {
                                                                        §§push(§§pop().m_isBattleModShieldActive);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           continue;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           §§push(!§§pop());
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§goto(addr357);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr392);
                                                                        addr353:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr241);
                                                                     }
                                                                     §§goto(addr357);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().m_opponentsMinions[_loc4_] == null);
                                                                     if(!(_loc6_ && Boolean(_loc3_)))
                                                                     {
                                                                        §§goto(addr353);
                                                                     }
                                                                     §§goto(addr462);
                                                                  }
                                                                  addr341:
                                                               }
                                                               §§goto(addr398);
                                                            }
                                                            §§goto(addr357);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                   §§goto(addr157);
                                                }
                                                §§goto(addr399);
                                             }
                                             §§goto(addr232);
                                          }
                                          §§goto(addr135);
                                       }
                                       §§goto(addr210);
                                    }
                                    §§goto(addr104);
                                 }
                                 §§goto(addr241);
                              }
                              §§goto(addr122);
                           }
                        }
                        §§goto(addr363);
                     }
                     break;
                  }
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        §§goto(addr383);
                        §§push(0);
                     }
                     else
                     {
                        §§goto(addr341);
                        §§push(Singleton.dynamicData);
                     }
                     §§goto(addr461);
                     §§goto(addr373);
                  }
                  §§goto(addr462);
               }
               §§goto(addr306);
            }
            §§goto(addr60);
         }
         §§goto(addr43);
      }
   }
}
