package TopDown.LevelObjects
{
   import States.GameState;
   import States.SpecialRoom;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   
   public class RoomTransitionObject extends BaseLevelCollObject
   {
       
      
      public var m_transitionID:int;
      
      public var m_isTeleportTransitionObject:Boolean;
      
      public function RoomTransitionObject()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_ || _loc1_)
            {
               this.m_isTeleportTransitionObject = false;
            }
         }
      }
      
      override public function OnColl() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:MainChar = null;
         if(_loc5_ || Boolean(this))
         {
            super.OnColl();
         }
         §§push(Singleton.dynamicData.m_currFloorOfTower);
         if(!(_loc4_ && Boolean(_loc3_)))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc5_)
         {
            §§push(_loc1_);
            if(_loc5_)
            {
               §§push(§§pop() == 4);
               if(!(§§pop() == 4))
               {
                  if(_loc5_)
                  {
                     §§pop();
                     if(!_loc4_)
                     {
                        §§push(_loc1_);
                        if(!_loc4_)
                        {
                           addr57:
                           §§push(§§pop() == 9);
                           if(!(§§pop() == 9))
                           {
                              if(!_loc4_)
                              {
                                 §§pop();
                                 addr65:
                                 §§push(_loc1_ == 14);
                                 §§push(_loc1_ == 14);
                                 if(_loc5_ || Boolean(this))
                                 {
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          §§push(_loc1_);
                                          if(_loc5_)
                                          {
                                             §§push(19);
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                addr94:
                                                §§push(§§pop() == §§pop());
                                                if(!(§§pop() == §§pop()))
                                                {
                                                   §§pop();
                                                   addr97:
                                                   §§push(_loc1_);
                                                   if(!_loc4_)
                                                   {
                                                      addr102:
                                                      §§push(§§pop() == 24);
                                                      if(!(§§pop() == 24))
                                                      {
                                                         §§pop();
                                                         §§push(_loc1_);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(29);
                                                            if(!(_loc4_ && Boolean(_loc3_)))
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(!_loc4_)
                                                               {
                                                                  addr119:
                                                                  §§push(§§pop());
                                                                  if(!(_loc4_ && Boolean(this)))
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§pop();
                                                                           if(!(_loc4_ && _loc1_))
                                                                           {
                                                                              §§push(_loc1_);
                                                                              §§push(30);
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr148:
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(!(§§pop() == §§pop()))
                                                                                 {
                                                                                    if(_loc5_ || Boolean(_loc3_))
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(_loc1_);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr163:
                                                                                             §§push(§§pop() == 35);
                                                                                             if(!(_loc4_ && _loc1_))
                                                                                             {
                                                                                                addr172:
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   addr174:
                                                                                                   §§pop();
                                                                                                   if(_loc5_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(_loc1_);
                                                                                                      §§push(40);
                                                                                                      if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                      {
                                                                                                         addr198:
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            addr201:
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc5_ || Boolean(_loc3_))
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     addr212:
                                                                                                                     §§pop();
                                                                                                                     §§push(_loc1_);
                                                                                                                     if(_loc5_ || _loc1_)
                                                                                                                     {
                                                                                                                        addr223:
                                                                                                                        §§push(§§pop() == 45);
                                                                                                                        §§push(§§pop() == 45);
                                                                                                                        if(_loc5_ || _loc1_)
                                                                                                                        {
                                                                                                                           addr231:
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr233:
                                                                                                                              §§push(_loc1_);
                                                                                                                              if(!(_loc4_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 addr286:
                                                                                                                                 §§push(50);
                                                                                                                                 if(_loc5_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr249:
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 if(!(_loc4_ && Boolean(this)))
                                                                                                                                 {
                                                                                                                                    addr294:
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc4_ && Boolean(this)))
                                                                                                                                       {
                                                                                                                                          addr303:
                                                                                                                                          §§pop();
                                                                                                                                          §§push(_loc1_ == 61);
                                                                                                                                          if(!(_loc4_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             addr315:
                                                                                                                                             var _loc2_:Boolean = §§pop();
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                if(_loc2_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Singleton.utility);
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().m_screenControllers);
                                                                                                                                                         if(_loc5_ || Boolean(this))
                                                                                                                                                         {
                                                                                                                                                            §§pop().SetSceneTo(GameState.LEVEL_SELECT_SCREEN);
                                                                                                                                                            if(_loc5_ || Boolean(_loc3_))
                                                                                                                                                            {
                                                                                                                                                               return;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr362:
                                                                                                                                                            _loc3_ = §§pop().m_topDownScreen.m_topDownMovementScreen.m_mainChar;
                                                                                                                                                            if(!(_loc4_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               _loc3_.BringInCharChatBoxWithText("Are you sure you want to return to the lobby?",null,this.DoOnCollCode);
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  return;
                                                                                                                                                               }
                                                                                                                                                               addr390:
                                                                                                                                                               TweenLite.to(this,0.01,{"onComplete":this.DoOnCollCode});
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr390);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr398);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr361:
                                                                                                                                                         §§push(§§pop().m_screenControllers);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr362);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr359:
                                                                                                                                                      §§push(Singleton.utility);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr361);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr352:
                                                                                                                                                   if(this.m_transitionID == SpecialRoom.LOBBY_ELEVATOR)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr359);
                                                                                                                                                      }
                                                                                                                                                      addr398:
                                                                                                                                                      return;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr390);
                                                                                                                                             }
                                                                                                                                             §§goto(addr352);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr315);
                                                                                                                              }
                                                                                                                              addr285:
                                                                                                                              §§goto(addr286);
                                                                                                                              §§push(60);
                                                                                                                           }
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!(_loc4_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr258:
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc5_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    addr268:
                                                                                                                                    §§push(_loc1_ == 55);
                                                                                                                                    if(!(_loc4_ && Boolean(this)))
                                                                                                                                    {
                                                                                                                                       addr277:
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          addr280:
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                addr284:
                                                                                                                                                §§goto(addr285);
                                                                                                                                                §§push(_loc1_);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr294);
                                                                                                                                    }
                                                                                                                                    §§goto(addr303);
                                                                                                                                 }
                                                                                                                                 §§goto(addr315);
                                                                                                                              }
                                                                                                                              §§goto(addr277);
                                                                                                                           }
                                                                                                                           §§goto(addr280);
                                                                                                                        }
                                                                                                                        §§goto(addr294);
                                                                                                                     }
                                                                                                                     §§goto(addr285);
                                                                                                                  }
                                                                                                                  §§goto(addr277);
                                                                                                               }
                                                                                                               §§goto(addr223);
                                                                                                            }
                                                                                                            §§goto(addr231);
                                                                                                         }
                                                                                                         §§goto(addr315);
                                                                                                      }
                                                                                                      §§goto(addr249);
                                                                                                   }
                                                                                                   §§goto(addr233);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr201);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr233);
                                                                                    }
                                                                                    §§goto(addr212);
                                                                                 }
                                                                                 §§goto(addr172);
                                                                              }
                                                                              §§goto(addr286);
                                                                           }
                                                                           §§goto(addr284);
                                                                        }
                                                                        §§goto(addr315);
                                                                     }
                                                                     §§goto(addr148);
                                                                  }
                                                                  §§goto(addr258);
                                                               }
                                                               §§goto(addr174);
                                                            }
                                                            §§goto(addr148);
                                                         }
                                                         §§goto(addr233);
                                                      }
                                                      §§goto(addr119);
                                                   }
                                                   §§goto(addr268);
                                                }
                                                §§goto(addr102);
                                             }
                                             §§goto(addr198);
                                          }
                                          §§goto(addr163);
                                       }
                                       §§goto(addr268);
                                    }
                                    §§goto(addr94);
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr65);
                        }
                        §§goto(addr223);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr172);
               }
               §§goto(addr57);
            }
            §§goto(addr65);
         }
         §§goto(addr212);
      }
      
      private function DoOnCollCode() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(Singleton.dynamicData);
            if(!_loc1_)
            {
               §§push(-99);
               if(_loc2_ || _loc2_)
               {
                  §§pop().m_topDownCharPositionX = §§pop();
                  §§push(Singleton.dynamicData);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(-99);
                     if(_loc2_)
                     {
                        §§pop().m_topDownCharPositionY = §§pop();
                        §§push(Singleton.dynamicData);
                        if(_loc2_ || Boolean(this))
                        {
                        }
                        addr94:
                        §§pop().m_currTransitionID = this.m_transitionID;
                        addr92:
                        §§push(Singleton.utility);
                        if(_loc2_)
                        {
                           §§pop().m_screenControllers.m_topDownScreen.m_topDownMovementScreen.BringInTheNewRoom();
                           if(this.m_isTeleportTransitionObject)
                           {
                              addr108:
                              Singleton.utility.m_soundController.PlaySound("tower_teleport");
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr75);
                  }
                  §§push(Singleton.staticData.GetRoomForTransitionID(this.m_transitionID));
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr75);
                  }
                  §§goto(addr94);
               }
               addr75:
               §§pop().m_currRoomOfTower = §§pop();
               if(_loc2_ || _loc1_)
               {
                  addr90:
                  §§goto(addr92);
                  §§push(Singleton.dynamicData);
               }
               addr111:
               return;
            }
            §§goto(addr94);
         }
         §§goto(addr90);
      }
   }
}
