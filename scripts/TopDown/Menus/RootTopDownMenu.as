package TopDown.Menus
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import SharedObjects.TutorialPopup;
   import States.GameState;
   import States.TopDownMenuState;
   import States.TutorialTypes;
   import Utilities.Input;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class RootTopDownMenu extends GameObject
   {
       
      
      private var m_background:Sprite;
      
      private var m_minionButton:TCButton;
      
      private var m_settingsButton:TCButton;
      
      private var m_youButton:TCButton;
      
      private var m_minionDexButton:TCButton;
      
      private var m_mainMenuButton:TCButton;
      
      private var m_saveButton:TCButton;
      
      private var m_resumeButton:TCButton;
      
      public var m_newStarsPopup:TutorialPopup;
      
      public var m_unspentTalentPointsPopup:TutorialPopup;
      
      public var m_gemPopup:TutorialPopup;
      
      public function RootTopDownMenu()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         if(!(_loc4_ && Boolean(_loc1_)))
         {
            this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_topDownMenuPopUp_background");
            if(!_loc4_)
            {
               addChild(this.m_background);
               if(_loc3_)
               {
                  §§push(19);
                  if(!_loc4_)
                  {
                     _loc1_ = §§pop();
                     §§push(39);
                  }
                  _loc2_ = §§pop();
                  this.m_minionButton = new TCButton(this.MinionButtonHasBeenPressed,"menus_topDownMenuPopUp_minions");
                  if(_loc3_ || Boolean(this))
                  {
                     §§push(this.m_minionButton);
                     if(!_loc4_)
                     {
                        §§push(17);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§pop().x = §§pop();
                           if(_loc3_)
                           {
                              addr77:
                              this.m_minionButton.y = _loc1_ + _loc2_ * 0;
                              if(_loc3_)
                              {
                                 this.m_background.addChild(this.m_minionButton);
                                 this.m_minionDexButton = new TCButton(this.MinionPediaHasBeenPressed,"menus_topDownMenuPopUp_minionDex");
                                 if(_loc3_)
                                 {
                                    §§push(this.m_minionDexButton);
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       §§push(17);
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          §§pop().x = §§pop();
                                          addr118:
                                          §§push(this.m_minionDexButton);
                                          §§push(_loc1_);
                                       }
                                       §§pop().y = §§pop() + _loc2_ * 1;
                                       if(!_loc4_)
                                       {
                                          this.m_background.addChild(this.m_minionDexButton);
                                          if(_loc3_ || Boolean(this))
                                          {
                                             this.m_youButton = new TCButton(this.YouButtonHasBeenPressed,"menus_topDownMenuPopUp_you");
                                             if(_loc3_)
                                             {
                                                §§push(this.m_youButton);
                                                if(!(_loc4_ && Boolean(_loc2_)))
                                                {
                                                   §§push(17);
                                                   if(!_loc4_)
                                                   {
                                                      §§pop().x = §§pop();
                                                      addr162:
                                                      §§push(this.m_youButton);
                                                      §§push(_loc1_);
                                                   }
                                                   §§pop().y = §§pop() + _loc2_ * 2;
                                                   if(!(_loc4_ && Boolean(_loc2_)))
                                                   {
                                                      addr175:
                                                      this.m_background.addChild(this.m_youButton);
                                                      this.m_saveButton = new TCButton(this.SaveHasBeenPressed,"menus_topDownMenuPopUp_save");
                                                      if(_loc3_ || Boolean(this))
                                                      {
                                                         §§push(this.m_saveButton);
                                                         if(!(_loc4_ && Boolean(this)))
                                                         {
                                                            §§push(17);
                                                            if(!_loc4_)
                                                            {
                                                               §§pop().x = §§pop();
                                                               addr209:
                                                               §§push(this.m_saveButton);
                                                               §§push(_loc1_);
                                                            }
                                                            §§pop().y = §§pop() + _loc2_ * 3;
                                                            this.m_background.addChild(this.m_saveButton);
                                                            if(_loc3_)
                                                            {
                                                               this.m_settingsButton = new TCButton(this.SettingsButtonHasBeenPressed,"menus_topDownMenuPopUp_settings");
                                                               §§push(this.m_settingsButton);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(17);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     addr246:
                                                                     §§push(this.m_settingsButton);
                                                                     §§push(_loc1_);
                                                                  }
                                                                  §§pop().y = §§pop() + _loc2_ * 4;
                                                                  this.m_background.addChild(this.m_settingsButton);
                                                                  if(_loc3_)
                                                                  {
                                                                     this.m_mainMenuButton = new TCButton(this.MenuButtonHasBeenPressed,"menus_topDownMenuPopUp_mainMenu");
                                                                     addr266:
                                                                     §§push(this.m_mainMenuButton);
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        §§push(17);
                                                                        if(_loc3_ || Boolean(this))
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           if(_loc3_ || Boolean(this))
                                                                           {
                                                                              addr294:
                                                                              this.m_mainMenuButton.y = _loc1_ + _loc2_ * 5;
                                                                              if(!_loc4_)
                                                                              {
                                                                                 this.m_background.addChild(this.m_mainMenuButton);
                                                                                 addr306:
                                                                                 this.m_resumeButton = new TCButton(this.ResumeHasBeenPressed,"menus_topDownMenuPopUp_resume");
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr315:
                                                                                    §§push(this.m_resumeButton);
                                                                                    if(!(_loc4_ && Boolean(_loc1_)))
                                                                                    {
                                                                                       §§push(17);
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr338:
                                                                                             this.m_resumeButton.y = 269;
                                                                                             addr337:
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr341:
                                                                                                this.m_background.addChild(this.m_resumeButton);
                                                                                             }
                                                                                             this.m_newStarsPopup = new TutorialPopup();
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr352:
                                                                                                §§push(this.m_newStarsPopup);
                                                                                                if(_loc3_ || Boolean(this))
                                                                                                {
                                                                                                   §§pop().Create("tutorial_newStars_side");
                                                                                                   if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                   {
                                                                                                      §§push(this.m_newStarsPopup);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr374:
                                                                                                         §§push(-42);
                                                                                                         if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            addr385:
                                                                                                            §§push(this.m_newStarsPopup);
                                                                                                            §§push(90);
                                                                                                         }
                                                                                                         §§pop().y = §§pop();
                                                                                                         addr387:
                                                                                                         this.m_background.addChild(this.m_newStarsPopup);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            addr394:
                                                                                                            this.m_unspentTalentPointsPopup = new TutorialPopup();
                                                                                                            §§push(this.m_unspentTalentPointsPopup);
                                                                                                            if(_loc3_ || _loc3_)
                                                                                                            {
                                                                                                               §§pop().Create("tutorial_newTalentPointsPopup_side");
                                                                                                               §§push(this.m_unspentTalentPointsPopup);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§push(-90);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     addr419:
                                                                                                                     §§push(this.m_unspentTalentPointsPopup);
                                                                                                                     §§push(13);
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  addr421:
                                                                                                                  this.m_background.addChild(this.m_unspentTalentPointsPopup);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§goto(addr428);
                                                                                                                  }
                                                                                                                  §§goto(addr452);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr419);
                                                                                                         }
                                                                                                         §§goto(addr474);
                                                                                                      }
                                                                                                      §§goto(addr385);
                                                                                                   }
                                                                                                   §§goto(addr387);
                                                                                                }
                                                                                                §§goto(addr374);
                                                                                             }
                                                                                             §§goto(addr452);
                                                                                          }
                                                                                          §§goto(addr385);
                                                                                       }
                                                                                       §§goto(addr338);
                                                                                    }
                                                                                    §§goto(addr337);
                                                                                 }
                                                                                 §§goto(addr352);
                                                                              }
                                                                              §§goto(addr394);
                                                                           }
                                                                           addr428:
                                                                           this.m_gemPopup = new TutorialPopup();
                                                                           if(!(_loc4_ && Boolean(this)))
                                                                           {
                                                                              §§push(this.m_gemPopup);
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 §§pop().Create("tutorial_firstGem_side");
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr452:
                                                                                    §§push(this.m_gemPopup);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr456);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr474);
                                                                              }
                                                                              §§goto(addr456);
                                                                           }
                                                                           addr456:
                                                                           §§push(-37);
                                                                           if(!(_loc4_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              addr474:
                                                                              §§push(this.m_gemPopup);
                                                                              §§push(13);
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           this.m_background.addChild(this.m_gemPopup);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              this.m_background.visible = false;
                                                                           }
                                                                           §§goto(addr492);
                                                                        }
                                                                     }
                                                                     §§goto(addr294);
                                                                  }
                                                                  §§goto(addr394);
                                                               }
                                                               §§goto(addr246);
                                                            }
                                                            §§goto(addr266);
                                                         }
                                                         §§goto(addr209);
                                                      }
                                                      §§goto(addr394);
                                                   }
                                                   addr492:
                                                   return;
                                                }
                                                §§goto(addr162);
                                             }
                                             §§goto(addr306);
                                          }
                                       }
                                       §§goto(addr341);
                                    }
                                    §§goto(addr118);
                                 }
                                 §§goto(addr341);
                              }
                              §§goto(addr421);
                           }
                           §§goto(addr175);
                        }
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr246);
               }
               §§goto(addr315);
            }
            §§goto(addr209);
         }
         §§goto(addr394);
      }
      
      public function BringIn() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimation(this.m_background);
            if(!(_loc2_ && _loc2_))
            {
               §§push(Singleton.dynamicData.DoWeHaveAStarPointToSpend());
               if(_loc3_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(this.m_newStarsPopup);
                        if(_loc3_)
                        {
                           §§push(true);
                           if(_loc3_)
                           {
                              §§pop().visible = §§pop();
                              if(!_loc2_)
                              {
                                 addr60:
                                 var _loc1_:* = false;
                                 addr59:
                                 §§push(Singleton.dynamicData);
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(§§pop().DoAnyOfTheMinionsHaveUnspentTalentPoints())
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(this.m_unspentTalentPointsPopup);
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             §§push(true);
                                             if(_loc3_)
                                             {
                                                §§pop().visible = §§pop();
                                                §§push(true);
                                                if(_loc3_)
                                                {
                                                   _loc1_ = §§pop();
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      addr110:
                                                      §§push(!_loc1_);
                                                      if(!_loc2_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  §§pop();
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr128:
                                                                     §§push(Singleton.dynamicData);
                                                                     if(_loc3_ || _loc1_)
                                                                     {
                                                                        addr137:
                                                                        §§push(TutorialTypes.TUTORIAL_GEMS);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(§§pop().HasTutorialBeenSeen(§§pop()));
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              if(_loc3_ || Boolean(this))
                                                                              {
                                                                                 addr169:
                                                                                 if(§§pop() && Singleton.dynamicData.GetOwnedGemAt(0) == null)
                                                                                 {
                                                                                    §§push(this.m_gemPopup);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§push(true);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§pop().visible = §§pop();
                                                                                          if(_loc3_ || _loc2_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr190);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr188:
                                                                                       §§push(false);
                                                                                    }
                                                                                    §§pop().visible = §§pop();
                                                                                    §§goto(addr190);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(this.m_gemPopup);
                                                                                 }
                                                                                 §§goto(addr188);
                                                                              }
                                                                              §§goto(addr169);
                                                                              §§push(!§§pop());
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr154);
                                                                  }
                                                                  addr190:
                                                                  return;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr169);
                                                      }
                                                   }
                                                }
                                                §§goto(addr154);
                                             }
                                             else
                                             {
                                                addr109:
                                                §§pop().visible = §§pop();
                                             }
                                             §§goto(addr110);
                                          }
                                          else
                                          {
                                             addr108:
                                             §§push(false);
                                          }
                                          §§goto(addr109);
                                       }
                                       §§goto(addr128);
                                    }
                                    else
                                    {
                                       §§push(this.m_unspentTalentPointsPopup);
                                    }
                                    §§goto(addr108);
                                 }
                                 §§goto(addr137);
                                 addr54:
                              }
                           }
                           §§goto(addr59);
                        }
                        else
                        {
                           addr57:
                           §§push(false);
                        }
                        §§pop().visible = §§pop();
                     }
                     §§goto(addr59);
                  }
                  else
                  {
                     §§push(this.m_newStarsPopup);
                  }
                  §§goto(addr57);
               }
            }
            §§goto(addr60);
         }
         §§goto(addr54);
      }
      
      public function ExitOut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimation(this.m_background);
         }
      }
      
      private function ResumeHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(this)))
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.CloseMenus();
         }
      }
      
      private function SaveHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(param1))
         {
            §§push(Singleton.utility);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop().m_screenControllers);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop().m_topDownScreen);
                  if(_loc3_ || Boolean(param1))
                  {
                     §§push(§§pop().m_topDownMenuScreen);
                     if(!_loc2_)
                     {
                        §§pop().m_saveMenu.BringIn();
                        if(!(_loc2_ && Boolean(param1)))
                        {
                           §§goto(addr72);
                        }
                        §§goto(addr76);
                     }
                  }
               }
            }
            §§goto(addr81);
         }
         addr72:
         this.ExitOut();
         if(!_loc2_)
         {
            addr81:
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_SAVE_MENU;
            addr76:
         }
      }
      
      private function SettingsButtonHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(param1))
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_settingsMenu.BringIn();
            if(_loc3_)
            {
               addr37:
               this.ExitOut();
            }
            return;
         }
         §§goto(addr37);
      }
      
      private function YouButtonHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_youMenu.BringIn();
            if(!_loc3_)
            {
               this.ExitOut();
            }
         }
      }
      
      private function MinionButtonHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(param1)))
         {
            §§push(Singleton.utility);
            if(!_loc2_)
            {
               §§push(§§pop().m_screenControllers);
               if(_loc3_)
               {
                  §§push(§§pop().m_topDownScreen);
                  if(_loc3_ || Boolean(param1))
                  {
                     §§push(§§pop().m_topDownMenuScreen);
                     if(!_loc2_)
                     {
                        §§pop().BringInBackgroundNormalSized();
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§push(Singleton.utility);
                           if(!_loc2_)
                           {
                              addr58:
                              §§push(§§pop().m_screenControllers);
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr66:
                                 §§push(§§pop().m_topDownScreen);
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr74:
                                    §§push(§§pop().m_topDownMenuScreen);
                                    if(!(_loc2_ && Boolean(param1)))
                                    {
                                       addr89:
                                       §§pop().m_minionSelectMenu.BringIn();
                                       if(!_loc2_)
                                       {
                                          this.ExitOut();
                                       }
                                       §§goto(addr110);
                                    }
                                    §§pop().m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_OVERVIEW;
                                    §§goto(addr110);
                                 }
                              }
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr74);
               }
               §§goto(addr66);
            }
            §§goto(addr58);
         }
         addr110:
         if(_loc3_ || _loc3_)
         {
            addr106:
            §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen);
         }
      }
      
      private function MinionPediaHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(param1))
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionPedia.BringIn();
            if(!(_loc2_ && _loc2_))
            {
               addr42:
               this.ExitOut();
            }
            return;
         }
         §§goto(addr42);
      }
      
      private function MenuButtonHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(Singleton.utility);
            if(_loc2_)
            {
               §§push(§§pop().m_screenControllers);
               if(_loc2_ || _loc3_)
               {
                  §§pop().m_topDownScreen.m_topDownMenuScreen.CloseMenus();
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(Singleton.dynamicData);
                     if(_loc2_ || _loc2_)
                     {
                        if(!§§pop().m_isAutoSaveOn)
                        {
                        }
                        §§goto(addr77);
                     }
                     §§pop().SaveAllData(Singleton.dynamicData.m_saveSlot);
                     if(_loc3_)
                     {
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr69);
               }
            }
            §§goto(addr77);
         }
         addr77:
         if(!_loc3_)
         {
            addr69:
            §§push(Singleton.dynamicData);
         }
         Singleton.utility.m_screenControllers.SetSceneTo(GameState.MAIN_MENU);
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.m_resumeButton.m_isActive = true;
         if(!(_loc2_ && _loc1_))
         {
            this.m_minionButton.m_isActive = true;
            this.m_settingsButton.m_isActive = true;
            this.m_youButton.m_isActive = true;
            if(!(_loc2_ && _loc2_))
            {
               this.m_minionDexButton.m_isActive = true;
               this.m_mainMenuButton.m_isActive = true;
               this.m_saveButton.m_isActive = true;
               §§push(Input.kp("G"));
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     this.SettingsButtonHasBeenPressed(null);
                     return;
                  }
                  addr86:
                  §§push(Input.kp("N"));
                  if(_loc1_)
                  {
                     if(§§pop())
                     {
                        this.MinionButtonHasBeenPressed(null);
                        return;
                     }
                     addr96:
                     §§push(Input.kp("M","ESC"));
                  }
               }
               if(§§pop())
               {
                  this.ResumeHasBeenPressed(null);
                  return;
               }
               return;
            }
            §§goto(addr96);
         }
         §§goto(addr86);
      }
   }
}
