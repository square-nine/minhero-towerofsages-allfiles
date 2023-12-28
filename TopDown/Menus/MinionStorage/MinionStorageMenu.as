package TopDown.Menus.MinionStorage
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.ConformationBox;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.TutorialPopup;
   import States.TopDownMenuState;
   import States.TopDownStates;
   import States.TutorialTypes;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class MinionStorageMenu extends Sprite
   {
       
      
      protected var m_background:Sprite;
      
      protected var m_minionSelector:MinionStorageSelector;
      
      public var m_minionDetails:MinionDetailsScreenForStorage;
      
      protected var m_returnButton:TCButton;
      
      protected var m_turnSwapOnButton:TCButton;
      
      protected var m_turnSwapOffButton:TCButton;
      
      protected var m_releaseButton:TCButton;
      
      protected var m_conformationBox:ConformationBox;
      
      protected var m_previouslySelectedMinion:OwnedMinion;
      
      private var m_swapMinionsTutorial:TutorialPopup;
      
      public function MinionStorageMenu()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Sprite = this;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_backgroundLarge");
         _loc1_.addChild(this.m_background);
         if(!_loc2_)
         {
            this.m_minionSelector = new MinionStorageSelector();
            §§push(this.m_minionSelector);
            if(_loc3_ || _loc2_)
            {
               §§pop().LoadSprites();
               §§push(this.m_minionSelector);
            }
            §§pop().m_onMinionPressedFunction = this.UpdatePieces;
            _loc1_.addChild(this.m_minionSelector);
            this.m_returnButton = new TCButton(this.ReturnButtonPressed,"menus_returnButton");
            if(!_loc2_)
            {
               §§push(this.m_returnButton);
               if(!_loc2_)
               {
                  §§push(3);
                  if(_loc3_)
                  {
                     §§pop().x = §§pop();
                     if(!(_loc2_ && _loc3_))
                     {
                        addr80:
                        this.m_returnButton.y = 409;
                        if(!_loc2_)
                        {
                           this.m_background.addChild(this.m_returnButton);
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr95:
                              this.m_releaseButton = new TCButton(this.ReleasedButtonPressed,"menus_minionStorage_releaseButton");
                              if(_loc3_)
                              {
                                 §§push(this.m_releaseButton);
                                 if(_loc3_)
                                 {
                                    §§push(580);
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       §§pop().x = §§pop();
                                       addr226:
                                       if(_loc3_)
                                       {
                                          addr121:
                                          §§push(this.m_releaseButton);
                                          §§push(412);
                                       }
                                       this.m_turnSwapOnButton.y = 398;
                                       _loc1_.addChild(this.m_turnSwapOnButton);
                                       this.m_turnSwapOffButton = new TCButton(this.TurnSwapOffButtonPressed,"menus_minionStorage_swapButtonOn");
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(this.m_turnSwapOffButton);
                                          if(!_loc2_)
                                          {
                                             §§push(269);
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                §§pop().x = §§pop();
                                                addr263:
                                                §§push(this.m_turnSwapOffButton);
                                                §§push(398);
                                             }
                                             §§pop().y = §§pop();
                                             addr265:
                                             _loc1_.addChild(this.m_turnSwapOffButton);
                                             this.m_swapMinionsTutorial = new TutorialPopup();
                                             if(_loc3_ || Boolean(_loc1_))
                                             {
                                                addr280:
                                                §§push(this.m_swapMinionsTutorial);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§pop().Create("tutorial_swapMinions");
                                                   addr291:
                                                   §§push(this.m_swapMinionsTutorial);
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      addr307:
                                                      §§push(220);
                                                      if(_loc3_)
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(_loc3_ || Boolean(_loc1_))
                                                         {
                                                            addr321:
                                                            this.m_swapMinionsTutorial.y = 341;
                                                         }
                                                         _loc1_.addChild(this.m_swapMinionsTutorial);
                                                         this.visible = false;
                                                         §§goto(addr329);
                                                      }
                                                   }
                                                   §§goto(addr321);
                                                }
                                                §§goto(addr307);
                                             }
                                             §§goto(addr291);
                                          }
                                          §§goto(addr263);
                                       }
                                       §§goto(addr265);
                                    }
                                    §§pop().y = §§pop();
                                    this.m_background.addChild(this.m_releaseButton);
                                    if(_loc3_)
                                    {
                                       this.m_minionDetails = new MinionDetailsScreenForStorage();
                                       §§push(this.m_minionDetails);
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          §§push(330);
                                          if(!_loc2_)
                                          {
                                             §§pop().x = §§pop();
                                             §§push(this.m_minionDetails);
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                addr164:
                                                §§pop().y = 43;
                                                §§push(this.m_minionDetails);
                                             }
                                             §§pop().LoadSprites();
                                             this.m_background.addChild(this.m_minionDetails);
                                             this.m_conformationBox = new ConformationBox("This will delete your minion");
                                             if(_loc3_)
                                             {
                                                §§push(this.m_conformationBox);
                                                if(_loc3_ || Boolean(_loc1_))
                                                {
                                                   §§push(485);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§pop().x = §§pop();
                                                      if(_loc3_)
                                                      {
                                                         addr202:
                                                         §§push(this.m_conformationBox);
                                                         §§push(327);
                                                      }
                                                      §§goto(addr329);
                                                   }
                                                   §§pop().y = §§pop();
                                                   this.m_background.addChild(this.m_conformationBox);
                                                   if(_loc3_)
                                                   {
                                                      this.m_turnSwapOnButton = new TCButton(this.TurnSwapOnButtonPressed,"menus_minionStorage_swapButtonOff");
                                                      addr218:
                                                      §§push(this.m_turnSwapOnButton);
                                                      if(_loc3_)
                                                      {
                                                         §§push(269);
                                                         if(!_loc2_)
                                                         {
                                                            §§pop().x = §§pop();
                                                         }
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                   §§goto(addr280);
                                                }
                                                §§goto(addr202);
                                             }
                                             §§goto(addr218);
                                          }
                                       }
                                       §§goto(addr164);
                                    }
                                    addr329:
                                    return;
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr226);
                           }
                        }
                        §§goto(addr202);
                     }
                     §§goto(addr265);
                  }
               }
               §§goto(addr80);
            }
            §§goto(addr218);
         }
         §§goto(addr95);
      }
      
      public function UpdatePieces() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.m_minionSelector);
            if(_loc2_)
            {
               §§push(§§pop().m_selectedMinion == null);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(!§§pop());
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           §§pop();
                           if(_loc2_ || _loc1_)
                           {
                              §§push(this.m_minionSelector);
                              if(!(_loc1_ && _loc2_))
                              {
                                 addr59:
                                 §§push(§§pop().m_isSwapModeActive);
                                 if(!(_loc1_ && Boolean(this)))
                                 {
                                    addr67:
                                    §§push(!§§pop());
                                    if(_loc2_)
                                    {
                                       addr70:
                                       if(§§pop())
                                       {
                                          if(!(_loc1_ && Boolean(this)))
                                          {
                                             if(this.m_previouslySelectedMinion == null)
                                             {
                                                if(_loc2_)
                                                {
                                                   §§push(this.m_minionDetails);
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      §§push(this.m_minionSelector);
                                                      if(!_loc1_)
                                                      {
                                                         §§push(§§pop().m_selectedMinion);
                                                         if(_loc2_ || Boolean(this))
                                                         {
                                                            §§pop().BringIn(§§pop());
                                                            addr134:
                                                            §§push(this.m_releaseButton);
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               §§push(true);
                                                               if(_loc2_ || Boolean(this))
                                                               {
                                                                  §§pop().visible = §§pop();
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr168:
                                                                     this.m_releaseButton.visible = false;
                                                                  }
                                                                  else
                                                                  {
                                                                     addr154:
                                                                  }
                                                                  this.m_previouslySelectedMinion = this.m_minionSelector.m_selectedMinion;
                                                                  addr177:
                                                                  if(!this.m_minionSelector.m_isSwapModeActive)
                                                                  {
                                                                     §§push(this.m_turnSwapOnButton);
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        §§push(true);
                                                                        if(_loc2_)
                                                                        {
                                                                           §§pop().visible = §§pop();
                                                                           if(!_loc1_)
                                                                           {
                                                                              §§push(this.m_turnSwapOffButton);
                                                                              if(_loc2_ || Boolean(this))
                                                                              {
                                                                                 §§push(false);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§pop().visible = §§pop();
                                                                                    if(!(_loc1_ && _loc1_))
                                                                                    {
                                                                                       addr241:
                                                                                       return;
                                                                                       addr220:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr241);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr229:
                                                                                 §§push(true);
                                                                              }
                                                                              §§pop().visible = §§pop();
                                                                              if(!(_loc1_ && _loc2_))
                                                                              {
                                                                                 this.m_previouslySelectedMinion = null;
                                                                              }
                                                                              §§goto(addr241);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr227:
                                                                              §§push(this.m_turnSwapOffButton);
                                                                           }
                                                                           §§goto(addr229);
                                                                        }
                                                                        §§goto(addr241);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr223:
                                                                        §§push(false);
                                                                     }
                                                                     §§pop().visible = §§pop();
                                                                     if(_loc2_)
                                                                     {
                                                                        §§goto(addr227);
                                                                     }
                                                                     §§goto(addr241);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.m_turnSwapOnButton);
                                                                  }
                                                                  §§goto(addr223);
                                                               }
                                                            }
                                                            §§goto(addr168);
                                                         }
                                                         else
                                                         {
                                                            addr126:
                                                            §§pop().SnapIn(§§pop());
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               §§goto(addr134);
                                                            }
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                      else
                                                      {
                                                         addr125:
                                                         §§push(§§pop().m_selectedMinion);
                                                      }
                                                      §§goto(addr126);
                                                   }
                                                   else
                                                   {
                                                      addr123:
                                                      §§push(this.m_minionSelector);
                                                   }
                                                   §§goto(addr125);
                                                }
                                                §§goto(addr154);
                                             }
                                             else
                                             {
                                                §§push(this.m_minionDetails);
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   §§goto(addr123);
                                                }
                                                else
                                                {
                                                   addr157:
                                                   §§pop().ExitOut();
                                                   if(_loc2_ || Boolean(this))
                                                   {
                                                      §§goto(addr168);
                                                   }
                                                }
                                                §§goto(addr241);
                                             }
                                          }
                                          §§goto(addr227);
                                       }
                                       else
                                       {
                                          §§push(this.m_minionDetails);
                                       }
                                       §§goto(addr157);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr70);
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr241);
                        }
                        §§goto(addr67);
                     }
                     §§goto(addr70);
                  }
               }
               §§goto(addr177);
            }
            §§goto(addr59);
         }
         §§goto(addr227);
      }
      
      public function BringIn() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.m_previouslySelectedMinion = null;
         if(_loc1_)
         {
            §§push(Singleton.utility);
            if(_loc1_)
            {
               §§push(§§pop().m_screenControllers);
               if(_loc1_)
               {
                  §§push(§§pop().m_topDownScreen);
                  if(_loc1_ || _loc1_)
                  {
                     §§pop().m_currState = TopDownStates.IN_MINION_STORAGE;
                     §§push(Singleton.utility);
                     if(!_loc2_)
                     {
                        §§push(§§pop().m_screenControllers);
                        if(!_loc2_)
                        {
                           addr43:
                           §§push(§§pop().m_topDownScreen);
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr51:
                              §§pop().m_topDownMenuScreen.ApplyMenuBringInAnimationJustFade(this);
                              if(_loc1_ || _loc2_)
                              {
                                 §§push(this.m_minionSelector);
                                 if(_loc1_ || _loc1_)
                                 {
                                    §§pop().BringIn();
                                    addr78:
                                    §§push(this.m_minionSelector);
                                 }
                                 §§pop().m_isSwapModeActive = false;
                                 this.UpdatePieces();
                                 if(!_loc2_)
                                 {
                                    addr90:
                                    Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOffTheActionIcon();
                                    §§push(Singleton.dynamicData);
                                    if(_loc1_ || _loc1_)
                                    {
                                       §§pop().ResetFloorData();
                                       §§push(Singleton.dynamicData);
                                    }
                                    if(!§§pop().HasTutorialBeenSeen(TutorialTypes.TUTORIAL_SWAP_MINIONS))
                                    {
                                       if(_loc1_)
                                       {
                                          §§push(this.m_swapMinionsTutorial);
                                          if(_loc1_ || _loc2_)
                                          {
                                             §§push(true);
                                             if(_loc1_ || _loc1_)
                                             {
                                                §§pop().visible = §§pop();
                                                addr135:
                                             }
                                             else
                                             {
                                                addr139:
                                                §§pop().visible = §§pop();
                                             }
                                             return;
                                          }
                                          addr138:
                                          §§push(false);
                                          §§goto(addr139);
                                       }
                                       §§goto(addr135);
                                    }
                                    else
                                    {
                                       §§push(this.m_swapMinionsTutorial);
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr78);
                           }
                        }
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr51);
               }
               §§goto(addr43);
            }
         }
         §§goto(addr90);
      }
      
      public function ExitOut() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(Singleton.utility);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop().m_screenControllers);
               if(_loc1_ || _loc2_)
               {
                  §§push(§§pop().m_topDownScreen);
                  if(_loc1_)
                  {
                     §§pop().m_currState = TopDownStates.MOVEMENT;
                     if(_loc1_ || _loc2_)
                     {
                        addr45:
                        §§push(Singleton.utility);
                        if(!_loc2_)
                        {
                           §§push(§§pop().m_screenControllers);
                           if(!_loc2_)
                           {
                              addr59:
                              §§push(§§pop().m_topDownScreen);
                              if(_loc1_ || _loc1_)
                              {
                                 §§pop().m_topDownMenuScreen.ApplyMenuExitOutAnimationJustFade(this);
                                 if(_loc1_)
                                 {
                                    addr72:
                                    §§push(Singleton.utility);
                                    if(_loc1_ || _loc2_)
                                    {
                                       addr81:
                                       §§push(§§pop().m_screenControllers);
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop().m_topDownScreen);
                                          if(!_loc2_)
                                          {
                                             addr94:
                                             §§push(§§pop().m_topDownMovementScreen);
                                             if(_loc1_ || _loc1_)
                                             {
                                                §§pop().TurnOnTheActionIcon();
                                                §§goto(addr116);
                                             }
                                             §§pop().UpdateMovementHUD();
                                             §§goto(addr116);
                                          }
                                       }
                                    }
                                    §§goto(addr114);
                                 }
                                 addr116:
                                 if(_loc1_ || _loc1_)
                                 {
                                    addr114:
                                    §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen);
                                 }
                                 return;
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr114);
               }
               §§goto(addr59);
            }
            §§goto(addr81);
         }
         §§goto(addr45);
      }
      
      public function Update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(this.m_conformationBox.m_isOpen)
         {
            return;
         }
         §§push(Singleton.utility);
         if(!_loc1_)
         {
            §§push(§§pop().m_screenControllers);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop().m_topDownScreen);
               if(!_loc1_)
               {
                  §§push(§§pop().m_topDownMenuScreen);
                  if(!_loc1_)
                  {
                     if(§§pop().m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_GEM_SELECT_FROM_MINION_STORAGE)
                     {
                        addr53:
                        Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_gemMenu.UpdateFullFrames();
                        if(!_loc1_)
                        {
                           return;
                        }
                        addr72:
                        §§push(this.m_turnSwapOffButton);
                        if(_loc2_)
                        {
                           if(§§pop().visible)
                           {
                              addr87:
                              this.m_turnSwapOffButton.m_isActive = true;
                           }
                           §§push(this.m_turnSwapOnButton);
                           if(!_loc1_)
                           {
                              if(§§pop().visible)
                              {
                                 addr97:
                                 this.m_turnSwapOnButton.m_isActive = true;
                              }
                              §§push(this.m_releaseButton);
                              if(!_loc1_)
                              {
                                 if(§§pop().visible)
                                 {
                                    addr107:
                                    this.m_releaseButton.m_isActive = true;
                                 }
                                 return;
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr87);
                     }
                     else
                     {
                        this.m_returnButton.m_isActive = true;
                        this.m_minionSelector.Update();
                        this.m_minionDetails.UpdateFullFrames();
                        if(!_loc1_)
                        {
                           §§goto(addr72);
                        }
                     }
                     §§goto(addr107);
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public function ReturnButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.ExitOut();
         }
      }
      
      public function TurnSwapOnButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.m_minionSelector.m_isSwapModeActive = true;
            if(!_loc3_)
            {
               this.UpdatePieces();
               if(!(_loc3_ && Boolean(this)))
               {
                  addr37:
                  this.m_swapMinionsTutorial.visible = false;
               }
               return;
            }
         }
         §§goto(addr37);
      }
      
      public function TurnSwapOffButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.m_minionSelector.m_isSwapModeActive = false;
            if(!(_loc2_ && _loc3_))
            {
               this.UpdatePieces();
               if(_loc2_)
               {
               }
               §§goto(addr67);
            }
            if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_SWAP_MINIONS))
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.m_swapMinionsTutorial.visible = true;
               }
            }
         }
         addr67:
      }
      
      public function ReleasedButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.m_conformationBox.BringIn(this.ReleasedYesButtonPressed,this.ReleasedNoButtonPressed);
         }
      }
      
      public function ReleasedNoButtonPressed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            this.CloseOutYesNoBox();
         }
      }
      
      private function CloseOutYesNoBox() : void
      {
      }
      
      public function ReleasedYesButtonPressed() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(Singleton.dynamicData.GetMinionPosition(this.m_minionSelector.m_selectedMinion));
         if(_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.m_minionSelector);
            if(_loc2_ || _loc1_)
            {
               §§pop().DeselectMinion();
               if(_loc2_ || Boolean(this))
               {
                  addr56:
                  Singleton.dynamicData.SetMinionTo(_loc1_,null);
                  if(!(_loc3_ && _loc1_))
                  {
                     this.UpdatePieces();
                     if(_loc2_)
                     {
                        addr74:
                        this.m_minionSelector.UpdateMinions_Snap();
                        if(_loc2_)
                        {
                        }
                        §§goto(addr79);
                     }
                  }
                  this.CloseOutYesNoBox();
               }
               addr79:
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr56);
      }
   }
}
