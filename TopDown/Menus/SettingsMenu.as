package TopDown.Menus
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.BaseInterfacePieces.ToggleButton;
   import States.TopDownMenuState;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class SettingsMenu extends Sprite
   {
       
      
      private var m_background:Sprite;
      
      private var m_innerBackground:Sprite;
      
      private var m_returnButton:TCButton;
      
      private var m_closeButton:TCButton;
      
      private var m_settingsTitle:TextField;
      
      private var m_settingTexts:Vector.<TextField>;
      
      private var m_toggleButtons:Vector.<ToggleButton>;
      
      private var m_graphicSettingIcons:Vector.<Sprite>;
      
      private var m_nextGraphicSettingButton:TCButton;
      
      private var m_prevGraphicSettingButton:TCButton;
      
      public function SettingsMenu()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_backgroundMedium");
         if(!(_loc8_ && _loc2_))
         {
            addChild(this.m_background);
            this.m_innerBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_skillTree_background");
            this.m_innerBackground.x = 17;
         }
         this.m_innerBackground.y = 21;
         if(_loc7_ || _loc3_)
         {
            addChild(this.m_innerBackground);
            if(!(_loc8_ && _loc2_))
            {
               this.m_returnButton = new TCButton(this.ReturnButtonPressed,"menus_returnButton");
               if(!_loc8_)
               {
                  §§push(this.m_returnButton);
                  if(!_loc8_)
                  {
                     §§push(2);
                     if(_loc7_ || Boolean(this))
                     {
                        §§pop().x = §§pop();
                        addr88:
                        §§push(this.m_returnButton);
                        §§push(356);
                     }
                     §§pop().y = §§pop();
                     if(_loc7_)
                     {
                        addChild(this.m_returnButton);
                        if(_loc7_ || _loc1_)
                        {
                           addr103:
                           this.m_closeButton = new TCButton(this.CloseButtonPressed,"menus_exitButton");
                           §§push(this.m_closeButton);
                           if(_loc7_ || _loc2_)
                           {
                              §§push(296);
                              if(_loc7_ || _loc2_)
                              {
                                 §§pop().x = §§pop();
                                 addr130:
                                 §§push(this.m_closeButton);
                                 §§push(-22);
                              }
                              §§pop().y = §§pop();
                              addr132:
                              addChild(this.m_closeButton);
                              addr136:
                              var _loc1_:TextFormat = new TextFormat();
                              _loc1_.color = 16448250;
                              if(!(_loc8_ && _loc2_))
                              {
                                 _loc1_.size = 28;
                                 if(_loc7_ || Boolean(_loc1_))
                                 {
                                    _loc1_.font = "BurbinCasual";
                                    _loc1_.align = TextFormatAlign.CENTER;
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       this.m_settingsTitle = new TextField();
                                       if(!(_loc8_ && Boolean(this)))
                                       {
                                          addr185:
                                          this.m_settingsTitle.embedFonts = true;
                                          this.m_settingsTitle.defaultTextFormat = _loc1_;
                                          this.m_settingsTitle.wordWrap = true;
                                          this.m_settingsTitle.autoSize = TextFieldAutoSize.CENTER;
                                          if(_loc7_)
                                          {
                                             this.m_settingsTitle.text = "Settings";
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                addr215:
                                                this.m_settingsTitle.width = 150;
                                                if(!(_loc8_ && _loc2_))
                                                {
                                                   addr226:
                                                   this.m_settingsTitle.x = 107;
                                                   if(!_loc8_)
                                                   {
                                                      addr232:
                                                      this.m_settingsTitle.y = 40;
                                                      this.m_settingsTitle.selectable = false;
                                                      if(!_loc8_)
                                                      {
                                                         addr242:
                                                         addChild(this.m_settingsTitle);
                                                      }
                                                   }
                                                   §§goto(addr242);
                                                }
                                                var _loc2_:Array = new Array("Sound","Music","Tips","Quality");
                                                var _loc3_:Array = new Array(this.SoundButtonToggled,this.MusicButtonToggled,this.TutorialsButtonToggled);
                                                if(_loc7_ || Boolean(this))
                                                {
                                                   this.m_settingTexts = new Vector.<TextField>(4);
                                                   if(!(_loc8_ && Boolean(this)))
                                                   {
                                                      addr285:
                                                      this.m_toggleButtons = new Vector.<ToggleButton>(3);
                                                   }
                                                   var _loc4_:int = 0;
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      while(§§pop() < this.m_settingTexts.length)
                                                      {
                                                         this.m_settingTexts[_loc4_] = new TextField();
                                                         if(_loc7_ || Boolean(this))
                                                         {
                                                            this.m_settingTexts[_loc4_].embedFonts = true;
                                                            _loc1_.size = 22;
                                                            _loc1_.align = TextFormatAlign.LEFT;
                                                            if(_loc7_ || Boolean(_loc3_))
                                                            {
                                                               this.m_settingTexts[_loc4_].defaultTextFormat = _loc1_;
                                                               this.m_settingTexts[_loc4_].wordWrap = true;
                                                               this.m_settingTexts[_loc4_].autoSize = TextFieldAutoSize.LEFT;
                                                               this.m_settingTexts[_loc4_].text = _loc2_[_loc4_];
                                                               this.m_settingTexts[_loc4_].width = 150;
                                                               if(!_loc8_)
                                                               {
                                                                  this.m_settingTexts[_loc4_].x = 86;
                                                                  addr377:
                                                                  this.m_settingTexts[_loc4_].y = 84 + _loc4_ * 38;
                                                                  if(_loc7_ || Boolean(this))
                                                                  {
                                                                     this.m_settingTexts[_loc4_].selectable = false;
                                                                     if(!_loc8_)
                                                                     {
                                                                        addr402:
                                                                        addChild(this.m_settingTexts[_loc4_]);
                                                                        if(!(_loc7_ || Boolean(_loc2_)))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(_loc4_);
                                                                        if(!(_loc8_ && Boolean(this)))
                                                                        {
                                                                           if(§§pop() < this.m_toggleButtons.length)
                                                                           {
                                                                              if(_loc8_ && Boolean(_loc1_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              this.m_toggleButtons[_loc4_] = new ToggleButton(_loc3_[_loc4_],"menus_settings_onButton","menus_settings_offButton");
                                                                              addr445:
                                                                              this.m_toggleButtons[_loc4_].x = 200;
                                                                              if(_loc8_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              this.m_toggleButtons[_loc4_].y = 90 + _loc4_ * 38;
                                                                              addr463:
                                                                              addChild(this.m_toggleButtons[_loc4_]);
                                                                           }
                                                                           _loc4_++;
                                                                           continue loop0;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr445);
                                                                  }
                                                                  §§goto(addr463);
                                                               }
                                                               §§goto(addr402);
                                                            }
                                                            §§goto(addr377);
                                                         }
                                                         §§goto(addr463);
                                                      }
                                                      var _loc5_:Array = new Array("menus_settings_graphicSetting_low","menus_settings_graphicSetting_mid","menus_settings_graphicSetting_high");
                                                      if(_loc7_)
                                                      {
                                                         this.m_graphicSettingIcons = new Vector.<Sprite>(3);
                                                      }
                                                      var _loc6_:int = 0;
                                                      while(_loc6_ < this.m_graphicSettingIcons.length)
                                                      {
                                                         this.m_graphicSettingIcons[_loc6_] = Singleton.utility.m_spriteHandler.CreateSprite(_loc5_[_loc6_]);
                                                         this.m_graphicSettingIcons[_loc6_].x = 209;
                                                         if(!_loc8_)
                                                         {
                                                            this.m_graphicSettingIcons[_loc6_].y = 202;
                                                         }
                                                         addChild(this.m_graphicSettingIcons[_loc6_]);
                                                         _loc6_++;
                                                      }
                                                      this.m_nextGraphicSettingButton = new TCButton(this.NextGraphicSetting,"menus_settings_nextGraphicSetting");
                                                      if(_loc7_)
                                                      {
                                                         §§push(this.m_nextGraphicSettingButton);
                                                         if(!_loc8_)
                                                         {
                                                            §§push(262);
                                                            if(!(_loc8_ && Boolean(_loc1_)))
                                                            {
                                                               §§pop().x = §§pop();
                                                               addr556:
                                                               §§push(this.m_nextGraphicSettingButton);
                                                               §§push(203);
                                                            }
                                                            §§pop().y = §§pop();
                                                            addChild(this.m_nextGraphicSettingButton);
                                                            this.m_prevGraphicSettingButton = new TCButton(this.PrevGraphicSetting,"menus_settings_nextGraphicSetting");
                                                            §§push(this.m_prevGraphicSettingButton);
                                                            if(_loc7_)
                                                            {
                                                               §§push(207);
                                                               if(!_loc8_)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  if(_loc7_ || Boolean(_loc3_))
                                                                  {
                                                                     §§push(this.m_prevGraphicSettingButton);
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(203);
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§pop().y = §§pop();
                                                                           §§goto(addr602);
                                                                        }
                                                                        addr602:
                                                                        this.m_prevGraphicSettingButton.scaleX = -1;
                                                                        §§goto(addr601);
                                                                     }
                                                                     addr601:
                                                                     if(_loc7_)
                                                                     {
                                                                        addChild(this.m_prevGraphicSettingButton);
                                                                        if(_loc7_)
                                                                        {
                                                                           addr611:
                                                                           visible = false;
                                                                        }
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr611);
                                                               }
                                                            }
                                                            §§goto(addr602);
                                                         }
                                                      }
                                                      §§goto(addr556);
                                                   }
                                                }
                                                §§goto(addr285);
                                             }
                                          }
                                          §§goto(addr232);
                                       }
                                       §§goto(addr215);
                                    }
                                    §§goto(addr242);
                                 }
                                 §§goto(addr226);
                              }
                              §§goto(addr185);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr103);
                  }
               }
               §§goto(addr88);
            }
            §§goto(addr103);
         }
         §§goto(addr132);
      }
      
      public function BringIn() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(Singleton.utility);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop().m_screenControllers);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(§§pop().m_topDownScreen);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(§§pop().m_topDownMenuScreen);
                     if(_loc2_)
                     {
                        §§pop().m_menuState = TopDownMenuState.TOP_DOWN_MENU_SETTINGS_MENU;
                        this.m_toggleButtons[0].m_isToggleOn = Singleton.dynamicData.m_isSoundOn;
                        if(!(_loc1_ && _loc1_))
                        {
                           this.m_toggleButtons[1].m_isToggleOn = Singleton.dynamicData.m_isMusicOn;
                           addr69:
                        }
                        this.m_toggleButtons[2].m_isToggleOn = Singleton.dynamicData.m_areTutorialsOn;
                        this.UpdateGraphicAdjuster();
                        if(_loc2_)
                        {
                           addr101:
                           Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimationJustFade(this);
                        }
                        return;
                     }
                  }
               }
            }
            §§goto(addr101);
         }
         §§goto(addr69);
      }
      
      public function ExitOut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimationJustFade(this);
         }
      }
      
      public function Update() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.m_closeButton.m_isActive = true;
            if(_loc3_)
            {
               addr27:
               this.m_returnButton.m_isActive = true;
            }
            var _loc1_:int = 0;
            do
            {
               if(_loc1_ < this.m_toggleButtons.length)
               {
                  continue;
               }
               §§push(this.m_nextGraphicSettingButton);
               if(!_loc2_)
               {
                  if(§§pop().visible)
                  {
                     if(_loc3_)
                     {
                        addr72:
                        this.m_nextGraphicSettingButton.m_isActive = true;
                        if(_loc3_)
                        {
                           addr76:
                           §§push(this.m_prevGraphicSettingButton);
                           if(_loc3_)
                           {
                              if(§§pop().visible)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                              }
                              §§goto(addr88);
                           }
                           §§pop().m_isActive = true;
                        }
                     }
                     addr88:
                     return;
                  }
                  §§goto(addr76);
               }
               §§goto(addr72);
            }
            while(this.m_toggleButtons[_loc1_].Update(), _loc1_++, _loc3_);
            
            §§goto(addr76);
            §§push(this.m_prevGraphicSettingButton);
         }
         §§goto(addr27);
      }
      
      public function SoundButtonToggled() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            Singleton.dynamicData.m_isSoundOn = this.m_toggleButtons[0].m_isToggleOn;
         }
      }
      
      public function MusicButtonToggled() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            Singleton.dynamicData.m_isMusicOn = this.m_toggleButtons[1].m_isToggleOn;
         }
      }
      
      public function TutorialsButtonToggled() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            Singleton.dynamicData.m_areTutorialsOn = this.m_toggleButtons[2].m_isToggleOn;
         }
      }
      
      public function NextGraphicSetting(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            var _loc2_:*;
            §§push((_loc2_ = Singleton.dynamicData).m_graphicsLevel);
            if(!_loc5_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && _loc3_))
            {
               _loc2_.m_graphicsLevel = _loc3_;
            }
            if(_loc4_)
            {
               this.UpdateGraphicAdjuster();
            }
         }
      }
      
      public function PrevGraphicSetting(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            var _loc2_:*;
            §§push((_loc2_ = Singleton.dynamicData).m_graphicsLevel);
            if(!_loc5_)
            {
               §§push(§§pop() - 1);
            }
            var _loc3_:* = §§pop();
            if(!_loc5_)
            {
               _loc2_.m_graphicsLevel = _loc3_;
            }
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               this.UpdateGraphicAdjuster();
            }
         }
      }
      
      private function UpdateGraphicAdjuster() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() >= this.m_graphicSettingIcons.length)
               {
                  this.m_graphicSettingIcons[Singleton.dynamicData.m_graphicsLevel].visible = true;
                  §§push(Singleton.dynamicData);
                  if(!_loc4_)
                  {
                     §§push(§§pop().m_graphicsLevel);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(2);
                        if(!(_loc4_ && Boolean(_loc1_)))
                        {
                           if(§§pop() == §§pop())
                           {
                              §§push(this.m_nextGraphicSettingButton);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(false);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§pop().visible = §§pop();
                                 }
                                 else
                                 {
                                    addr89:
                                    §§pop().visible = §§pop();
                                 }
                                 §§push(Singleton.dynamicData);
                                 if(_loc3_ || Boolean(this))
                                 {
                                    §§push(§§pop().m_graphicsLevel);
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr108:
                                       if(§§pop() == 0)
                                       {
                                          if(_loc3_ || Boolean(_loc1_))
                                          {
                                             addr116:
                                             §§push(this.m_prevGraphicSettingButton);
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(false);
                                                if(_loc3_ || Boolean(this))
                                                {
                                                   §§pop().visible = §§pop();
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      addr148:
                                                   }
                                                }
                                                else
                                                {
                                                   addr152:
                                                   §§pop().visible = §§pop();
                                                }
                                                addr195:
                                                §§push(Singleton.dynamicData.m_graphicsLevel);
                                                if(_loc3_ || Boolean(_loc1_))
                                                {
                                                   break;
                                                }
                                                §§goto(addr260);
                                             }
                                             addr151:
                                             §§push(true);
                                             §§goto(addr152);
                                          }
                                          §§goto(addr148);
                                       }
                                       else
                                       {
                                          §§push(this.m_prevGraphicSettingButton);
                                       }
                                       §§goto(addr151);
                                    }
                                    addr260:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §§push(Singleton.utility);
                                          if(_loc3_ || Boolean(_loc1_))
                                          {
                                             §§pop().m_stage.quality = "low";
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             break;
                                          }
                                          addr180:
                                          §§pop().m_stage.quality = "medium";
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          addr192:
                                          break;
                                       case 1:
                                          §§push(Singleton.utility);
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§goto(addr180);
                                          }
                                          else
                                          {
                                             addr189:
                                             §§pop().m_stage.quality = "high";
                                          }
                                          §§goto(addr192);
                                       default:
                                          §§goto(addr189);
                                          §§push(Singleton.utility);
                                    }
                                    return;
                                 }
                                 §§goto(addr195);
                              }
                              else
                              {
                                 addr88:
                                 §§push(true);
                              }
                              §§goto(addr89);
                           }
                           else
                           {
                              §§push(this.m_nextGraphicSettingButton);
                           }
                           §§goto(addr88);
                        }
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr195);
               }
               else
               {
                  this.m_graphicSettingIcons[_loc1_].visible = false;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     continue;
                  }
               }
               §§goto(addr116);
            }
            break;
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(0);
            if(_loc3_ || Boolean(_loc1_))
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        addr230:
                        §§push(0);
                        if(!_loc4_)
                        {
                           addr259:
                           §§goto(addr195);
                        }
                        else
                        {
                           addr249:
                           if(§§pop() !== _loc2_)
                           {
                              §§goto(addr259);
                              §§push(2);
                           }
                           §§goto(addr259);
                        }
                     }
                     §§push(1);
                     if(_loc4_)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§goto(addr249);
                     }
                  }
                  §§goto(addr259);
               }
            }
            §§goto(addr249);
         }
         §§goto(addr230);
      }
      
      public function CloseButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.CloseMenus();
         }
      }
      
      public function ReturnButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.ExitOut();
            if(!_loc2_)
            {
               §§push(Singleton.utility);
               if(!_loc2_)
               {
                  §§push(§§pop().m_screenControllers);
                  if(_loc3_ || Boolean(param1))
                  {
                     §§push(§§pop().m_topDownScreen);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop().m_topDownMenuScreen);
                        if(_loc3_)
                        {
                           §§pop().m_menuState = TopDownMenuState.TOP_DOWN_MENU_ROOT;
                           §§goto(addr69);
                        }
                        §§pop().m_rootTopDownMenu.BringIn();
                        §§goto(addr69);
                     }
                  }
               }
            }
            §§goto(addr66);
         }
         addr69:
         if(!_loc2_)
         {
            addr66:
            §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen);
         }
      }
   }
}
