package TopDown.Menus.YouMenu
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.TopDownMenuState;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class YouMenu extends Sprite
   {
       
      
      protected var m_background:Sprite;
      
      protected var m_informationBackgroundLeft:Sprite;
      
      protected var m_informationBackgroundRight:Sprite;
      
      protected var m_gemBackground:Sprite;
      
      protected var m_pendantBackground:Sprite;
      
      protected var m_charIcon:Sprite;
      
      private var m_charTextDisplays:Vector.<TextField>;
      
      private var m_charTextInformation:Vector.<TextField>;
      
      private var m_badgesTitle:TextField;
      
      protected var m_gemBadges:Vector.<Sprite>;
      
      protected var m_returnButton:TCButton;
      
      private var m_closeButton:TCButton;
      
      private var m_resetButton:TCButton;
      
      private var m_starIcon:Sprite;
      
      private var m_starsText:TextField;
      
      private var m_starUpgradeButtons:Vector.<StarUpgradeButton>;
      
      public function YouMenu()
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
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:Sprite = this;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_backgroundLarge");
         _loc1_.addChild(this.m_background);
         this.m_informationBackgroundLeft = Singleton.utility.m_spriteHandler.CreateSprite("menus_youMenu_yourInformationBackground");
         this.m_informationBackgroundLeft.x = 341 + 3;
         this.m_informationBackgroundLeft.y = 18 + 2;
         _loc1_.addChild(this.m_informationBackgroundLeft);
         if(!(_loc10_ && Boolean(this)))
         {
            this.m_informationBackgroundRight = Singleton.utility.m_spriteHandler.CreateSprite("menus_youMenu_yourInformationBackground");
            if(_loc9_)
            {
               this.m_informationBackgroundRight.x = 17 + 3;
               this.m_informationBackgroundRight.y = 18 + 2;
               _loc1_.addChild(this.m_informationBackgroundRight);
            }
            this.m_pendantBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_pendant");
            this.m_pendantBackground.x = 386;
            this.m_pendantBackground.y = 20;
            if(_loc9_)
            {
               _loc1_.addChild(this.m_pendantBackground);
               this.m_gemBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_youMenu_gemBackground");
               this.m_gemBackground.x = 15 + 3;
               if(_loc9_ || Boolean(_loc1_))
               {
                  this.m_gemBackground.y = 149 + 2;
                  if(_loc9_ || Boolean(this))
                  {
                     addr136:
                     _loc1_.addChild(this.m_gemBackground);
                     this.m_charIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemCombiner_male_charIcon");
                     this.m_charIcon.x = 35;
                     if(!_loc10_)
                     {
                        this.m_charIcon.y = 42;
                        if(!_loc10_)
                        {
                           _loc1_.addChild(this.m_charIcon);
                           this.m_returnButton = new TCButton(this.ReturnButtonPressed,"menus_returnButton");
                           §§push(this.m_returnButton);
                           if(!_loc10_)
                           {
                              §§push(3);
                              if(!(_loc10_ && Boolean(_loc1_)))
                              {
                                 §§pop().x = §§pop();
                                 addr185:
                                 §§push(this.m_returnButton);
                                 §§push(409);
                              }
                              §§pop().y = §§pop();
                              if(!_loc10_)
                              {
                                 _loc1_.addChild(this.m_returnButton);
                                 if(_loc9_ || _loc3_)
                                 {
                                    this.m_closeButton = new TCButton(this.CloseButtonPressed,"menus_exitButton");
                                    if(_loc9_ || _loc2_)
                                    {
                                       §§push(this.m_closeButton);
                                       if(!_loc10_)
                                       {
                                          §§push(624);
                                          if(_loc9_ || _loc3_)
                                          {
                                             §§pop().x = §§pop();
                                             addr229:
                                             §§push(this.m_closeButton);
                                             §§push(-23);
                                          }
                                          §§pop().y = §§pop();
                                          addr231:
                                          _loc1_.addChild(this.m_closeButton);
                                          if(_loc9_)
                                          {
                                             this.m_resetButton = new TCButton(this.ResetButtonPressed,"menus_youMenu_resetButton");
                                             addr244:
                                             §§push(this.m_resetButton);
                                             if(_loc9_ || _loc3_)
                                             {
                                                §§push(493);
                                                if(!(_loc10_ && Boolean(_loc1_)))
                                                {
                                                   §§pop().x = §§pop();
                                                   addr264:
                                                   §§push(this.m_resetButton);
                                                   §§push(287);
                                                }
                                                §§pop().y = §§pop();
                                                if(!(_loc10_ && Boolean(_loc1_)))
                                                {
                                                   addr273:
                                                   _loc1_.addChild(this.m_resetButton);
                                                   addr277:
                                                   this.m_starIcon = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenVictoryStar");
                                                   addr284:
                                                   this.m_starIcon.x = 546;
                                                   this.m_starIcon.y = 223;
                                                   _loc1_.addChild(this.m_starIcon);
                                                   this.m_charTextDisplays = new Vector.<TextField>(3);
                                                   if(_loc9_)
                                                   {
                                                      this.m_charTextInformation = new Vector.<TextField>(3);
                                                      addr312:
                                                      var _loc2_:TextFormat = new TextFormat();
                                                      if(!(_loc10_ && Boolean(this)))
                                                      {
                                                         _loc2_.color = 16382457;
                                                         if(_loc9_ || Boolean(_loc2_))
                                                         {
                                                            _loc2_.size = 20;
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               addr343:
                                                               _loc2_.font = "BurbinCasual";
                                                               if(!_loc10_)
                                                               {
                                                                  addr348:
                                                                  _loc2_.align = TextFormatAlign.CENTER;
                                                               }
                                                               var _loc3_:int = 0;
                                                               do
                                                               {
                                                                  if(_loc3_ >= 3)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        addr555:
                                                                        this.m_charTextDisplays[0].text = "Name";
                                                                        this.m_charTextDisplays[1].text = "Money";
                                                                        if(_loc9_)
                                                                        {
                                                                           this.m_charTextDisplays[2].text = "Minion-Pedia";
                                                                           addr575:
                                                                           this.m_charTextInformation[0].text = "(name)";
                                                                           if(!(_loc10_ && Boolean(_loc1_)))
                                                                           {
                                                                              this.m_charTextInformation[1].text = "$100";
                                                                              this.m_charTextInformation[2].text = "0";
                                                                              this.m_badgesTitle = new TextField();
                                                                              if(_loc9_)
                                                                              {
                                                                                 this.m_badgesTitle.embedFonts = true;
                                                                                 this.m_badgesTitle.defaultTextFormat = _loc2_;
                                                                                 if(_loc9_ || Boolean(this))
                                                                                 {
                                                                                    this.m_badgesTitle.wordWrap = true;
                                                                                    this.m_badgesTitle.autoSize = TextFieldAutoSize.CENTER;
                                                                                    addr630:
                                                                                    this.m_badgesTitle.text = "Your Seals";
                                                                                    this.m_badgesTitle.width = 150;
                                                                                    this.m_badgesTitle.x = 328;
                                                                                    this.m_badgesTitle.y = 22;
                                                                                    addr646:
                                                                                    this.m_badgesTitle.selectable = false;
                                                                                    addr650:
                                                                                    _loc1_.addChild(this.m_badgesTitle);
                                                                                    this.m_starsText = new TextField();
                                                                                    this.m_starsText.embedFonts = true;
                                                                                    _loc2_.size = 40;
                                                                                    if(_loc9_ || Boolean(this))
                                                                                    {
                                                                                       addr672:
                                                                                       _loc2_.align = TextFormatAlign.RIGHT;
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          this.m_starsText.defaultTextFormat = _loc2_;
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             addr684:
                                                                                             this.m_starsText.wordWrap = true;
                                                                                             if(_loc9_ || Boolean(_loc2_))
                                                                                             {
                                                                                                this.m_starsText.autoSize = TextFieldAutoSize.CENTER;
                                                                                                this.m_starsText.text = "999";
                                                                                                if(_loc9_ || Boolean(_loc3_))
                                                                                                {
                                                                                                   addr711:
                                                                                                   this.m_starsText.width = 150;
                                                                                                   break;
                                                                                                }
                                                                                                addr747:
                                                                                                var _loc4_:Array = new Array("menus_plantMedallion","menus_fireMedallion","menus_electricMedallion","menus_undeadMedallion","menus_plantWizardMedallion","menus_undeadWizardMedallion");
                                                                                                var _loc5_:int = 0;
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc5_ < 6)
                                                                                                      {
                                                                                                         this.m_gemBadges[_loc5_] = Singleton.utility.m_spriteHandler.CreateSprite(_loc4_[_loc5_]);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            this.m_gemBadges[_loc5_].x = 396 + 28 * _loc5_;
                                                                                                            if(!(_loc9_ || Boolean(_loc1_)))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      var _loc6_:Array = new Array(this.StarUpgradeButtonPressed1,this.StarUpgradeButtonPressed2,this.StarUpgradeButtonPressed3,this.StarUpgradeButtonPressed4,this.StarUpgradeButtonPressed5,this.StarUpgradeButtonPressed6,this.StarUpgradeButtonPressed7,this.StarUpgradeButtonPressed8);
                                                                                                      var _loc7_:Array = new Array("menus_youMenu_starUpgradeButtonHealth","menus_youMenu_starUpgradeButtonEnergy","menus_youMenu_starUpgradeButtonAttack","menus_youMenu_starUpgradeButtonHealing","menus_youMenu_starUpgradeButtonMinionSpeed","menus_youMenu_starUpgradeButtonWalkSpeed","menus_youMenu_starUpgradeButtonXP","menus_youMenu_starUpgradeButtonExtraMoney");
                                                                                                      var _loc8_:int = 0;
                                                                                                      if(!(_loc10_ && Boolean(this)))
                                                                                                      {
                                                                                                         loop2:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            loop3:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(8);
                                                                                                               loop4:
                                                                                                               while(§§pop() < §§pop())
                                                                                                               {
                                                                                                                  this.m_starUpgradeButtons[_loc8_] = new StarUpgradeButton(_loc6_[_loc8_],_loc8_,_loc7_[_loc8_]);
                                                                                                                  this.m_starUpgradeButtons[_loc8_].LoadSprites();
                                                                                                                  _loc1_.addChild(this.m_starUpgradeButtons[_loc8_]);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc8_);
                                                                                                                     if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                     {
                                                                                                                        §§push(4);
                                                                                                                        if(!(_loc10_ && Boolean(this)))
                                                                                                                        {
                                                                                                                           if(§§pop() < §§pop())
                                                                                                                           {
                                                                                                                              this.m_starUpgradeButtons[_loc8_].x = 63 + 90 * _loc8_;
                                                                                                                              this.m_starUpgradeButtons[_loc8_].y = 182;
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              this.m_starUpgradeButtons[_loc8_].x = 63 + 90 * (_loc8_ - 4);
                                                                                                                              this.m_starUpgradeButtons[_loc8_].y = 192 + 100;
                                                                                                                              if(!(_loc9_ || Boolean(_loc2_)))
                                                                                                                              {
                                                                                                                                 break loop4;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     continue loop3;
                                                                                                                  }
                                                                                                               }
                                                                                                               this.visible = false;
                                                                                                               return;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr887);
                                                                                                   }
                                                                                                   addr813:
                                                                                                   this.m_starUpgradeButtons = new Vector.<StarUpgradeButton>(8);
                                                                                                   §§goto(addr820);
                                                                                                   addr808:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   this.m_gemBadges[_loc5_].y = 62;
                                                                                                   _loc1_.addChild(this.m_gemBadges[_loc5_]);
                                                                                                   _loc5_++;
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§goto(addr808);
                                                                                                   }
                                                                                                   §§goto(addr813);
                                                                                                }
                                                                                             }
                                                                                             addr734:
                                                                                             _loc1_.addChild(this.m_starsText);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                addr740:
                                                                                                this.m_gemBadges = new Vector.<Sprite>(6);
                                                                                             }
                                                                                             §§goto(addr747);
                                                                                          }
                                                                                          addr723:
                                                                                          this.m_starsText.selectable = false;
                                                                                          if(!(_loc10_ && Boolean(this)))
                                                                                          {
                                                                                             §§goto(addr734);
                                                                                          }
                                                                                          §§goto(addr747);
                                                                                       }
                                                                                       §§goto(addr740);
                                                                                    }
                                                                                    §§goto(addr734);
                                                                                 }
                                                                                 §§goto(addr711);
                                                                              }
                                                                              §§goto(addr684);
                                                                           }
                                                                           §§goto(addr672);
                                                                        }
                                                                        §§goto(addr650);
                                                                     }
                                                                     §§goto(addr747);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc2_.align = TextFormatAlign.LEFT;
                                                                     this.m_charTextDisplays[_loc3_] = new TextField();
                                                                     this.m_charTextDisplays[_loc3_].embedFonts = true;
                                                                     this.m_charTextDisplays[_loc3_].defaultTextFormat = _loc2_;
                                                                     this.m_charTextDisplays[_loc3_].wordWrap = true;
                                                                     this.m_charTextDisplays[_loc3_].autoSize = TextFieldAutoSize.CENTER;
                                                                     if(!(_loc9_ || Boolean(_loc3_)))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     this.m_charTextDisplays[_loc3_].text = "temp";
                                                                     if(_loc9_)
                                                                     {
                                                                        this.m_charTextDisplays[_loc3_].width = 150;
                                                                        this.m_charTextDisplays[_loc3_].x = 115;
                                                                        if(_loc9_ || Boolean(this))
                                                                        {
                                                                           this.m_charTextDisplays[_loc3_].y = 38 + _loc3_ * 30;
                                                                           this.m_charTextDisplays[_loc3_].selectable = false;
                                                                           if(!(_loc10_ && Boolean(_loc2_)))
                                                                           {
                                                                              _loc1_.addChild(this.m_charTextDisplays[_loc3_]);
                                                                              _loc2_.align = TextFormatAlign.CENTER;
                                                                              if(!_loc10_)
                                                                              {
                                                                                 this.m_charTextInformation[_loc3_] = new TextField();
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    this.m_charTextInformation[_loc3_].embedFonts = true;
                                                                                    this.m_charTextInformation[_loc3_].defaultTextFormat = _loc2_;
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       addr489:
                                                                                       this.m_charTextInformation[_loc3_].wordWrap = true;
                                                                                       this.m_charTextInformation[_loc3_].autoSize = TextFieldAutoSize.CENTER;
                                                                                       this.m_charTextInformation[_loc3_].text = "temp";
                                                                                       this.m_charTextInformation[_loc3_].width = 150;
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr575);
                                                                                 }
                                                                                 §§goto(addr630);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr555);
                                                                              }
                                                                           }
                                                                           §§goto(addr489);
                                                                        }
                                                                        break;
                                                                     }
                                                                  }
                                                                  §§goto(addr646);
                                                               }
                                                               while(this.m_charTextInformation[_loc3_].x = 213, this.m_charTextInformation[_loc3_].y = 38 + _loc3_ * 30, this.m_charTextInformation[_loc3_].selectable = false, _loc1_.addChild(this.m_charTextInformation[_loc3_]), _loc3_++, _loc9_ || Boolean(this));
                                                               
                                                               this.m_starsText.x = 395;
                                                               this.m_starsText.y = 226;
                                                               §§goto(addr723);
                                                            }
                                                            §§goto(addr348);
                                                         }
                                                      }
                                                      §§goto(addr343);
                                                   }
                                                   §§goto(addr312);
                                                }
                                                §§goto(addr277);
                                             }
                                             §§goto(addr264);
                                          }
                                          §§goto(addr244);
                                       }
                                       §§goto(addr229);
                                    }
                                    §§goto(addr277);
                                 }
                                 §§goto(addr231);
                              }
                              §§goto(addr312);
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr284);
                     }
                  }
                  §§goto(addr273);
               }
               §§goto(addr244);
            }
            §§goto(addr136);
         }
         §§goto(addr273);
      }
      
      public function BringIn() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.removeChild(this.m_charIcon);
         if(!(_loc2_ && _loc2_))
         {
            §§push(Singleton.dynamicData);
            if(!_loc2_)
            {
               if(§§pop().m_isMale)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     this.m_charIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemCombiner_male_charIcon");
                  }
                  addr64:
                  this.m_charIcon.y = 22;
                  if(_loc3_)
                  {
                     this.addChild(this.m_charIcon);
                     this.m_charTextInformation[1].text = "$" + Singleton.dynamicData.m_currMoney;
                     if(!_loc2_)
                     {
                        this.m_charTextInformation[0].text = Singleton.dynamicData.m_characterName;
                     }
                     §§push(Singleton.utility);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop().m_screenControllers);
                        if(_loc3_)
                        {
                           §§push(§§pop().m_topDownScreen);
                           if(_loc3_)
                           {
                              addr131:
                              §§push(§§pop().m_topDownMenuScreen);
                              if(_loc3_)
                              {
                                 §§pop().m_menuState = TopDownMenuState.TOP_DOWN_MENU_YOU_MENU;
                                 addr126:
                                 §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen);
                              }
                              §§pop().ApplyMenuBringInAnimationJustFade(this);
                              Singleton.dynamicData.CalculateTotatNumberOfAvailbleStars();
                              addr132:
                              this.UpdateStars();
                              var _loc1_:int = 0;
                              loop0:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 loop1:
                                 while(true)
                                 {
                                    §§push(6);
                                    while(§§pop() < §§pop())
                                    {
                                       this.m_gemBadges[_loc1_].visible = false;
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          §§push(_loc1_);
                                          if(!(_loc3_ || Boolean(this)))
                                          {
                                             continue loop1;
                                          }
                                          §§push(Singleton.dynamicData.GetTotalSageSeals());
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          if(§§pop() < §§pop())
                                          {
                                             if(_loc2_ && Boolean(this))
                                             {
                                                continue loop0;
                                             }
                                             this.m_gemBadges[_loc1_].visible = true;
                                             if(!(_loc3_ || _loc3_))
                                             {
                                                continue loop0;
                                             }
                                          }
                                       }
                                       _loc1_++;
                                       if(_loc2_ && _loc3_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    return;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr132);
               }
               else
               {
                  this.m_charIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemCombiner_female_charIcon");
               }
               this.m_charIcon.x = 23;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  §§goto(addr64);
               }
               §§goto(addr132);
            }
            §§goto(addr131);
         }
         §§goto(addr64);
      }
      
      private function UpdateStars() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.m_starsText.text = "" + Singleton.dynamicData.m_numOfAvailbleStars;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_starUpgradeButtons.length)
         {
            this.m_starUpgradeButtons[_loc1_].UpdateInformationNeeded(Singleton.dynamicData.GetStarUpgradeCost(_loc1_),Singleton.dynamicData.GetStarUpgradeAmount(_loc1_));
            if(!(_loc2_ || Boolean(_loc1_)))
            {
               break;
            }
            _loc1_++;
            if(_loc3_)
            {
               break;
            }
         }
      }
      
      public function ExitOut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimationJustFade(this);
         }
      }
      
      public function Update() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.m_closeButton.m_isActive = true;
            if(!(_loc2_ && _loc1_))
            {
               this.m_returnButton.m_isActive = true;
               if(!(_loc2_ && _loc3_))
               {
                  addr38:
                  this.m_resetButton.m_isActive = true;
               }
            }
            var _loc1_:int = 0;
            loop0:
            while(true)
            {
               §§push(_loc1_);
               while(§§pop() < this.m_starUpgradeButtons.length)
               {
                  this.m_starUpgradeButtons[_loc1_].m_starUpgradeButton.m_isActive = true;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§push(Singleton.dynamicData.m_numOfAvailbleStars);
                     if(_loc3_)
                     {
                        if(§§pop() >= Singleton.dynamicData.GetStarUpgradeCost(_loc1_))
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr84:
                              this.m_starUpgradeButtons[_loc1_].alpha = 1;
                              if(_loc3_)
                              {
                              }
                              break;
                           }
                           continue loop0;
                        }
                        this.m_starUpgradeButtons[_loc1_].alpha = 0.5;
                        if(!(_loc3_ || Boolean(_loc1_)))
                        {
                           continue loop0;
                        }
                        _loc1_++;
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     continue;
                  }
                  §§goto(addr84);
               }
               return;
            }
         }
         §§goto(addr38);
      }
      
      public function CloseButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.CloseMenus();
         }
      }
      
      public function ReturnButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(param1))
         {
            this.ExitOut();
            if(_loc3_ || _loc2_)
            {
               §§push(Singleton.utility);
               if(!_loc2_)
               {
                  §§push(§§pop().m_screenControllers);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§push(§§pop().m_topDownScreen);
                     if(!_loc2_)
                     {
                        §§push(§§pop().m_topDownMenuScreen);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§pop().m_menuState = TopDownMenuState.TOP_DOWN_MENU_ROOT;
                           if(!_loc2_)
                           {
                              addr77:
                              Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_rootTopDownMenu.BringIn();
                           }
                           return;
                        }
                     }
                  }
               }
               §§goto(addr77);
            }
         }
         §§goto(addr77);
      }
      
      public function ResetButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(param1))
         {
            §§push(Singleton.dynamicData);
            if(_loc2_)
            {
               §§pop().ResetStarUpgradeAmounts();
               §§goto(addr51);
            }
            §§pop().CalculateTotatNumberOfAvailbleStars();
            if(_loc2_ || _loc3_)
            {
               this.UpdateStars();
            }
         }
         addr51:
         if(!(_loc3_ && _loc2_))
         {
            §§push(Singleton.dynamicData);
         }
      }
      
      public function StarUpgradePressed(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Singleton.dynamicData);
            if(_loc3_)
            {
               if(§§pop().m_numOfAvailbleStars < Singleton.dynamicData.GetStarUpgradeCost(param1))
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     §§goto(addr33);
                  }
               }
               §§push(Singleton.dynamicData);
               if(_loc3_ || _loc3_)
               {
                  addr52:
                  §§push(Singleton.dynamicData.m_numOfSpentStars);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§pop().m_numOfSpentStars = §§pop() + Singleton.dynamicData.GetStarUpgradeCost(param1);
                     if(_loc3_ || Boolean(param1))
                     {
                        addr85:
                        Singleton.dynamicData.AddOneToStarUpgradeAmount(param1);
                        if(!_loc2_)
                        {
                           this.UpdateStars();
                        }
                     }
                     return;
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr52);
         }
         addr33:
      }
      
      public function StarUpgradeButtonPressed1(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.StarUpgradePressed(0);
         }
      }
      
      public function StarUpgradeButtonPressed2(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(this))
         {
            this.StarUpgradePressed(1);
         }
      }
      
      public function StarUpgradeButtonPressed3(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.StarUpgradePressed(2);
         }
      }
      
      public function StarUpgradeButtonPressed4(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(this))
         {
            this.StarUpgradePressed(3);
         }
      }
      
      public function StarUpgradeButtonPressed5(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.StarUpgradePressed(4);
         }
      }
      
      public function StarUpgradeButtonPressed6(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.StarUpgradePressed(5);
         }
      }
      
      public function StarUpgradeButtonPressed7(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.StarUpgradePressed(6);
         }
      }
      
      public function StarUpgradeButtonPressed8(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.StarUpgradePressed(7);
         }
      }
   }
}
