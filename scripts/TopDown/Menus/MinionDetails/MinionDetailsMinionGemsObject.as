package TopDown.Menus.MinionDetails
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import SharedObjects.Gems.GemVisuals;
   import SharedObjects.Gems.OwnedGem;
   import States.TopDownMenuState;
   import States.TopDownStates;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class MinionDetailsMinionGemsObject extends GameObject
   {
       
      
      private var m_background:Sprite;
      
      private var m_gemVisuals:Vector.<GemVisuals>;
      
      private var m_noGemVisuals:Vector.<Sprite>;
      
      private var m_gemButtons:Vector.<TCButton>;
      
      private var m_buttonsOverGems:Vector.<TCButton>;
      
      private var m_currMinion:OwnedMinion;
      
      public function MinionDetailsMinionGemsObject()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               this.m_gemVisuals = new Vector.<GemVisuals>(4);
               addr25:
               if(!_loc1_)
               {
                  this.m_gemButtons = new Vector.<TCButton>(4);
                  if(_loc2_ || _loc1_)
                  {
                     §§goto(addr62);
                  }
               }
               §§goto(addr71);
            }
            addr62:
            this.m_buttonsOverGems = new Vector.<TCButton>(4);
            if(_loc2_)
            {
               addr71:
               this.m_noGemVisuals = new Vector.<Sprite>(4);
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function LoadSprites() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!(_loc5_ && Boolean(this)))
         {
            this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemsBackground");
            if(_loc6_)
            {
               addChild(this.m_background);
            }
         }
         var _loc1_:* = 0;
         if(_loc6_)
         {
            _loc3_ = 0;
         }
         while(true)
         {
            §§push(_loc3_);
            loop1:
            while(true)
            {
               §§push(2);
               loop2:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(0);
                     if(!_loc5_)
                     {
                        _loc4_ = §§pop();
                        if(_loc6_ || Boolean(this))
                        {
                           while(true)
                           {
                              §§push(_loc4_);
                              if(!(_loc5_ && _loc2_))
                              {
                                 while(true)
                                 {
                                    §§push(2);
                                    if(!(_loc6_ || Boolean(_loc1_)))
                                    {
                                       break;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       continue;
                                    }
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                              _loc4_++;
                           }
                           addr210:
                           var _loc2_:Array = new Array(this.Gem1Pressed,this.Gem2Pressed,this.Gem3Pressed,this.Gem4Pressed);
                           if(!_loc5_)
                           {
                              §§push(0);
                              if(_loc6_ || Boolean(this))
                              {
                                 _loc3_ = §§pop();
                                 addr401:
                                 if(_loc3_ < 2)
                                 {
                                    §§push(0);
                                    if(!_loc5_)
                                    {
                                       _loc4_ = §§pop();
                                       addr386:
                                       §§push(_loc4_);
                                       if(_loc6_)
                                       {
                                          addr389:
                                          §§push(2);
                                          if(_loc6_)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(_loc6_ || Boolean(_loc1_))
                                                {
                                                   _loc3_++;
                                                   §§goto(addr401);
                                                }
                                                §§goto(addr404);
                                             }
                                             §§push(_loc3_);
                                             if(_loc6_ || Boolean(this))
                                             {
                                                §§push(2);
                                                if(!(_loc5_ && Boolean(_loc2_)))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() + _loc4_);
                                                   }
                                                   §§push(§§pop());
                                                   if(_loc6_)
                                                   {
                                                      addr265:
                                                      _loc1_ = §§pop();
                                                      if(!(_loc5_ && Boolean(_loc1_)))
                                                      {
                                                         this.m_gemButtons[_loc1_] = new TCButton(_loc2_[_loc1_],"menus_changeButton");
                                                         if(!_loc5_)
                                                         {
                                                            addr285:
                                                            this.m_gemButtons[_loc1_].x = this.m_noGemVisuals[_loc1_].x + 65;
                                                            this.m_gemButtons[_loc1_].y = this.m_noGemVisuals[_loc1_].y + 15;
                                                            if(!_loc5_)
                                                            {
                                                               addChild(this.m_gemButtons[_loc1_]);
                                                               if(_loc6_)
                                                               {
                                                                  this.m_buttonsOverGems[_loc1_] = new TCButton(_loc2_[_loc1_],"menus_emptyGemSocket");
                                                                  if(_loc6_)
                                                                  {
                                                                     this.m_buttonsOverGems[_loc1_].x = this.m_noGemVisuals[_loc1_].x;
                                                                     addr341:
                                                                     this.m_buttonsOverGems[_loc1_].y = this.m_noGemVisuals[_loc1_].y;
                                                                     addr351:
                                                                     this.m_buttonsOverGems[_loc1_].visible = false;
                                                                     §§goto(addr357);
                                                                  }
                                                                  §§goto(addr401);
                                                               }
                                                               addr357:
                                                               this.m_buttonsOverGems[_loc1_].ActivateTooltip("Insert Gem");
                                                               if(!_loc5_)
                                                               {
                                                                  addChild(this.m_buttonsOverGems[_loc1_]);
                                                                  _loc4_++;
                                                                  if(!(_loc5_ && Boolean(_loc1_)))
                                                                  {
                                                                     §§goto(addr386);
                                                                  }
                                                               }
                                                               §§goto(addr404);
                                                            }
                                                            §§goto(addr341);
                                                         }
                                                         §§goto(addr351);
                                                      }
                                                      §§goto(addr341);
                                                   }
                                                   §§goto(addr401);
                                                }
                                             }
                                             §§goto(addr389);
                                          }
                                       }
                                       §§goto(addr401);
                                    }
                                    §§goto(addr389);
                                 }
                                 addr404:
                                 this.visible = false;
                                 return;
                              }
                              §§goto(addr265);
                           }
                           §§goto(addr285);
                        }
                        _loc3_++;
                        break loop1;
                     }
                     continue loop1;
                  }
                  §§goto(addr210);
               }
            }
         }
      }
      
      public function BringIn() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.visible = true;
         }
      }
      
      public function SetNewMinion(param1:OwnedMinion) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:OwnedGem = null;
         if(_loc5_)
         {
            this.m_currMinion = param1;
            if(!(_loc4_ && Boolean(param1)))
            {
               _loc2_ = 0;
            }
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               loop1:
               while(true)
               {
                  §§push(4);
                  if(!(_loc4_ && Boolean(_loc3_)))
                  {
                     loop2:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(!(_loc4_ && Boolean(_loc3_)))
                           {
                              addr162:
                              §§push(0);
                              if(_loc5_)
                              {
                                 break loop0;
                              }
                              while(true)
                              {
                                 break loop2;
                              }
                              addr247:
                           }
                           §§goto(addr249);
                        }
                        §§push(_loc2_);
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           §§push(param1.m_baseMinion);
                           if(_loc5_)
                           {
                              §§push(§§pop().m_numberOfGems);
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              if(§§pop() < §§pop())
                              {
                                 break loop1;
                              }
                              §§push(_loc2_);
                              if(!_loc5_)
                              {
                                 continue loop1;
                              }
                              §§push(param1.m_baseMinion);
                           }
                           §§push(§§pop().m_numberOfGems);
                           if(_loc4_ && Boolean(_loc3_))
                           {
                              addr142:
                              break;
                           }
                           if(§§pop() < §§pop() + param1.m_baseMinion.m_numberOfLockedGems)
                           {
                              if(!_loc4_)
                              {
                                 this.m_gemButtons[_loc2_].Cleanup();
                              }
                              this.m_gemButtons[_loc2_].CreateButtonWithStrings("menus_gemLockedButton");
                              if(!_loc5_)
                              {
                                 continue loop0;
                              }
                           }
                           else
                           {
                              this.m_gemButtons[_loc2_].Cleanup();
                              if(Singleton.dynamicData.m_isExtraSponsorGemsIn)
                              {
                                 this.m_gemButtons[_loc2_].CreateButtonWithStrings("menus_changeButton");
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                              }
                              else
                              {
                                 this.m_gemButtons[_loc2_].CreateButtonWithStrings("menus_gemPremiumButton");
                                 if(_loc4_ && Boolean(_loc3_))
                                 {
                                    §§goto(addr162);
                                 }
                              }
                           }
                           _loc2_++;
                           continue loop0;
                        }
                        continue loop1;
                        §§goto(addr162);
                     }
                  }
                  loop3:
                  while(§§pop() < §§pop())
                  {
                     _loc3_ = this.m_currMinion.GetGemAt(_loc2_);
                     if(_loc3_ != null)
                     {
                        if(!_loc4_)
                        {
                           this.m_gemVisuals[_loc2_].SetGem(_loc3_);
                           if(_loc5_ || Boolean(_loc2_))
                           {
                              this.m_gemVisuals[_loc2_].visible = true;
                              addr198:
                              this.m_noGemVisuals[_loc2_].visible = false;
                              this.m_buttonsOverGems[_loc2_].SetNewPopupSprite(_loc3_.GetTooltip());
                              addr245:
                              _loc2_++;
                           }
                           else
                           {
                              addr232:
                              this.m_noGemVisuals[_loc2_].visible = true;
                              if(!(_loc4_ && Boolean(_loc3_)))
                              {
                                 §§goto(addr245);
                              }
                           }
                           while(true)
                           {
                              continue loop3;
                           }
                           addr246:
                        }
                        §§goto(addr198);
                     }
                     else
                     {
                        this.m_gemVisuals[_loc2_].visible = false;
                        if(_loc5_ || Boolean(param1))
                        {
                           §§goto(addr232);
                        }
                     }
                     §§goto(addr198);
                     §§goto(addr247);
                  }
                  addr249:
                  return;
               }
               this.m_gemButtons[_loc2_].Cleanup();
               this.m_gemButtons[_loc2_].CreateButtonWithStrings("menus_changeButton");
               if(_loc5_ || Boolean(this))
               {
               }
               §§goto(addr142);
            }
            break;
         }
         _loc2_ = §§pop();
         §§goto(addr246);
      }
      
      public function BringOut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.visible = false;
         }
      }
      
      public function GemButtonPressed(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(this))
         {
            §§push(Singleton.utility);
            if(_loc2_ || _loc3_)
            {
               §§push(§§pop().m_screenControllers);
               if(!_loc3_)
               {
                  §§push(§§pop().m_topDownScreen);
                  if(_loc2_ || Boolean(param1))
                  {
                     if(§§pop().m_currState == TopDownStates.IN_MINION_STORAGE)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           §§push(Singleton.utility);
                           if(_loc2_)
                           {
                              addr55:
                              §§push(§§pop().m_screenControllers);
                              if(_loc2_)
                              {
                                 addr65:
                                 §§push(§§pop().m_topDownScreen);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop().m_topDownMenuScreen);
                                    if(!(_loc3_ && Boolean(param1)))
                                    {
                                       §§push(§§pop().m_gemMenu);
                                       if(!(_loc3_ && Boolean(param1)))
                                       {
                                          §§push(Singleton.utility);
                                          if(_loc2_)
                                          {
                                             §§push(§§pop().m_screenControllers);
                                             if(_loc2_)
                                             {
                                                §§push(§§pop().m_topDownScreen);
                                                if(_loc2_ || Boolean(this))
                                                {
                                                   §§pop().BringIn(§§pop().m_minionStorage.m_minionDetails,TopDownMenuState.TOP_DOWN_MENU_MINION_GEM_SELECT_FROM_MINION_STORAGE,this.m_currMinion,param1);
                                                   if(_loc2_)
                                                   {
                                                      addr135:
                                                      return;
                                                      addr116:
                                                   }
                                                }
                                                §§goto(addr135);
                                             }
                                             else
                                             {
                                                addr126:
                                                §§push(§§pop().m_topDownScreen);
                                             }
                                             §§pop().BringIn(§§pop().m_topDownMenuScreen.m_minionDetailsScreen,TopDownMenuState.TOP_DOWN_MENU_MINION_GEM_SELECT_FROM_MINION_DETAILS,this.m_currMinion,param1);
                                             §§goto(addr135);
                                          }
                                          else
                                          {
                                             addr125:
                                             §§push(§§pop().m_screenControllers);
                                          }
                                          §§goto(addr126);
                                       }
                                       else
                                       {
                                          addr123:
                                          §§push(Singleton.utility);
                                       }
                                       §§goto(addr125);
                                    }
                                    else
                                    {
                                       addr122:
                                       §§push(§§pop().m_gemMenu);
                                    }
                                    §§goto(addr123);
                                 }
                                 else
                                 {
                                    addr121:
                                    §§push(§§pop().m_topDownMenuScreen);
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr121);
                           }
                           else
                           {
                              addr119:
                              §§push(§§pop().m_screenControllers);
                           }
                           §§goto(addr121);
                           §§push(§§pop().m_topDownScreen);
                        }
                        §§goto(addr135);
                     }
                     else
                     {
                        §§push(Singleton.utility);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr121);
               }
               §§goto(addr65);
            }
            §§goto(addr55);
         }
         §§goto(addr116);
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.UpdateFullFrames();
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            loop1:
            while(true)
            {
               §§push(4);
               while(§§pop() < §§pop())
               {
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(this.m_currMinion);
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§push(§§pop().m_baseMinion);
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(§§pop().m_numberOfGems);
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              if(§§pop() < §§pop())
                              {
                                 this.m_gemButtons[_loc1_].m_isActive = true;
                                 if(!_loc3_)
                                 {
                                    this.m_buttonsOverGems[_loc1_].m_isActive = true;
                                    §§push(this.m_currMinion);
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       §§push(_loc1_);
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          §§push(§§pop().GetGemAt(§§pop()));
                                          if(!_loc3_)
                                          {
                                             §§push(null);
                                             if(!(_loc3_ && Boolean(_loc1_)))
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   if(_loc2_ || Boolean(this))
                                                   {
                                                      this.m_buttonsOverGems[_loc1_].m_isToolTipPopupActive = true;
                                                      if(!(_loc3_ && Boolean(_loc1_)))
                                                      {
                                                         addr211:
                                                         _loc1_++;
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop0;
                                                         addr137:
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                   addr181:
                                                   if(this.m_currMinion.GetGemAt(_loc1_) != null)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         addr184:
                                                         this.m_buttonsOverGems[_loc1_].m_isToolTipPopupActive = true;
                                                         if(!(_loc2_ || Boolean(_loc1_)))
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr211);
                                                      }
                                                      break;
                                                   }
                                                   this.m_buttonsOverGems[_loc1_].m_isToolTipPopupActive = false;
                                                   §§goto(addr211);
                                                   §§goto(addr211);
                                                }
                                                else
                                                {
                                                   this.m_buttonsOverGems[_loc1_].m_isToolTipPopupActive = false;
                                                }
                                                §§goto(addr137);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr181);
                                 }
                                 else
                                 {
                                    addr153:
                                 }
                              }
                              else
                              {
                                 §§push(_loc1_);
                                 if(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 addr144:
                                 §§push(this.m_currMinion.m_baseMinion.m_numberOfGems);
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 addr147:
                                 if(§§pop() >= §§pop() + this.m_currMinion.m_baseMinion.m_numberOfLockedGems)
                                 {
                                    this.m_gemButtons[_loc1_].m_isActive = true;
                                    if(_loc2_)
                                    {
                                       if(Singleton.dynamicData.m_isExtraSponsorGemsIn)
                                       {
                                          if(_loc2_)
                                          {
                                             this.m_buttonsOverGems[_loc1_].m_isActive = true;
                                             if(_loc2_)
                                             {
                                                §§goto(addr181);
                                             }
                                             §§goto(addr211);
                                          }
                                          §§goto(addr184);
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr211);
                           }
                           §§goto(addr147);
                        }
                     }
                  }
                  §§goto(addr144);
               }
               return;
            }
         }
      }
      
      private function Gem1Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(this))
         {
            this.GemButtonPressed(0);
         }
      }
      
      private function Gem2Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(1 < this.m_currMinion.m_baseMinion.m_numberOfGems + this.m_currMinion.m_baseMinion.m_numberOfLockedGems);
            if(!(_loc2_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        §§push(Singleton.dynamicData.m_isExtraSponsorGemsIn);
                        if(_loc3_)
                        {
                           addr54:
                           if(§§pop())
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 this.GemButtonPressed(1);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr79:
                                 }
                              }
                           }
                           else
                           {
                              §§push(Singleton.utility);
                              if(_loc3_ || Boolean(param1))
                              {
                                 §§pop().m_bonusItemPopup.BringIn(true);
                                 §§goto(addr99);
                              }
                              §§pop().m_screenControllers.m_topDownScreen.CloseMenus();
                           }
                        }
                        §§goto(addr54);
                     }
                     addr99:
                     if(!_loc2_)
                     {
                        §§push(Singleton.utility);
                     }
                     return;
                  }
                  §§goto(addr54);
               }
            }
            §§goto(addr54);
         }
         §§goto(addr79);
      }
      
      private function Gem3Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(2 < this.m_currMinion.m_baseMinion.m_numberOfGems + this.m_currMinion.m_baseMinion.m_numberOfLockedGems);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     §§goto(addr67);
                  }
                  §§goto(addr58);
               }
               if(§§pop())
               {
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr67);
                  }
                  else
                  {
                     addr101:
                     Singleton.utility.m_screenControllers.m_topDownScreen.CloseMenus();
                     addr99:
                  }
                  §§goto(addr67);
               }
               else
               {
                  §§push(Singleton.utility);
                  if(_loc3_)
                  {
                     §§pop().m_bonusItemPopup.BringIn(true);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr99);
                     }
                     §§goto(addr67);
                  }
               }
               §§goto(addr101);
            }
            §§goto(addr58);
         }
         addr67:
         if(_loc3_ || Boolean(this))
         {
            §§push(Singleton.dynamicData.m_isExtraSponsorGemsIn);
            if(_loc3_)
            {
               addr58:
               §§push(§§pop());
            }
         }
         this.GemButtonPressed(2);
         if(_loc3_ || _loc2_)
         {
         }
      }
      
      private function Gem4Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(this))
         {
            §§push(3 < this.m_currMinion.m_baseMinion.m_numberOfGems + this.m_currMinion.m_baseMinion.m_numberOfLockedGems);
            if(!(_loc3_ && Boolean(this)))
            {
               if(!§§pop())
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr54:
                     §§pop();
                     if(!_loc3_)
                     {
                        §§push(Singleton.dynamicData.m_isExtraSponsorGemsIn);
                        if(_loc3_ && _loc2_)
                        {
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr108);
                  }
               }
               addr68:
               if(§§pop())
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     addr76:
                     this.GemButtonPressed(3);
                     if(_loc2_)
                     {
                     }
                     §§goto(addr113);
                  }
               }
               else
               {
                  §§push(Singleton.utility);
                  if(_loc2_ || _loc2_)
                  {
                     §§pop().m_bonusItemPopup.BringIn(true);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr108:
                        §§push(Singleton.utility);
                     }
                     §§goto(addr113);
                  }
                  §§pop().m_screenControllers.m_topDownScreen.CloseMenus();
               }
               addr113:
               return;
            }
            §§goto(addr54);
         }
         §§goto(addr76);
      }
   }
}
