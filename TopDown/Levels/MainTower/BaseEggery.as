package TopDown.Levels.MainTower
{
   import Minions.OwnedMinion;
   import TopDown.LevelObjects.MainChar;
   import TopDown.LevelObjects.VisualsForEgg;
   import TopDown.Levels.BaseTopDownLevel;
   import TopDown.Menus.EggeryMinionDetailsObject;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   
   public class BaseEggery extends BaseTopDownLevel
   {
       
      
      private var m_currMinionToAdd:OwnedMinion;
      
      private var m_eggsAlreadySelected:Vector.<int>;
      
      private var m_minionDetailsObject:EggeryMinionDetailsObject;
      
      private var m_visualsForEgg:VisualsForEgg;
      
      private var m_visualsForEggTopLayer:VisualsForEgg;
      
      public function BaseEggery(param1:Class = null)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super(param1);
         }
      }
      
      override public function LoadSprites() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.LoadSprites();
         if(_loc2_ || _loc1_)
         {
            this.m_eggsAlreadySelected = new Vector.<int>();
            this.m_minionDetailsObject = new EggeryMinionDetailsObject();
            this.m_minionDetailsObject.LoadSprites();
            if(_loc2_ || _loc1_)
            {
               Singleton.utility.m_screenControllers.m_topDownScreen.addChild(this.m_minionDetailsObject);
            }
            if(Singleton.dynamicData.m_numOfMinionsLeftToChoose < 1)
            {
               if(!(_loc1_ && Boolean(this)))
               {
                  m_displayKeyPress = false;
               }
            }
         }
      }
      
      override protected function PreformButtonAction(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:MainChar = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(true)
            {
               §§push(9);
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(param1);
                     if(_loc7_)
                     {
                        §§push(_loc3_);
                        if(_loc6_)
                        {
                           continue;
                        }
                        §§push(§§pop() == §§pop());
                        if(_loc7_ || Boolean(_loc3_))
                        {
                           if(§§pop())
                           {
                              if(_loc7_ || Boolean(_loc2_))
                              {
                                 addr49:
                                 §§pop();
                                 §§push(this.m_eggsAlreadySelected.indexOf(_loc3_) == -1);
                              }
                           }
                           if(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 this.m_currMinionToAdd = Singleton.staticData.GetRandomMinionForFloor(Singleton.dynamicData.m_currFloorOfTower);
                                 §§push(Singleton.dynamicData);
                                 if(_loc7_ || Boolean(param1))
                                 {
                                    §§push(§§pop().m_numOfMinionsLeftToChoose);
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    addr79:
                                    §§push(1);
                                    if(_loc7_ || Boolean(this))
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             §§push(_loc2_);
                                             §§push("You\'ve recieved a ");
                                             if(_loc7_ || Boolean(_loc3_))
                                             {
                                                §§push(§§pop() + this.m_currMinionToAdd.m_baseMinion.m_baseMinionName);
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() + ".");
                                                }
                                             }
                                             §§pop().BringInCharChatBoxWithText(§§pop(),this.AddMinion);
                                             this.m_visualsForEgg = GetEggForButtonZone(_loc3_);
                                             this.m_visualsForEggTopLayer = GetEggOnTopLayerForButtonZone(_loc3_);
                                             if(_loc7_)
                                             {
                                                §§push(Singleton.dynamicData);
                                                if(_loc7_ || Boolean(_loc2_))
                                                {
                                                   var _loc4_:*;
                                                   §§push((_loc4_ = §§pop()).m_numOfMinionsLeftToChoose);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   var _loc5_:* = §§pop();
                                                   if(_loc7_ || Boolean(_loc3_))
                                                   {
                                                      _loc4_.m_numOfMinionsLeftToChoose = _loc5_;
                                                   }
                                                   if(_loc7_)
                                                   {
                                                      this.m_eggsAlreadySelected.push(_loc3_);
                                                      if(_loc7_ || Boolean(_loc2_))
                                                      {
                                                         §§push(this.m_minionDetailsObject);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(this.m_currMinionToAdd);
                                                            if(!(_loc6_ && Boolean(param1)))
                                                            {
                                                               §§pop().BringInWithMinion(§§pop());
                                                               if(_loc7_ || Boolean(_loc2_))
                                                               {
                                                                  §§push(this.m_minionDetailsObject);
                                                                  if(!(_loc6_ && Boolean(_loc2_)))
                                                                  {
                                                                     addr201:
                                                                     §§push(_loc2_.x + 100 - 13);
                                                                     if(!(_loc6_ && Boolean(param1)))
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        addr215:
                                                                        §§push(this.m_minionDetailsObject);
                                                                        if(!(_loc6_ && Boolean(_loc2_)))
                                                                        {
                                                                           §§push(_loc2_.y - 184);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§pop().y = §§pop();
                                                                              addr377:
                                                                              _loc3_++;
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§goto(addr383);
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr377);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr337:
                                                                           §§pop().BringInWithMinion(this.m_currMinionToAdd);
                                                                           addr338:
                                                                           §§push(this.m_minionDetailsObject);
                                                                           if(_loc7_ || Boolean(_loc2_))
                                                                           {
                                                                              addr369:
                                                                              §§push(_loc2_.x + 100 - 13);
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr362:
                                                                                 §§pop().x = §§pop();
                                                                                 §§push(this.m_minionDetailsObject);
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                              if(!(_loc7_ || Boolean(param1)))
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§goto(addr377);
                                                                           }
                                                                           §§push(_loc2_.y - 184);
                                                                           addr335:
                                                                        }
                                                                        §§goto(addr369);
                                                                     }
                                                                     §§goto(addr362);
                                                                  }
                                                               }
                                                               else  //paused here
                                                               {
                                                                  addr326:
                                                                  §§push(this.m_minionDetailsObject);
                                                                  if(_loc7_ || Boolean(param1))
                                                                  {
                                                                     §§goto(addr335);
                                                                  }
                                                               }
                                                               §§goto(addr369);
                                                            }
                                                            §§goto(addr337);
                                                         }
                                                         §§goto(addr201);
                                                      }
                                                      §§goto(addr362);
                                                   }
                                                   §§goto(addr215);
                                                }
                                                else
                                                {
                                                   addr241:
                                                   §§push(§§pop().m_numOfMinionsLeftToChoose);
                                                   if(!_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(1);
                                                   if(!_loc7_)
                                                   {
                                                      continue;
                                                   }
                                                   addr247:
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(_loc7_ || Boolean(_loc3_))
                                                      {
                                                         addr255:
                                                         §§push(_loc2_);
                                                         §§push("This egg contains a ");
                                                         if(_loc7_ || Boolean(_loc2_))
                                                         {
                                                            §§push(§§pop() + this.m_currMinionToAdd.m_baseMinion.m_baseMinionName);
                                                            if(!_loc6_)
                                                            {
                                                               addr271:
                                                               §§push(§§pop() + ". Would you like to keep it?");
                                                            }
                                                            §§pop().BringInCharChatBoxWithText(§§pop(),null,this.AddMinion,this.ClosingChatBox);
                                                            this.m_visualsForEgg = GetEggForButtonZone(_loc3_);
                                                            if(!(_loc6_ && Boolean(param1)))
                                                            {
                                                               this.m_visualsForEggTopLayer = GetEggOnTopLayerForButtonZone(_loc3_);
                                                            }
                                                            addr298:
                                                            §§push((_loc4_ = Singleton.dynamicData).m_numOfMinionsLeftToChoose);
                                                            if(!(_loc6_ && Boolean(this)))
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc5_ = §§pop();
                                                            if(_loc7_ || Boolean(param1))
                                                            {
                                                               _loc4_.m_numOfMinionsLeftToChoose = _loc5_;
                                                            }
                                                            this.m_eggsAlreadySelected.push(_loc3_);
                                                            §§goto(addr326);
                                                         }
                                                         §§goto(addr271);
                                                      }
                                                      §§goto(addr338);
                                                   }
                                                   §§goto(addr377);
                                                }
                                             }
                                             §§goto(addr326);
                                          }
                                          §§goto(addr255);
                                       }
                                       else
                                       {
                                          §§push(Singleton.dynamicData);
                                          if(!(_loc6_ && Boolean(_loc3_)))
                                          {
                                             §§goto(addr241);
                                          }
                                       }
                                       §§goto(addr298);
                                    }
                                    §§goto(addr247);
                                 }
                                 §§goto(addr241);
                              }
                              §§goto(addr362);
                           }
                           §§goto(addr377);
                        }
                        §§goto(addr49);
                     }
                     §§goto(addr79);
                  }
                  addr383:
                  return;
               }
            }
         }
      }
      
      private function ClosingChatBox() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_minionDetailsObject.ExitOut();
            if(!_loc2_)
            {
               §§goto(addr20);
            }
            §§goto(addr25);
         }
         addr20:
         this.m_visualsForEgg.MoveEggIntoGround();
         if(!_loc2_)
         {
            addr25:
            this.m_visualsForEggTopLayer.MoveEggIntoGround();
         }
      }
      
      public function AddToFirstAvailiblePosition() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(Singleton.dynamicData);
            if(!_loc3_)
            {
               §§pop().m_numOfMinionsLeftToChoose = 0;
               if(!_loc3_)
               {
                  §§goto(addr23);
               }
               §§goto(addr33);
            }
            §§goto(addr35);
         }
         addr23:
         this.m_currMinionToAdd.ReFillHealthAndEnergy();
         if(_loc2_ || Boolean(this))
         {
            addr35:
            Singleton.dynamicData.AddToOwnedMinions(this.m_currMinionToAdd);
            addr33:
            if(_loc2_ || _loc1_)
            {
               this.ClosingChatBox();
            }
         }
         var _loc1_:int = 0;
         do
         {
            if(_loc1_ >= 9)
            {
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  break;
               }
               §§goto(addr114);
            }
            if(this.m_eggsAlreadySelected.indexOf(_loc1_) == -1)
            {
               if(_loc3_ && _loc2_)
               {
                  break;
               }
               GetEggForButtonZone(_loc1_).MoveEggIntoGround();
               if(!_loc3_)
               {
                  GetEggOnTopLayerForButtonZone(_loc1_).MoveEggIntoGround();
                  if(!_loc2_)
                  {
                     break;
                  }
               }
            }
            _loc1_++;
         }
         while(!(_loc3_ && _loc2_));
         
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.UpdateMovementHUD();
         addr114:
      }
      
      private function PopupAddToPartySelector() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_minionDetailsObject.ExitOut();
            if(_loc1_)
            {
               Singleton.utility.m_screenControllers.m_topDownScreen.m_eggeryPartySwapMenu.BringIn(this.m_currMinionToAdd);
         }
         }
      }
      
      private function AddMinion() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = true;
         var _loc2_:int = 0;
         while(_loc2_ < 5)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc2_) == null)
            {
               §§push(false);
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_ = §§pop();
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     break;
                  }
                  break;
               }
               addr69:
               if(§§pop())
               {
                  TweenLite.to(this,0.25,{"onComplete":this.BringInTheWouldYouLikeToAddPopup});
                  if(_loc4_)
                  {
                  }
               }
               else
               {
                  this.AddToFirstAvailiblePosition();
               }
               m_displayKeyPress = false;
               §§goto(addr86);
            }
            _loc2_++;
            if(_loc3_ && Boolean(this))
            {
               addr86:
               return;
            }
         }
         §§goto(addr69);
         §§push(_loc1_);
      }
      
      private function BringInTheWouldYouLikeToAddPopup() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MainChar = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar;
         if(!(_loc2_ && _loc2_))
         {
            §§push(_loc1_);
            §§push("Would you like to add ");
            if(!_loc2_)
            {
               §§push(§§pop() + this.m_currMinionToAdd.m_baseMinion.m_baseMinionName);
               if(!_loc2_)
               {
                  addr54:
                  §§push(§§pop() + " to your party?");
               }
               §§pop().BringInCharChatBoxWithText(§§pop(),null,this.PopupAddToPartySelector,this.AddToFirstAvailiblePosition);
               §§goto(addr62);
            }
            §§goto(addr54);
         }
         addr62:
      }
   }
}
