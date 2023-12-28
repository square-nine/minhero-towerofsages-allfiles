package TopDown.Menus
{
   import PresistentData.StaticData;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.Gems.GemSelector;
   import States.TopDownStates;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class BaseLargeGemMenu extends Sprite
   {
       
      
      protected var m_ad:Sprite;
      
      private var m_moreGamesButton:TCButton;
      
      protected var m_background:Sprite;
      
      protected var m_returnButton:TCButton;
      
      protected var m_gemSelector:GemSelector;
      
      protected var m_npcsGemsBackground:Sprite;
      
      protected var m_playerDetailsBackground:Sprite;
      
      protected var m_playerIcon:Sprite;
      
      protected var m_moneyText:TextField;
      
      protected var m_playersMoneyText:TextField;
      
      public function BaseLargeGemMenu()
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Sprite = this;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_backgroundLarge");
         _loc1_.addChild(this.m_background);
         this.m_ad = Singleton.utility.m_spriteHandler.CreateSprite("menus_sponsorMoreGames_background");
         this.m_ad.x = 23;
         if(!(_loc3_ && Boolean(this)))
         {
            this.m_ad.y = 20;
            this.m_background.addChild(this.m_ad);
         }
         this.m_moreGamesButton = new TCButton(this.MoreGamesButtonHasBeenPressed,"menus_sponsorMoreGames_button");
         §§push(this.m_moreGamesButton);
         if(!_loc3_)
         {
            §§push(116);
            if(!(_loc3_ && _loc2_))
            {
               §§pop().x = §§pop();
               if(!_loc3_)
               {
                  addr80:
                  this.m_moreGamesButton.y = 197;
                  if(!(_loc3_ && _loc2_))
                  {
                     this.m_background.addChild(this.m_moreGamesButton);
                     this.m_playerDetailsBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemCombiner_characterDetailsBackground");
                     if(!_loc3_)
                     {
                        this.m_playerDetailsBackground.x = 20;
                        this.m_playerDetailsBackground.y = 277;
                        this.m_background.addChild(this.m_playerDetailsBackground);
                        this.m_returnButton = new TCButton(this.ReturnButtonPressed,"menus_returnButton");
                        §§push(this.m_returnButton);
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           §§push(3);
                           if(_loc4_)
                           {
                              §§pop().x = §§pop();
                              addr137:
                              §§push(this.m_returnButton);
                              §§push(409);
                           }
                           §§pop().y = §§pop();
                           this.m_background.addChild(this.m_returnButton);
                           if(_loc4_ || _loc2_)
                           {
                              this.m_gemSelector = new GemSelector();
                              §§push(this.m_gemSelector);
                              if(_loc4_)
                              {
                                 §§pop().LoadSprites();
                                 if(_loc4_)
                                 {
                                    §§push(this.m_gemSelector);
                                    if(_loc4_ || Boolean(this))
                                    {
                                       §§push(332);
                                       if(!_loc3_)
                                       {
                                          §§pop().x = §§pop();
                                          if(_loc4_ || Boolean(this))
                                          {
                                             addr185:
                                             this.m_gemSelector.y = 15;
                                             this.m_background.addChild(this.m_gemSelector);
                                             this.m_npcsGemsBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemCombiner_npcsGemsBackground");
                                             addr184:
                                             if(_loc4_ || _loc3_)
                                             {
                                                this.m_npcsGemsBackground.x = 334;
                                                addr216:
                                                this.m_npcsGemsBackground.y = 278;
                                                this.m_background.addChild(this.m_npcsGemsBackground);
                                             }
                                             addr234:
                                             this.m_playerIcon.x = 27;
                                             this.m_playerIcon.y = 302;
                                             if(!_loc3_)
                                             {
                                                this.m_playerIcon.scaleX = 0.7;
                                             }
                                             this.m_playerIcon.scaleY = 0.7;
                                             if(!_loc3_)
                                             {
                                                addr254:
                                                this.m_background.addChild(this.m_playerIcon);
                                                addr259:
                                                var _loc2_:TextFormat = new TextFormat();
                                                _loc2_.color = 15790320;
                                                if(_loc4_ || Boolean(_loc1_))
                                                {
                                                   _loc2_.size = 24;
                                                }
                                                _loc2_.font = "BurbinCasual";
                                                if(_loc4_ || Boolean(this))
                                                {
                                                   _loc2_.align = TextFormatAlign.CENTER;
                                                   this.m_moneyText = new TextField();
                                                   this.m_moneyText.embedFonts = true;
                                                   this.m_moneyText.defaultTextFormat = _loc2_;
                                                   this.m_moneyText.wordWrap = true;
                                                   this.m_moneyText.autoSize = TextFieldAutoSize.CENTER;
                                                }
                                                this.m_moneyText.text = "Money:";
                                                this.m_moneyText.x = 109;
                                                this.m_moneyText.y = 323;
                                                this.m_moneyText.width = 150;
                                                if(_loc4_)
                                                {
                                                   this.m_moneyText.selectable = false;
                                                   if(_loc4_ || Boolean(_loc2_))
                                                   {
                                                      this.m_background.addChild(this.m_moneyText);
                                                      if(_loc4_)
                                                      {
                                                         this.m_playersMoneyText = new TextField();
                                                         if(_loc4_)
                                                         {
                                                            addr353:
                                                            this.m_playersMoneyText.embedFonts = true;
                                                            this.m_playersMoneyText.defaultTextFormat = _loc2_;
                                                            if(_loc4_ || Boolean(_loc1_))
                                                            {
                                                               addr368:
                                                               this.m_playersMoneyText.wordWrap = true;
                                                               §§goto(addr372);
                                                            }
                                                            §§goto(addr407);
                                                         }
                                                         §§goto(addr384);
                                                      }
                                                      addr372:
                                                      this.m_playersMoneyText.autoSize = TextFieldAutoSize.CENTER;
                                                      if(!(_loc3_ && Boolean(this)))
                                                      {
                                                         addr384:
                                                         this.m_playersMoneyText.text = "$999.99";
                                                         this.m_playersMoneyText.x = 198;
                                                         this.m_playersMoneyText.y = 323;
                                                         this.m_playersMoneyText.width = 150;
                                                         addr407:
                                                         this.m_playersMoneyText.selectable = false;
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            this.m_background.addChild(this.m_playersMoneyText);
                                                         }
                                                      }
                                                      this.visible = false;
                                                      return;
                                                   }
                                                   §§goto(addr368);
                                                }
                                                §§goto(addr353);
                                             }
                                             §§goto(addr259);
                                          }
                                          this.m_playerIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_maleBust_icon");
                                          if(_loc4_)
                                          {
                                             §§goto(addr234);
                                          }
                                          §§goto(addr259);
                                       }
                                       §§goto(addr185);
                                    }
                                 }
                                 §§goto(addr259);
                              }
                              §§goto(addr184);
                           }
                           §§goto(addr259);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr216);
                  }
                  §§goto(addr254);
               }
               §§goto(addr185);
            }
         }
         §§goto(addr80);
      }
      
      public function BringIn() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.m_background.removeChild(this.m_playerIcon);
         if(!_loc1_)
         {
            if(Singleton.dynamicData.m_isMale)
            {
               this.m_playerIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_maleBust_icon");
               if(!(_loc1_ && Boolean(this)))
               {
                  addr54:
                  this.m_playerIcon.x = 27;
                  addr58:
                  this.m_playerIcon.y = 302;
                  if(_loc2_ || Boolean(this))
                  {
                     addr76:
                     this.m_playerIcon.scaleX = 0.7;
                     if(_loc2_ || Boolean(this))
                     {
                        this.m_playerIcon.scaleY = 0.7;
                     }
                     this.m_background.addChild(this.m_playerIcon);
                     addr96:
                     this.m_gemSelector.BringIn();
                     if(!(_loc1_ && Boolean(this)))
                     {
                        this.UpdateAllTheInterfacePieces();
                        addr108:
                        §§push(Singleton.utility);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(§§pop().m_screenControllers);
                           if(_loc2_)
                           {
                              §§push(§§pop().m_topDownScreen);
                              if(_loc2_ || Boolean(this))
                              {
                                 §§pop().m_topDownMenuScreen.ApplyMenuBringInAnimationJustFade(this);
                                 addr141:
                                 §§push(Singleton.utility.m_screenControllers.m_topDownScreen);
                              }
                              §§pop().m_topDownMovementScreen.TurnOffTheActionIcon();
                              return;
                           }
                        }
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr108);
               }
               §§goto(addr96);
            }
            else
            {
               this.m_playerIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_femaleBust_icon");
               if(!(_loc1_ && _loc1_))
               {
                  §§goto(addr54);
               }
            }
            §§goto(addr76);
         }
         §§goto(addr58);
      }
      
      public function ExitOut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(Singleton.utility);
            if(!(_loc1_ && Boolean(this)))
            {
               §§push(§§pop().m_screenControllers);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(§§pop().m_topDownScreen);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     §§pop().m_currState = TopDownStates.MOVEMENT;
                     if(!_loc1_)
                     {
                        §§push(Singleton.utility);
                        if(_loc2_)
                        {
                           addr50:
                           §§push(§§pop().m_screenControllers);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§push(§§pop().m_topDownScreen);
                              if(!(_loc1_ && Boolean(this)))
                              {
                                 §§pop().m_topDownMenuScreen.ApplyMenuExitOutAnimationJustFade(this);
                                 if(!(_loc1_ && Boolean(this)))
                                 {
                                    addr118:
                                    §§push(Singleton.utility);
                                    if(!_loc1_)
                                    {
                                       §§push(§§pop().m_screenControllers);
                                       if(_loc2_)
                                       {
                                          §§push(§§pop().m_topDownScreen);
                                          if(_loc1_)
                                          {
                                          }
                                          addr121:
                                          §§pop().m_topDownMovementScreen.UpdateMovementHUD();
                                          addr122:
                                          return;
                                          addr120:
                                       }
                                       addr119:
                                       §§goto(addr120);
                                       §§push(§§pop().m_topDownScreen);
                                    }
                                    §§goto(addr119);
                                    §§push(§§pop().m_screenControllers);
                                 }
                                 §§goto(addr122);
                              }
                              §§push(§§pop().m_topDownMovementScreen);
                              if(_loc2_ || _loc1_)
                              {
                                 §§pop().TurnOnTheActionIcon();
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§goto(addr118);
                                    §§push(Singleton.utility);
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr118);
                     }
                  }
                  §§goto(addr121);
               }
               §§goto(addr119);
            }
            §§goto(addr50);
         }
         §§goto(addr121);
      }
      
      protected function UpdateAllTheInterfacePieces() : void
      {
      }
      
      public function Update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_returnButton.m_isActive = true;
            if(!_loc1_)
            {
               this.m_moreGamesButton.m_isActive = true;
               if(_loc1_)
               {
               }
               §§goto(addr31);
            }
            this.m_gemSelector.Update();
         }
         addr31:
      }
      
      private function MoreGamesButtonHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:StaticData = Singleton.staticData;
         §§push(_loc2_.m_sponsorURL_part1);
         if(!_loc5_)
         {
            §§push(§§pop() + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part2 + _loc2_.m_sponsorURL_part3 + _loc2_.m_sponsorURL_part4 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part5 + _loc2_.m_sponsorURL_part6 + _loc2_.m_sponsorURL_part7 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part9 + _loc2_.m_sponsorURL_part10 + _loc2_.m_sponsorURL_part11 + _loc2_.m_sponsorURL_part8 + _loc2_.m_sponsorURL_part12 + _loc2_.m_sponsorURL_part5);
         }
         var _loc3_:* = §§pop();
         var _loc4_:URLRequest = new URLRequest(_loc3_);
         if(_loc6_)
         {
            navigateToURL(_loc4_);
         }
      }
      
      public function ReturnButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.ExitOut();
         }
      }
   }
}
