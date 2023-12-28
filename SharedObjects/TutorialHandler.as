package SharedObjects
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.GameState;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class TutorialHandler extends Sprite
   {
       
      
      private var _isActive:Boolean;
      
      private var m_isSmallBackground:Boolean;
      
      private var m_titleText:TextField;
      
      private var m_descriptionText:TextField;
      
      private var m_bigBackground:Sprite;
      
      private var m_smallBackground:Sprite;
      
      private var m_okButton:TCButton;
      
      private var m_nextButton:TCButton;
      
      private var m_showmeButton:TCButton;
      
      private var m_extraTexts:Vector.<TextField>;
      
      private var m_extraSprites:Vector.<Sprite>;
      
      private var m_textFormat:TextFormat;
      
      private var m_mainFunctionToCall:Function;
      
      private var m_exitOutFunctionToCall:Function;
      
      public function TutorialHandler()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            if(_loc1_)
            {
               this.m_extraTexts = new Vector.<TextField>();
               if(_loc1_ || _loc2_)
               {
                  this.m_extraSprites = new Vector.<Sprite>();
                  if(_loc2_)
                  {
                  }
                  §§goto(addr62);
               }
            }
            this._isActive = false;
         }
         addr62:
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            Singleton.utility.m_screenControllers.m_topMostLayer.addChild(this);
            this.x = 144;
            this.y = 19;
            if(_loc1_ || _loc1_)
            {
               this.visible = false;
               this.m_bigBackground = Singleton.utility.m_spriteHandler.CreateSprite("tutorial_backgroundLarge");
               addChild(this.m_bigBackground);
               this.m_smallBackground = Singleton.utility.m_spriteHandler.CreateSprite("tutorial_backgroundSmall");
               if(_loc1_)
               {
                  this.m_smallBackground.y = 66;
                  addChild(this.m_smallBackground);
                  if(!_loc2_)
                  {
                     this.m_smallBackground.visible = false;
                     this.m_okButton = new TCButton(this.MainButtonPressed,"tutorial_okButton");
                     if(_loc1_)
                     {
                        this.m_okButton.x = 143;
                        if(_loc1_)
                        {
                           addChild(this.m_okButton);
                           this.m_showmeButton = new TCButton(this.MainButtonPressed,"tutorial_showMeButton");
                           this.m_showmeButton.x = 72;
                           addr101:
                           addChild(this.m_showmeButton);
                           this.m_nextButton = new TCButton(this.NextButtonPressed,"tutorial_nextButton");
                           if(!_loc2_)
                           {
                              this.m_nextButton.x = 130;
                              if(_loc1_ || Boolean(this))
                              {
                                 addr125:
                                 addChild(this.m_nextButton);
                                 if(_loc1_ || _loc2_)
                                 {
                                    this.m_textFormat = new TextFormat();
                                    if(_loc1_ || _loc2_)
                                    {
                                       this.m_textFormat.color = 0;
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          this.m_textFormat.size = 28;
                                          if(!_loc2_)
                                          {
                                             addr171:
                                             this.m_textFormat.font = "BurbinCasual";
                                             this.m_textFormat.align = TextFormatAlign.CENTER;
                                             if(!_loc2_)
                                             {
                                                addr182:
                                                this.m_titleText = new TextField();
                                                if(_loc1_ || Boolean(this))
                                                {
                                                   this.m_titleText.embedFonts = true;
                                                   this.m_titleText.x = 20;
                                                   if(_loc1_)
                                                   {
                                                      addr203:
                                                      this.m_titleText.defaultTextFormat = this.m_textFormat;
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         addr215:
                                                         this.m_titleText.wordWrap = true;
                                                         this.m_titleText.autoSize = TextFieldAutoSize.CENTER;
                                                         this.m_titleText.text = "Find the boss room";
                                                         addr228:
                                                         this.m_titleText.width = 380;
                                                         this.m_titleText.selectable = false;
                                                         addChild(this.m_titleText);
                                                         if(_loc1_)
                                                         {
                                                            this.m_textFormat.size = 18;
                                                            if(!(_loc2_ && Boolean(this)))
                                                            {
                                                               §§goto(addr253);
                                                            }
                                                            §§goto(addr279);
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      §§goto(addr321);
                                                   }
                                                   §§goto(addr275);
                                                }
                                                §§goto(addr321);
                                             }
                                             §§goto(addr228);
                                          }
                                          §§goto(addr297);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr264);
                              }
                              §§goto(addr275);
                           }
                           §§goto(addr215);
                        }
                        §§goto(addr264);
                     }
                     addr253:
                     this.m_textFormat.color = 16382457;
                     if(_loc1_ || _loc2_)
                     {
                        addr264:
                        this.m_descriptionText = new TextField();
                        if(_loc1_ || _loc1_)
                        {
                           addr275:
                           this.m_descriptionText.embedFonts = true;
                           addr279:
                           this.m_descriptionText.defaultTextFormat = this.m_textFormat;
                           this.m_descriptionText.wordWrap = true;
                        }
                        this.m_descriptionText.autoSize = TextFieldAutoSize.CENTER;
                        this.m_descriptionText.text = "this is the description this is the this is the this is the this is the";
                        this.m_descriptionText.width = 353;
                        addr297:
                        if(_loc1_)
                        {
                        }
                        §§goto(addr321);
                     }
                     this.m_descriptionText.x = 30;
                     if(_loc1_ || _loc2_)
                     {
                        addr321:
                        this.m_descriptionText.selectable = false;
                        §§goto(addr325);
                     }
                     addr325:
                     addChild(this.m_descriptionText);
                     return;
                  }
                  §§goto(addr101);
               }
               §§goto(addr264);
            }
            §§goto(addr125);
         }
         §§goto(addr203);
      }
      
      private function Cleanup() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               break;
            }
            if(§§pop() >= this.m_extraSprites.length)
            {
               §§push(0);
               if(!_loc2_)
               {
                  _loc1_ = §§pop();
                  if(!_loc2_)
                  {
                     while(true)
                     {
                        §§push(_loc1_);
                        break loop0;
                        addr50:
                        this.m_extraTexts[_loc1_].parent.removeChild(this.m_extraTexts[_loc1_]);
                        _loc1_++;
                     }
                     addr69:
                  }
                  §§goto(addr76);
               }
               break;
            }
            this.m_extraSprites[_loc1_].parent.removeChild(this.m_extraSprites[_loc1_]);
            _loc1_++;
         }
         while(§§pop() < this.m_extraTexts.length)
         {
            §§goto(addr50);
            §§goto(addr69);
         }
         if(!_loc2_)
         {
            §§goto(addr76);
         }
         addr76:
         this.m_extraTexts = new Vector.<TextField>();
         this.m_extraSprites = new Vector.<Sprite>();
      }
      
      private function ResetTheTutorialHandler() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.m_titleText.visible = false;
         if(!_loc1_)
         {
            this.m_descriptionText.visible = false;
            if(!(_loc1_ && _loc1_))
            {
               this.m_bigBackground.visible = false;
               this.m_smallBackground.visible = false;
               if(!(_loc1_ && _loc1_))
               {
                  addr60:
                  this.m_okButton.visible = false;
                  this.m_nextButton.visible = false;
                  if(_loc2_)
                  {
                     addr70:
                     this.m_showmeButton.visible = false;
                  }
               }
               return;
            }
            §§goto(addr60);
         }
         §§goto(addr70);
      }
      
      private function BringIn() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.visible = true;
            if(!(_loc2_ && Boolean(this)))
            {
               Singleton.utility.m_soundController.PlaySound("battle_whoosh_falling_deepSound",1);
               if(!(_loc2_ && _loc1_))
               {
                  this._isActive = true;
                  if(_loc1_ || _loc2_)
                  {
                  }
                  §§goto(addr64);
               }
            }
            this.ResetTheTutorialHandler();
         }
         addr64:
      }
      
      private function FinishExitOut() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            this.Cleanup();
            if(!(_loc2_ && _loc2_))
            {
               this.visible = false;
               if(!(_loc2_ && _loc2_))
               {
                  this._isActive = false;
                  if(_loc1_)
                  {
                  }
               }
               §§goto(addr73);
            }
            if(Singleton.dynamicData.m_gameState == GameState.TOP_DOWN_SCREEN)
            {
               if(!_loc2_)
               {
                  Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.UpdateAnimationState();
               }
            }
         }
         addr73:
      }
      
      private function SetupDefaultPositions() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Sprite = null;
         if(!(_loc3_ && _loc3_))
         {
            if(this.m_isSmallBackground)
            {
               addr26:
               _loc1_ = this.m_smallBackground;
            }
            else
            {
               _loc1_ = this.m_bigBackground;
            }
            this.m_textFormat.color = 16382457;
            this.m_textFormat.size = 28;
            if(!(_loc3_ && _loc2_))
            {
               this.m_titleText.defaultTextFormat = this.m_textFormat;
               this.m_titleText.y = _loc1_.y + 6 + 91;
               this.m_textFormat.size = 15;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  this.m_textFormat.color = 16382457;
                  if(_loc2_ || _loc2_)
                  {
                     this.m_descriptionText.defaultTextFormat = this.m_textFormat;
                     if(_loc2_)
                     {
                        this.m_descriptionText.y = _loc1_.y + 45 + 91;
                        addr109:
                        §§push(this.m_okButton);
                        §§push(_loc1_.y + _loc1_.height - 59);
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           §§push(§§pop() - 16);
                        }
                        §§pop().y = §§pop();
                        addr128:
                        this.m_showmeButton.y = _loc1_.y + _loc1_.height - 54;
                        §§push(this.m_nextButton);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(this.m_okButton);
                           if(!_loc3_)
                           {
                              §§pop().x = §§pop().x;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr171:
                                 this.m_nextButton.y = this.m_okButton.y;
                              }
                              return;
                           }
                        }
                     }
                     §§goto(addr171);
                  }
               }
               §§goto(addr128);
            }
            §§goto(addr109);
         }
         §§goto(addr26);
      }
      
      private function SetupBigBackground() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.m_isSmallBackground = false;
            if(_loc1_)
            {
               addr25:
               this.SetupDefaultPositions();
            }
            return;
         }
         §§goto(addr25);
      }
      
      private function SetupSmallBackground() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_isSmallBackground = true;
            if(_loc1_)
            {
               addr20:
               this.SetupDefaultPositions();
            }
            return;
         }
         §§goto(addr20);
      }
      
      private function BringInSmallBackground() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.m_smallBackground.visible = true;
            this.x = 164;
            this.y = 38;
            this.scaleX = 0.9;
         }
         this.scaleY = 0.9;
         alpha = 0;
         if(_loc2_)
         {
            TweenLite.to(this,0.4,{"transformAroundCenter":{
               "alpha":1,
               "scaleX":1,
               "scaleY":1
            }});
         }
      }
      
      private function BringInBigBackground() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.m_bigBackground.visible = true;
         this.x = 164;
         this.y = 38;
         this.scaleX = 0.9;
         if(!_loc2_)
         {
            this.scaleY = 0.9;
            if(!_loc2_)
            {
               alpha = 0;
               TweenLite.to(this,0.4,{"transformAroundCenter":{
                  "alpha":1,
                  "scaleX":1,
                  "scaleY":1
               }});
            }
         }
      }
      
      private function BringInTitleText() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.m_titleText.visible = true;
            if(!_loc1_)
            {
               this.m_titleText.alpha = 0;
               if(!_loc1_)
               {
                  addr35:
                  TweenLite.to(this.m_titleText,0.5,{"alpha":1});
               }
               return;
            }
         }
         §§goto(addr35);
      }
      
      private function BringInDescriptionText() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.m_descriptionText.visible = true;
            if(!(_loc2_ && _loc2_))
            {
               addr45:
               this.m_descriptionText.alpha = 0;
               if(!(_loc2_ && _loc1_))
               {
                  TweenLite.to(this.m_descriptionText,0.5,{"alpha":1});
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      private function BringInOkButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_okButton.visible = true;
         }
      }
      
      private function BringInShowMeButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.m_showmeButton);
            if(_loc1_)
            {
               §§pop().visible = true;
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(this.m_showmeButton);
                  if(_loc1_)
                  {
                     §§goto(addr44);
                  }
               }
               §§goto(addr57);
            }
            addr44:
            §§pop().alpha = 0;
            if(!_loc2_)
            {
               addr57:
               this.m_showmeButton.y -= 50;
               if(_loc1_ || _loc2_)
               {
                  addr70:
                  TweenLite.to(this.m_showmeButton,0.5,{
                     "alpha":1,
                     "y":"50"
                  });
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      private function BringInNextButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.m_nextButton.visible = true;
         }
      }
      
      private function ExitOutSmallBackground() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            TweenLite.to(this,0.5,{"alpha":0});
         }
      }
      
      private function ExitOutBigBackground() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            TweenLite.to(this,0.5,{"alpha":0});
         }
      }
      
      private function ExitOutTitleText() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            TweenLite.to(this.m_titleText,0.5,{"alpha":0});
         }
      }
      
      private function ExitOutDescriptionText() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            TweenLite.to(this.m_descriptionText,0.5,{"alpha":0});
         }
      }
      
      private function ExitOutOkButton() : void
      {
      }
      
      private function ExitOutShowMeButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            TweenLite.to(this.m_showmeButton,0.5,{
               "alpha":0,
               "y":"-50"
            });
         }
      }
      
      private function ExitOutNextButton() : void
      {
      }
      
      public function Update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.m_okButton);
         if(_loc2_)
         {
            if(§§pop().visible)
            {
               addr22:
               this.m_okButton.m_isActive = true;
               if(_loc2_)
               {
                  addr33:
                  §§push(this.m_nextButton);
                  if(!_loc1_)
                  {
                     if(§§pop().visible)
                     {
                        this.m_nextButton.m_isActive = true;
                        addr41:
                     }
                     §§push(this.m_showmeButton);
                     if(_loc2_ || _loc1_)
                     {
                        if(§§pop().visible)
                        {
                           if(!(_loc1_ && Boolean(this)))
                           {
                              addr70:
                              this.m_showmeButton.m_isActive = true;
                           }
                        }
                        return;
                     }
                     §§goto(addr70);
                  }
               }
               §§goto(addr41);
            }
            §§goto(addr33);
         }
         §§goto(addr22);
      }
      
      private function MainButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.m_exitOutFunctionToCall);
            if(!(_loc3_ && _loc2_))
            {
               §§pop().call();
               if(!(_loc3_ && _loc3_))
               {
                  addr51:
                  §§push(this.m_mainFunctionToCall);
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(§§pop() != null)
                     {
                        if(_loc2_ || Boolean(param1))
                        {
                           addr71:
                           this.m_mainFunctionToCall.call();
                        }
                     }
                  }
                  §§goto(addr71);
               }
               return;
            }
            §§goto(addr71);
         }
         §§goto(addr51);
      }
      
      private function NextButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.m_exitOutFunctionToCall.call();
         }
      }
      
      private function SecondaryButtonPressed(param1:MouseEvent) : void
      {
      }
      
      public function get m_isActive() : Boolean
      {
         return this._isActive;
      }
      
      public function BringIn_KeyKeepersTut(param1:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         this.BringIn();
         this.SetupSmallBackground();
         if(!(_loc4_ && Boolean(this)))
         {
            this.m_mainFunctionToCall = param1;
            if(_loc3_)
            {
               addr29:
               this.m_textFormat.size = 14;
            }
            this.m_titleText.defaultTextFormat = this.m_textFormat;
            this.m_titleText.text = "To complete this floor you must defeat all three\nstudents for their keys to the Minor Sage\'s room.";
            this.m_titleText.y = 175;
            if(_loc3_)
            {
               this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_keyKeeper1"));
            }
            addChild(this.m_extraSprites[0]);
            var _loc2_:int = 0;
            while(_loc2_ < this.m_extraSprites.length)
            {
               this.m_extraSprites[_loc2_].x = 49 + _loc2_ * 90;
               if(_loc3_ || Boolean(param1))
               {
                  this.m_extraSprites[_loc2_].y = 222;
                  if(_loc4_ && Boolean(param1))
                  {
                     continue;
                  }
                  this.m_extraSprites[_loc2_].alpha = 0;
                  if(!_loc4_)
                  {
                     TweenLite.to(this.m_extraSprites[_loc2_],0.5,{"alpha":1});
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue;
                  }
                  this.BringInOkButton();
               }
               this.BringInTitleText();
               if(_loc3_ || Boolean(param1))
               {
                  this.m_exitOutFunctionToCall = this.ExitOut_KeyKeepersTut;
               }
               return;
               _loc2_++;
               if(!(_loc4_ && _loc3_))
               {
                  continue;
               }
               §§goto(addr147);
            }
            this.BringInSmallBackground();
            §§goto(addr145);
         }
         §§goto(addr29);
      }
      
      private function ExitOut_KeyKeepersTut() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.ExitOutSmallBackground();
            if(_loc3_)
            {
               addr25:
               this.ExitOutOkButton();
               if(!(_loc2_ && _loc1_))
               {
                  this.ExitOutTitleText();
               }
            }
            var _loc1_:int = 0;
            while(true)
            {
               if(_loc1_ >= this.m_extraSprites.length)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr89);
               }
               TweenLite.to(this.m_extraSprites[_loc1_],0.5,{"alpha":0});
               if(!_loc2_)
               {
                  _loc1_++;
                  if(!(_loc3_ || Boolean(_loc1_)))
                  {
                     break;
                  }
               }
            }
            TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
            addr89:
            return;
         }
         §§goto(addr25);
      }
      
      public function BringIn_BonusLevelTut(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.BringIn();
         this.SetupSmallBackground();
         this.m_mainFunctionToCall = param1;
         if(!_loc2_)
         {
            this.m_textFormat.size = 18;
            this.m_titleText.defaultTextFormat = this.m_textFormat;
         }
         this.m_titleText.text = "Bonus floors have a chance\nto drop rare minions";
         this.m_titleText.y = 175;
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_bonusRooms"));
         if(!(_loc2_ && Boolean(param1)))
         {
            addChild(this.m_extraSprites[0]);
            this.m_extraSprites[0].x = 132;
            this.m_extraSprites[0].y = 236;
            if(!_loc2_)
            {
               this.m_extraSprites[0].alpha = 0;
               if(!(_loc2_ && _loc3_))
               {
                  addr95:
                  TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
                  this.BringInSmallBackground();
                  this.BringInOkButton();
                  addr105:
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this.BringInTitleText();
                     if(_loc2_ && _loc2_)
                     {
                     }
                     §§goto(addr136);
                  }
                  this.m_exitOutFunctionToCall = this.ExitOut_BonusLevelTut;
               }
               addr136:
               return;
            }
            §§goto(addr95);
         }
         §§goto(addr105);
      }
      
      private function ExitOut_BonusLevelTut() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            this.ExitOutSmallBackground();
            if(!(_loc3_ && _loc1_))
            {
               this.ExitOutOkButton();
               if(!_loc3_)
               {
                  addr33:
                  this.ExitOutTitleText();
               }
            }
            var _loc1_:int = 0;
            do
            {
               if(_loc1_ >= this.m_extraSprites.length)
               {
                  if(!_loc3_)
                  {
                     TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
                     break;
                  }
                  break;
               }
               TweenLite.to(this.m_extraSprites[_loc1_],0.5,{"alpha":0});
               if(!(_loc2_ || _loc3_))
               {
                  break;
               }
               _loc1_++;
            }
            while(!(_loc3_ && Boolean(_loc1_)));
            
            return;
         }
         §§goto(addr33);
      }
      
      public function BringIn_BossRoomTut(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.BringIn();
            this.SetupSmallBackground();
            if(_loc2_)
            {
               this.m_mainFunctionToCall = param1;
               if(!(_loc3_ && Boolean(param1)))
               {
                  this.m_textFormat.size = 16;
                  if(!_loc3_)
                  {
                     addr37:
                     this.m_titleText.defaultTextFormat = this.m_textFormat;
                  }
                  this.m_titleText.text = "Find and challenge the Minor Sage to get the\nfirst piece of the Sage Seal of Courage.";
                  if(!(_loc3_ && _loc2_))
                  {
                     this.m_titleText.y = 181;
                     if(!_loc3_)
                     {
                        this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_bossDoor"));
                        if(_loc2_)
                        {
                           addChild(this.m_extraSprites[0]);
                           if(_loc2_)
                           {
                              this.m_extraSprites[0].x = 140;
                           }
                           this.m_extraSprites[0].y = 232;
                           if(_loc2_ || _loc3_)
                           {
                              this.m_extraSprites[0].alpha = 0;
                              addr109:
                              TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
                              this.BringInSmallBackground();
                              addr119:
                              if(!(_loc3_ && _loc2_))
                              {
                                 this.BringInOkButton();
                                 if(_loc3_ && Boolean(this))
                                 {
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr146);
                           }
                           this.BringInTitleText();
                           addr146:
                           this.m_exitOutFunctionToCall = this.ExitOut_BossRoomTut;
                           §§goto(addr150);
                        }
                        addr150:
                        return;
                     }
                  }
                  §§goto(addr109);
               }
               §§goto(addr119);
            }
            §§goto(addr37);
         }
         §§goto(addr109);
      }
      
      private function ExitOut_BossRoomTut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.ExitOutBigBackground();
            if(_loc2_ || _loc2_)
            {
               addr37:
               this.ExitOutOkButton();
               if(_loc2_ || _loc2_)
               {
                  this.ExitOutTitleText();
                  §§goto(addr46);
               }
               §§goto(addr57);
            }
            addr46:
            if(_loc2_)
            {
               addr57:
               TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
               if(_loc2_)
               {
                  TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function BringIn_TypeEffectiveness(param1:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.BringIn();
         this.SetupBigBackground();
         this.m_mainFunctionToCall = param1;
         this.m_titleText.text = "Battle Tip";
         this.m_titleText.x = 20;
         if(!(_loc3_ && _loc2_))
         {
            this.m_titleText.y = 115;
            if(!(_loc3_ && Boolean(param1)))
            {
               this.m_descriptionText.text = "Move choice:  Some moves do more damage to certain types of minions";
            }
            this.m_descriptionText.x = 30;
            this.m_descriptionText.y = 154;
         }
         var _loc2_:int = -38;
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_superEffectiveMoves"));
         if(!_loc3_)
         {
            addChild(this.m_extraSprites[0]);
            this.m_extraSprites[0].x = 52;
            if(_loc4_)
            {
               this.m_extraSprites[0].y = 279;
               this.m_extraSprites[0].alpha = 0;
               this.m_textFormat.size = 24;
               this.m_textFormat.color = 16382457;
               this.m_extraTexts.push(new TextField());
               if(!_loc3_)
               {
                  this.m_extraTexts[0].embedFonts = true;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     this.m_extraTexts[0].defaultTextFormat = this.m_textFormat;
                     this.m_extraTexts[0].wordWrap = true;
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        this.m_extraTexts[0].autoSize = TextFieldAutoSize.CENTER;
                        this.m_extraTexts[0].text = "Example";
                        this.m_extraTexts[0].width = 150;
                        this.m_extraTexts[0].x = 132;
                        this.m_extraTexts[0].y = 220;
                        if(_loc4_)
                        {
                           this.m_extraTexts[0].alpha = 0;
                           this.m_extraTexts[0].selectable = false;
                           addChild(this.m_extraTexts[0]);
                           this.m_textFormat.size = 15;
                           this.m_textFormat.color = 16382457;
                        }
                        §§goto(addr248);
                     }
                     this.m_extraTexts.push(new TextField());
                     addr216:
                     this.m_extraTexts[1].embedFonts = true;
                     this.m_extraTexts[1].defaultTextFormat = this.m_textFormat;
                     this.m_extraTexts[1].wordWrap = true;
                     this.m_extraTexts[1].autoSize = TextFieldAutoSize.CENTER;
                     this.m_extraTexts[1].text = "Fire moves do more damage to plant minions";
                     addr248:
                     this.m_extraTexts[1].width = this.m_bigBackground.width;
                     this.m_extraTexts[1].x = -3;
                     this.m_extraTexts[1].y = 255;
                     addr268:
                     this.m_extraTexts[1].alpha = 0;
                     this.m_extraTexts[1].selectable = false;
                     addChild(this.m_extraTexts[1]);
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
                        TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":1});
                        if(_loc4_)
                        {
                        }
                        §§goto(addr351);
                     }
                     TweenLite.to(this.m_extraTexts[1],0.5,{"alpha":1});
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        this.BringInBigBackground();
                        this.BringInDescriptionText();
                        this.BringInOkButton();
                     }
                     this.BringInTitleText();
                     this.m_exitOutFunctionToCall = this.ExitOut_TypeEffectiveness;
                     §§goto(addr351);
                  }
                  addr351:
                  return;
               }
               §§goto(addr248);
            }
            §§goto(addr216);
         }
         §§goto(addr268);
      }
      
      private function ExitOut_TypeEffectiveness() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.ExitOutBigBackground();
         this.ExitOutOkButton();
         this.ExitOutDescriptionText();
         if(!_loc1_)
         {
            this.ExitOutTitleText();
            if(!(_loc1_ && _loc2_))
            {
               TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
               if(_loc2_ || _loc1_)
               {
                  TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":0});
                  if(_loc2_ || _loc2_)
                  {
                     addr79:
                     TweenLite.to(this.m_extraTexts[1],0.5,{"alpha":0});
                  }
               }
               TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
            }
            return;
         }
         §§goto(addr79);
      }
      
      public function BringIn_TankTut(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.BringIn();
         this.SetupBigBackground();
         this.m_mainFunctionToCall = param1;
         if(_loc2_)
         {
            this.m_titleText.text = "Battle Tip";
            this.m_descriptionText.text = "Protect your fragile minions with a redirect damage and high health/armor minion";
            this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_useATank"));
            addChild(this.m_extraSprites[0]);
            this.m_extraSprites[0].x = 49;
            if(!(_loc3_ && Boolean(param1)))
            {
               this.m_extraSprites[0].y = 98 - 50;
               if(_loc2_ || Boolean(param1))
               {
                  addr79:
                  this.m_extraSprites[0].alpha = 0;
                  TweenLite.to(this.m_extraSprites[0],0.5,{
                     "alpha":1,
                     "y":"50"
                  });
                  §§goto(addr104);
               }
               §§goto(addr108);
            }
            addr104:
            this.BringInBigBackground();
            if(!_loc3_)
            {
               addr108:
               this.BringInDescriptionText();
               this.BringInOkButton();
            }
            this.BringInTitleText();
            if(_loc2_ || Boolean(this))
            {
               this.m_exitOutFunctionToCall = this.ExitOut_TankTut;
            }
            return;
         }
         §§goto(addr79);
      }
      
      private function ExitOut_TankTut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.ExitOutBigBackground();
         if(!_loc1_)
         {
            this.ExitOutOkButton();
         }
         this.ExitOutDescriptionText();
         this.ExitOutTitleText();
         if(_loc2_)
         {
            TweenLite.to(this.m_extraSprites[0],0.5,{
               "alpha":0,
               "y":"-50"
            });
         }
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_ShieldBattleModTut(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.BringIn();
         this.SetupBigBackground();
         this.m_mainFunctionToCall = param1;
         if(!_loc3_)
         {
            this.m_titleText.text = "Battle Tip";
            if(_loc2_)
            {
               this.m_descriptionText.text = "Shield stones make random\nminions invulnerable";
               if(_loc2_)
               {
                  this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("modStone_shieldStone"));
                  if(!(_loc3_ && _loc2_))
                  {
                     addChild(this.m_extraSprites[0]);
                     this.m_extraSprites[0].x = 156;
                     addr55:
                     if(_loc2_ || Boolean(param1))
                     {
                        addr75:
                        this.m_extraSprites[0].y = 203;
                        if(!_loc3_)
                        {
                           this.m_extraSprites[0].alpha = 0;
                           if(!_loc3_)
                           {
                              §§goto(addr91);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr105);
                  }
                  addr91:
                  TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
                  this.BringInBigBackground();
                  if(!_loc3_)
                  {
                     addr105:
                     this.BringInDescriptionText();
                     if(!_loc3_)
                     {
                        addr116:
                        this.BringInOkButton();
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.BringInTitleText();
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr134:
                              this.m_exitOutFunctionToCall = this.ExitOut_ShieldBattleModTut;
                           }
                        }
                        §§goto(addr134);
                     }
                  }
                  return;
               }
               §§goto(addr55);
            }
            §§goto(addr75);
         }
         §§goto(addr55);
      }
      
      private function ExitOut_ShieldBattleModTut() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.ExitOutBigBackground();
            this.ExitOutOkButton();
            this.ExitOutDescriptionText();
            this.ExitOutTitleText();
            TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
            if(!(_loc2_ && _loc2_))
            {
               addr59:
               TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
            }
            return;
         }
         §§goto(addr59);
      }
      
      public function BringIn_ExtraMovesBattleModTut(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.BringIn();
         this.SetupBigBackground();
         this.m_mainFunctionToCall = param1;
         this.m_titleText.text = "Battle Tip";
         this.m_descriptionText.text = "Extra move stones cast moves after so many turns. They can also give you passive buffs.";
         if(!_loc2_)
         {
            this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("modStone_extraMoveStone"));
            if(!(_loc2_ && Boolean(this)))
            {
               addChild(this.m_extraSprites[0]);
               if(_loc3_)
               {
                  addr61:
                  this.m_extraSprites[0].x = 116;
                  this.m_extraSprites[0].y = 184;
               }
               this.m_extraSprites[0].alpha = 0;
               TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
               if(!(_loc2_ && _loc2_))
               {
                  this.BringInBigBackground();
                  if(!_loc2_)
                  {
                     this.BringInDescriptionText();
                     this.BringInOkButton();
                  }
                  this.BringInTitleText();
                  if(_loc3_ || Boolean(param1))
                  {
                     this.m_exitOutFunctionToCall = this.ExitOut_ExtraMovesBattleModTut;
                  }
               }
               return;
            }
         }
         §§goto(addr61);
      }
      
      private function ExitOut_ExtraMovesBattleModTut() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.ExitOutBigBackground();
         if(!(_loc2_ && _loc2_))
         {
            this.ExitOutOkButton();
            this.ExitOutDescriptionText();
            if(!(_loc2_ && _loc1_))
            {
               this.ExitOutTitleText();
               if(!(_loc2_ && _loc1_))
               {
                  TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
               }
            }
            TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
         }
      }
      
      public function BringIn_ExtraMinionsBattleModTut(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.BringIn();
            this.SetupBigBackground();
            if(!(_loc2_ && _loc2_))
            {
               this.m_mainFunctionToCall = param1;
               if(!_loc2_)
               {
                  this.m_titleText.text = "Battle Tip";
                  if(!_loc2_)
                  {
                     this.m_descriptionText.text = "Extra minion stones bring in \nextra minions on death.";
                     if(!_loc2_)
                     {
                        this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("modStone_extraMinionOnDeathStone"));
                        addChild(this.m_extraSprites[0]);
                        if(_loc3_)
                        {
                           addr67:
                           this.m_extraSprites[0].x = 143;
                           this.m_extraSprites[0].y = 193;
                           this.m_extraSprites[0].alpha = 0;
                           this.m_extraSprites[0].scaleX = 0.8;
                           this.m_extraSprites[0].scaleY = 0.8;
                           addr104:
                           TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
                           addr114:
                           this.BringInBigBackground();
                           this.BringInDescriptionText();
                           this.BringInOkButton();
                        }
                        this.BringInTitleText();
                        this.m_exitOutFunctionToCall = this.ExitOut_ExtraMinionsBattleModTut;
                        §§goto(addr126);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr67);
               }
               addr126:
               return;
            }
            §§goto(addr67);
         }
         §§goto(addr104);
      }
      
      private function ExitOut_ExtraMinionsBattleModTut() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.ExitOutBigBackground();
            if(_loc1_)
            {
               addr26:
               this.ExitOutOkButton();
               if(_loc1_)
               {
                  this.ExitOutDescriptionText();
                  this.ExitOutTitleText();
                  TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
                  TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
               }
            }
            return;
         }
         §§goto(addr26);
      }
      
      public function BringIn_ResurectionnBattleModTut(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.BringIn();
         this.SetupBigBackground();
         this.m_mainFunctionToCall = param1;
         if(_loc3_)
         {
            this.m_titleText.text = "Battle Tip";
            this.m_descriptionText.text = "Resurection stones allow minions to be resurected after so many turns.";
            if(_loc3_ || Boolean(this))
            {
               this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("undeadRoom_headstones1"));
               if(_loc3_ || _loc2_)
               {
                  addChild(this.m_extraSprites[0]);
                  if(_loc3_)
                  {
                     this.m_extraSprites[0].x = 115;
                     if(_loc3_)
                     {
                        this.m_extraSprites[0].y = 197;
                        addr82:
                        this.m_extraSprites[0].alpha = 0;
                        TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
                        if(!(_loc2_ && _loc2_))
                        {
                           addr112:
                           this.BringInBigBackground();
                           this.BringInDescriptionText();
                        }
                        §§goto(addr127);
                     }
                     this.BringInOkButton();
                     if(!(_loc2_ && Boolean(param1)))
                     {
                        addr125:
                        this.BringInTitleText();
                        §§goto(addr127);
                     }
                     addr127:
                     this.m_exitOutFunctionToCall = this.ExitOut_ResurectionnBattleModTut;
                     return;
                  }
                  §§goto(addr125);
               }
               §§goto(addr112);
            }
         }
         §§goto(addr82);
      }
      
      private function ExitOut_ResurectionnBattleModTut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.ExitOutBigBackground();
         if(_loc2_ || Boolean(this))
         {
            this.ExitOutOkButton();
            this.ExitOutDescriptionText();
            this.ExitOutTitleText();
            TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
            if(_loc2_ || Boolean(this))
            {
               TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
            }
         }
      }
      
      public function BringIn_HealerTut(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.BringIn();
            this.SetupBigBackground();
            if(!_loc3_)
            {
               this.m_mainFunctionToCall = param1;
               this.m_titleText.text = "Battle Tip";
               if(_loc2_ || Boolean(this))
               {
                  this.m_descriptionText.text = "Want to stay in the fight longer?\nAdd a healer/shielder to your group";
                  this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_useAHealer"));
                  addChild(this.m_extraSprites[0]);
                  if(!_loc3_)
                  {
                     addr62:
                     this.m_extraSprites[0].x = 31;
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        this.m_extraSprites[0].y = 92 - 50;
                     }
                     this.m_extraSprites[0].alpha = 0;
                     TweenLite.to(this.m_extraSprites[0],0.5,{
                        "alpha":1,
                        "y":"50"
                     });
                     addr108:
                     this.BringInBigBackground();
                     if(_loc2_)
                     {
                        addr112:
                        this.BringInDescriptionText();
                        this.BringInOkButton();
                        if(_loc2_)
                        {
                           this.BringInTitleText();
                        }
                        this.m_exitOutFunctionToCall = this.ExitOut_HealerTut;
                     }
                     return;
                     addr89:
                  }
                  §§goto(addr112);
               }
               §§goto(addr108);
            }
            §§goto(addr89);
         }
         §§goto(addr62);
      }
      
      private function ExitOut_HealerTut() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.ExitOutBigBackground();
         if(!_loc2_)
         {
            this.ExitOutOkButton();
         }
         this.ExitOutDescriptionText();
         this.ExitOutTitleText();
         if(!(_loc2_ && _loc1_))
         {
            TweenLite.to(this.m_extraSprites[0],0.5,{
               "alpha":0,
               "y":"-50"
            });
         }
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_FocusTargetsTut(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.BringIn();
         if(_loc2_ || _loc2_)
         {
            this.SetupSmallBackground();
            if(_loc2_ || _loc2_)
            {
               this.m_mainFunctionToCall = param1;
               if(!(_loc3_ && Boolean(this)))
               {
                  this.m_titleText.text = "Battle Tip";
                  this.m_descriptionText.text = "Focus targets:  Sometimes it’s best to focus all your attacks on one minion";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr56:
                     this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_focusTarget"));
                     addChild(this.m_extraSprites[0]);
                     addr64:
                     if(_loc2_ || Boolean(this))
                     {
                        this.m_extraSprites[0].x = 115;
                        this.m_extraSprites[0].y = 155 - 50;
                        this.m_extraSprites[0].alpha = 0;
                     }
                     §§goto(addr144);
                  }
                  TweenLite.to(this.m_extraSprites[0],0.5,{
                     "alpha":1,
                     "y":"50"
                  });
                  if(_loc2_)
                  {
                     this.BringInSmallBackground();
                     this.BringInDescriptionText();
                  }
                  this.BringInOkButton();
                  this.BringInTitleText();
                  this.m_exitOutFunctionToCall = this.ExitOut_FocusTargetsTut;
                  if(_loc2_ || Boolean(param1))
                  {
                     §§goto(addr144);
                  }
                  addr144:
                  Singleton.utility.m_mover.SetObject(this.m_extraSprites[0]);
                  return;
               }
            }
            §§goto(addr56);
         }
         §§goto(addr64);
      }
      
      private function ExitOut_FocusTargetsTut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.ExitOutSmallBackground();
         this.ExitOutOkButton();
         this.ExitOutDescriptionText();
         this.ExitOutTitleText();
         TweenLite.to(this.m_extraSprites[0],0.5,{
            "alpha":0,
            "y":"-50"
         });
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_DontNeedToBeatHardAndExpert(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.BringIn();
            this.SetupSmallBackground();
            this.m_mainFunctionToCall = param1;
            this.m_titleText.text = "Tower Tip!";
            this.m_descriptionText.text = "You don’t have to defeat the hard and expert trainers to progress in the tower";
            if(!(_loc3_ && Boolean(param1)))
            {
               addr37:
               this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_hardTrainer"));
               if(!(_loc3_ && Boolean(this)))
               {
                  addChild(this.m_extraSprites[0]);
                  this.m_extraSprites[0].x = 115;
                  if(_loc2_)
                  {
                     this.m_extraSprites[0].y = 155 - 50;
                     this.m_extraSprites[0].alpha = 0;
                     if(_loc2_)
                     {
                        this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_expertTrainer"));
                        addr97:
                        addChild(this.m_extraSprites[1]);
                        this.m_extraSprites[1].x = 192;
                        this.m_extraSprites[1].y = 155 - 50;
                        this.m_extraSprites[1].alpha = 0;
                        TweenLite.to(this.m_extraSprites[0],0.5,{
                           "alpha":1,
                           "y":"50"
                        });
                     }
                     §§goto(addr97);
                  }
                  TweenLite.to(this.m_extraSprites[1],0.5,{
                     "alpha":1,
                     "y":"50"
                  });
                  this.BringInSmallBackground();
                  this.BringInDescriptionText();
                  this.BringInOkButton();
                  this.BringInTitleText();
                  if(!_loc3_)
                  {
                     this.m_exitOutFunctionToCall = this.ExitOut_DontNeedToBeatHardAndExpert;
                  }
                  return;
               }
            }
            §§goto(addr97);
         }
         §§goto(addr37);
      }
      
      private function ExitOut_DontNeedToBeatHardAndExpert() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.ExitOutSmallBackground();
         this.ExitOutOkButton();
         this.ExitOutDescriptionText();
         this.ExitOutTitleText();
         TweenLite.to(this.m_extraSprites[0],0.5,{
            "alpha":0,
            "y":"-50"
         });
         TweenLite.to(this.m_extraSprites[1],0.5,{
            "alpha":0,
            "y":"-50"
         });
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_GemTut(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.BringIn();
         if(!(_loc2_ && Boolean(param1)))
         {
            this.SetupSmallBackground();
            if(!_loc2_)
            {
               this.m_mainFunctionToCall = param1;
               if(_loc3_ || Boolean(param1))
               {
                  this.m_titleText.text = "Congratulations";
                  this.m_descriptionText.text = "You’ve gotten your first gem!  You can add it to a minion to make them even more powerful";
                  this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_firstGemTutorial"));
                  addr60:
                  addChild(this.m_extraSprites[0]);
                  this.m_extraSprites[0].x = 154;
                  if(_loc3_)
                  {
                     this.m_extraSprites[0].y = 252;
                     this.m_extraSprites[0].alpha = 0;
                  }
                  §§goto(addr120);
               }
               TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
               if(_loc3_)
               {
                  this.BringInSmallBackground();
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this.BringInDescriptionText();
                  }
                  this.BringInOkButton();
                  this.BringInTitleText();
               }
               §§goto(addr120);
            }
            addr120:
            this.m_exitOutFunctionToCall = this.ExitOut_GemTut;
            return;
         }
         §§goto(addr60);
      }
      
      private function ExitOut_GemTut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.ExitOutSmallBackground();
            this.ExitOutOkButton();
            if(!(_loc1_ && _loc1_))
            {
               this.ExitOutDescriptionText();
            }
            this.ExitOutTitleText();
            TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
            TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
         }
      }
      
      public function BringIn_ReplayFloor(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.BringIn();
         if(!_loc3_)
         {
            this.SetupSmallBackground();
            if(!(_loc3_ && Boolean(param1)))
            {
               this.m_mainFunctionToCall = param1;
               this.m_titleText.text = "Tower Tip";
               if(!(_loc3_ && _loc2_))
               {
                  this.m_descriptionText.text = "You can replay floors to get more stars and new minions";
                  this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_starsAndNewMinions"));
                  if(!_loc3_)
                  {
                     addChild(this.m_extraSprites[0]);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr74:
                        this.m_extraSprites[0].x = 46;
                        §§goto(addr80);
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr106);
               }
               addr80:
               this.m_extraSprites[0].y = 246;
               this.m_extraSprites[0].alpha = 0;
               if(_loc2_)
               {
                  TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
                  if(_loc2_)
                  {
                     addr106:
                     this.BringInSmallBackground();
                  }
               }
               this.BringInDescriptionText();
               this.BringInOkButton();
               if(_loc2_ || _loc2_)
               {
                  this.BringInTitleText();
                  if(_loc2_ || Boolean(this))
                  {
                     addr135:
                     this.m_exitOutFunctionToCall = this.ExitOut_ReplayFloor;
                  }
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr106);
      }
      
      private function ExitOut_ReplayFloor() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.ExitOutSmallBackground();
         if(_loc2_ || Boolean(this))
         {
            this.ExitOutOkButton();
            if(!_loc1_)
            {
               this.ExitOutDescriptionText();
               this.ExitOutTitleText();
               addr45:
               TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
            }
            TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
            return;
         }
         §§goto(addr45);
      }
      
      public function BringIn_ResetTalentTreesTut(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(this))
         {
            this.BringIn();
            if(!(_loc3_ && Boolean(this)))
            {
               this.SetupSmallBackground();
               if(_loc2_)
               {
                  this.m_mainFunctionToCall = param1;
                  this.m_titleText.text = "Battle Tip";
                  this.m_textFormat.size = 13;
                  if(!_loc3_)
                  {
                     this.m_descriptionText.defaultTextFormat = this.m_textFormat;
                     this.m_descriptionText.text = "If a fight is giving you a hard time try and choose better moves for the fight by reseting your skill trees";
                     this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_resetTalentPointsIcon"));
                     addChild(this.m_extraSprites[0]);
                     this.m_extraSprites[0].x = 163;
                     this.m_extraSprites[0].y = 247;
                     if(_loc2_ || Boolean(param1))
                     {
                        this.m_extraSprites[0].alpha = 0;
                        this.m_textFormat.size = 14;
                        addr98:
                        this.m_textFormat.color = 16382457;
                        this.m_extraTexts.push(new TextField());
                        addr107:
                        this.m_extraTexts[0].embedFonts = true;
                        this.m_extraTexts[0].defaultTextFormat = this.m_textFormat;
                        this.m_extraTexts[0].wordWrap = true;
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.m_extraTexts[0].autoSize = TextFieldAutoSize.CENTER;
                           if(!(_loc3_ && _loc3_))
                           {
                              this.m_extraTexts[0].text = "Tip: You can access your skill tree\nat any time in the menu";
                              if(_loc2_ || _loc3_)
                              {
                                 this.m_extraTexts[0].width = this.m_bigBackground.width;
                                 if(!_loc3_)
                                 {
                                    addr177:
                                    this.m_extraTexts[0].y = 306;
                                    this.m_extraTexts[0].alpha = 0;
                                    this.m_extraTexts[0].selectable = false;
                                 }
                                 addChild(this.m_extraTexts[0]);
                                 TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
                                 addr211:
                                 TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":1});
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    this.BringInSmallBackground();
                                    addr237:
                                    this.BringInDescriptionText();
                                    addr239:
                                    this.BringInOkButton();
                                    if(!(_loc3_ && Boolean(param1)))
                                    {
                                       this.BringInTitleText();
                                    }
                                 }
                                 this.m_exitOutFunctionToCall = this.ExitOut_ResetTalentTreesTut;
                                 §§goto(addr254);
                              }
                              §§goto(addr239);
                           }
                           §§goto(addr237);
                        }
                     }
                     addr254:
                     return;
                  }
                  §§goto(addr107);
               }
               §§goto(addr177);
            }
            §§goto(addr98);
         }
         §§goto(addr211);
      }
      
      private function ExitOut_ResetTalentTreesTut() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.ExitOutSmallBackground();
            if(_loc1_ || _loc1_)
            {
               this.ExitOutOkButton();
            }
            this.ExitOutDescriptionText();
            this.ExitOutTitleText();
            if(!_loc2_)
            {
               TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
               if(_loc1_ || _loc1_)
               {
                  addr68:
                  TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":0});
               }
            }
            TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
            return;
         }
         §§goto(addr68);
      }
      
      public function BringIn_DeathTut(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(param1))
         {
            this.BringIn();
            if(!_loc3_)
            {
               this.SetupSmallBackground();
               if(_loc2_ || _loc2_)
               {
                  this.m_mainFunctionToCall = param1;
                  this.m_titleText.text = "Tower Tip";
                  this.m_descriptionText.text = "When you die you still get a small amount of\nexp for fighting";
                  this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_deathIcon"));
                  if(!_loc3_)
                  {
                     addChild(this.m_extraSprites[0]);
                     if(_loc2_ || Boolean(this))
                     {
                        this.m_extraSprites[0].x = 168;
                     }
                     §§goto(addr216);
                  }
                  this.m_extraSprites[0].y = 253;
                  this.m_extraSprites[0].alpha = 0;
                  if(_loc2_)
                  {
                     this.m_textFormat.size = 15;
                     if(_loc2_ || _loc2_)
                     {
                        this.m_textFormat.color = 16382457;
                        this.m_extraTexts.push(new TextField());
                        this.m_extraTexts[0].embedFonts = true;
                        if(!(_loc3_ && _loc2_))
                        {
                           this.m_extraTexts[0].defaultTextFormat = this.m_textFormat;
                           if(!_loc3_)
                           {
                              addr136:
                              this.m_extraTexts[0].wordWrap = true;
                              this.m_extraTexts[0].autoSize = TextFieldAutoSize.CENTER;
                              if(!_loc3_)
                              {
                                 addr151:
                                 this.m_extraTexts[0].text = "Tip: You don’t get any exp for forfeiting a battle";
                                 if(_loc2_ || _loc2_)
                                 {
                                    this.m_extraTexts[0].width = this.m_bigBackground.width;
                                    this.m_extraTexts[0].y = 322;
                                    this.m_extraTexts[0].alpha = 0;
                                    this.m_extraTexts[0].selectable = false;
                                 }
                                 §§goto(addr216);
                              }
                              addChild(this.m_extraTexts[0]);
                              addr196:
                              TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
                              TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":1});
                              §§goto(addr216);
                           }
                           §§goto(addr151);
                        }
                        addr216:
                        this.BringInSmallBackground();
                        this.BringInDescriptionText();
                        if(_loc2_ || _loc2_)
                        {
                           this.BringInOkButton();
                           if(_loc3_ && Boolean(param1))
                           {
                           }
                           §§goto(addr249);
                        }
                        this.BringInTitleText();
                        this.m_exitOutFunctionToCall = this.ExitOut_DeathTut;
                        §§goto(addr249);
                     }
                     §§goto(addr196);
                  }
                  §§goto(addr136);
               }
               §§goto(addr249);
            }
            §§goto(addr216);
         }
         addr249:
      }
      
      private function ExitOut_DeathTut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.ExitOutSmallBackground();
         if(_loc2_ || _loc1_)
         {
            this.ExitOutOkButton();
            this.ExitOutDescriptionText();
            this.ExitOutTitleText();
            TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
            TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":0});
         }
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_EnergyTut(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.BringIn();
            this.SetupBigBackground();
            this.m_mainFunctionToCall = param1;
            if(_loc3_ || Boolean(this))
            {
               this.m_titleText.text = "Energy";
               if(!_loc2_)
               {
                  this.m_descriptionText.text = "The blue bar shows how much energy a minion has";
                  this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_bigEnergyBar"));
                  addChild(this.m_extraSprites[0]);
                  this.m_extraSprites[0].x = 96;
                  this.m_extraSprites[0].y = 69 + 50;
                  this.m_extraSprites[0].alpha = 0;
                  if(!_loc2_)
                  {
                     this.m_extraSprites[0].visible = false;
                     TweenLite.to(this.m_extraSprites[0],0.5,{
                        "alpha":1,
                        "y":"-50"
                     });
                     if(!(_loc2_ && Boolean(param1)))
                     {
                        this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_energyBarBackground"));
                        addChild(this.m_extraSprites[1]);
                        this.m_extraSprites[1].x = 94;
                        if(_loc3_ || Boolean(param1))
                        {
                           this.m_extraSprites[1].y = 181;
                           this.m_extraSprites[1].alpha = 0;
                           if(!(_loc2_ && _loc3_))
                           {
                              TweenLite.to(this.m_extraSprites[1],0.5,{"alpha":1});
                              this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_energyBarArrow"));
                              if(_loc3_ || Boolean(this))
                              {
                                 addr172:
                                 addChild(this.m_extraSprites[2]);
                              }
                              this.m_extraSprites[2].x = 180 - 50;
                              this.m_extraSprites[2].y = 241;
                              addr186:
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr206:
                                 this.m_extraSprites[2].scaleX = -1;
                                 if(!(_loc2_ && Boolean(param1)))
                                 {
                                    this.m_extraSprites[2].alpha = 0;
                                    if(!_loc2_)
                                    {
                                       TweenLite.to(this.m_extraSprites[2],0.8,{
                                          "alpha":1,
                                          "x":"50"
                                       });
                                       if(_loc3_)
                                       {
                                          this.m_textFormat.size = 14;
                                          this.m_textFormat.color = 16382457;
                                          this.m_extraTexts.push(new TextField());
                                          this.m_extraTexts[0].embedFonts = true;
                                          this.m_extraTexts[0].defaultTextFormat = this.m_textFormat;
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             addr274:
                                             this.m_extraTexts[0].wordWrap = true;
                                             this.m_extraTexts[0].autoSize = TextFieldAutoSize.CENTER;
                                             addr287:
                                             this.m_extraTexts[0].text = "Tip:  Each move uses energy and if you run out,\nyou won’t be able to use your moves";
                                             if(_loc3_ || _loc3_)
                                             {
                                                addr300:
                                                this.m_extraTexts[0].width = this.m_bigBackground.width - 30;
                                                this.m_extraTexts[0].x = 15;
                                                if(_loc2_)
                                                {
                                                }
                                                addr332:
                                                this.m_extraTexts[0].selectable = false;
                                                if(!_loc2_)
                                                {
                                                   addChild(this.m_extraTexts[0]);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":1});
                                                      if(!(_loc2_ && Boolean(this)))
                                                      {
                                                         addr370:
                                                         this.BringInBigBackground();
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            this.BringInDescriptionText();
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               addr395:
                                                               this.BringInOkButton();
                                                               addr397:
                                                               this.BringInTitleText();
                                                            }
                                                            §§goto(addr397);
                                                         }
                                                         §§goto(addr403);
                                                      }
                                                      §§goto(addr397);
                                                   }
                                                   this.m_exitOutFunctionToCall = this.ExitOut_EnergyTut;
                                                   addr403:
                                                   return;
                                                }
                                                §§goto(addr370);
                                             }
                                             this.m_extraTexts[0].y = 336;
                                             this.m_extraTexts[0].alpha = 0;
                                             if(!_loc2_)
                                             {
                                                §§goto(addr332);
                                             }
                                          }
                                          §§goto(addr397);
                                       }
                                    }
                                    §§goto(addr332);
                                 }
                                 §§goto(addr287);
                              }
                              §§goto(addr300);
                           }
                           §§goto(addr206);
                        }
                        §§goto(addr395);
                     }
                     §§goto(addr172);
                  }
                  §§goto(addr186);
               }
               §§goto(addr274);
            }
            §§goto(addr186);
         }
         §§goto(addr370);
      }
      
      private function ExitOut_EnergyTut() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.ExitOutBigBackground();
         this.ExitOutOkButton();
         if(!_loc1_)
         {
            this.ExitOutTitleText();
            this.ExitOutDescriptionText();
            this.ExitOutNextButton();
         }
         TweenLite.to(this.m_extraSprites[0],0.5,{
            "alpha":0,
            "y":"50"
         });
         if(_loc2_ || _loc2_)
         {
            TweenLite.to(this.m_extraSprites[1],0.5,{"alpha":0});
            TweenLite.to(this.m_extraSprites[2],0.8,{
               "alpha":0,
               "x":"-50"
            });
            TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":0});
         }
         TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
      }
      
      public function BringIn_BattleBasicTuts(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.BringIn();
            this.SetupBigBackground();
            this.m_mainFunctionToCall = param1;
            if(_loc3_)
            {
               this.m_titleText.text = "Battle Basics";
               this.m_descriptionText.text = "The minions on the left are yours\nthe minions on the right are your opponents";
               if(!(_loc2_ && Boolean(this)))
               {
                  this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_yourThierMinionBackground"));
                  if(_loc3_)
                  {
                     addChild(this.m_extraSprites[0]);
                     if(_loc3_)
                     {
                        this.m_extraSprites[0].x = 33;
                        this.m_extraSprites[0].y = 195;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr84:
                           this.m_extraSprites[0].alpha = 0;
                           TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
                           if(_loc3_)
                           {
                              addr109:
                              this.BringInBigBackground();
                              this.BringInDescriptionText();
                              this.BringInNextButton();
                              if(_loc3_ || Boolean(this))
                              {
                                 addr122:
                                 this.BringInTitleText();
                                 if(_loc3_)
                                 {
                                 }
                                 §§goto(addr130);
                              }
                           }
                           this.m_exitOutFunctionToCall = this.ExitOut_BattleBasicTuts_1;
                        }
                        addr130:
                        return;
                     }
                  }
                  §§goto(addr84);
               }
               §§goto(addr122);
            }
            §§goto(addr109);
         }
         §§goto(addr122);
      }
      
      private function ExitOut_BattleBasicTuts_1() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            this.ExitOutOkButton();
            this.ExitOutTitleText();
            this.ExitOutDescriptionText();
            if(_loc2_ || Boolean(this))
            {
               this.ExitOutNextButton();
               TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
               if(!(_loc1_ && _loc2_))
               {
                  addr67:
                  TweenLite.to(this,0.5,{"onComplete":this.Cleanup});
                  if(_loc1_)
                  {
                  }
                  §§goto(addr85);
               }
               TweenLite.to(this,0.5,{"onComplete":this.BringIn_BattleBasicTuts_2});
               addr85:
               return;
            }
         }
         §§goto(addr67);
      }
      
      private function BringIn_BattleBasicTuts_2() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.SetupDefaultPositions();
         this.m_titleText.text = "Turn order";
         if(_loc1_)
         {
            this.m_descriptionText.text = "These boxes show the minion turn order";
            this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_yourMinionBackground"));
            addChild(this.m_extraSprites[0]);
            if(_loc1_)
            {
               this.m_extraSprites[0].x = 67;
               §§goto(addr47);
            }
            §§goto(addr147);
         }
         addr47:
         this.m_extraSprites[0].y = 169;
         this.m_extraSprites[0].alpha = 0;
         if(_loc1_)
         {
            TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
            if(!_loc2_)
            {
               this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_yourMinionArrow"));
               addChild(this.m_extraSprites[1]);
               this.m_extraSprites[1].x = 99 - 50;
            }
            this.m_extraSprites[1].y = 218;
            if(_loc1_)
            {
               this.m_extraSprites[1].alpha = 0;
               if(_loc1_)
               {
                  TweenLite.to(this.m_extraSprites[1],0.8,{
                     "alpha":1,
                     "x":"50"
                  });
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this.m_textFormat.size = 13;
                     this.m_textFormat.color = 16382457;
                     if(!_loc2_)
                     {
                        addr147:
                        this.m_extraTexts.push(new TextField());
                        if(!_loc2_)
                        {
                           this.m_extraTexts[0].embedFonts = true;
                           if(!(_loc2_ && _loc1_))
                           {
                              this.m_extraTexts[0].defaultTextFormat = this.m_textFormat;
                              addr174:
                              this.m_extraTexts[0].wordWrap = true;
                              if(_loc2_)
                              {
                              }
                              §§goto(addr211);
                           }
                           this.m_extraTexts[0].autoSize = TextFieldAutoSize.CENTER;
                           this.m_extraTexts[0].text = "Tip: Turn order is based on how much speed a minion has";
                           this.m_extraTexts[0].width = this.m_bigBackground.width;
                        }
                        this.m_extraTexts[0].y = 364;
                        if(!_loc2_)
                        {
                           §§goto(addr211);
                        }
                        §§goto(addr256);
                     }
                     addr211:
                     this.m_extraTexts[0].alpha = 0;
                     this.m_extraTexts[0].selectable = false;
                     addChild(this.m_extraTexts[0]);
                     TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":1});
                     if(_loc1_)
                     {
                        this.BringInDescriptionText();
                     }
                     §§goto(addr250);
                  }
                  §§goto(addr174);
               }
               §§goto(addr147);
            }
            §§goto(addr174);
         }
         addr250:
         this.BringInNextButton();
         if(_loc1_)
         {
            this.BringInTitleText();
            addr256:
            this.m_exitOutFunctionToCall = this.ExitOut_BattleBasicTuts_2;
         }
      }
      
      private function ExitOut_BattleBasicTuts_2() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.ExitOutOkButton();
            this.ExitOutTitleText();
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr32);
            }
            §§goto(addr97);
         }
         addr32:
         this.ExitOutDescriptionText();
         this.ExitOutNextButton();
         TweenLite.to(this.m_extraTexts[0],0.5,{"alpha":0});
         TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
         TweenLite.to(this.m_extraSprites[1],0.5,{
            "alpha":0,
            "x":"-50"
         });
         if(!(_loc1_ && Boolean(this)))
         {
            TweenLite.to(this,0.5,{"onComplete":this.Cleanup});
            addr97:
            TweenLite.to(this,0.5,{"onComplete":this.BringIn_BattleBasicTuts_3});
         }
      }
      
      private function BringIn_BattleBasicTuts_3() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.SetupDefaultPositions();
         this.m_titleText.text = "Health Bar";
         this.m_descriptionText.text = "The red bar shows how much health a minion has";
         this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_bigHealthBar"));
         if(_loc2_ || _loc1_)
         {
            addChild(this.m_extraSprites[0]);
            if(!_loc1_)
            {
               addr47:
               this.m_extraSprites[0].x = 114;
               if(_loc2_)
               {
                  this.m_extraSprites[0].y = 165;
                  if(!_loc1_)
                  {
                     this.m_extraSprites[0].alpha = 0;
                     addr69:
                     TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":1});
                     if(_loc2_)
                     {
                        this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_yourMinionHealth"));
                     }
                  }
                  addChild(this.m_extraSprites[1]);
                  this.m_extraSprites[1].x = 124;
                  if(!(_loc1_ && _loc1_))
                  {
                     this.m_extraSprites[1].y = 236;
                     this.m_extraSprites[1].alpha = 0;
                     TweenLite.to(this.m_extraSprites[1],0.5,{"alpha":1});
                     if(!_loc1_)
                     {
                        this.m_extraSprites.push(Singleton.utility.m_spriteHandler.CreateSprite("tutorial_yourMinionArrow"));
                        if(!_loc1_)
                        {
                           addChild(this.m_extraSprites[2]);
                           this.m_extraSprites[2].x = 295 + 50;
                           if(_loc2_ || Boolean(this))
                           {
                              addr170:
                              this.m_extraSprites[2].y = 227;
                              if(!(_loc1_ && Boolean(this)))
                              {
                                 this.m_extraSprites[2].scaleX = -1;
                                 addr189:
                                 this.m_extraSprites[2].alpha = 0;
                                 if(_loc2_)
                                 {
                                    TweenLite.to(this.m_extraSprites[2],0.8,{
                                       "alpha":1,
                                       "x":"-50"
                                    });
                                    addr216:
                                    this.BringInDescriptionText();
                                 }
                                 this.BringInOkButton();
                                 if(_loc2_ || _loc1_)
                                 {
                                    addr227:
                                    this.BringInTitleText();
                                    if(_loc1_)
                                    {
                                    }
                                    §§goto(addr235);
                                 }
                              }
                              this.m_exitOutFunctionToCall = this.ExitOut_BattleBasicTuts_3;
                              §§goto(addr235);
                           }
                           §§goto(addr189);
                        }
                        addr235:
                        return;
                     }
                     §§goto(addr227);
                  }
                  §§goto(addr170);
               }
               §§goto(addr69);
            }
            §§goto(addr216);
         }
         §§goto(addr47);
      }
      
      private function ExitOut_BattleBasicTuts_3() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.ExitOutBigBackground();
         if(_loc2_ || Boolean(this))
         {
            this.ExitOutOkButton();
            if(!_loc1_)
            {
               this.ExitOutTitleText();
               if(!_loc1_)
               {
                  addr31:
                  this.ExitOutDescriptionText();
                  this.ExitOutOkButton();
                  TweenLite.to(this.m_extraSprites[0],0.5,{"alpha":0});
               }
               TweenLite.to(this.m_extraSprites[1],0.5,{"alpha":0});
               TweenLite.to(this.m_extraSprites[2],0.5,{
                  "alpha":0,
                  "x":"50"
               });
            }
            TweenLite.to(this,0.5,{"onComplete":this.FinishExitOut});
            return;
         }
         §§goto(addr31);
      }
   }
}
