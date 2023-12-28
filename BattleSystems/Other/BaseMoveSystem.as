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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(!_loc1_)
            {
               addr20:
               this.Reset();
            }
            return;
         }
         §§goto(addr20);
      }
      
      public function Reset() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.m_currMove = null;
            if(_loc2_ || _loc1_)
            {
               this.m_currMinion = null;
               §§goto(addr38);
            }
            §§goto(addr55);
         }
         addr38:
         if(_loc2_ || Boolean(this))
         {
            addr55:
            this.m_alliesItHits = new Vector.<OwnedMinion>();
            if(!_loc1_)
            {
               this.m_enemiesItHits = new Vector.<OwnedMinion>();
            }
         }
      }
      
      public function AddToAlliesItHits(param1:OwnedMinion) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            if(this.m_alliesItHits.indexOf(param1) == -1)
            {
               if(_loc4_ || Boolean(this))
               {
                  addr30:
                  this.m_alliesItHits.push(param1);
               }
            }
            var _loc2_:int = 0;
            if(!(_loc5_ && Boolean(param1)))
            {
               if(this.m_isPlayerMoveSystem)
               {
                  if(_loc4_)
                  {
                     addr48:
                     _loc3_ = 0;
                  }
                  loop1:
                  while(true)
                  {
                     §§push(_loc3_);
                     if(_loc4_ || Boolean(param1))
                     {
                        §§push(5);
                        if(!(_loc5_ && Boolean(_loc3_)))
                        {
                           loop2:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 addr198:
                                 §§push(this.m_currMove);
                                 if(!(_loc5_ && Boolean(_loc3_)))
                                 {
                                    §§push(§§pop().m_alliesItHits == this.m_alliesItHits.length);
                                    §§push(§§pop().m_alliesItHits == this.m_alliesItHits.length);
                                    if(!_loc5_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             §§pop();
                                             addr236:
                                             addr234:
                                             if(!(_loc5_ && Boolean(param1)))
                                             {
                                                addr226:
                                                §§push(this.m_alliesItHits.length == _loc2_);
                                                break;
                                             }
                                             §§push(this.m_currMove.m_chargeTime);
                                             §§push(0);
                                             if(_loc4_ || Boolean(param1))
                                             {
                                                §§push(§§pop() > §§pop());
                                                if(_loc4_)
                                                {
                                                   addr249:
                                                   if(§§pop())
                                                   {
                                                      addr250:
                                                      §§pop();
                                                      if(_loc4_ || Boolean(param1))
                                                      {
                                                         addr302:
                                                         §§push(this.m_currMinion);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop().m_currCharge);
                                                            break loop1;
                                                         }
                                                         §§pop().m_currCharge = 1;
                                                         if(!_loc5_)
                                                         {
                                                            addr306:
                                                            this.QueueUpChargeAnimation();
                                                            §§push(Singleton.utility);
                                                            if(_loc4_ || Boolean(this))
                                                            {
                                                               §§push(§§pop().m_screenControllers);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(§§pop().m_battleScreen);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§pop().StartQueuedMoves();
                                                                     if(_loc4_)
                                                                     {
                                                                        addr358:
                                                                        Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.TurnOffTopLayerMinions();
                                                                        addr353:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr349:
                                                                        this.LoadUpTheQueueAndPlayMoves();
                                                                        if(_loc4_)
                                                                        {
                                                                           §§goto(addr353);
                                                                        }
                                                                     }
                                                                     §§goto(addr359);
                                                                  }
                                                                  §§goto(addr353);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr338:
                                                               §§push(§§pop().m_screenControllers);
                                                               if(_loc4_)
                                                               {
                                                                  §§push(§§pop().m_battleScreen);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(§§pop().m_battleScreenVisualController);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§pop().m_collList.dispose();
                                                                        §§goto(addr349);
                                                                     }
                                                                  }
                                                                  §§goto(addr358);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr358);
                                                      }
                                                      §§goto(addr349);
                                                   }
                                                   addr266:
                                                   if(§§pop())
                                                   {
                                                      addr267:
                                                      §§push(this.m_currMinion);
                                                      if(!(_loc5_ && Boolean(_loc3_)))
                                                      {
                                                         §§pop().m_currChargeMove = this.m_currMove;
                                                         if(!_loc5_)
                                                         {
                                                            §§push(this.m_currMinion);
                                                            if(!_loc5_)
                                                            {
                                                               addr285:
                                                               §§pop().m_chargeAlliesItHits = this.m_alliesItHits;
                                                               §§push(this.m_currMinion);
                                                               if(!(_loc5_ && Boolean(param1)))
                                                               {
                                                                  addr297:
                                                                  §§pop().m_chargeEnemiesItHits = this.m_enemiesItHits;
                                                                  §§push(this.m_currMinion);
                                                               }
                                                               §§goto(addr302);
                                                            }
                                                            §§goto(addr297);
                                                         }
                                                         §§goto(addr306);
                                                      }
                                                      §§goto(addr285);
                                                   }
                                                   else
                                                   {
                                                      §§push(Singleton.utility);
                                                      if(_loc4_)
                                                      {
                                                         §§goto(addr338);
                                                      }
                                                   }
                                                   §§goto(addr358);
                                                }
                                                §§goto(addr250);
                                             }
                                             §§push(§§pop() == §§pop());
                                          }
                                          §§goto(addr266);
                                          §§push(!§§pop());
                                       }
                                       break;
                                    }
                                    §§goto(addr249);
                                 }
                                 §§goto(addr236);
                              }
                              else
                              {
                                 §§push(Singleton.dynamicData);
                                 if(!_loc5_)
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc5_ && Boolean(param1)))
                                    {
                                       §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                       if(!(_loc4_ || Boolean(_loc2_)))
                                       {
                                          continue;
                                       }
                                       §§push(§§pop() != null);
                                       §§push(§§pop() != null);
                                       if(!(_loc5_ && Boolean(_loc2_)))
                                       {
                                          if(!§§pop())
                                          {
                                             continue loop1;
                                          }
                                          §§pop();
                                          §§push(Singleton.dynamicData);
                                          if(_loc4_)
                                          {
                                             addr90:
                                             §§push(§§pop().GetOwnedMinionAt(_loc3_));
                                             continue;
                                          }
                                          loop3:
                                          while(true)
                                          {
                                             §§push(§§pop().m_opponentsMinions[_loc3_] == null);
                                             if(_loc4_ || Boolean(_loc2_))
                                             {
                                                §§push(!§§pop());
                                                §§push(!§§pop());
                                                if(_loc4_)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         if(!_loc5_)
                                                         {
                                                            §§push(Singleton.dynamicData);
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().m_opponentsMinions[_loc3_].m_currHealth > 0);
                                                               if(!_loc5_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        _loc2_++;
                                                                        if(_loc4_)
                                                                        {
                                                                           addr187:
                                                                           _loc3_++;
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              §§push(5);
                                                                              if(_loc4_ || Boolean(param1))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       §§push(Singleton.dynamicData);
                                                                                       if(!(_loc5_ && Boolean(this)))
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                    §§goto(addr198);
                                                                                 }
                                                                                 addr197:
                                                                              }
                                                                              break;
                                                                              §§goto(addr187);
                                                                           }
                                                                           §§goto(addr236);
                                                                           addr188:
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr187);
                                                                  }
                                                                  §§goto(addr226);
                                                                  addr183:
                                                               }
                                                               break loop2;
                                                            }
                                                         }
                                                         §§goto(addr267);
                                                      }
                                                      §§goto(addr183);
                                                   }
                                                   addr162:
                                                }
                                                §§goto(addr249);
                                             }
                                             break loop2;
                                          }
                                          addr146:
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr90);
                                 }
                                 §§goto(addr146);
                              }
                           }
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§goto(addr234);
                              }
                              §§goto(addr306);
                           }
                           addr359:
                           return;
                        }
                        §§goto(addr197);
                     }
                     break;
                  }
                  §§goto(addr236);
                  §§push(-99);
               }
               else
               {
                  _loc3_ = 0;
                  if(!(_loc5_ && Boolean(this)))
                  {
                     §§goto(addr188);
                  }
               }
               §§goto(addr285);
            }
            §§goto(addr48);
         }
         §§goto(addr30);
      }
      
      public function RemoveFromAlliesItHits(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.m_alliesItHits.splice(this.m_alliesItHits.indexOf(param1),1);
         }
      }
      
      public function AddToEnemiesItHits(param1:OwnedMinion) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            if(this.m_enemiesItHits.indexOf(param1) == -1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this.m_enemiesItHits.push(param1);
               }
            }
         }
         var _loc2_:int = 0;
         if(_loc4_)
         {
            if(this.m_isPlayerMoveSystem)
            {
               if(_loc4_ || Boolean(param1))
               {
                  _loc3_ = 0;
                  addr50:
                  loop1:
                  while(true)
                  {
                     §§push(_loc3_);
                     §§push(5);
                     if(_loc4_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           addr248:
                           §§push(this.m_currMove);
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              §§push(§§pop().m_enemiesItHits);
                              if(_loc4_)
                              {
                                 addr264:
                                 §§push(§§pop() == this.m_enemiesItHits.length);
                                 §§push(§§pop() == this.m_enemiesItHits.length);
                                 if(!_loc5_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          §§pop();
                                          §§goto(addr276);
                                       }
                                       §§goto(addr304);
                                    }
                                    §§goto(addr276);
                                 }
                                 §§goto(addr292);
                              }
                              §§goto(addr302);
                           }
                           §§goto(addr279);
                        }
                        else
                        {
                           §§push(Singleton.dynamicData);
                           if(_loc4_ || Boolean(this))
                           {
                              §§push(§§pop().m_opponentsMinions[_loc3_] != null);
                              §§push(§§pop().m_opponentsMinions[_loc3_] != null);
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(_loc4_ || Boolean(this))
                                    {
                                       §§push(Singleton.dynamicData);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop().m_opponentsMinions[_loc3_].m_currHealth > 0);
                                          if(!_loc5_)
                                          {
                                             addr96:
                                             §§push(§§pop());
                                             if(_loc4_)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue;
                                                }
                                                §§pop();
                                                if(_loc4_ || Boolean(_loc2_))
                                                {
                                                   §§push(Singleton.dynamicData);
                                                   if(_loc4_ || Boolean(_loc2_))
                                                   {
                                                      addr117:
                                                      §§push(!§§pop().m_opponentsMinions[_loc3_].m_isBattleModShieldActive);
                                                      continue;
                                                   }
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc4_)
                                                      {
                                                         §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                         if(_loc4_ || Boolean(_loc3_))
                                                         {
                                                            §§push(§§pop() != null);
                                                            §§push(§§pop() != null);
                                                            if(_loc4_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        §§pop();
                                                                        if(_loc4_ || Boolean(_loc2_))
                                                                        {
                                                                           §§push(Singleton.dynamicData);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!(_loc5_ && Boolean(param1)))
                                                                              {
                                                                                 §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                                 if(!(_loc5_ && Boolean(param1)))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().m_currHealth);
                                                                                       §§push(0);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          break loop1;
                                                                                       }
                                                                                       break loop3;
                                                                                    }
                                                                                    addr196:
                                                                                 }
                                                                                 loop4:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(!§§pop().m_isBattleModShieldActive);
                                                                                    if(!(_loc5_ && Boolean(_loc3_)))
                                                                                    {
                                                                                       addr238:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             _loc2_++;
                                                                                          }
                                                                                          addr240:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_++;
                                                                                             addr241:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§push(5);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         §§goto(addr248);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(Singleton.dynamicData);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         addr227:
                                                                                                         addr227:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            addr228:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr288);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr302);
                                                                                          }
                                                                                       }
                                                                                       addr238:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr291);
                                                                              }
                                                                              §§goto(addr228);
                                                                           }
                                                                           §§goto(addr227);
                                                                        }
                                                                        §§goto(addr312);
                                                                     }
                                                                     §§goto(addr238);
                                                                  }
                                                                  addr215:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc4_ || Boolean(param1))
                                                                     {
                                                                     }
                                                                     §§goto(addr292);
                                                                  }
                                                               }
                                                               addr165:
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr227);
                                                                  §§push(Singleton.dynamicData);
                                                               }
                                                               §§goto(addr238);
                                                            }
                                                         }
                                                         §§goto(addr196);
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                   §§goto(addr302);
                                                }
                                                §§goto(addr336);
                                             }
                                             §§goto(addr292);
                                          }
                                          §§goto(addr276);
                                       }
                                       §§goto(addr117);
                                    }
                                    addr276:
                                    if(this.m_enemiesItHits.length == _loc2_)
                                    {
                                       addr279:
                                       §§push(this.m_currMove.m_chargeTime);
                                       §§push(0);
                                       if(!(_loc5_ && Boolean(_loc3_)))
                                       {
                                          addr288:
                                          §§push(§§pop() > §§pop());
                                          if(!_loc5_)
                                          {
                                             addr292:
                                             addr291:
                                             if(§§pop())
                                             {
                                             }
                                             addr304:
                                             if(§§pop())
                                             {
                                                if(_loc4_ || Boolean(_loc3_))
                                                {
                                                   addr312:
                                                   §§push(this.m_currMinion);
                                                   if(!(_loc5_ && Boolean(param1)))
                                                   {
                                                      addr321:
                                                      §§pop().m_currChargeMove = this.m_currMove;
                                                      §§push(this.m_currMinion);
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         §§pop().m_chargeAlliesItHits = this.m_alliesItHits;
                                                         addr336:
                                                         §§push(this.m_currMinion);
                                                         if(_loc4_)
                                                         {
                                                            §§pop().m_chargeEnemiesItHits = this.m_enemiesItHits;
                                                            §§push(this.m_currMinion);
                                                         }
                                                      }
                                                   }
                                                   §§pop().m_currCharge = 1;
                                                   if(!_loc5_)
                                                   {
                                                      this.QueueUpChargeAnimation();
                                                   }
                                                   §§goto(addr415);
                                                }
                                                §§push(Singleton.utility);
                                                if(_loc4_ || Boolean(this))
                                                {
                                                   §§push(§§pop().m_screenControllers);
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop().m_battleScreen);
                                                      if(_loc4_)
                                                      {
                                                         §§pop().StartQueuedMoves();
                                                         addr409:
                                                         §§push(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController);
                                                      }
                                                      else
                                                      {
                                                         addr395:
                                                         §§push(§§pop().m_battleScreenVisualController);
                                                         if(_loc4_)
                                                         {
                                                            §§pop().m_collList.dispose();
                                                            if(!(_loc5_ && Boolean(this)))
                                                            {
                                                               this.LoadUpTheQueueAndPlayMoves();
                                                            }
                                                            §§goto(addr409);
                                                         }
                                                      }
                                                      §§pop().TurnOffTopLayerMinions();
                                                      §§goto(addr415);
                                                   }
                                                   else
                                                   {
                                                      addr380:
                                                      §§push(§§pop().m_battleScreen);
                                                      if(!(_loc5_ && Boolean(param1)))
                                                      {
                                                         §§goto(addr395);
                                                      }
                                                   }
                                                   §§goto(addr409);
                                                }
                                                else
                                                {
                                                   addr377:
                                                   §§push(§§pop().m_screenControllers);
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr380);
                                                   }
                                                }
                                                §§goto(addr409);
                                             }
                                             else
                                             {
                                                §§push(Singleton.utility);
                                                if(_loc4_ || Boolean(param1))
                                                {
                                                   §§goto(addr377);
                                                }
                                             }
                                             §§goto(addr409);
                                          }
                                          §§pop();
                                          if(!_loc5_)
                                          {
                                             §§push(this.m_currMinion);
                                             if(_loc4_)
                                             {
                                                addr302:
                                                §§goto(addr304);
                                                §§push(§§pop().m_currCharge != -99);
                                             }
                                             §§goto(addr321);
                                          }
                                          §§goto(addr415);
                                       }
                                       §§goto(addr302);
                                    }
                                    addr415:
                                    return;
                                 }
                                 §§goto(addr96);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr117);
                        }
                     }
                     break;
                  }
                  while(true)
                  {
                     §§push(§§pop() > §§pop());
                     if(_loc4_ || Boolean(_loc3_))
                     {
                        §§goto(addr215);
                     }
                     §§goto(addr264);
                  }
               }
               §§goto(addr50);
            }
            else
            {
               _loc3_ = 0;
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  §§goto(addr241);
               }
            }
            §§goto(addr409);
         }
         §§goto(addr50);
      }
      
      public function RemoveFromEnemiesItHits(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && Boolean(this)))
         {
            this.m_enemiesItHits.splice(this.m_enemiesItHits.indexOf(param1),1);
         }
      }
      
      public function LoadUpTheQueueAndPlayMoves() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:BaseVisualMove = null;
         var _loc6_:* = 0;
         var _loc7_:BaseStatModifyMove = null;
         if(!(_loc9_ && _loc1_))
         {
            §§push(Singleton.utility);
            if(_loc8_ || _loc1_)
            {
               §§push(§§pop().m_screenControllers);
               if(_loc8_ || _loc3_)
               {
                  §§push(§§pop().m_battleScreen);
                  if(!(_loc9_ && Boolean(this)))
                  {
                     §§pop().m_moveQueue = new Vector.<MoveQueueObject>();
                     if(!(_loc9_ && Boolean(_loc2_)))
                     {
                        addr69:
                        this.m_applyBuffChance = Math.random() * 100;
                        if(_loc8_ || _loc1_)
                        {
                           this.m_applyMissChance = Math.random() * 100;
                           if(_loc8_ || _loc3_)
                           {
                              this.m_stunChance = Math.random() * 100;
                              if(_loc9_)
                              {
                              }
                              addr113:
                              var _loc1_:Vector.<MoveQueueObject> = Singleton.utility.m_screenControllers.m_battleScreen.m_moveQueue;
                              addr109:
                              §§push(this.m_currMove);
                              if(_loc8_ || Boolean(_loc2_))
                              {
                                 §§push(§§pop().m_isThereABufferBetweenVisualMovesOnMultipleEnemies);
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    if(!§§pop())
                                    {
                                       _loc1_.push(new MoveQueueObject(0.1,this.MoveCurrentMinion));
                                       if(!_loc9_)
                                       {
                                          addr143:
                                          §§push(this.m_currMove.m_doesHitEachEnemy);
                                          if(_loc8_)
                                          {
                                             addr148:
                                             §§push(!§§pop());
                                             if(_loc8_ || Boolean(this))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc8_ || Boolean(_loc2_))
                                                   {
                                                   }
                                                   addr178:
                                                   if(§§pop())
                                                   {
                                                      if(_loc8_ || Boolean(_loc1_))
                                                      {
                                                         §§push(1);
                                                         if(!(_loc9_ && Boolean(this)))
                                                         {
                                                            _loc2_ = §§pop();
                                                         }
                                                         else
                                                         {
                                                            addr202:
                                                            _loc2_ = §§pop();
                                                            addr204:
                                                            var _loc3_:int = 0;
                                                            addr203:
                                                            loop0:
                                                            while(true)
                                                            {
                                                               if(_loc3_ < _loc2_)
                                                               {
                                                                  §§push(this.m_currMove);
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(§§pop().m_accuracy < this.m_applyMissChance)
                                                                     {
                                                                        if(_loc8_ || Boolean(_loc2_))
                                                                        {
                                                                           §§push(Singleton.staticData);
                                                                           if(!(_loc9_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§push(MinionVisualMoveID.VISUALS_MOVE_MISS);
                                                                              if(_loc8_ || Boolean(this))
                                                                              {
                                                                                 §§push(§§pop().GetVisualMinionMove(§§pop()));
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    (_loc5_ = §§pop()).CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_enemiesItHits[_loc3_]);
                                                                                    if(_loc8_ || Boolean(this))
                                                                                    {
                                                                                       if(this.m_currMove.m_isThereABufferBetweenVisualMovesOnMultipleEnemies)
                                                                                       {
                                                                                          if(_loc8_ || Boolean(_loc2_))
                                                                                          {
                                                                                             _loc1_.push(new MoveQueueObject(0.1,this.MoveCurrentMinion));
                                                                                             if(_loc8_ || Boolean(_loc3_))
                                                                                             {
                                                                                                _loc1_.push(new MoveQueueObject(_loc5_.m_moveTime - 0.1,_loc5_.PlayMove));
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                }
                                                                                                addr563:
                                                                                                _loc3_++;
                                                                                                continue;
                                                                                                addr313:
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc1_.push(new MoveQueueObject(0,_loc5_.PlayMove));
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr313);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr338:
                                                                                    (_loc5_ = §§pop()).CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_enemiesItHits[_loc3_]);
                                                                                    §§push(this.m_currMove);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(§§pop().m_isThereABufferBetweenVisualMovesOnMultipleEnemies)
                                                                                       {
                                                                                          _loc1_.push(new MoveQueueObject(0.1,this.MoveCurrentMinion));
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             _loc1_.push(new MoveQueueObject(_loc5_.m_moveTime - 0.1,_loc5_.PlayMove));
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc1_.push(new MoveQueueObject(0,_loc5_.PlayMove));
                                                                                       }
                                                                                       §§push(this.m_currMove);
                                                                                       if(!(_loc9_ && Boolean(this)))
                                                                                       {
                                                                                          addr396:
                                                                                          §§push(§§pop().m_stunChance);
                                                                                          if(_loc8_ || Boolean(this))
                                                                                          {
                                                                                             §§push(this.m_stunChance);
                                                                                             if(_loc8_ || Boolean(_loc3_))
                                                                                             {
                                                                                                if(§§pop() > §§pop())
                                                                                                {
                                                                                                   §§push(Singleton.staticData);
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      §§push(MinionVisualMoveID.VISUALS_MOVE_STUNNED);
                                                                                                      if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                      {
                                                                                                         §§push(§§pop().GetVisualMinionMove(§§pop()));
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            (_loc5_ = §§pop()).CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_enemiesItHits[_loc3_]);
                                                                                                            if(_loc8_ || Boolean(_loc3_))
                                                                                                            {
                                                                                                               _loc1_.push(new MoveQueueObject(_loc5_.m_moveTime - 0.1,_loc5_.PlayMove));
                                                                                                               addr463:
                                                                                                               if(this.m_currMove.m_freezeChance > this.m_freezeChance)
                                                                                                               {
                                                                                                                  addr527:
                                                                                                                  §§push(Singleton.staticData);
                                                                                                                  if(!(_loc9_ && Boolean(_loc1_)))
                                                                                                                  {
                                                                                                                     §§push(MinionVisualMoveID.VISUALS_MOVE_FROZEN);
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().GetVisualMinionMove(§§pop()));
                                                                                                                        if(!(_loc9_ && Boolean(_loc3_)))
                                                                                                                        {
                                                                                                                           (_loc5_ = §§pop()).CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_enemiesItHits[_loc3_]);
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              _loc1_.push(new MoveQueueObject(_loc5_.m_moveTime - 0.1,_loc5_.PlayMove));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr530:
                                                                                                                        (_loc5_ = §§pop()).CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_enemiesItHits[_loc3_]);
                                                                                                                        if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                                        {
                                                                                                                           _loc1_.push(new MoveQueueObject(_loc5_.m_moveTime - 0.1,_loc5_.PlayMove));
                                                                                                                        }
                                                                                                                        §§goto(addr563);
                                                                                                                     }
                                                                                                                     addr529:
                                                                                                                     §§goto(addr530);
                                                                                                                     §§push(§§pop().GetVisualMinionMove(§§pop()));
                                                                                                                  }
                                                                                                                  §§goto(addr529);
                                                                                                                  §§push(MinionVisualMoveID.VISUALS_MOVE_DAMAGE_REFLECTED);
                                                                                                               }
                                                                                                               if(this.m_enemiesItHits[_loc3_].m_currReflectDamagePercentage > 0)
                                                                                                               {
                                                                                                                  §§goto(addr527);
                                                                                                                  §§push(Singleton.staticData);
                                                                                                               }
                                                                                                               §§goto(addr563);
                                                                                                            }
                                                                                                            §§goto(addr463);
                                                                                                         }
                                                                                                         §§goto(addr530);
                                                                                                      }
                                                                                                      §§goto(addr529);
                                                                                                   }
                                                                                                   §§goto(addr527);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr463);
                                                                                    }
                                                                                    §§goto(addr396);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr608);
                                                                              }
                                                                           }
                                                                           §§goto(addr605);
                                                                        }
                                                                        §§goto(addr1463);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(Singleton.staticData);
                                                                        if(_loc8_)
                                                                        {
                                                                           §§push(this.m_currMove);
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(§§pop().m_visualMoveID);
                                                                              if(!(_loc9_ && Boolean(this)))
                                                                              {
                                                                                 §§push(§§pop().GetVisualMinionMove(§§pop()));
                                                                                 if(!(_loc9_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    §§goto(addr338);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr609);
                                                                                 }
                                                                              }
                                                                              §§goto(addr608);
                                                                           }
                                                                           §§goto(addr607);
                                                                        }
                                                                        §§goto(addr605);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§push(!this.m_currMove.m_doesHitEachEnemy);
                                                               if(!this.m_currMove.m_doesHitEachEnemy)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc8_ || Boolean(_loc3_))
                                                                     {
                                                                        addr588:
                                                                        if(this.m_alliesItHits.length > 0)
                                                                        {
                                                                           addr589:
                                                                           _loc4_ = 1;
                                                                           if(_loc8_)
                                                                           {
                                                                              addr599:
                                                                              _loc3_ = 0;
                                                                              loop1:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 §§push(_loc4_);
                                                                                 if(!(_loc9_ && Boolean(this)))
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       if(_loc8_ || Boolean(_loc2_))
                                                                                       {
                                                                                          §§push(this.m_currMove);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             break loop0;
                                                                                          }
                                                                                          addr896:
                                                                                          if(§§pop().m_doesDeBuffSelf)
                                                                                          {
                                                                                             _loc6_ = 0;
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                addr902:
                                                                                                loop26:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc6_);
                                                                                                   §§push(this.m_currMove);
                                                                                                   addr978:
                                                                                                   loop6:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop().m_statTypesToDeBuff.length)
                                                                                                      {
                                                                                                         addr981:
                                                                                                         §§push(this.m_currMove);
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            if(§§pop().m_doesBuffTargets)
                                                                                                            {
                                                                                                               _loc3_ = 0;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  break loop6;
                                                                                                               }
                                                                                                               addr1087:
                                                                                                            }
                                                                                                            addr1200:
                                                                                                            §§push(this.m_currMove);
                                                                                                         }
                                                                                                         if(§§pop().m_doesDeBuffTargets)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               _loc3_ = 0;
                                                                                                               loop21:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  addr1326:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop() >= this.m_alliesItHits.length)
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           _loc3_ = 0;
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              addr1432:
                                                                                                                              loop10:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 loop5:
                                                                                                                                 while(§§pop() < this.m_enemiesItHits.length)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(_loc9_ && Boolean(_loc1_))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    addr1346:
                                                                                                                                    _loc6_ = §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr1416:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(!(_loc8_ || Boolean(_loc3_)))
                                                                                                                                          {
                                                                                                                                             continue loop5;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop() >= this.m_currMove.m_statTypesToDeBuff.length)
                                                                                                                                             {
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   _loc3_++;
                                                                                                                                                }
                                                                                                                                                continue loop10;
                                                                                                                                             }
                                                                                                                                             addr1353:
                                                                                                                                             §§push(this.m_applyBuffChance);
                                                                                                                                             §§push(this.m_currMove);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().m_chanceToDeBuff);
                                                                                                                                                addr1354:
                                                                                                                                                §§goto(addr1463);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop5;
                                                                                                                                       §§goto(addr1346);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr1444:
                                                                                                                                 _loc1_.push(new MoveQueueObject(0.2,this.ApplyEffectsOfCurrentMove));
                                                                                                                              }
                                                                                                                              addr1432:
                                                                                                                           }
                                                                                                                           _loc1_.push(new MoveQueueObject(0.4));
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              addr1462:
                                                                                                                              Singleton.utility.m_screenControllers.m_battleScreen.StartQueuedMoves();
                                                                                                                              addr1458:
                                                                                                                           }
                                                                                                                           §§goto(addr1463);
                                                                                                                        }
                                                                                                                        §§goto(addr1432);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr1209:
                                                                                                                        §§push(0);
                                                                                                                        if(!(_loc9_ && Boolean(_loc1_)))
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc6_ = §§pop();
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 continue loop21;
                                                                                                                              }
                                                                                                                              loop16:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 addr1305:
                                                                                                                                 loop9:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop() >= this.m_currMove.m_statTypesToDeBuff.length)
                                                                                                                                    {
                                                                                                                                       if(!(_loc9_ && Boolean(this)))
                                                                                                                                       {
                                                                                                                                          addr1317:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc3_++;
                                                                                                                                             if(!(_loc8_ || Boolean(_loc2_)))
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             continue loop21;
                                                                                                                                          }
                                                                                                                                          addr1317:
                                                                                                                                       }
                                                                                                                                       §§goto(addr1355);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(this.m_applyBuffChance);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.m_currMove);
                                                                                                                                          if(_loc8_ || Boolean(_loc1_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().m_chanceToDeBuff);
                                                                                                                                             if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                                                             {
                                                                                                                                                addr1242:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                   {
                                                                                                                                                      (_loc7_ = BaseStatModifyMove(Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_STAT_CHANGE))).m_isPositiveIncrease = false;
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         _loc7_.m_statName = this.GetStatTypeNameAsString(this.m_currMove.m_statTypesToDeBuff[_loc6_]);
                                                                                                                                                         if(!(_loc9_ && Boolean(this)))
                                                                                                                                                         {
                                                                                                                                                            addr1273:
                                                                                                                                                            _loc7_.CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_alliesItHits[_loc3_]);
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            addr1296:
                                                                                                                                                            _loc6_++;
                                                                                                                                                            if(_loc9_ && Boolean(this))
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            continue loop16;
                                                                                                                                                         }
                                                                                                                                                         _loc1_.push(new MoveQueueObject(0.3,_loc7_.PlayMove));
                                                                                                                                                         §§goto(addr1296);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1273);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1432);
                                                                                                                                                addr1242:
                                                                                                                                             }
                                                                                                                                             §§goto(addr1354);
                                                                                                                                          }
                                                                                                                                          break loop9;
                                                                                                                                       }
                                                                                                                                       addr1225:
                                                                                                                                    }
                                                                                                                                    §§goto(addr1385);
                                                                                                                                    continue loop16;
                                                                                                                                 }
                                                                                                                                 §§goto(addr1353);
                                                                                                                              }
                                                                                                                              §§goto(addr1209);
                                                                                                                           }
                                                                                                                           addr1218:
                                                                                                                        }
                                                                                                                        §§goto(addr1225);
                                                                                                                     }
                                                                                                                     return;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1416);
                                                                                                         }
                                                                                                         §§goto(addr1444);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(this.m_applyBuffChance);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(this.m_currMove.m_chanceToDeBuff);
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            if(§§pop() < §§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  (_loc7_ = BaseStatModifyMove(Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_STAT_CHANGE))).m_isPositiveIncrease = false;
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     _loc7_.m_statName = this.GetStatTypeNameAsString(this.m_currMove.m_statTypesToDeBuff[_loc6_]);
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        _loc7_.CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_currMinion);
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           _loc1_.push(new MoveQueueObject(0.1));
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc6_++;
                                                                                                                              if(!(_loc8_ || Boolean(_loc2_)))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop26;
                                                                                                                           }
                                                                                                                           §§goto(addr1200);
                                                                                                                           addr967:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     _loc1_.push(new MoveQueueObject(0.3,_loc7_.PlayMove));
                                                                                                                  }
                                                                                                               }
                                                                                                               addr914:
                                                                                                            }
                                                                                                            §§goto(addr967);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            loop7:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() < §§pop())
                                                                                                               {
                                                                                                                  (_loc7_ = BaseStatModifyMove(Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_STAT_CHANGE))).m_isPositiveIncrease = true;
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     _loc7_.m_statName = this.GetStatTypeNameAsString(this.m_currMove.m_statTypesToBuff[_loc6_]);
                                                                                                                     if(_loc8_ || Boolean(this))
                                                                                                                     {
                                                                                                                        _loc7_.CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_enemiesItHits[_loc3_]);
                                                                                                                        if(!(_loc9_ && Boolean(this)))
                                                                                                                        {
                                                                                                                           _loc1_.push(new MoveQueueObject(0.3,_loc7_.PlayMove));
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               _loc6_++;
                                                                                                               if(_loc8_ || Boolean(_loc2_))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc6_ < this.m_currMove.m_statTypesToBuff.length)
                                                                                                                     {
                                                                                                                        §§push(this.m_applyBuffChance);
                                                                                                                        if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                                        {
                                                                                                                           addr1109:
                                                                                                                           §§push(this.m_currMove.m_chanceToBuff);
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              continue loop7;
                                                                                                                           }
                                                                                                                           §§goto(addr1242);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     _loc3_++;
                                                                                                                     §§push(_loc3_);
                                                                                                                     if(_loc8_ || Boolean(this))
                                                                                                                     {
                                                                                                                        if(§§pop() < this.m_enemiesItHits.length)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr1200);
                                                                                                                     }
                                                                                                                     §§goto(addr1305);
                                                                                                                     §§goto(addr1242);
                                                                                                                  }
                                                                                                                  §§goto(addr1326);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1458);
                                                                                                      continue loop26;
                                                                                                   }
                                                                                                   loop18:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() < this.m_alliesItHits.length)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            loop19:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               if(_loc8_ || Boolean(this))
                                                                                                               {
                                                                                                                  if(§§pop() >= this.m_currMove.m_statTypesToBuff.length)
                                                                                                                  {
                                                                                                                     if(!(_loc9_ && Boolean(_loc1_)))
                                                                                                                     {
                                                                                                                        _loc3_++;
                                                                                                                        continue loop18;
                                                                                                                     }
                                                                                                                     §§goto(addr1432);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(this.m_applyBuffChance);
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        §§push(this.m_currMove.m_chanceToBuff);
                                                                                                                        break loop1;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1346);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr1109);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc6_++;
                                                                                                                  continue loop19;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      _loc3_ = 0;
                                                                                                      §§goto(addr1188);
                                                                                                      §§goto(addr1109);
                                                                                                   }
                                                                                                   §§goto(addr1424);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr914);
                                                                                          }
                                                                                          §§goto(addr981);
                                                                                       }
                                                                                       §§goto(addr1317);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr605:
                                                                                       §§push(Singleton.staticData);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.m_currMove);
                                                                                          addr607:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().m_visualMoveID);
                                                                                             addr608:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().GetVisualMinionMove(§§pop()));
                                                                                                addr609:
                                                                                                while(true)
                                                                                                {
                                                                                                   (_loc5_ = §§pop()).CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_alliesItHits[_loc3_]);
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      if(this.m_currMove.m_isThereABufferBetweenVisualMovesOnMultipleEnemies)
                                                                                                      {
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            _loc1_.push(new MoveQueueObject(0.1,this.MoveCurrentMinion));
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                         }
                                                                                                         _loc1_.push(new MoveQueueObject(_loc5_.m_moveTime - 0.1,_loc5_.PlayMove));
                                                                                                         if(_loc9_ && Boolean(_loc1_))
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         _loc1_.push(new MoveQueueObject(0,_loc5_.PlayMove));
                                                                                                         if(_loc9_ && Boolean(_loc1_))
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   _loc3_++;
                                                                                                   continue loop1;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr605:
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() < §§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       (_loc7_ = BaseStatModifyMove(Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_STAT_CHANGE))).m_isPositiveIncrease = true;
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          _loc7_.m_statName = this.GetStatTypeNameAsString(this.m_currMove.m_statTypesToBuff[_loc6_]);
                                                                                          if(_loc8_ || Boolean(_loc3_))
                                                                                          {
                                                                                             _loc7_.CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_alliesItHits[_loc3_]);
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                _loc1_.push(new MoveQueueObject(0.1));
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr1065);
                                                                                             }
                                                                                          }
                                                                                          _loc1_.push(new MoveQueueObject(0.3,_loc7_.PlayMove));
                                                                                       }
                                                                                    }
                                                                                    addr1005:
                                                                                 }
                                                                                 §§goto(addr1065);
                                                                              }
                                                                           }
                                                                           §§goto(addr1005);
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc4_ = int(this.m_alliesItHits.length);
                                                                        }
                                                                        §§goto(addr599);
                                                                     }
                                                                     §§goto(addr589);
                                                                  }
                                                                  §§goto(addr981);
                                                               }
                                                               §§goto(addr588);
                                                               §§goto(addr605);
                                                            }
                                                            if(!§§pop().m_isThereABufferBetweenVisualMovesOnMultipleEnemies)
                                                            {
                                                               _loc1_.push(new MoveQueueObject(_loc5_.m_moveTime - 0.1));
                                                            }
                                                            §§push(this.m_currMove.m_accuracy);
                                                            §§push(this.m_applyMissChance);
                                                            if(!_loc9_)
                                                            {
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  _loc1_.push(new MoveQueueObject(0.2,this.ApplyEffectsOfCurrentMove));
                                                                  _loc1_.push(new MoveQueueObject(0.4));
                                                                  §§push(Singleton.utility);
                                                                  if(_loc8_ || Boolean(_loc3_))
                                                                  {
                                                                     §§push(§§pop().m_screenControllers);
                                                                     if(!(_loc9_ && Boolean(_loc2_)))
                                                                     {
                                                                        §§push(§§pop().m_battleScreen);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§pop().StartQueuedMoves();
                                                                           if(_loc8_ || Boolean(_loc2_))
                                                                           {
                                                                              return;
                                                                           }
                                                                           §§goto(addr1355);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr1462);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.m_currMove.m_doesBuffSelf);
                                                                  if(!(_loc9_ && Boolean(_loc1_)))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc8_)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              if(_loc8_ || Boolean(_loc1_))
                                                                              {
                                                                              }
                                                                              loop2:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_ < this.m_currMove.m_statTypesToBuff.length)
                                                                                 {
                                                                                    §§push(this.m_applyBuffChance);
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §§push(this.m_currMove);
                                                                                       if(!(_loc9_ && Boolean(_loc3_)))
                                                                                       {
                                                                                          §§push(§§pop().m_chanceToBuff);
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                (_loc7_ = BaseStatModifyMove(Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_STAT_CHANGE))).m_isPositiveIncrease = true;
                                                                                                if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   _loc7_.m_statName = this.GetStatTypeNameAsString(this.m_currMove.m_statTypesToBuff[_loc6_]);
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      _loc7_.CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_currMinion);
                                                                                                      if(_loc8_ || Boolean(_loc2_))
                                                                                                      {
                                                                                                         addr854:
                                                                                                         _loc1_.push(new MoveQueueObject(0.1));
                                                                                                         if(_loc9_ && Boolean(_loc2_))
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   _loc1_.push(new MoveQueueObject(0.3,_loc7_.PlayMove));
                                                                                                   continue loop2;
                                                                                                }
                                                                                                §§goto(addr854);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr902);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1317);
                                                                                          addr802:
                                                                                       }
                                                                                       §§goto(addr978);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 if(!(_loc9_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    addr894:
                                                                                    §§goto(addr896);
                                                                                    §§push(this.m_currMove);
                                                                                 }
                                                                                 §§goto(addr1347);
                                                                                 §§goto(addr978);
                                                                              }
                                                                              §§goto(addr1218);
                                                                           }
                                                                           §§goto(addr1326);
                                                                        }
                                                                        §§goto(addr981);
                                                                     }
                                                                     §§goto(addr894);
                                                                  }
                                                                  §§goto(addr981);
                                                               }
                                                            }
                                                            §§goto(addr802);
                                                         }
                                                      }
                                                      §§goto(addr203);
                                                   }
                                                   else
                                                   {
                                                      §§push(int(this.m_enemiesItHits.length));
                                                      if(_loc8_)
                                                      {
                                                         §§goto(addr202);
                                                      }
                                                   }
                                                   §§goto(addr204);
                                                }
                                                §§goto(addr178);
                                             }
                                             §§pop();
                                             if(!(_loc9_ && Boolean(_loc1_)))
                                             {
                                                §§push(this.m_enemiesItHits.length > 0);
                                             }
                                             §§goto(addr202);
                                          }
                                          §§goto(addr178);
                                       }
                                       §§goto(addr202);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr143);
                           }
                           this.m_freezeChance = Math.random() * 100;
                        }
                     }
                     §§goto(addr109);
                  }
               }
            }
            §§goto(addr113);
         }
         §§goto(addr69);
      }
      
      private function GetStatTypeNameAsString(param1:int) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!_loc3_)
         {
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               §§push(StatType.STAT_ENERGY);
               §§push(_loc2_);
               if(_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(0);
                     }
                     else
                     {
                        addr120:
                        §§push(2);
                        if(_loc4_ || Boolean(param1))
                        {
                           addr135:
                        }
                        else
                        {
                           addr143:
                        }
                     }
                     addr149:
                     switch(§§pop())
                     {
                        case 0:
                           §§push("Energy");
                           if(_loc4_)
                           {
                              return §§pop();
                           }
                           §§goto(addr55);
                           break;
                        case 1:
                           §§push("Attack");
                           if(!_loc3_)
                           {
                              return §§pop();
                           }
                           §§goto(addr43);
                           break;
                        case 2:
                           §§push("Healing");
                           if(_loc4_ || Boolean(param1))
                           {
                              addr43:
                              return §§pop();
                           }
                           break;
                        case 3:
                           §§push("Speed");
                           if(_loc4_ || _loc2_)
                           {
                              addr55:
                              return §§pop();
                           }
                           break;
                        default:
                           §§push("Health");
                     }
                     return §§pop();
                     addr148:
                  }
                  else
                  {
                     §§push(StatType.STAT_ATTACK);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(_loc2_);
                        if(_loc4_ || _loc3_)
                        {
                           addr105:
                           if(§§pop() === §§pop())
                           {
                              if(_loc4_)
                              {
                                 §§push(1);
                              }
                              else
                              {
                                 §§goto(addr120);
                              }
                           }
                           else
                           {
                              §§push(StatType.STAT_HEALING);
                              if(!_loc3_)
                              {
                                 §§push(_loc2_);
                                 if(_loc4_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          §§goto(addr120);
                                       }
                                    }
                                    else
                                    {
                                       addr139:
                                       if(StatType.STAT_SPEED !== _loc2_)
                                       {
                                          §§goto(addr148);
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr148);
                                    if(_loc4_)
                                    {
                                       §§goto(addr143);
                                    }
                                 }
                                 §§goto(addr139);
                              }
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr139);
                     }
                  }
                  §§goto(addr135);
               }
               §§goto(addr105);
            }
            §§goto(addr120);
         }
         §§goto(addr149);
      }
      
      private function MoveCurrentMinion() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.m_currMinion);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop().m_minionDexID);
               if(!_loc1_)
               {
                  §§push(MinionDexID.DEX_ID_battleModMinion_1);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc2_ || _loc2_)
                     {
                        §§push(§§pop());
                        if(_loc2_ || Boolean(this))
                        {
                           if(!§§pop())
                           {
                              if(_loc2_)
                              {
                                 §§goto(addr56);
                              }
                           }
                        }
                        §§goto(addr90);
                     }
                     addr56:
                     §§pop();
                     if(!_loc1_)
                     {
                        §§push(this.m_currMinion);
                        if(_loc2_ || Boolean(this))
                        {
                           addr75:
                           §§push(§§pop().m_minionDexID);
                           if(_loc2_ || _loc1_)
                           {
                              addr83:
                              §§push(MinionDexID.DEX_ID_battleModMinion_2);
                              if(!_loc1_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!_loc1_)
                                 {
                                    addr90:
                                    if(!§§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          §§goto(addr94);
                                       }
                                    }
                                    §§goto(addr108);
                                 }
                                 addr94:
                                 §§pop();
                                 if(_loc2_ || _loc1_)
                                 {
                                    addr108:
                                    if(this.m_currMinion.m_minionDexID == MinionDexID.DEX_ID_battleModMinion_3)
                                    {
                                       if(!(_loc1_ && Boolean(this)))
                                       {
                                          §§goto(addr123);
                                       }
                                    }
                                    else
                                    {
                                       addr131:
                                       Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.MakeMoveForCurrentMinion(this.m_currMinion);
                                    }
                                 }
                                 return;
                              }
                           }
                        }
                        §§goto(addr108);
                     }
                     addr123:
                     return;
                  }
                  §§goto(addr108);
               }
               §§goto(addr83);
            }
            §§goto(addr75);
         }
         §§goto(addr131);
      }
      
      private function ApplyEffectsOfCurrentMove() : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = 0;
         var _loc14_:Number = NaN;
         var _loc15_:int = 0;
         var _loc16_:* = 0;
         if(_loc18_ || _loc2_)
         {
            §§push(this.m_currMinion);
            if(!_loc17_)
            {
               §§push(this.m_currMinion);
               if(_loc18_)
               {
                  §§push(§§pop().m_currEnergy);
                  if(_loc18_)
                  {
                     §§push(this.m_currMove.m_energyUsed);
                     if(!(_loc17_ && _loc3_))
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc18_ || _loc2_)
                        {
                           §§pop().m_currEnergy = §§pop();
                           §§push(this.m_currMove);
                           if(_loc18_ || _loc2_)
                           {
                              §§push(§§pop().m_energyPercentageRestored);
                              if(!(_loc17_ && _loc2_))
                              {
                                 §§push(0);
                                 if(_loc18_ || _loc1_)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       addr93:
                                       §§push(this.m_currMinion);
                                       if(_loc18_)
                                       {
                                          addr99:
                                          §§push(this.m_currMinion.m_currEnergy);
                                          if(!(_loc17_ && _loc3_))
                                          {
                                             addr117:
                                             §§pop().m_currEnergy = §§pop() + this.m_currMinion.m_currEnergyStat * (this.m_currMove.m_energyPercentageRestored / 100);
                                             addr118:
                                             if(this.m_currMove.m_accuracy < this.m_applyMissChance)
                                             {
                                                return;
                                             }
                                             addr129:
                                             §§push(this.m_currMinion);
                                             §§push(this.m_currMove.m_exhaustTime);
                                             addr110:
                                             addr107:
                                          }
                                          §§pop().m_currExhaust = §§pop();
                                          §§push(Singleton.staticData.CalculateDamageOrHealingAmount(this.m_currMove.m_damage,this.m_currMove.m_additionalRandomDamage,this.m_currMinion.m_maxAttackStat,this.m_currMinion.m_currLevel));
                                          if(!(_loc17_ && _loc3_))
                                          {
                                             §§push(§§pop());
                                          }
                                          var _loc1_:* = §§pop();
                                          §§push(Singleton.staticData.CalculateDamageOrHealingAmount(this.m_currMove.m_healing,this.m_currMove.m_additionalRandomHealing,this.m_currMinion.m_maxHealingStat,this.m_currMinion.m_currLevel));
                                          if(_loc18_)
                                          {
                                             §§push(§§pop());
                                          }
                                          var _loc2_:* = §§pop();
                                          §§push(Singleton.staticData.CalculateDamageOrHealingAmount(this.m_currMove.m_setShieldAmount,0,this.m_currMinion.m_maxHealingStat,this.m_currMinion.m_currLevel,false));
                                          if(!_loc17_)
                                          {
                                             §§push(§§pop());
                                          }
                                          var _loc3_:* = §§pop();
                                          if(!_loc17_)
                                          {
                                             §§push(this.m_currMinion);
                                             if(!_loc17_)
                                             {
                                                §§push(§§pop().m_baseMinion);
                                                if(!_loc17_)
                                                {
                                                   §§push(§§pop().m_minionType1);
                                                   if(!_loc17_)
                                                   {
                                                      §§push(this.m_currMove);
                                                      if(_loc18_ || _loc2_)
                                                      {
                                                         §§push(§§pop().m_moveType);
                                                         if(_loc18_ || Boolean(this))
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               §§push(_loc1_);
                                                               §§push(Singleton.staticData);
                                                               if(_loc18_)
                                                               {
                                                                  §§push(§§pop().STAB_MODIFIER);
                                                                  if(!(_loc17_ && _loc1_))
                                                                  {
                                                                     _loc1_ = §§pop() * §§pop();
                                                                     if(_loc18_ || _loc2_)
                                                                     {
                                                                        addr247:
                                                                        §§push(_loc2_);
                                                                        if(_loc18_ || Boolean(_loc1_))
                                                                        {
                                                                           §§push(Singleton.staticData);
                                                                           if(!_loc17_)
                                                                           {
                                                                              §§push(§§pop().STAB_MODIFIER);
                                                                              if(_loc18_ || _loc2_)
                                                                              {
                                                                                 addr267:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc17_ && Boolean(_loc1_)))
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    addr348:
                                                                                    §§push(1);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr303:
                                                                                    §§push(Singleton.staticData);
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       §§push(§§pop().STAB_MODIFIER);
                                                                                       if(_loc18_ || _loc2_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc18_ || Boolean(_loc1_))
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                addr326:
                                                                                                _loc1_ = §§pop();
                                                                                                §§push(_loc2_);
                                                                                                if(_loc18_ || Boolean(_loc1_))
                                                                                                {
                                                                                                   addr338:
                                                                                                   §§push(§§pop() * Singleton.staticData.STAB_MODIFIER);
                                                                                                }
                                                                                                §§push(§§pop());
                                                                                                if(!(_loc17_ && _loc3_))
                                                                                                {
                                                                                                   _loc2_ = §§pop();
                                                                                                   §§goto(addr348);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr326);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr338);
                                                                                 }
                                                                                 var _loc7_:* = §§pop();
                                                                                 var _loc8_:Vector.<OwnedMinion> = new Vector.<OwnedMinion>();
                                                                                 var _loc9_:* = 0;
                                                                                 var _loc10_:int = 0;
                                                                                 loop0:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                    §§push(5);
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          if(this.m_isPlayerMoveSystem)
                                                                                          {
                                                                                             §§push(Singleton.dynamicData);
                                                                                             if(_loc18_ || _loc2_)
                                                                                             {
                                                                                                §§push(§§pop().m_opponentsMinions[_loc10_] != null);
                                                                                                §§push(§§pop().m_opponentsMinions[_loc10_] != null);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      §§push(Singleton.dynamicData);
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         §§push(§§pop().m_opponentsMinions[_loc10_].m_currHealth > 0);
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            addr399:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§push(Singleton.dynamicData);
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  if(§§pop().m_opponentsMinions[_loc10_].m_currRedirectDamage > 0)
                                                                                                                  {
                                                                                                                     if(_loc18_ || Boolean(_loc1_))
                                                                                                                     {
                                                                                                                        _loc8_.push(Singleton.dynamicData.m_opponentsMinions[_loc10_]);
                                                                                                                        if(!_loc17_)
                                                                                                                        {
                                                                                                                           §§push(_loc9_);
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              §§push(Singleton.dynamicData);
                                                                                                                              if(!(_loc17_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop().m_opponentsMinions[_loc10_].m_currRedirectDamage);
                                                                                                                                 if(_loc18_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    addr451:
                                                                                                                                    _loc9_ = §§pop();
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(this.m_currMove);
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().m_damage);
                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(!(_loc18_ || _loc2_))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() > §§pop());
                                                                                                                                             if(!(_loc17_ && Boolean(_loc1_)))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(_loc18_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      §§push(this.m_currMove);
                                                                                                                                                      if(_loc18_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr501:
                                                                                                                                                         §§push(Boolean(§§pop().m_additionalRandomDamage));
                                                                                                                                                         if(_loc17_)
                                                                                                                                                         {
                                                                                                                                                            addr642:
                                                                                                                                                            §§pop();
                                                                                                                                                            if(!(_loc17_ && Boolean(_loc1_)))
                                                                                                                                                            {
                                                                                                                                                               addr652:
                                                                                                                                                               if(Boolean(this.m_currMove.m_additionalRandomDamage))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc18_ || Boolean(this))
                                                                                                                                                                  {
                                                                                                                                                                     addr662:
                                                                                                                                                                     §§goto(addr664);
                                                                                                                                                                     §§push(Singleton.utility);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr676:
                                                                                                                                                                     var _loc11_:* = 0;
                                                                                                                                                                     loop2:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc11_ >= this.m_enemiesItHits.length)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              if(_loc18_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1396:
                                                                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                                                                 if(_loc18_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1787:
                                                                                                                                                                                    §§push(_loc11_);
                                                                                                                                                                                    if(!(_loc17_ && Boolean(this)))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() < this.m_alliesItHits.length)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc2_);
                                                                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1414:
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1607:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1608:
                                                                                                                                                                                                   _loc5_ = §§pop() * §§pop();
                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1619:
                                                                                                                                                                                                      §§push(this.m_currMinion.m_currCritChance);
                                                                                                                                                                                                      §§push(Math.random() * 100);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                                                                               §§push(2);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1626:
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  addr1627:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc5_ = §§pop();
                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1630:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop() > 0)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Singleton.utility);
                                                                                                                                                                                                                                 if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1651:
                                                                                                                                                                                                                                    §§pop().m_screenControllers.m_battleScreen.m_battleScreenVisualController.PlayCritAnimation(this.m_alliesItHits[_loc11_]);
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       loop10:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          this.m_alliesItHits[_loc11_].AddToHealth(_loc5_);
                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1666:
                                                                                                                                                                                                                                             this.m_alliesItHits[_loc11_].AddShield(_loc6_);
                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1674:
                                                                                                                                                                                                                                                §§push(this.m_currMove.m_clearBuffsAndDebuffsChance);
                                                                                                                                                                                                                                                if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1688:
                                                                                                                                                                                                                                                   if(§§pop() > Math.random() * 100)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      this.m_alliesItHits[_loc11_].ClearBuffsAndDebuffs();
                                                                                                                                                                                                                                                      if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1701:
                                                                                                                                                                                                                                                         §§push(this.m_currMove);
                                                                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1705:
                                                                                                                                                                                                                                                            §§push(§§pop().m_HOTHealing);
                                                                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(this.m_currMove);
                                                                                                                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop().m_additionalHOTHealing);
                                                                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                                                                              if(!(_loc17_ && Boolean(this)))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1733:
                                                                                                                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                                                                       addr1738:
                                                                                                                                                                                                                                                                                       §§push(this.m_currMove);
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop().m_armor != 0);
                                                                                                                                                                                                                                                                                          if(_loc17_ && Boolean(this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1943:
                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc16_ = 0;
                                                                                                                                                                                                                                                                                             if(!(_loc17_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr2003:
                                                                                                                                                                                                                                                                                                if(_loc16_ < this.m_currMove.m_statTypesToBuff.length)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.m_applyBuffChance);
                                                                                                                                                                                                                                                                                                   §§push(this.m_currMove);
                                                                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1962:
                                                                                                                                                                                                                                                                                                      if(§§pop() < §§pop().m_chanceToBuff)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(this.m_currMinion);
                                                                                                                                                                                                                                                                                                            if(_loc18_ || Boolean(this))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1979:
                                                                                                                                                                                                                                                                                                               §§push(this.m_currMove);
                                                                                                                                                                                                                                                                                                               if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§pop().AddToStatStages(§§pop().m_statTypesToBuff[_loc16_],this.m_currMove.m_stagesOfStatTypeToBuff);
                                                                                                                                                                                                                                                                                                                  addr1995:
                                                                                                                                                                                                                                                                                                                  _loc16_++;
                                                                                                                                                                                                                                                                                                                  if(_loc18_ || Boolean(_loc1_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr2003);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr2142:
                                                                                                                                                                                                                                                                                                                  if(_loc11_ < this.m_alliesItHits.length)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr2096:
                                                                                                                                                                                                                                                                                                                     _loc16_ = 0;
                                                                                                                                                                                                                                                                                                                     if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr2126:
                                                                                                                                                                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                        §§push(this.m_currMove);
                                                                                                                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr2131:
                                                                                                                                                                                                                                                                                                                           if(§§pop() >= §§pop().m_statTypesToBuff.length)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc17_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 _loc11_++;
                                                                                                                                                                                                                                                                                                                                 §§goto(addr2142);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              break loop10;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           if(this.m_applyBuffChance < this.m_currMove.m_chanceToBuff)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              this.m_alliesItHits[_loc11_].AddToStatStages(this.m_currMove.m_statTypesToBuff[_loc16_],this.m_currMove.m_stagesOfStatTypeToBuff);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           _loc16_++;
                                                                                                                                                                                                                                                                                                                           §§goto(addr2126);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr2270:
                                                                                                                                                                                                                                                                                                                        if(§§pop() >= §§pop().m_statTypesToDeBuff.length)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§goto(addr2273);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr2243:
                                                                                                                                                                                                                                                                                                                        §§push(this.m_applyBuffChance);
                                                                                                                                                                                                                                                                                                                        §§push(this.m_currMove.m_chanceToDeBuff);
                                                                                                                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr2247:
                                                                                                                                                                                                                                                                                                                              this.m_alliesItHits[_loc11_].AddToStatStages(this.m_currMove.m_statTypesToDeBuff[_loc16_],this.m_currMove.m_stagesOfStatTypeToDeBuff);
                                                                                                                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr2262:
                                                                                                                                                                                                                                                                                                                                 _loc16_++;
                                                                                                                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr2265);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr2366);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              break loop10;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr2262);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr2326);
                                                                                                                                                                                                                                                                                                                        addr2104:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr2230:
                                                                                                                                                                                                                                                                                                                     _loc11_ = 0;
                                                                                                                                                                                                                                                                                                                     §§goto(addr2281);
                                                                                                                                                                                                                                                                                                                     addr2229:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                                                                                                                  if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                     addr2216:
                                                                                                                                                                                                                                                                                                                     if(_loc11_ < this.m_enemiesItHits.length)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc16_ = 0;
                                                                                                                                                                                                                                                                                                                        addr2203:
                                                                                                                                                                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(§§pop() >= this.m_currMove.m_statTypesToBuff.length)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr2213:
                                                                                                                                                                                                                                                                                                                                 _loc11_++;
                                                                                                                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr2216);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr2330);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr2345);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(this.m_applyBuffChance);
                                                                                                                                                                                                                                                                                                                           if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr2174:
                                                                                                                                                                                                                                                                                                                              if(§§pop() < this.m_currMove.m_chanceToBuff)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    this.m_enemiesItHits[_loc11_].AddToStatStages(this.m_currMove.m_statTypesToBuff[_loc16_],this.m_currMove.m_stagesOfStatTypeToBuff);
                                                                                                                                                                                                                                                                                                                                    if(!(_loc17_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr2202:
                                                                                                                                                                                                                                                                                                                                       _loc16_++;
                                                                                                                                                                                                                                                                                                                                       §§goto(addr2203);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr2247);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr2265);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr2202);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr2230);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr2303);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr2223:
                                                                                                                                                                                                                                                                                                                        if(this.m_currMove.m_doesDeBuffTargets)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr2229);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr2262);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr2374);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr2230);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr2284);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr2050);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr2048);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr2330);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1995);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr2131);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(!(_loc17_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr2016:
                                                                                                                                                                                                                                                                                                   §§push(this.m_currMove.m_doesDeBuffSelf);
                                                                                                                                                                                                                                                                                                   if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc16_ = 0;
                                                                                                                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr2050:
                                                                                                                                                                                                                                                                                                            §§pop().AddToStatStages(§§pop().m_statTypesToDeBuff[_loc16_],this.m_currMove.m_stagesOfStatTypeToDeBuff);
                                                                                                                                                                                                                                                                                                            addr2057:
                                                                                                                                                                                                                                                                                                            _loc16_++;
                                                                                                                                                                                                                                                                                                            if(_loc16_ < this.m_currMove.m_statTypesToDeBuff.length)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(this.m_applyBuffChance);
                                                                                                                                                                                                                                                                                                               §§push(this.m_currMove);
                                                                                                                                                                                                                                                                                                               if(_loc18_ || Boolean(_loc1_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(§§pop() < §§pop().m_chanceToDeBuff)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr2048:
                                                                                                                                                                                                                                                                                                                     §§goto(addr2050);
                                                                                                                                                                                                                                                                                                                     §§push(this.m_currMinion);
                                                                                                                                                                                                                                                                                                                     §§push(this.m_currMove);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr2057);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr2243);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(!_loc17_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr2066:
                                                                                                                                                                                                                                                                                                               §§push(this.m_currMove);
                                                                                                                                                                                                                                                                                                               if(!(_loc17_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr2076:
                                                                                                                                                                                                                                                                                                                  if(§§pop().m_doesBuffTargets)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr2084:
                                                                                                                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                                                                                                                        if(_loc18_ || Boolean(_loc1_))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                           addr2093:
                                                                                                                                                                                                                                                                                                                           §§goto(addr2142);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr2216);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr2262);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr2223);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr2273);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr2273:
                                                                                                                                                                                                                                                                                                         _loc11_++;
                                                                                                                                                                                                                                                                                                         if(!(_loc17_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr2281:
                                                                                                                                                                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr2284:
                                                                                                                                                                                                                                                                                                               if(§§pop() < this.m_alliesItHits.length)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr2234:
                                                                                                                                                                                                                                                                                                                  _loc16_ = 0;
                                                                                                                                                                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr2237:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr2361:
                                                                                                                                                                                                                                                                                                                  addr2265:
                                                                                                                                                                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr2268:
                                                                                                                                                                                                                                                                                                                     §§goto(addr2270);
                                                                                                                                                                                                                                                                                                                     §§push(this.m_currMove);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(§§pop() >= this.m_currMove.m_statTypesToDeBuff.length)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr2366:
                                                                                                                                                                                                                                                                                                                     _loc11_++;
                                                                                                                                                                                                                                                                                                                     break loop10;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§push(this.m_applyBuffChance);
                                                                                                                                                                                                                                                                                                                  if(_loc18_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr2326:
                                                                                                                                                                                                                                                                                                                     if(§§pop() < this.m_currMove.m_chanceToDeBuff)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr2330:
                                                                                                                                                                                                                                                                                                                        this.m_enemiesItHits[_loc11_].AddToStatStages(this.m_currMove.m_statTypesToDeBuff[_loc16_],this.m_currMove.m_stagesOfStatTypeToDeBuff);
                                                                                                                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr2345:
                                                                                                                                                                                                                                                                                                                           _loc16_++;
                                                                                                                                                                                                                                                                                                                           if(!(_loc17_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr2360:
                                                                                                                                                                                                                                                                                                                              §§goto(addr2361);
                                                                                                                                                                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr2366);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        break loop10;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr2345);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr2368);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(!(_loc17_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr2295);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr2374);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr2326);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr2295);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr2066);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr2223);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr2048);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr2247);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr2016);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1738:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc17_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                §§push(this.m_currMove);
                                                                                                                                                                                                                                                                                                addr1761:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop().m_setReflectDamageAmount);
                                                                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                                                                                                                      if(!(_loc17_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1773:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  this.m_alliesItHits[_loc11_].AddDotOrHot(this.m_currMove.m_moveID,this.m_currMinion);
                                                                                                                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc11_++;
                                                                                                                                                                                                                                                                                                                        §§goto(addr1787);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1786:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  break loop10;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr1774:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1786);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr1773:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1962);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr2268);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1758:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr2076);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1773);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1749:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1943);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr2174);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1761);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr2360);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1733);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1713:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1773);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr2326);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1738);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1880:
                                                                                                                                                                                                                                                      §§push(this.m_currMinion);
                                                                                                                                                                                                                                                      §§push(this.m_currMove);
                                                                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().m_selfPercentageDamage);
                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1896:
                                                                                                                                                                                                                                                            §§pop().AddToHealth(-(§§pop() / 100) * this.m_currMinion.m_currHealthStat);
                                                                                                                                                                                                                                                            §§push(Singleton.staticData.CalculateDamageOrHealingAmount(this.m_currMove.m_selfHeal,this.m_currMove.m_additionalRandomSelfHeal,this.m_currMinion.m_maxHealingStat,this.m_currMinion.m_currLevel));
                                                                                                                                                                                                                                                            if(_loc18_ || Boolean(this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            _loc2_ = §§pop();
                                                                                                                                                                                                                                                            this.m_currMinion.AddToHealth(_loc2_);
                                                                                                                                                                                                                                                            §§push(this.m_currMove.m_moveCoolDownTime);
                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1931:
                                                                                                                                                                                                                                                               if(§§pop() > 0)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.m_currMinion);
                                                                                                                                                                                                                                                                  §§push(this.m_currMove);
                                                                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1939:
                                                                                                                                                                                                                                                                     §§pop().AddMoveToCoolDowns(§§pop().m_moveID);
                                                                                                                                                                                                                                                                     addr1940:
                                                                                                                                                                                                                                                                     §§goto(addr1943);
                                                                                                                                                                                                                                                                     §§push(this.m_currMove.m_doesBuffSelf);
                                                                                                                                                                                                                                                                     addr1938:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr2050);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1940);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr2265);
                                                                                                                                                                                                                                                            addr1891:
                                                                                                                                                                                                                                                            addr1889:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1939);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1938);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1701);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr2268);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr2213);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1774);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1658:
                                                                                                                                                                                                                                       §§goto(addr2265);
                                                                                                                                                                                                                                       §§push(_loc11_);
                                                                                                                                                                                                                                       addr1658:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr2366);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr2374);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr2247);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1658);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1630:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1852:
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     if(_loc18_ || Boolean(this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc1_ = §§pop();
                                                                                                                                                                                                                        §§push(this.m_currMinion);
                                                                                                                                                                                                                        §§push(_loc1_);
                                                                                                                                                                                                                        if(!(_loc17_ && Boolean(this)))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().AddToHealth(§§pop());
                                                                                                                                                                                                                              §§goto(addr1880);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1891);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1896);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1624:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2237);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1658);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1619:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr2003);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1607:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1627);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1604:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(Singleton.staticData);
                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.m_currMove);
                                                                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().m_selfDamage);
                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.m_currMove);
                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().m_additionalRandomSelfDamage);
                                                                                                                                                                                                   if(_loc18_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.m_currMinion);
                                                                                                                                                                                                      if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().m_maxAttackStat);
                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.m_currMinion);
                                                                                                                                                                                                            if(_loc18_ || Boolean(this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().m_currLevel);
                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1852);
                                                                                                                                                                                                                  §§push(§§pop().CalculateDamageOrHealingAmount(§§pop(),§§pop(),§§pop(),§§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1896);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2096);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2104);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2234);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr2093);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc1_);
                                                                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc4_ = §§pop();
                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(1);
                                                                                                                                                                                 if(!(_loc17_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(!(_loc17_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc7_ = §§pop();
                                                                                                                                                                                          if(!(_loc17_ && Boolean(_loc1_)))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Singleton.staticData);
                                                                                                                                                                                             if(!(_loc17_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.m_currMove);
                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().m_moveType);
                                                                                                                                                                                                   if(!(_loc17_ && Boolean(this)))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().CalculateEffectivenessModifier(§§pop(),this.m_enemiesItHits[_loc11_].m_baseMinion.m_minionType1));
                                                                                                                                                                                                      if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc7_ = §§pop();
                                                                                                                                                                                                            if(!(_loc17_ && Boolean(this)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Singleton.staticData);
                                                                                                                                                                                                               if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.m_currMove);
                                                                                                                                                                                                                  if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().m_moveType);
                                                                                                                                                                                                                     if(!(_loc17_ && Boolean(this)))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop().CalculateEffectivenessModifier(§§pop(),this.m_enemiesItHits[_loc11_].m_baseMinion.m_minionType2));
                                                                                                                                                                                                                        if(_loc18_ || Boolean(this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc7_ = §§pop());
                                                                                                                                                                                                                           §§push(1.4);
                                                                                                                                                                                                                           if(!(_loc17_ && Boolean(_loc1_)))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop() > §§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Singleton.utility);
                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop().m_screenControllers.m_battleScreen.m_battleScreenVisualController.PlaySuperEffectiveAnimation(this.m_enemiesItHits[_loc11_]);
                                                                                                                                                                                                                                    addr871:
                                                                                                                                                                                                                                    §§push(_loc4_);
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * _loc7_);
                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                          if(!_loc17_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr881:
                                                                                                                                                                                                                                             _loc4_ = §§pop();
                                                                                                                                                                                                                                             if(_loc18_ || Boolean(this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.m_currMinion.m_currCritChance);
                                                                                                                                                                                                                                                §§push(Math.random() * 100);
                                                                                                                                                                                                                                                if(!(_loc17_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc4_ * 2);
                                                                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc4_ = §§pop();
                                                                                                                                                                                                                                                         if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Singleton.utility);
                                                                                                                                                                                                                                                            if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr927:
                                                                                                                                                                                                                                                               §§push(§§pop().m_screenControllers.m_battleScreen);
                                                                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop().m_battleScreenVisualController);
                                                                                                                                                                                                                                                                  if(_loc18_ || Boolean(this))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§pop().PlayCritAnimation(this.m_enemiesItHits[_loc11_]);
                                                                                                                                                                                                                                                                     addr944:
                                                                                                                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr949:
                                                                                                                                                                                                                                                                        _loc9_ = §§pop() / 100;
                                                                                                                                                                                                                                                                        addr951:
                                                                                                                                                                                                                                                                        §§push(_loc4_);
                                                                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc12_ = §§pop();
                                                                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                                                                           if(_loc18_ || Boolean(this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc13_ = §§pop();
                                                                                                                                                                                                                                                                              loop3:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc13_ < _loc8_.length)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc14_ = _loc8_[_loc13_].m_currRedirectDamage / 100;
                                                                                                                                                                                                                                                                                    §§push(_loc9_);
                                                                                                                                                                                                                                                                                    if(_loc18_ || Boolean(_loc1_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(§§pop() > 1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                                                                                                                          §§push(_loc14_);
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() * (§§pop() / _loc9_));
                                                                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                if(_loc17_ && Boolean(this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop3;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc4_ = §§pop() - _loc15_;
                                                                                                                                                                                                                                                                                                         §§push(this.m_currMinion);
                                                                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                                                                                                                                                                            if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(-§§pop() * this.m_enemiesItHits[_loc11_].m_currReflectDamagePercentage);
                                                                                                                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§pop().AddToHealth(§§pop());
                                                                                                                                                                                                                                                                                                                  if(_loc18_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc15_ = §§pop() * _loc8_[_loc13_].m_currArmorModRate;
                                                                                                                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc8_[_loc13_].AddToHealth(-_loc15_);
                                                                                                                                                                                                                                                                                                                           _loc13_++;
                                                                                                                                                                                                                                                                                                                           continue loop3;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr2084);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr2050);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr1896);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr2234);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr1084);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1889);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1979);
                                                                                                                                                                                                                                                                                                      addr1024:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1896);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1108);
                                                                                                                                                                                                                                                                                          addr987:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                                                                                                                          if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc14_);
                                                                                                                                                                                                                                                                                             if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc15_ = §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                   §§goto(addr1021);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr1018:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1607);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1630);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1630);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1084:
                                                                                                                                                                                                                                                                                 this.m_currMinion.AddToHealth(-_loc4_ * this.m_enemiesItHits[_loc11_].m_currReflectDamagePercentage);
                                                                                                                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                                                                                                                 if(!(_loc17_ && Boolean(this)))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * this.m_enemiesItHits[_loc11_].m_currArmorModRate);
                                                                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1108:
                                                                                                                                                                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                       this.m_enemiesItHits[_loc11_].AddToHealth(-_loc4_);
                                                                                                                                                                                                                                                                                       §§push(this.m_currMove.m_DOTDamage > 0);
                                                                                                                                                                                                                                                                                       §§push(this.m_currMove.m_DOTDamage > 0);
                                                                                                                                                                                                                                                                                       if(_loc18_ || Boolean(_loc1_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.m_currMove);
                                                                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1147:
                                                                                                                                                                                                                                                                                                      §§push(§§pop().m_additionalDOTDamage > 0);
                                                                                                                                                                                                                                                                                                      if(!(§§pop().m_additionalDOTDamage > 0))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                                                                            §§push(this.m_currMove.m_armor);
                                                                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1160:
                                                                                                                                                                                                                                                                                                               §§push(§§pop() != 0);
                                                                                                                                                                                                                                                                                                               if(!(§§pop() != 0))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                                                                  §§push(this.m_currMove);
                                                                                                                                                                                                                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop().m_setReflectDamageAmount);
                                                                                                                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                                                                                                                     if(_loc18_ || Boolean(_loc1_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                        if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1196:
                                                                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!this.m_enemiesItHits[_loc11_].m_isBattleModShieldActive)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       this.m_enemiesItHits[_loc11_].AddDotOrHot(this.m_currMove.m_moveID,this.m_currMinion);
                                                                                                                                                                                                                                                                                                                                       addr1222:
                                                                                                                                                                                                                                                                                                                                       §§push(this.m_currMove);
                                                                                                                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop().m_clearBuffsAndDebuffsChance);
                                                                                                                                                                                                                                                                                                                                          if(_loc18_ || Boolean(_loc1_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(Math.random() * 100);
                                                                                                                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   this.m_enemiesItHits[_loc11_].ClearBuffsAndDebuffs();
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                if(this.m_currMove.m_freezeChance > this.m_freezeChance)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc17_)
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
                                                                                                                                                                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1310:
                                                                                                                                                                                                                                                                                                                                                         if(this.m_currMove.m_stunChance <= this.m_stunChance)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop2;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            this.m_enemiesItHits[_loc11_].m_isStunned = true;
                                                                                                                                                                                                                                                                                                                                                            if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               TweenLite.to(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionBottomLayerVisualObjectFor(this.m_enemiesItHits[_loc11_]).m_minionSprite,1,{"colorTransform":{
                                                                                                                                                                                                                                                                                                                                                                  "tint":16777062,
                                                                                                                                                                                                                                                                                                                                                                  "tintAmount":0.5
                                                                                                                                                                                                                                                                                                                                                               }});
                                                                                                                                                                                                                                                                                                                                                               TweenLite.to(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.GetMinionTopLayerVisualObjectFor(this.m_enemiesItHits[_loc11_]).m_minionSprite,1,{"colorTransform":{
                                                                                                                                                                                                                                                                                                                                                                  "tint":16777062,
                                                                                                                                                                                                                                                                                                                                                                  "tintAmount":0.5
                                                                                                                                                                                                                                                                                                                                                               }});
                                                                                                                                                                                                                                                                                                                                                               continue loop2;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr2281);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr2223);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1896);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr2234);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1674);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1310);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1688);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr2361);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1705);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr2213);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1222);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr2295:
                                                                                                                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                                                                                                                              if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr2303:
                                                                                                                                                                                                                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                                 break loop10;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr2368:
                                                                                                                                                                                                                                                                                                                              if(§§pop() < this.m_enemiesItHits.length)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                                                                                                                 if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                                                                    §§goto(addr2360);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr2368);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr2377:
                                                                                                                                                                                                                                                                                                                                 Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.UpdateMinionHealth();
                                                                                                                                                                                                                                                                                                                                 addr2374:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1222);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1749);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1931);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr2016);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1196);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr2234);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1733);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1160);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1738);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1666);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1733);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1147);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1522:
                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                                                                          §§push(_loc5_ > 0);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc18_ || Boolean(_loc1_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1540:
                                                                                                                                                                                                                                                                                             Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController.PlaySuperEffectiveAnimation(this.m_alliesItHits[_loc11_]);
                                                                                                                                                                                                                                                                                             addr1603:
                                                                                                                                                                                                                                                                                             §§goto(addr1604);
                                                                                                                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1995);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(_loc7_ < 0.7);
                                                                                                                                                                                                                                                                                       §§push(_loc7_ < 0.7);
                                                                                                                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                                                                                                                             if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1571:
                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc18_ || Boolean(this))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(Singleton.utility);
                                                                                                                                                                                                                                                                                                         if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop().m_screenControllers);
                                                                                                                                                                                                                                                                                                            if(!(_loc17_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1597:
                                                                                                                                                                                                                                                                                                               §§pop().m_battleScreen.m_battleScreenVisualController.PlayNotEffectiveAnimation(this.m_alliesItHits[_loc11_]);
                                                                                                                                                                                                                                                                                                               §§goto(addr1603);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr2377);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr2237);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1603);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1758);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1624);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1571);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1713);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1417:
                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                    if(_loc18_ || Boolean(_loc1_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc6_ = §§pop();
                                                                                                                                                                                                                                                                                       §§push(1);
                                                                                                                                                                                                                                                                                       if(!(_loc17_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(Singleton.staticData);
                                                                                                                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1450:
                                                                                                                                                                                                                                                                                                   §§push(this.m_currMove);
                                                                                                                                                                                                                                                                                                   if(_loc18_ || Boolean(this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1459:
                                                                                                                                                                                                                                                                                                      §§push(§§pop().m_moveType);
                                                                                                                                                                                                                                                                                                      if(_loc18_ || Boolean(this))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop().CalculateHealingEffectivenessModifier(§§pop(),this.m_alliesItHits[_loc11_].m_baseMinion.m_minionType1));
                                                                                                                                                                                                                                                                                                         if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1483:
                                                                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                                                                            if(!_loc17_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1486:
                                                                                                                                                                                                                                                                                                               _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                               addr1492:
                                                                                                                                                                                                                                                                                                               §§push(Singleton.staticData.CalculateHealingEffectivenessModifier(this.m_currMove.m_moveType,this.m_alliesItHits[_loc11_].m_baseMinion.m_minionType2));
                                                                                                                                                                                                                                                                                                               if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1507:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                  if(!(_loc17_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1607);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr1519:
                                                                                                                                                                                                                                                                                                                  §§goto(addr1522);
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() > 1.4);
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() > 1.4);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1607);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                            §§goto(addr1519);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1630);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1492);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1483);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1619);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1931);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1896);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1626);
                                                                                                                                                                                                                                                                                 §§goto(addr1630);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1626);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr1396);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                        addr947:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1519);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1651);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1597);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr2377);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1880);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1852);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr944);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1018);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr951);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1507);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1626);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr927);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                                                                 if(!(_loc17_ && Boolean(this)))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr841:
                                                                                                                                                                                                                                    §§push(0.7);
                                                                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Singleton.utility.m_screenControllers.m_battleScreen.m_battleScreenVisualController);
                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop().PlayNotEffectiveAnimation(this.m_enemiesItHits[_loc11_]);
                                                                                                                                                                                                                                                if(!(_loc17_ && Boolean(this)))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr871);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr2360);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1540);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr2237);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr871);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1619);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr947);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1607);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr949);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1492);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1459);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1450);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1024);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr987);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1619);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1492);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1459);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1492);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1608);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1486);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr841);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1931);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2377);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr881);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc5_ = §§pop();
                                                                                                                                                                        §§goto(addr1417);
                                                                                                                                                                        §§goto(addr1414);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            continue loop0;
                                                                                                                                                         }
                                                                                                                                                         addr505:
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            §§push(Singleton.utility);
                                                                                                                                                            if(_loc18_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().m_screenControllers);
                                                                                                                                                               if(!_loc17_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().m_battleScreen);
                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().m_battleScreenVisualController);
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Singleton.dynamicData);
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().PlayRedirectedAnimation(§§pop().m_opponentsMinions[_loc10_]);
                                                                                                                                                                           addr532:
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr667:
                                                                                                                                                                        §§push(Singleton.dynamicData);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().PlayRedirectedAnimation(§§pop().GetOwnedMinionAt(_loc10_));
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  addr666:
                                                                                                                                                                  §§push(§§pop().m_battleScreenVisualController);
                                                                                                                                                                  §§goto(addr667);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr665:
                                                                                                                                                                  §§push(§§pop().m_battleScreen);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr666);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr664:
                                                                                                                                                               §§push(§§pop().m_screenControllers);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr665);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr532);
                                                                                                                                                         §§goto(addr664);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr652);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr505);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr561:
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!_loc17_)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         if(!_loc17_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Singleton.dynamicData);
                                                                                                                                                            if(!_loc17_)
                                                                                                                                                            {
                                                                                                                                                               addr571:
                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                               if(_loc18_ || Boolean(_loc1_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().m_currHealth);
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        addr587:
                                                                                                                                                                        if(§§pop() <= §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        addr592:
                                                                                                                                                                        §§push(Singleton.dynamicData.GetOwnedMinionAt(_loc10_).m_currRedirectDamage);
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        if(!(_loc17_ && Boolean(_loc1_)))
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr602:
                                                                                                                                                                              _loc8_.push(Singleton.dynamicData.GetOwnedMinionAt(_loc10_));
                                                                                                                                                                              addr608:
                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr613:
                                                                                                                                                                                 §§push(§§pop() + Singleton.dynamicData.GetOwnedMinionAt(_loc10_).m_currRedirectDamage);
                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr619:
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              _loc9_ = §§pop();
                                                                                                                                                                              §§push(this.m_currMove);
                                                                                                                                                                              if(!(_loc17_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().m_damage);
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                 if(_loc17_ && _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr639:
                                                                                                                                                                                 §§push(§§pop() > §§pop());
                                                                                                                                                                                 if(!(§§pop() > §§pop()))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr642);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr652);
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr639);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr592);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr608);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr639);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr587);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr557:
                                                                                                                                                §§push(!§§pop());
                                                                                                                                                §§push(!§§pop());
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr561);
                                                                                                                                                }
                                                                                                                                                §§goto(addr639);
                                                                                                                                             }
                                                                                                                                             §§goto(addr639);
                                                                                                                                          }
                                                                                                                                          §§goto(addr652);
                                                                                                                                       }
                                                                                                                                       §§goto(addr501);
                                                                                                                                    }
                                                                                                                                    §§goto(addr602);
                                                                                                                                 }
                                                                                                                                 §§goto(addr619);
                                                                                                                              }
                                                                                                                              §§goto(addr613);
                                                                                                                           }
                                                                                                                           §§goto(addr451);
                                                                                                                        }
                                                                                                                        §§goto(addr662);
                                                                                                                     }
                                                                                                                     §§goto(addr602);
                                                                                                                  }
                                                                                                                  §§goto(addr532);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr542:
                                                                                                                  §§push(_loc10_);
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().GetOwnedMinionAt(§§pop()));
                                                                                                                     if(_loc18_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() == null);
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        §§goto(addr557);
                                                                                                                     }
                                                                                                                     §§goto(addr592);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr592);
                                                                                                            }
                                                                                                            §§goto(addr532);
                                                                                                         }
                                                                                                         §§goto(addr652);
                                                                                                      }
                                                                                                      §§goto(addr542);
                                                                                                   }
                                                                                                   §§goto(addr399);
                                                                                                }
                                                                                                §§goto(addr639);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(Singleton.dynamicData);
                                                                                             if(!(_loc17_ && Boolean(this)))
                                                                                             {
                                                                                                §§goto(addr542);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr571);
                                                                                       }
                                                                                       §§goto(addr676);
                                                                                    }
                                                                                    _loc10_++;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr338);
                                                                        }
                                                                        §§goto(addr326);
                                                                     }
                                                                     §§goto(addr348);
                                                                  }
                                                                  §§goto(addr267);
                                                               }
                                                               §§goto(addr338);
                                                            }
                                                            else
                                                            {
                                                               addr281:
                                                               §§push(this.m_currMinion.m_baseMinion.m_minionType2);
                                                               if(!(_loc17_ && _loc3_))
                                                               {
                                                                  addr292:
                                                                  if(§§pop() == this.m_currMove.m_moveType)
                                                                  {
                                                                     if(!_loc17_)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        if(!(_loc17_ && _loc2_))
                                                                        {
                                                                           §§goto(addr303);
                                                                        }
                                                                     }
                                                                     §§goto(addr326);
                                                                  }
                                                                  §§goto(addr348);
                                                               }
                                                            }
                                                            §§goto(addr348);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr292);
                                                }
                                             }
                                             §§goto(addr281);
                                          }
                                          §§goto(addr247);
                                       }
                                       §§goto(addr129);
                                    }
                                 }
                              }
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr107);
               }
               §§goto(addr99);
            }
            §§goto(addr129);
         }
         §§goto(addr93);
      }
      
      public function ChooseAMoveFor(param1:OwnedMinion) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.m_currMinion = param1;
         }
      }
      
      protected function QueueUpChargeAnimation() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(Singleton.utility);
            if(_loc4_)
            {
               §§push(§§pop().m_screenControllers);
               if(_loc4_ || _loc1_)
               {
                  §§push(§§pop().m_battleScreen);
                  if(_loc4_ || _loc1_)
                  {
                     §§pop().m_moveQueue = new Vector.<MoveQueueObject>();
                     addr44:
                     §§push(Singleton.utility.m_screenControllers.m_battleScreen);
                  }
                  var _loc1_:Vector.<MoveQueueObject> = §§pop().m_moveQueue;
                  var _loc2_:BaseVisualMove = Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_MOVE_CHARGING);
                  if(!_loc3_)
                  {
                     _loc2_.CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_currMinion);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.push(new MoveQueueObject(0.2));
                        if(!_loc3_)
                        {
                           §§goto(addr97);
                        }
                        §§goto(addr114);
                     }
                  }
                  addr97:
                  _loc1_.push(new MoveQueueObject(_loc2_.m_moveTime - 0.1,_loc2_.PlayMove));
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr114:
                     _loc1_.push(new MoveQueueObject(1.1));
                  }
                  return;
               }
            }
         }
         §§goto(addr44);
      }
      
      protected function QueueUpExhaustedAnimation() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc1_))
         {
            §§push(Singleton.utility);
            if(_loc4_)
            {
               §§push(§§pop().m_screenControllers);
               if(!(_loc3_ && _loc1_))
               {
                  §§push(§§pop().m_battleScreen);
                  if(_loc4_ || _loc2_)
                  {
                     §§pop().m_moveQueue = new Vector.<MoveQueueObject>();
                     addr56:
                     §§push(Singleton.utility.m_screenControllers.m_battleScreen);
                  }
                  var _loc1_:Vector.<MoveQueueObject> = §§pop().m_moveQueue;
                  var _loc2_:BaseVisualMove = Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_MOVE_EXHAUST);
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     _loc2_.CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_currMinion);
                     if(_loc4_)
                     {
                        _loc1_.push(new MoveQueueObject(0.2));
                        addr88:
                        if(!_loc3_)
                        {
                           _loc1_.push(new MoveQueueObject(_loc2_.m_moveTime - 0.1,_loc2_.PlayMove));
                           if(!_loc3_)
                           {
                              addr114:
                              _loc1_.push(new MoveQueueObject(1.1));
                           }
                           return;
                        }
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr88);
               }
            }
         }
         §§goto(addr56);
      }
      
      protected function QueueUpFrozenAnimation() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(Singleton.utility);
            if(!_loc3_)
            {
               §§push(§§pop().m_screenControllers);
               if(_loc4_ || Boolean(this))
               {
                  §§push(§§pop().m_battleScreen);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§pop().m_moveQueue = new Vector.<MoveQueueObject>();
                     addr44:
                     §§push(Singleton.utility.m_screenControllers.m_battleScreen);
                  }
                  var _loc1_:Vector.<MoveQueueObject> = §§pop().m_moveQueue;
                  var _loc2_:BaseVisualMove = Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_MOVE_FROZEN);
                  if(_loc4_)
                  {
                     _loc2_.CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_currMinion);
                     if(_loc4_)
                     {
                        addr78:
                        _loc1_.push(new MoveQueueObject(0.2));
                        if(_loc4_)
                        {
                           _loc1_.push(new MoveQueueObject(_loc2_.m_moveTime - 0.1,_loc2_.PlayMove));
                           if(_loc4_ || Boolean(this))
                           {
                              _loc1_.push(new MoveQueueObject(1.1));
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr78);
               }
            }
         }
         §§goto(addr44);
      }
      
      protected function QueueUpStunAnimation() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(Singleton.utility);
            if(!_loc3_)
            {
               §§push(§§pop().m_screenControllers);
               if(!_loc3_)
               {
                  §§push(§§pop().m_battleScreen);
                  if(!(_loc3_ && _loc1_))
                  {
                     §§pop().m_moveQueue = new Vector.<MoveQueueObject>();
                     addr39:
                     §§push(Singleton.utility.m_screenControllers.m_battleScreen);
                  }
                  var _loc1_:Vector.<MoveQueueObject> = §§pop().m_moveQueue;
                  var _loc2_:BaseVisualMove = Singleton.staticData.GetVisualMinionMove(MinionVisualMoveID.VISUALS_MOVE_STUNNED);
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc2_.CreateMove(Singleton.utility.m_screenControllers.m_battleScreen,this.m_currMove,this.m_currMinion,this.m_currMinion);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.push(new MoveQueueObject(0.2));
                        if(!_loc3_)
                        {
                           _loc1_.push(new MoveQueueObject(_loc2_.m_moveTime - 0.1,_loc2_.PlayMove));
                           if(!_loc3_)
                           {
                              _loc1_.push(new MoveQueueObject(1.1));
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr39);
      }
   }
}
