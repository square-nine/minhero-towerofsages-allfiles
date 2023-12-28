package TopDown.Menus
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.TopDownStates;
   import TopDown.Levels.Grass.CourtyardLevel;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class MinionTypeSelectMenu extends Sprite
   {
       
      
      private var m_blackBackground:Sprite;
      
      private var m_textBackground:Sprite;
      
      private var m_nameText:TextField;
      
      private var m_chatText:TextField;
      
      private var m_buttonPressID:int;
      
      private var m_regularButtons:Vector.<TCButton>;
      
      private var m_buttonIcons:Vector.<TCButton>;
      
      public function MinionTypeSelectMenu()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.m_blackBackground = new Sprite();
            if(!_loc6_)
            {
               this.m_blackBackground.graphics.beginFill(0,0.65);
               this.m_blackBackground.graphics.drawRect(0,0,700,525);
               addr36:
               this.m_blackBackground.graphics.endFill();
               addChild(this.m_blackBackground);
               if(_loc7_)
               {
                  this.m_textBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_speechBubble");
                  if(_loc7_ || _loc2_)
                  {
                     this.m_textBackground.x = 186;
                  }
                  this.m_textBackground.y = 77;
                  addr68:
                  addChild(this.m_textBackground);
               }
               var _loc1_:TextFormat = new TextFormat();
               _loc1_.color = 11188429;
               if(!_loc6_)
               {
                  _loc1_.size = 17;
                  _loc1_.font = "BurbinCasual";
                  _loc1_.align = TextFormatAlign.LEFT;
                  _loc1_.leading = -2;
                  this.m_chatText = new TextField();
                  this.m_chatText.x = 10;
                  this.m_chatText.y = 22;
                  if(_loc7_)
                  {
                     this.m_chatText.embedFonts = true;
                     if(!_loc6_)
                     {
                        _loc1_.color = 14082288;
                        this.m_chatText.defaultTextFormat = _loc1_;
                        if(_loc7_)
                        {
                           this.m_chatText.wordWrap = true;
                           this.m_chatText.autoSize = TextFieldAutoSize.LEFT;
                           this.m_chatText.text = "Now first things first.  How did you get your minions?";
                           this.m_chatText.width = 228;
                           if(_loc7_ || Boolean(this))
                           {
                              this.m_chatText.height = 50;
                              if(_loc7_ || Boolean(this))
                              {
                                 this.m_chatText.selectable = false;
                                 if(_loc7_)
                                 {
                                    this.m_textBackground.addChild(this.m_chatText);
                                    if(_loc7_ || _loc3_)
                                    {
                                       this.m_nameText = new TextField();
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          this.m_nameText.x = -55;
                                          addr191:
                                          this.m_nameText.y = 4;
                                          this.m_nameText.embedFonts = true;
                                          if(_loc7_)
                                          {
                                             _loc1_.size = 11;
                                             if(!_loc6_)
                                             {
                                                §§goto(addr213);
                                             }
                                             §§goto(addr227);
                                          }
                                       }
                                    }
                                    §§goto(addr277);
                                 }
                                 §§goto(addr227);
                              }
                              §§goto(addr277);
                           }
                           §§goto(addr251);
                        }
                        §§goto(addr191);
                     }
                     addr213:
                     _loc1_.color = 8494017;
                     _loc1_.align = TextFormatAlign.CENTER;
                     if(_loc7_ || Boolean(_loc1_))
                     {
                        addr227:
                        this.m_nameText.defaultTextFormat = _loc1_;
                        this.m_nameText.wordWrap = true;
                        this.m_nameText.autoSize = TextFieldAutoSize.CENTER;
                     }
                     this.m_nameText.text = "Grand Sage";
                     if(_loc7_ || _loc3_)
                     {
                        addr251:
                        this.m_nameText.width = 228;
                        this.m_nameText.height = 50;
                        if(!(_loc6_ && _loc3_))
                        {
                           this.m_nameText.selectable = false;
                           if(!(_loc6_ && Boolean(this)))
                           {
                              addr277:
                              this.m_textBackground.addChild(this.m_nameText);
                              this.m_regularButtons = new Vector.<TCButton>(3);
                              this.m_buttonIcons = new Vector.<TCButton>(3);
                           }
                        }
                     }
                     var _loc2_:Array = [this.Button1Pressed,this.Button2Pressed,this.Button3Pressed];
                     var _loc3_:Array = ["topDown_rescueButton","topDown_giftButton","topDown_notTellingButton"];
                     var _loc4_:Array = ["topDown_pictureRescueButton","topDown_pictureGiftButton","topDown_pictureNotTellingButton"];
                     var _loc5_:int = 0;
                     while(_loc5_ < this.m_regularButtons.length)
                     {
                        this.m_regularButtons[_loc5_] = new TCButton(_loc2_[_loc5_],_loc3_[_loc5_]);
                        this.m_regularButtons[_loc5_].x = 100 + _loc5_ * 180;
                        this.m_regularButtons[_loc5_].y = 200;
                        if(!_loc6_)
                        {
                           addChild(this.m_regularButtons[_loc5_]);
                           if(_loc7_)
                           {
                              this.m_buttonIcons[_loc5_] = new TCButton(_loc2_[_loc5_],_loc4_[_loc5_]);
                              this.m_buttonIcons[_loc5_].x = 100 + _loc5_ * 180;
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 this.m_buttonIcons[_loc5_].y = 263;
                                 addChild(this.m_buttonIcons[_loc5_]);
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 _loc5_++;
                                 continue;
                                 continue;
                              }
                           }
                           §§goto(addr418);
                        }
                        break;
                     }
                     this.visible = false;
                     addr418:
                     return;
                  }
                  §§goto(addr227);
               }
               §§goto(addr251);
            }
            §§goto(addr68);
         }
         §§goto(addr36);
      }
      
      public function BringInChatBoxWithPosition(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         this.m_textBackground.x = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer.x + param1;
         this.m_textBackground.y = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_bottomVisualLayer.y + param2;
         if(!_loc5_)
         {
            if(this.m_textBackground.y > 150)
            {
               this.m_textBackground.y = 150;
            }
            Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.IN_MINION_STAT_SELECTION;
            if(_loc4_)
            {
               this.visible = true;
               if(!_loc5_)
               {
                  addr62:
                  this.m_blackBackground.alpha = 0;
                  TweenLite.to(this.m_blackBackground,0.5,{
                     "delay":1.5,
                     "alpha":1
                  });
                  this.m_textBackground.alpha = 0;
                  if(!(_loc5_ && Boolean(param2)))
                  {
                     TweenLite.to(this.m_textBackground,0.5,{
                        "delay":0.5,
                        "alpha":1
                     });
                     addr87:
                  }
               }
               var _loc3_:int = 0;
               while(_loc3_ < 3)
               {
                  this.m_regularButtons[_loc3_].alpha = 0;
                  this.m_buttonIcons[_loc3_].alpha = 0;
                  this.m_regularButtons[_loc3_].y = this.m_textBackground.y + 105;
                  if(!(_loc5_ && Boolean(param2)))
                  {
                     this.m_buttonIcons[_loc3_].y = this.m_textBackground.y + 105 + 63;
                     TweenLite.to(this.m_regularButtons[_loc3_],0.5,{
                        "delay":2.1,
                        "alpha":1
                     });
                     if(!_loc5_)
                     {
                        TweenLite.to(this.m_buttonIcons[_loc3_],0.5,{
                           "delay":2.1,
                           "alpha":1
                        });
                        if(!(_loc5_ && Boolean(param2)))
                        {
                           _loc3_++;
                           if(!_loc4_)
                           {
                              break;
                           }
                           continue;
                           continue;
                        }
                     }
                     §§goto(addr201);
                  }
                  break;
               }
               Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOffTheActionIcon();
               addr201:
               return;
            }
            §§goto(addr62);
         }
         §§goto(addr87);
      }
      
      public function Update() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            this.m_regularButtons[_loc1_].m_isActive = true;
            if(!_loc3_)
            {
               this.m_buttonIcons[_loc1_].m_isActive = true;
               if(_loc3_)
               {
                  break;
               }
            }
            _loc1_++;
            if(!(_loc2_ || Boolean(this)))
            {
               break;
            }
         }
      }
      
      public function ButtonPressed(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            Singleton.dynamicData.SetNewReturnToOnDeathPoint();
            if(_loc4_)
            {
               this.m_buttonPressID = param1;
               if(_loc4_ || Boolean(this))
               {
                  addr31:
                  TweenLite.to(this.m_blackBackground,0.5,{
                     "delay":0.8,
                     "alpha":0
                  });
                  if(_loc4_)
                  {
                     TweenLite.to(this.m_textBackground,0.5,{
                        "delay":1.2,
                        "alpha":0,
                        "onComplete":this.FinsishExitingAnimation
                     });
                  }
               }
            }
            var _loc2_:int = 0;
            do
            {
               if(_loc2_ >= 3)
               {
                  if(!_loc3_)
                  {
                     Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOnTheActionIcon();
                     break;
                  }
                  break;
               }
               TweenLite.to(this.m_regularButtons[_loc2_],0.5,{"alpha":0});
               if(!_loc4_)
               {
                  break;
               }
               TweenLite.to(this.m_buttonIcons[_loc2_],0.5,{"alpha":0});
               if(_loc3_ && Boolean(this))
               {
                  break;
               }
               _loc2_++;
            }
            while(!(_loc3_ && Boolean(_loc2_)));
            
            return;
         }
         §§goto(addr31);
      }
      
      private function FinsishExitingAnimation() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && Boolean(this)))
         {
            this.visible = false;
         }
         var _loc1_:CourtyardLevel = Singleton.staticData.GetCurrentLevel() as CourtyardLevel;
         if(_loc2_)
         {
            _loc1_.SetTheMinionsStats(this.m_buttonPressID);
         }
      }
      
      public function Button1Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.ButtonPressed(0);
         }
      }
      
      public function Button2Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.ButtonPressed(1);
         }
      }
      
      public function Button3Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.ButtonPressed(2);
         }
      }
   }
}
