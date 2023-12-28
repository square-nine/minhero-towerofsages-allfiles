package TopDown.Menus
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import States.SpecialRoom;
   import States.TopDownMenuState;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class SaveMenu extends GameObject
   {
       
      
      private var m_background:Sprite;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_saveButton:TCButton;
      
      private var m_saveAndGotoLobbyButton:TCButton;
      
      private var m_cancelButton:TCButton;
      
      private var m_savingPopup:Sprite;
      
      public function SaveMenu()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_selectionPopUp_background");
         addChild(this.m_background);
         this.m_savingPopup = Singleton.utility.m_spriteHandler.CreateSprite("menus_savingPopup");
         if(!_loc5_)
         {
            this.m_savingPopup.x = 14;
            this.m_savingPopup.y = -27;
            if(_loc4_ || Boolean(this))
            {
               this.m_background.addChild(this.m_savingPopup);
            }
         }
         this.m_savingPopup.visible = false;
         var _loc1_:int = 15;
         var _loc2_:int = 15;
         var _loc3_:int = 39;
         this.m_saveButton = new TCButton(this.SaveButtonHasBeenPressed,"menus_selectionPopUp_saveButton");
         if(!_loc5_)
         {
            §§push(this.m_saveButton);
            if(!_loc5_)
            {
               §§push(_loc1_);
               if(!_loc5_)
               {
                  §§pop().x = §§pop();
                  addr82:
                  §§push(this.m_saveButton);
                  §§push(_loc2_);
               }
               §§pop().y = §§pop() + _loc3_ * 0;
               if(_loc4_)
               {
                  this.m_background.addChild(this.m_saveButton);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     this.m_saveAndGotoLobbyButton = new TCButton(this.ReturnToLobbyButtonHasBeenPressed,"menus_selectionPopUp_saveReturnToLobbyButton");
                     §§push(this.m_saveAndGotoLobbyButton);
                     if(!_loc5_)
                     {
                        §§push(_loc1_);
                        if(!_loc5_)
                        {
                           §§pop().x = §§pop();
                           if(_loc4_)
                           {
                              addr129:
                              this.m_saveAndGotoLobbyButton.y = _loc2_ + _loc3_ * 1;
                              if(_loc4_ || Boolean(this))
                              {
                                 this.m_background.addChild(this.m_saveAndGotoLobbyButton);
                                 if(_loc4_)
                                 {
                                    addr148:
                                    this.m_cancelButton = new TCButton(this.CancelButtonHasBeenPressed,"menus_selectionPopUp_cancelButton");
                                    if(!(_loc5_ && Boolean(_loc1_)))
                                    {
                                       addr162:
                                       §§push(this.m_cancelButton);
                                       if(_loc4_ || Boolean(this))
                                       {
                                          §§push(_loc1_);
                                          if(!(_loc5_ && Boolean(_loc3_)))
                                          {
                                             §§pop().x = §§pop();
                                             addr189:
                                             §§push(this.m_cancelButton);
                                             §§push(104);
                                          }
                                          §§pop().y = §§pop();
                                          if(!(_loc5_ && Boolean(this)))
                                          {
                                             addr198:
                                             this.m_background.addChild(this.m_cancelButton);
                                          }
                                          this.m_background.visible = false;
                                          §§goto(addr207);
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr207);
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr198);
                           }
                           addr207:
                           return;
                        }
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr148);
               }
               §§goto(addr162);
            }
            §§goto(addr82);
         }
         §§goto(addr162);
      }
      
      public function BringIn() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_savingPopup.visible = false;
            if(_loc2_ || _loc2_)
            {
               this.m_background.x = 0;
               this.m_background.y = 0;
               addr35:
               if(Singleton.dynamicData.GetHighestFloor() > 1)
               {
                  §§goto(addr47);
               }
               else
               {
                  §§push(this.m_saveAndGotoLobbyButton);
               }
               §§goto(addr75);
            }
            addr47:
            §§push(this.m_saveAndGotoLobbyButton);
            if(_loc2_ || Boolean(this))
            {
               §§pop().alpha = 1;
               if(_loc1_ && _loc1_)
               {
               }
               addr84:
               TweenLite.killTweensOf(this.m_background);
               Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimation(this.m_background);
            }
            else
            {
               addr75:
               §§pop().alpha = 0.3;
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr84);
               }
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function ExitOut() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimation(this.m_background);
         }
      }
      
      private function SaveButtonHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.m_savingPopup.visible = true;
            if(_loc4_)
            {
               addr22:
               this.m_savingPopup.alpha = 0;
            }
            var _loc2_:TimelineLite = new TimelineLite();
            if(!_loc3_)
            {
               _loc2_.append(new TweenLite(this.m_savingPopup,0.5,{"alpha":1}));
               if(_loc4_ || Boolean(this))
               {
                  _loc2_.append(new TweenLite(this.m_savingPopup,0.1,{
                     "onComplete":Singleton.dynamicData.SaveAllData,
                     "onCompleteParams":[Singleton.dynamicData.m_saveSlot]
                  }));
                  addr56:
                  if(_loc4_)
                  {
                     _loc2_.append(new TweenLite(this.m_savingPopup,0.1,{"onComplete":this.GotoBackToTopdownScreen}));
                  }
               }
               return;
            }
            §§goto(addr56);
         }
         §§goto(addr22);
      }
      
      private function GotoBackToTopdownScreen() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.ExitOut();
            if(!(_loc1_ && Boolean(this)))
            {
               Singleton.utility.m_screenControllers.m_topDownScreen.CloseMenus();
            }
         }
      }
      
      private function ReturnToLobbyButtonHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.m_savingPopup.visible = true;
            if(!_loc3_)
            {
               this.m_savingPopup.alpha = 0;
            }
         }
         var _loc2_:TimelineLite = new TimelineLite();
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc2_.append(new TweenLite(this.m_savingPopup,0.5,{"alpha":1}));
            if(_loc4_ || _loc3_)
            {
               addr66:
               _loc2_.append(new TweenLite(this.m_savingPopup,0.1,{"onComplete":this.GoToLobby}));
               if(_loc4_)
               {
                  _loc2_.append(new TweenLite(this.m_savingPopup,0.1,{
                     "onComplete":Singleton.dynamicData.SaveAllData,
                     "onCompleteParams":[Singleton.dynamicData.m_saveSlot]
                  }));
                  §§goto(addr79);
               }
               §§goto(addr110);
            }
            addr79:
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               addr110:
               _loc2_.append(new TweenLite(this.m_savingPopup,0.1,{"onComplete":this.GotoBackToTopdownScreen}));
            }
            return;
         }
         §§goto(addr66);
      }
      
      private function GoToLobby() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            §§push(Singleton.dynamicData);
            if(_loc2_ || Boolean(this))
            {
               §§push(-99);
               if(_loc2_ || Boolean(this))
               {
                  §§pop().m_topDownCharPositionX = §§pop();
                  if(!_loc1_)
                  {
                     §§push(Singleton.dynamicData);
                     if(_loc2_ || Boolean(this))
                     {
                        §§push(-99);
                        if(_loc2_)
                        {
                           §§pop().m_topDownCharPositionY = §§pop();
                           if(!_loc1_)
                           {
                              §§push(Singleton.dynamicData);
                              if(_loc2_)
                              {
                                 addr67:
                                 §§push(Singleton.staticData.GetRoomForTransitionID(SpecialRoom.LOBBY_ELEVATOR));
                                 if(_loc2_)
                                 {
                                    addr81:
                                    §§pop().m_currRoomOfTower = §§pop();
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       addr93:
                                       Singleton.dynamicData.m_currTransitionID = SpecialRoom.LOBBY_ELEVATOR;
                                       if(_loc2_)
                                       {
                                          addr96:
                                          Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.BringInTheNewRoom();
                                       }
                                    }
                                    §§goto(addr96);
                                 }
                              }
                              §§goto(addr93);
                           }
                           return;
                        }
                        §§goto(addr81);
                     }
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr67);
         }
         §§goto(addr96);
      }
      
      private function CancelButtonHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.ExitOut();
            if(!_loc3_)
            {
               §§push(Singleton.utility);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop().m_screenControllers);
                  if(!_loc3_)
                  {
                     §§push(§§pop().m_topDownScreen);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§push(§§pop().m_topDownMenuScreen);
                        if(_loc2_ || _loc2_)
                        {
                           §§pop().m_rootTopDownMenu.BringIn();
                           §§goto(addr83);
                        }
                        §§pop().m_menuState = TopDownMenuState.TOP_DOWN_MENU_ROOT;
                        §§goto(addr83);
                     }
                  }
               }
               §§goto(addr79);
            }
         }
         addr83:
         if(!(_loc3_ && Boolean(param1)))
         {
            addr79:
            §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen);
         }
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            this.m_saveButton.m_isActive = true;
            if(!_loc2_)
            {
               addr33:
               §§push(this.m_saveAndGotoLobbyButton);
               if(!_loc2_)
               {
                  if(§§pop().alpha == 1)
                  {
                     if(_loc1_)
                     {
                        §§goto(addr44);
                     }
                  }
                  §§goto(addr48);
               }
               addr44:
               this.m_saveAndGotoLobbyButton.m_isActive = true;
               §§goto(addr42);
            }
            addr42:
            if(!_loc2_)
            {
               addr48:
               this.m_cancelButton.m_isActive = true;
            }
            return;
         }
         §§goto(addr33);
      }
   }
}
