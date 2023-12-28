package TopDown.LevelObjects.BossToEggeryDoor
{
   import TopDown.LevelObjects.BaseInGameInteractionObject;
   import TopDown.LevelObjects.MainChar;
   import Utilities.Singleton;
   
   public class BossToEggeryDoorWall extends BaseInGameInteractionObject
   {
       
      
      public function BossToEggeryDoorWall()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function AddSprite() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.AddSprite();
            if(!_loc2_)
            {
               addr31:
               if(!Singleton.dynamicData.m_hasUnlockedEggeryDoor)
               {
                  if(_loc1_ || Boolean(this))
                  {
                     m_isSolid = true;
                     if(_loc1_ || Boolean(this))
                     {
                     }
                     §§goto(addr63);
                  }
               }
               else
               {
                  m_isSolid = false;
               }
            }
            addr63:
            return;
         }
         §§goto(addr31);
      }
      
      override public function OnInteration() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MainChar = null;
         if(!(_loc4_ && _loc3_))
         {
            super.OnInteration();
         }
         var _loc1_:* = false;
         §§push(Singleton.dynamicData);
         if(_loc3_ || _loc1_)
         {
            §§push(§§pop().m_currFloorOfTower);
            if(_loc3_)
            {
               §§push(Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
               if(_loc3_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc3_ || Boolean(_loc2_))
                     {
                        §§push(Singleton.dynamicData);
                        if(_loc3_ || _loc1_)
                        {
                           §§push(§§pop().m_currEggeryKeys);
                           if(!_loc4_)
                           {
                              addr64:
                              §§push(2);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() > §§pop());
                                 if(§§pop() > §§pop())
                                 {
                                    §§pop();
                                    §§push(Singleton.dynamicData);
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr80:
                                       §§push(§§pop().m_currKeysOnFloor);
                                       if(_loc3_)
                                       {
                                          §§push(2);
                                          if(_loc3_)
                                          {
                                             addr94:
                                             _loc1_ = §§pop() > §§pop();
                                             addr107:
                                             if(_loc1_)
                                             {
                                                m_isSolid = false;
                                             }
                                             else
                                             {
                                                §§goto(addr178);
                                             }
                                             addr178:
                                             if(!Singleton.dynamicData.m_hasUnlockedEggeryDoor)
                                             {
                                                addr185:
                                                _loc2_ = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar;
                                                addr184:
                                                if(!_loc4_)
                                                {
                                                   _loc2_.BringInCharChatBoxWithText("I need more keys to open that door.");
                                                }
                                             }
                                             return;
                                             addr93:
                                          }
                                          else
                                          {
                                             addr103:
                                             _loc1_ = §§pop() > §§pop();
                                             if(_loc3_)
                                             {
                                                §§goto(addr107);
                                             }
                                          }
                                          m_currSprite.visible = false;
                                          §§push(Singleton.dynamicData);
                                          if(!_loc4_)
                                          {
                                             addr119:
                                             §§pop().m_hasUnlockedEggeryDoor = true;
                                             if(!_loc4_)
                                             {
                                                §§push(Singleton.dynamicData);
                                                if(_loc3_ || Boolean(this))
                                                {
                                                   addr132:
                                                   §§push(0);
                                                   if(!_loc4_)
                                                   {
                                                      §§pop().m_currEggeryKeys = §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         addr138:
                                                         §§push(Singleton.dynamicData);
                                                         if(_loc3_ || Boolean(_loc2_))
                                                         {
                                                            addr148:
                                                            §§pop().m_currKeysOnFloor = 0;
                                                            §§push(Singleton.utility);
                                                            if(_loc3_ || _loc1_)
                                                            {
                                                               §§push(§§pop().m_screenControllers);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop().m_topDownScreen);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(§§pop().m_topDownMovementScreen);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§pop().UpdateMovementHUD();
                                                                        addr175:
                                                                     }
                                                                     §§goto(addr178);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr184);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr185);
                                                               }
                                                            }
                                                            §§goto(addr185);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr178);
                                                         }
                                                      }
                                                      §§goto(addr175);
                                                   }
                                                   §§goto(addr148);
                                                }
                                                §§goto(addr178);
                                             }
                                             §§goto(addr148);
                                          }
                                          §§goto(addr132);
                                       }
                                       else
                                       {
                                          addr102:
                                          §§push(0);
                                       }
                                       §§goto(addr103);
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr94);
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr138);
                  }
                  else
                  {
                     §§push(Singleton.dynamicData);
                     if(_loc3_)
                     {
                        §§goto(addr102);
                        §§push(§§pop().m_currEggeryKeys);
                     }
                  }
                  §§goto(addr119);
               }
               §§goto(addr94);
            }
            §§goto(addr64);
         }
         §§goto(addr80);
      }
   }
}
