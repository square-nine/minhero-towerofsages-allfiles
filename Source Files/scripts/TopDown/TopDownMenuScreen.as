package TopDown
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.TopDownMenuState;
   import TopDown.Menus.GemMenu;
   import TopDown.Menus.MinionDetails.MinionDetailsScreen;
   import TopDown.Menus.MinionPedia.MinionPediaMenu;
   import TopDown.Menus.MinionSelectMenu;
   import TopDown.Menus.MinionSelectOptionsMenu;
   import TopDown.Menus.MinionTypeSelectMenu;
   import TopDown.Menus.RootTopDownMenu;
   import TopDown.Menus.SaveMenu;
   import TopDown.Menus.SettingsMenu;
   import TopDown.Menus.TopDownTalentTreeWrapper;
   import TopDown.Menus.YouMenu.YouMenu;
   import Utilities.Input;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class TopDownMenuScreen
   {
       
      
      public var m_blackBackground:Sprite;
      
      public var m_rootTopDownMenu:RootTopDownMenu;
      
      public var m_minionSelectMenu:MinionSelectMenu;
      
      public var m_minionSelectOptionsMenu:MinionSelectOptionsMenu;
      
      public var m_minionDetailsScreen:MinionDetailsScreen;
      
      public var m_talentTreeScreen:TopDownTalentTreeWrapper;
      
      public var m_gemMenu:GemMenu;
      
      public var m_youMenu:YouMenu;
      
      public var m_minionPedia:MinionPediaMenu;
      
      public var m_settingsMenu:SettingsMenu;
      
      public var m_saveMenu:SaveMenu;
      
      public var m_minionTypeSelectMenu:MinionTypeSelectMenu;
      
      public var m_backgroundNormalSize:Sprite;
      
      private var m_closeButton:TCButton;
      
      public var m_menuState:int;
      
      public function TopDownMenuScreen()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               this.m_rootTopDownMenu = new RootTopDownMenu();
               this.m_minionSelectMenu = new MinionSelectMenu();
            }
            this.m_minionSelectOptionsMenu = new MinionSelectOptionsMenu();
            if(!(_loc1_ && _loc1_))
            {
               addr56:
               this.m_minionDetailsScreen = new MinionDetailsScreen();
            }
            this.m_talentTreeScreen = new TopDownTalentTreeWrapper();
            this.m_gemMenu = new GemMenu();
            if(!_loc1_)
            {
               this.m_youMenu = new YouMenu();
               this.m_minionPedia = new MinionPediaMenu();
               if(_loc2_)
               {
                  this.m_settingsMenu = new SettingsMenu();
                  if(!_loc1_)
                  {
                     addr93:
                     this.m_saveMenu = new SaveMenu();
                  }
                  this.m_minionTypeSelectMenu = new MinionTypeSelectMenu();
                  §§goto(addr101);
               }
               §§goto(addr93);
            }
            addr101:
            return;
         }
         §§goto(addr56);
      }
      
      public function LoadSprites() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Sprite = null;
         _loc1_ = Singleton.utility.m_screenControllers.m_topDownScreen;
         if(_loc2_ || _loc3_)
         {
            this.m_blackBackground = new Sprite();
            this.m_blackBackground.graphics.beginFill(0);
            this.m_blackBackground.graphics.drawRect(0,0,700,525);
            this.m_blackBackground.graphics.endFill();
            if(!_loc3_)
            {
               this.m_blackBackground.visible = false;
               _loc1_.addChild(this.m_blackBackground);
               if(!_loc3_)
               {
                  §§push(this.m_rootTopDownMenu);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§pop().LoadSprites();
                     §§push(this.m_rootTopDownMenu);
                     if(!(_loc3_ && _loc2_))
                     {
                        addr81:
                        §§push(483);
                        if(!_loc3_)
                        {
                           §§pop().x = §§pop();
                           addr87:
                           §§push(this.m_rootTopDownMenu);
                           §§push(177);
                        }
                        §§pop().y = §§pop();
                        _loc1_.addChild(this.m_rootTopDownMenu);
                        if(_loc2_)
                        {
                           addr95:
                           this.m_backgroundNormalSize = Singleton.utility.m_spriteHandler.CreateSprite("menus_backgroundMedium");
                           this.m_backgroundNormalSize.x = 186 - 18;
                           if(!_loc3_)
                           {
                              this.m_backgroundNormalSize.y = 77;
                              _loc1_.addChild(this.m_backgroundNormalSize);
                              if(!(_loc3_ && _loc2_))
                              {
                                 this.m_backgroundNormalSize.visible = false;
                                 this.m_closeButton = new TCButton(this.CloseButtonPressed,"menus_exitButton");
                                 §§push(this.m_closeButton);
                                 if(!_loc3_)
                                 {
                                    §§push(296);
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       §§pop().x = §§pop();
                                       addr151:
                                       §§push(this.m_closeButton);
                                       §§push(-22);
                                    }
                                    §§pop().y = §§pop();
                                    this.m_backgroundNormalSize.addChild(this.m_closeButton);
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       addr165:
                                       this.m_minionSelectMenu.LoadSprites();
                                       this.m_backgroundNormalSize.addChild(this.m_minionSelectMenu);
                                       §§push(this.m_minionSelectOptionsMenu);
                                       if(!_loc3_)
                                       {
                                          §§pop().LoadSprites();
                                          if(_loc2_)
                                          {
                                             addr182:
                                             this.m_minionSelectOptionsMenu.x = 515;
                                             _loc1_.addChild(this.m_minionSelectOptionsMenu);
                                             if(_loc2_)
                                             {
                                                addr190:
                                                this.m_minionDetailsScreen.LoadSprites();
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   this.m_backgroundNormalSize.addChild(this.m_minionDetailsScreen);
                                                   this.m_talentTreeScreen.LoadSprites();
                                                   this.m_backgroundNormalSize.addChild(this.m_talentTreeScreen);
                                                   §§push(this.m_gemMenu);
                                                   if(_loc2_ || Boolean(_loc1_))
                                                   {
                                                      §§pop().LoadSprites();
                                                      addr230:
                                                      §§push(this.m_gemMenu);
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         §§push(44);
                                                         if(!(_loc3_ && Boolean(_loc1_)))
                                                         {
                                                            §§pop().x = §§pop();
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               addr258:
                                                               this.m_gemMenu.y = 102;
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  _loc1_.addChild(this.m_gemMenu);
                                                                  addr270:
                                                                  §§push(this.m_youMenu);
                                                                  if(!(_loc3_ && Boolean(_loc1_)))
                                                                  {
                                                                     §§pop().LoadSprites();
                                                                     §§push(this.m_youMenu);
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(5);
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           addr290:
                                                                           §§push(this.m_youMenu);
                                                                           §§push(41);
                                                                        }
                                                                        §§pop().y = §§pop();
                                                                        if(_loc2_)
                                                                        {
                                                                           addr294:
                                                                           _loc1_.addChild(this.m_youMenu);
                                                                           addr298:
                                                                           §§push(this.m_minionPedia);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§pop().LoadSprites();
                                                                              §§push(this.m_minionPedia);
                                                                              if(!(_loc3_ && Boolean(this)))
                                                                              {
                                                                                 §§push(5);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    addr318:
                                                                                    §§push(this.m_minionPedia);
                                                                                    §§push(13);
                                                                                 }
                                                                                 §§pop().y = §§pop();
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    _loc1_.addChild(this.m_minionPedia);
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       addr338:
                                                                                       §§push(this.m_settingsMenu);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§pop().LoadSprites();
                                                                                          §§push(this.m_settingsMenu);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(148);
                                                                                             if(_loc2_ || Boolean(_loc1_))
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                addr358:
                                                                                                §§push(this.m_settingsMenu);
                                                                                                §§push(56);
                                                                                             }
                                                                                             §§pop().y = §§pop();
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                §§goto(addr367);
                                                                                             }
                                                                                             §§goto(addr416);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr358);
                                                                                    }
                                                                                    addr367:
                                                                                    _loc1_.addChild(this.m_settingsMenu);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr373:
                                                                                       §§push(this.m_saveMenu);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§pop().LoadSprites();
                                                                                          addr378:
                                                                                          §§push(this.m_saveMenu);
                                                                                          if(_loc2_ || _loc2_)
                                                                                          {
                                                                                             addr387:
                                                                                             §§push(245);
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                {
                                                                                                   addr408:
                                                                                                   this.m_saveMenu.y = 156;
                                                                                                }
                                                                                                _loc1_.addChild(this.m_saveMenu);
                                                                                                this.m_minionTypeSelectMenu.LoadSprites();
                                                                                                addr416:
                                                                                                _loc1_.addChild(this.m_minionTypeSelectMenu);
                                                                                                §§goto(addr420);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr408);
                                                                                       }
                                                                                       §§goto(addr387);
                                                                                    }
                                                                                    addr420:
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr373);
                                                                              }
                                                                           }
                                                                           §§goto(addr318);
                                                                        }
                                                                        §§goto(addr338);
                                                                     }
                                                                  }
                                                                  §§goto(addr290);
                                                               }
                                                               §§goto(addr298);
                                                            }
                                                            §§goto(addr416);
                                                         }
                                                         §§goto(addr258);
                                                      }
                                                   }
                                                   §§goto(addr258);
                                                }
                                                §§goto(addr378);
                                             }
                                             §§goto(addr230);
                                          }
                                          §§goto(addr294);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr151);
                              }
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr270);
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr81);
               }
               §§goto(addr373);
            }
            §§goto(addr95);
         }
         §§goto(addr358);
      }
      
      public function OpenMenus() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_blackBackground.visible = true;
            if(!_loc2_)
            {
               this.m_blackBackground.alpha = 0;
               if(_loc1_ || Boolean(this))
               {
                  TweenLite.to(this.m_blackBackground,1,{
                     "alpha":0.65,
                     "onComplete":this.FinishOpeningMenus
                  });
                  if(_loc1_ || _loc2_)
                  {
                  }
                  §§goto(addr73);
               }
               this.m_rootTopDownMenu.BringIn();
               if(!_loc2_)
               {
                  this.m_menuState = TopDownMenuState.TOP_DOWN_MENU_ROOT;
               }
            }
         }
         addr73:
      }
      
      private function FinishOpeningMenus() : void
      {
      }
      
      public function BringInBackgroundNormalSized() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.ApplyMenuBringInAnimation(this.m_backgroundNormalSize);
         }
      }
      
      public function ExitOutBackgroundNormalSized() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.ApplyMenuExitOutAnimation(this.m_backgroundNormalSize);
         }
      }
      
      public function ApplyMenuBringInAnimation(param1:Sprite) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            param1.visible = true;
            if(!_loc3_)
            {
               param1.alpha = 0;
               if(_loc4_ || _loc2_)
               {
                  addr36:
                  param1.scaleX = 0.9;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr53:
                     param1.scaleY = 0.9;
                  }
               }
               var _loc2_:TimelineLite = new TimelineLite();
               if(!(_loc3_ && _loc3_))
               {
                  _loc2_.append(new TweenLite(param1,0.1,{}));
                  if(!_loc3_)
                  {
                     _loc2_.append(new TweenLite(param1,0.5,{"transformAroundCenter":{
                        "alpha":1,
                        "scaleX":1,
                        "scaleY":1
                     }}));
                  }
               }
               return;
            }
            §§goto(addr53);
         }
         §§goto(addr36);
      }
      
      public function ApplyMenuExitOutAnimation(param1:Sprite) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TimelineLite = new TimelineLite();
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            _loc2_.append(new TweenLite(param1,0.5,{"transformAroundCenter":{
               "alpha":0,
               "scaleX":0.9,
               "scaleY":0.9
            }}));
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               _loc2_.append(new TweenLite(param1,0.1,{
                  "onComplete":this.NormalTabExitOutFinishAnimation,
                  "onCompleteParams":[param1]
               }));
            }
         }
      }
      
      public function ApplyMenuBringInAnimationJustFade(param1:Sprite) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            param1.visible = true;
            if(!(_loc3_ && _loc3_))
            {
               param1.alpha = 0;
            }
         }
         var _loc2_:TimelineLite = new TimelineLite();
         if(_loc4_)
         {
            _loc2_.append(new TweenLite(param1,0.1,{}));
            if(!(_loc3_ && Boolean(param1)))
            {
               _loc2_.append(new TweenLite(param1,0.5,{"transformAroundCenter":{"alpha":1}}));
            }
         }
      }
      
      public function ApplyMenuExitOutAnimationJustFade(param1:Sprite) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TimelineLite = new TimelineLite();
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.append(new TweenLite(param1,0.5,{"transformAroundCenter":{"alpha":0}}));
            if(!_loc4_)
            {
               _loc2_.append(new TweenLite(param1,0.1,{
                  "onComplete":this.NormalTabExitOutFinishAnimation,
                  "onCompleteParams":[param1]
               }));
            }
         }
      }
      
      private function NormalTabExitOutFinishAnimation(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.visible = false;
         }
      }
      
      public function CloseButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.CloseMenus();
         }
      }
      
      public function CloseMenus() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_ROOT)
         {
            this.m_rootTopDownMenu.ExitOut();
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_OVERVIEW)
         {
            §§push(this.m_minionSelectMenu);
            if(!(_loc3_ && _loc3_))
            {
               §§pop().ExitOut();
               if(_loc2_)
               {
                  this.ExitOutBackgroundNormalSized();
                  if(!(_loc3_ && _loc2_))
                  {
                     addr253:
                     §§push(Singleton.utility);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop().m_screenControllers);
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(§§pop().m_topDownScreen);
                           if(!_loc3_)
                           {
                              §§push(§§pop().m_topDownMovementScreen);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§pop().m_mainChar.UpdateAnimationState();
                                 addr294:
                                 §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen);
                              }
                              §§pop().UpdateMovementHUD();
                              §§goto(addr296);
                           }
                        }
                     }
                     §§goto(addr294);
                  }
                  else
                  {
                     addr64:
                     this.m_minionSelectOptionsMenu.ExitOut();
                     this.ExitOutBackgroundNormalSized();
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§goto(addr253);
                     }
                     else
                     {
                        addr248:
                        this.m_minionDetailsScreen.ExitOut();
                        this.ExitOutBackgroundNormalSized();
                        addr246:
                        if(!_loc3_)
                        {
                           §§goto(addr253);
                        }
                     }
                  }
                  §§goto(addr294);
               }
               else
               {
                  addr216:
                  this.m_youMenu.ExitOut();
                  §§goto(addr253);
               }
            }
            else
            {
               §§goto(addr56);
            }
            §§goto(addr64);
         }
         else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_OVERVIEW_POPUP_MENU)
         {
            addr56:
            §§pop().ExitOut();
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr64);
            }
            else
            {
               addr205:
               this.m_minionPedia.ExitOut();
               if(!_loc3_)
               {
                  §§goto(addr253);
               }
            }
            addr296:
            var _loc1_:TimelineLite = new TimelineLite();
            if(!_loc3_)
            {
               _loc1_.append(new TweenLite(this.m_blackBackground,1,{
                  "alpha":0,
                  "onComplete":this.FinishClosingMenus
               }));
            }
            return;
            §§push(this.m_minionSelectMenu);
         }
         else
         {
            §§push(this.m_menuState);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() == TopDownMenuState.TOP_DOWN_MENU_MINION_STATS);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop());
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(!§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§pop();
                           §§push(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_MOVES);
                           if(_loc2_)
                           {
                              addr115:
                              if(!§§pop())
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                 }
                                 addr130:
                                 if(§§pop())
                                 {
                                    §§push(this.m_minionDetailsScreen);
                                    if(!_loc3_)
                                    {
                                       §§pop().ExitOut();
                                       if(_loc2_ || Boolean(this))
                                       {
                                          this.ExitOutBackgroundNormalSized();
                                          §§goto(addr253);
                                       }
                                       else
                                       {
                                          addr243:
                                          this.m_gemMenu.ExitOut();
                                          if(!_loc3_)
                                          {
                                             §§goto(addr246);
                                          }
                                       }
                                       §§goto(addr294);
                                    }
                                    §§goto(addr248);
                                 }
                                 else
                                 {
                                    if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_TALENT_TREE)
                                    {
                                       if(_loc2_)
                                       {
                                          this.m_talentTreeScreen.ExitOut();
                                          this.ExitOutBackgroundNormalSized();
                                       }
                                       else
                                       {
                                          addr183:
                                          this.ExitOutBackgroundNormalSized();
                                       }
                                    }
                                    else
                                    {
                                       addr168:
                                       if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_GEM_SELECT)
                                       {
                                          §§push(this.m_gemMenu);
                                          if(!_loc3_)
                                          {
                                             §§pop().ExitOut();
                                             if(_loc2_ || Boolean(_loc1_))
                                             {
                                                §§goto(addr183);
                                             }
                                             §§goto(addr296);
                                          }
                                          else
                                          {
                                             §§goto(addr243);
                                          }
                                       }
                                       else
                                       {
                                          §§push(this.m_menuState);
                                          §§push(TopDownMenuState.TOP_DOWN_MENU_MINION_PEDIA_MENU);
                                          if(_loc2_ || Boolean(this))
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   §§goto(addr205);
                                                }
                                                §§goto(addr253);
                                             }
                                             else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_YOU_MENU)
                                             {
                                                §§goto(addr216);
                                             }
                                             else
                                             {
                                                §§push(this.m_menuState);
                                                §§push(TopDownMenuState.TOP_DOWN_MENU_SETTINGS_MENU);
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   addr231:
                                                   if(§§pop() == §§pop())
                                                   {
                                                      this.m_settingsMenu.ExitOut();
                                                      §§goto(addr253);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.m_menuState);
                                                      §§push(TopDownMenuState.TOP_DOWN_MENU_MINION_GEM_SELECT_FROM_MINION_DETAILS);
                                                   }
                                                   §§goto(addr253);
                                                }
                                                if(§§pop() == §§pop())
                                                {
                                                   §§goto(addr243);
                                                }
                                                §§goto(addr253);
                                             }
                                             §§goto(addr253);
                                          }
                                          §§goto(addr231);
                                       }
                                    }
                                    §§goto(addr253);
                                 }
                              }
                              §§goto(addr130);
                           }
                           §§pop();
                           §§goto(addr130);
                           §§push(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_GEMS);
                        }
                     }
                  }
                  §§goto(addr115);
               }
               §§goto(addr130);
            }
            §§goto(addr168);
         }
         §§goto(addr253);
      }
      
      private function FinishClosingMenus() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.m_blackBackground.visible = false;
         }
      }
      
      public function UpdateFullFrames() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_ROOT)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  this.m_rootTopDownMenu.UpdateFullFrames();
               }
               else
               {
                  addr176:
                  this.m_minionDetailsScreen.UpdateFullFrames();
                  §§push(this.m_closeButton);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr188:
                     §§push(true);
                     if(_loc1_ || Boolean(this))
                     {
                        §§pop().m_isActive = §§pop();
                        addr303:
                        §§push(this.m_closeButton.m_isActive);
                        if(this.m_closeButton.m_isActive)
                        {
                           §§goto(addr316);
                        }
                        §§goto(addr335);
                     }
                     §§goto(addr303);
                  }
                  else
                  {
                     addr222:
                     §§push(true);
                  }
                  addr223:
                  §§pop().m_isActive = §§pop();
                  if(!_loc1_)
                  {
                     addr246:
                  }
               }
               §§goto(addr303);
            }
            else
            {
               §§push(this.m_menuState);
               §§push(TopDownMenuState.TOP_DOWN_MENU_MINION_OVERVIEW);
               if(!_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     §§push(this.m_minionSelectMenu);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§pop().UpdateFullFrames();
                        §§push(this.m_closeButton);
                        if(!_loc2_)
                        {
                           §§push(true);
                           if(!_loc2_)
                           {
                              §§pop().m_isActive = §§pop();
                              if(_loc2_ && _loc1_)
                              {
                                 addr203:
                                 this.m_talentTreeScreen.UpdateFullFrames();
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§push(this.m_closeButton);
                                    if(_loc1_ || _loc2_)
                                    {
                                       §§goto(addr222);
                                    }
                                    §§goto(addr303);
                                 }
                                 else
                                 {
                                    addr275:
                                    this.m_settingsMenu.Update();
                                    addr278:
                                 }
                              }
                           }
                           else
                           {
                              addr86:
                              §§pop().m_isActive = §§pop();
                              if(!(_loc2_ && _loc2_))
                              {
                                 this.m_minionSelectOptionsMenu.UpdateFullFrames();
                              }
                              else
                              {
                                 §§goto(addr278);
                              }
                           }
                           §§goto(addr303);
                        }
                        else
                        {
                           §§goto(addr188);
                        }
                     }
                     else
                     {
                        addr73:
                        §§pop().UpdateFullFrames();
                        §§push(this.m_closeButton);
                        if(_loc1_)
                        {
                           §§push(true);
                           if(_loc1_ || _loc1_)
                           {
                              §§goto(addr86);
                           }
                           else
                           {
                              §§goto(addr223);
                           }
                        }
                        else
                        {
                           §§goto(addr188);
                        }
                        §§goto(addr223);
                     }
                     §§goto(addr188);
                  }
                  else
                  {
                     §§push(this.m_menuState);
                     if(!_loc2_)
                     {
                        if(§§pop() == TopDownMenuState.TOP_DOWN_MENU_MINION_OVERVIEW_POPUP_MENU)
                        {
                           §§goto(addr73);
                           §§push(this.m_minionSelectMenu);
                        }
                        else
                        {
                           §§push(this.m_menuState);
                           if(!(_loc2_ && _loc1_))
                           {
                              §§push(TopDownMenuState.TOP_DOWN_MENU_MINION_STATS);
                              if(_loc1_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc1_)
                                          {
                                             §§pop();
                                             §§push(this.m_menuState);
                                             if(!_loc2_)
                                             {
                                                §§push(TopDownMenuState.TOP_DOWN_MENU_MINION_MOVES);
                                                if(_loc1_ || _loc1_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc1_)
                                                   {
                                                      addr142:
                                                      §§push(§§pop());
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§pop();
                                                            §§push(this.m_menuState);
                                                            if(!_loc2_)
                                                            {
                                                               §§push(TopDownMenuState.TOP_DOWN_MENU_MINION_GEMS);
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  §§goto(addr172);
                                                               }
                                                               §§goto(addr265);
                                                            }
                                                            §§goto(addr297);
                                                         }
                                                         §§goto(addr175);
                                                      }
                                                      §§goto(addr303);
                                                   }
                                                   §§goto(addr335);
                                                }
                                                §§goto(addr172);
                                             }
                                             §§goto(addr297);
                                          }
                                          §§goto(addr303);
                                       }
                                       §§goto(addr142);
                                    }
                                 }
                                 §§goto(addr303);
                              }
                              §§goto(addr281);
                           }
                           §§goto(addr272);
                        }
                        §§goto(addr303);
                     }
                     §§goto(addr272);
                  }
               }
               addr172:
               §§push(§§pop() == §§pop());
               if(!_loc2_)
               {
                  addr175:
                  if(§§pop())
                  {
                     §§goto(addr176);
                  }
                  else if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_TALENT_TREE)
                  {
                     §§goto(addr203);
                  }
                  else
                  {
                     §§push(this.m_menuState);
                     if(!_loc2_)
                     {
                        §§push(TopDownMenuState.TOP_DOWN_MENU_YOU_MENU);
                        if(_loc1_)
                        {
                           if(§§pop() == §§pop())
                           {
                              this.m_youMenu.Update();
                              if(_loc1_ || _loc1_)
                              {
                                 §§goto(addr246);
                              }
                              §§goto(addr303);
                           }
                           else
                           {
                              §§push(this.m_menuState);
                              if(_loc1_ || Boolean(this))
                              {
                                 §§push(TopDownMenuState.TOP_DOWN_MENU_MINION_PEDIA_MENU);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr265:
                                    if(§§pop() == §§pop())
                                    {
                                       this.m_minionPedia.Update();
                                       §§goto(addr303);
                                    }
                                    else
                                    {
                                       addr272:
                                       if(this.m_menuState == TopDownMenuState.TOP_DOWN_MENU_SETTINGS_MENU)
                                       {
                                          §§goto(addr275);
                                       }
                                       else
                                       {
                                          addr281:
                                          §§push(this.m_menuState);
                                          §§push(TopDownMenuState.TOP_DOWN_MENU_MINION_GEM_SELECT_FROM_MINION_DETAILS);
                                          if(_loc2_ && _loc2_)
                                          {
                                          }
                                          addr299:
                                          if(§§pop() == §§pop())
                                          {
                                             this.m_saveMenu.UpdateFullFrames();
                                          }
                                          §§goto(addr303);
                                       }
                                    }
                                    §§goto(addr303);
                                 }
                                 §§goto(addr299);
                              }
                              §§goto(addr272);
                           }
                        }
                        if(§§pop() == §§pop())
                        {
                           this.m_gemMenu.UpdateFullFrames();
                           §§goto(addr303);
                        }
                        else
                        {
                           addr297:
                           §§goto(addr299);
                           §§push(this.m_menuState);
                           §§push(TopDownMenuState.TOP_DOWN_MENU_SAVE_MENU);
                        }
                        §§goto(addr303);
                     }
                     §§goto(addr281);
                  }
                  §§goto(addr303);
               }
               §§goto(addr316);
            }
            return;
         }
         §§goto(addr73);
      }
   }
}
