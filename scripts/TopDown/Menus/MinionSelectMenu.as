package TopDown.Menus
{
   import Minions.OwnedMinion;
   import SharedObjects.GameObject;
   import States.TopDownMenuState;
   import States.TutorialTypes;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class MinionSelectMenu extends GameObject
   {
       
      
      private var m_minionOverviewObject:Vector.<MinionOverviewObject>;
      
      public var m_minionCurrentlySelected:int;
      
      private var m_minionSelectTutorial:Sprite;
      
      private var m_minionSelectPopupText:TextField;
      
      private var m_isAnimating:Boolean;
      
      public function MinionSelectMenu()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            if(!_loc2_)
            {
               this.m_minionOverviewObject = new Vector.<MinionOverviewObject>(5);
               if(_loc2_)
               {
               }
               §§goto(addr43);
            }
            this.m_isAnimating = false;
         }
         addr43:
      }
      
      public function LoadSprites() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Array = [this.Minion1HasBeenPressed,this.Minion2HasBeenPressed,this.Minion3HasBeenPressed,this.Minion4HasBeenPressed,this.Minion5HasBeenPressed,this.Minion6HasBeenPressed];
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
            {
               this.m_minionSelectTutorial = Singleton.utility.m_spriteHandler.CreateSprite("tutorial_choosingAMinionBar");
               break;
            }
            this.m_minionOverviewObject[_loc2_] = new MinionOverviewObject(_loc1_[_loc2_]);
            this.m_minionOverviewObject[_loc2_].x = 39 - 6;
            this.m_minionOverviewObject[_loc2_].y = 45 + 75 * _loc2_;
            if(_loc5_)
            {
               addChild(this.m_minionOverviewObject[_loc2_]);
               if(!(_loc5_ || Boolean(_loc1_)))
               {
                  break;
               }
            }
            _loc2_++;
         }
         this.m_minionSelectTutorial.x = 382;
         if(_loc5_ || Boolean(this))
         {
            this.m_minionSelectTutorial.y = 74 - 16;
            if(!(_loc4_ && _loc3_))
            {
               addr119:
               addChild(this.m_minionSelectTutorial);
            }
            var _loc3_:TextFormat = new TextFormat();
            if(!(_loc4_ && Boolean(this)))
            {
               _loc3_.color = 16448250;
               _loc3_.size = 20;
               _loc3_.font = "BurbinCasual";
               _loc3_.align = TextFormatAlign.CENTER;
               if(_loc5_ || Boolean(this))
               {
                  §§goto(addr154);
               }
               §§goto(addr165);
            }
            addr154:
            this.m_minionSelectPopupText = new TextField();
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               addr165:
               this.m_minionSelectPopupText.x = 448;
               if(_loc5_ || Boolean(_loc1_))
               {
                  this.m_minionSelectPopupText.y = 177 - 16;
               }
               this.m_minionSelectPopupText.embedFonts = true;
               this.m_minionSelectPopupText.defaultTextFormat = _loc3_;
            }
            this.m_minionSelectPopupText.wordWrap = true;
            this.m_minionSelectPopupText.autoSize = TextFieldAutoSize.CENTER;
            this.m_minionSelectPopupText.text = "Choose a minion to add your gem to";
            if(_loc5_)
            {
               this.m_minionSelectPopupText.width = 90;
               if(!_loc4_)
               {
                  this.m_minionSelectPopupText.selectable = false;
                  addChild(this.m_minionSelectPopupText);
               }
            }
            return;
         }
         §§goto(addr119);
      }
      
      public function AnimateToMinionDetials() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            loop1:
            while(true)
            {
               §§push(Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP);
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!_loc2_)
                     {
                        TweenLite.to(this.m_minionOverviewObject[this.m_minionCurrentlySelected],0.5,{"y":45});
                        break;
                     }
                     break;
                  }
                  §§push(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) == null);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        addr34:
                        if(§§pop())
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              §§pop();
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              §§push(_loc1_);
                              if(!_loc3_)
                              {
                                 continue loop1;
                              }
                              §§push(this.m_minionCurrentlySelected);
                              if(!(_loc3_ || _loc2_))
                              {
                                 continue;
                              }
                              §§push(§§pop() == §§pop());
                              if(_loc3_)
                              {
                              }
                              addr69:
                              if(§§pop())
                              {
                                 TweenLite.to(this.m_minionOverviewObject[_loc1_],0.3,{"alpha":0});
                                 if(!(_loc3_ || Boolean(_loc1_)))
                                 {
                                    break;
                                 }
                                 addr87:
                                 _loc1_++;
                                 if(_loc2_ && Boolean(this))
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr87);
                           }
                           §§push(!§§pop());
                        }
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr34);
               }
               this.m_isAnimating = true;
               TweenLite.to(this,0.5,{"onComplete":this.FinishAnimation});
               return;
            }
         }
      }
      
      public function AnimateFromMinionDetials() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            loop1:
            while(true)
            {
               §§push(Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP);
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!_loc3_)
                     {
                        this.m_minionOverviewObject[this.m_minionCurrentlySelected].TurnRenameButtonOff();
                        break;
                     }
                     §§goto(addr118);
                  }
                  §§push(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) == null);
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        §§push(_loc1_);
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(this.m_minionCurrentlySelected);
                           if(_loc2_)
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 §§push(!§§pop());
                              }
                              continue loop0;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               addr95:
               TweenLite.to(this.m_minionOverviewObject[this.m_minionCurrentlySelected],0.5,{"y":45 + 75 * this.m_minionCurrentlySelected});
               addr118:
               this.m_isAnimating = true;
               if(_loc2_ || Boolean(_loc1_))
               {
                  TweenLite.to(this,0.6,{"onComplete":this.FinishAnimation});
               }
               return;
            }
         }
      }
      
      private function FinishAnimation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            this.m_isAnimating = false;
         }
      }
      
      public function SnapNewMinionIconForQuickOptionsChange() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
            {
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr75);
            }
            this.m_minionOverviewObject[_loc1_].alpha = 0;
            if(_loc3_)
            {
               break;
            }
            this.m_minionOverviewObject[_loc1_].y = 45 + 75 * _loc1_;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_++;
               if(_loc3_)
               {
                  break;
               }
            }
         }
         this.m_minionOverviewObject[this.m_minionCurrentlySelected].alpha = 1;
         if(!_loc3_)
         {
            §§goto(addr75);
         }
         addr75:
         this.m_minionOverviewObject[this.m_minionCurrentlySelected].y = 45;
      }
      
      public function JustCallMinionUpdates() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(_loc1_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null)
            {
               if(_loc3_)
               {
                  this.m_minionOverviewObject[_loc1_].SetMinion(Singleton.dynamicData.GetOwnedMinionAt(_loc1_));
                  if(_loc3_)
                  {
                  }
                  break;
               }
               continue;
            }
            _loc1_++;
            if(_loc2_)
            {
               break;
            }
         }
      }
      
      public function UpdateMinions() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(_loc1_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null)
            {
               this.m_minionOverviewObject[_loc1_].visible = true;
               this.m_minionOverviewObject[_loc1_].SetMinion(Singleton.dynamicData.GetOwnedMinionAt(_loc1_));
               if(_loc2_)
               {
                  this.m_minionOverviewObject[_loc1_].x = 39;
               }
               this.m_minionOverviewObject[_loc1_].y = 45 + 75 * _loc1_;
               this.m_minionOverviewObject[_loc1_].alpha = 1;
            }
            else
            {
               this.m_minionOverviewObject[_loc1_].visible = false;
               if(!(_loc2_ || _loc3_))
               {
                  break;
               }
            }
            _loc1_++;
            if(_loc3_ && Boolean(this))
            {
               break;
            }
         }
      }
      
      public function BringIn() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.UpdateMinions();
         if(!(_loc1_ && _loc2_))
         {
            this.x = 0;
            this.y = 0;
            if(_loc2_)
            {
               this.CheckForGemTutorial();
            }
         }
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimation(this);
         if(_loc2_)
         {
            this.TurnAllRenameButtonsOff();
         }
      }
      
      public function TurnAllRenameButtonsOff() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_minionOverviewObject.length)
         {
            if(this.m_minionOverviewObject[_loc1_].m_currMinion != null)
            {
               if(!_loc2_)
               {
                  this.m_minionOverviewObject[_loc1_].TurnRenameButtonOff();
                  if(!_loc3_)
                  {
                     continue;
                  }
               }
            }
            _loc1_++;
            if(_loc2_)
            {
               break;
            }
         }
      }
      
      private function CheckForGemTutorial() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(Singleton.dynamicData);
         if(!_loc1_)
         {
            §§push(TutorialTypes.TUTORIAL_GEMS);
            if(_loc2_)
            {
               §§push(§§pop().HasTutorialBeenSeen(§§pop()));
               if(!(_loc1_ && _loc2_))
               {
                  §§push(!§§pop());
                  if(!_loc1_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           §§pop();
                           addr53:
                           §§push(Singleton.dynamicData.GetOwnedGemAt(0) == null);
                           if(_loc2_ || _loc2_)
                           {
                              addr63:
                              §§push(!§§pop());
                           }
                        }
                        §§goto(addr63);
                     }
                     if(§§pop())
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           this.m_minionSelectTutorial.visible = true;
                           this.m_minionSelectPopupText.visible = true;
                           if(_loc2_)
                           {
                           }
                        }
                     }
                     else
                     {
                        this.m_minionSelectTutorial.visible = false;
                        if(_loc2_)
                        {
                           this.m_minionSelectPopupText.visible = false;
                        }
                     }
                     return;
                  }
               }
               §§goto(addr63);
            }
         }
         §§goto(addr53);
      }
      
      public function BringBackInFromMinionOptions() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         do
         {
            if(_loc1_ >= Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
            {
               if(_loc2_ || Boolean(this))
               {
                  break;
               }
            }
            else
            {
               if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) == null)
               {
                  continue;
               }
               if(!(_loc3_ && _loc2_))
               {
                  TweenLite.to(this.m_minionOverviewObject[_loc1_],0.5,{"alpha":1});
                  if(!(_loc2_ || _loc3_))
                  {
                     break;
                  }
               }
               this.m_minionOverviewObject[_loc1_].SetupUnspentTalentPointsTutorial(Singleton.dynamicData.GetOwnedMinionAt(_loc1_));
               if(_loc2_ || Boolean(this))
               {
                  continue;
               }
            }
            §§goto(addr99);
         }
         while(_loc1_++, !(_loc3_ && _loc2_));
         
         this.CheckForGemTutorial();
         addr99:
      }
      
      public function ExitOut() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(_loc1_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null)
            {
               if(!(_loc2_ || Boolean(_loc1_)))
               {
                  break;
               }
               this.m_minionOverviewObject[_loc1_].Cleanup();
               if(!_loc2_)
               {
                  break;
               }
            }
            _loc1_++;
            if(!(_loc2_ || _loc3_))
            {
               break;
            }
         }
      }
      
      public function GetMinionOverviewObjectForMinion(param1:OwnedMinion) : MinionOverviewObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_minionOverviewObject.length)
         {
            if(param1 == this.m_minionOverviewObject[_loc2_].m_currMinion)
            {
               if(!_loc4_)
               {
                  return this.m_minionOverviewObject[_loc2_];
               }
            }
            else
            {
               _loc2_++;
               if(!(_loc3_ || Boolean(this)))
               {
                  break;
               }
            }
         }
         return null;
      }
      
      public function MinionPressed(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.m_isAnimating)
            {
               if(_loc4_)
               {
                  §§goto(addr21);
               }
               else
               {
                  addr36:
                  this.m_minionCurrentlySelected = param1;
               }
            }
            else
            {
               this.m_minionSelectTutorial.visible = false;
               if(_loc4_)
               {
                  this.m_minionSelectPopupText.visible = false;
                  if(!_loc3_)
                  {
                     §§goto(addr36);
                  }
               }
            }
            var _loc2_:int = 0;
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP);
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§push(Singleton.dynamicData.GetOwnedMinionAt(_loc2_) == null);
                        if(_loc4_ || Boolean(param1))
                        {
                           §§push(!§§pop());
                           if(!_loc3_)
                           {
                              if(§§pop())
                              {
                                 if(_loc4_ || Boolean(param1))
                                 {
                                    addr68:
                                    §§pop();
                                    if(!_loc3_)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc4_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(param1);
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       §§push(§§pop() == §§pop());
                                       if(_loc4_)
                                       {
                                          addr81:
                                          addr80:
                                          if(!§§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                TweenLite.to(this.m_minionOverviewObject[_loc2_],0.3,{"alpha":0.3});
                                             }
                                             addr128:
                                             §§push(Singleton.utility);
                                             if(_loc4_ || Boolean(_loc2_))
                                             {
                                                §§push(§§pop().m_screenControllers);
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop().m_topDownScreen);
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      §§push(§§pop().m_topDownMenuScreen);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop().m_minionSelectOptionsMenu);
                                                         if(!(_loc3_ && Boolean(this)))
                                                         {
                                                            §§pop().y = 23 + 75 * param1;
                                                            §§push(Singleton.utility);
                                                            if(_loc4_)
                                                            {
                                                               addr169:
                                                               §§push(§§pop().m_screenControllers);
                                                               if(!(_loc3_ && Boolean(this)))
                                                               {
                                                                  addr177:
                                                                  §§push(§§pop().m_topDownScreen);
                                                                  if(!(_loc3_ && Boolean(_loc2_)))
                                                                  {
                                                                     §§goto(addr192);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr205);
                                                         }
                                                         §§goto(addr196);
                                                      }
                                                      §§goto(addr195);
                                                   }
                                                   addr192:
                                                   §§push(§§pop().m_topDownMenuScreen);
                                                   if(!_loc3_)
                                                   {
                                                      addr196:
                                                      §§pop().m_minionSelectOptionsMenu.BringIn(Singleton.dynamicData.GetOwnedMinionAt(param1));
                                                      addr205:
                                                      §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen);
                                                      addr195:
                                                   }
                                                   §§pop().m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_OVERVIEW_POPUP_MENU;
                                                   return;
                                                }
                                                §§goto(addr177);
                                             }
                                             §§goto(addr169);
                                          }
                                          this.m_minionOverviewObject[_loc2_].m_unspentTalentPointsPopup.visible = false;
                                          _loc2_++;
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr81);
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr80);
                              }
                              §§goto(addr81);
                           }
                           §§goto(addr68);
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr128);
                  }
                  TweenLite.to(this.m_minionOverviewObject[param1],0.3,{"alpha":1});
                  §§goto(addr128);
               }
            }
         }
         addr21:
      }
      
      public function Minion1HasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(this)))
         {
            this.MinionPressed(0);
         }
      }
      
      public function Minion2HasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(param1))
         {
            this.MinionPressed(1);
         }
      }
      
      public function Minion3HasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.MinionPressed(2);
         }
      }
      
      public function Minion4HasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.MinionPressed(3);
         }
      }
      
      public function Minion5HasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.MinionPressed(4);
         }
      }
      
      public function Minion6HasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.MinionPressed(5);
         }
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            super.UpdateFullFrames();
         }
         var _loc1_:int = 0;
         while(_loc1_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null)
            {
               if(!_loc3_)
               {
                  break;
               }
               this.m_minionOverviewObject[_loc1_].UpdateFullFrames();
               if(_loc2_)
               {
                  break;
               }
            }
            _loc1_++;
            if(!(_loc3_ || Boolean(this)))
            {
               break;
            }
         }
      }
   }
}
