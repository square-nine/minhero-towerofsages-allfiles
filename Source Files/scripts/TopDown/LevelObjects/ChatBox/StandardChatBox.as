package TopDown.LevelObjects.ChatBox
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.TopDownStates;
   import TopDown.LevelObjects.VisualLevelObject;
   import Utilities.Input;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class StandardChatBox extends VisualLevelObject
   {
       
      
      public var m_chatBoxID:int;
      
      public var m_isOpen:Boolean;
      
      private var m_nameText:TextField;
      
      private var m_chatText:TextField;
      
      private var m_textMask:Sprite;
      
      private var m_yesButton:TCButton;
      
      private var m_noButton:TCButton;
      
      private var m_moveTextArrow:Sprite;
      
      private var m_isAnimating:Boolean;
      
      private var m_onTextFinishFunction:Function;
      
      private var m_onYesFunction:Function;
      
      private var m_onNoFunction:Function;
      
      private var m_isYesNoButtonsActive:Boolean;
      
      public var m_isArrowOnYes:Boolean;
      
      private var m_numOfStarsText:TextField;
      
      public function StandardChatBox(param1:int = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(!_loc3_)
            {
               this.m_chatBoxID = param1;
               if(!_loc3_)
               {
                  this.SetFunctions();
                  if(!(_loc3_ && Boolean(this)))
                  {
                     this.m_yesButton = new TCButton(this.YesHasBeenPressed,"menus_speechBubble_yesButton");
                     if(_loc2_)
                     {
                        addr56:
                        this.m_noButton = new TCButton(this.NoHasBeenPressed,"menus_speechBubble_noButton");
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      override public function AddSprite() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.AddSprite();
         }
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 11188429;
         _loc1_.size = 17;
         if(_loc3_ || Boolean(this))
         {
            _loc1_.font = "BurbinCasual";
            if(_loc3_)
            {
               _loc1_.align = TextFormatAlign.LEFT;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.leading = -2;
                  if(_loc3_)
                  {
                     this.m_chatText = new TextField();
                     this.m_chatText.x = 10;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        this.m_chatText.y = 22;
                        this.m_chatText.embedFonts = true;
                        _loc1_.color = 14082288;
                        if(!_loc2_)
                        {
                           this.m_chatText.defaultTextFormat = _loc1_;
                           if(_loc3_)
                           {
                              this.m_chatText.wordWrap = true;
                              if(!_loc2_)
                              {
                                 this.m_chatText.autoSize = TextFieldAutoSize.LEFT;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    this.m_chatText.text = "temp temp temp temp temp temp temp temp temp temp ";
                                    if(!_loc2_)
                                    {
                                       this.m_chatText.width = 228;
                                       this.m_chatText.height = 50;
                                       this.m_chatText.selectable = false;
                                       m_currSprite.addChild(this.m_chatText);
                                       this.m_numOfStarsText = new TextField();
                                       if(_loc3_)
                                       {
                                          addr136:
                                          this.m_numOfStarsText.x = 10;
                                          if(_loc3_ || Boolean(this))
                                          {
                                             this.m_numOfStarsText.y = 46 + 20;
                                             if(!_loc2_)
                                             {
                                                addr155:
                                                this.m_numOfStarsText.embedFonts = true;
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§goto(addr166);
                                                }
                                                §§goto(addr357);
                                             }
                                             §§goto(addr253);
                                          }
                                          §§goto(addr430);
                                       }
                                       §§goto(addr472);
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr330);
                           }
                           §§goto(addr247);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr384);
                  }
                  §§goto(addr166);
               }
               §§goto(addr302);
            }
            addr166:
            _loc1_.size = 10;
            _loc1_.color = 15852362;
            this.m_numOfStarsText.defaultTextFormat = _loc1_;
            if(!_loc2_)
            {
               addr178:
               this.m_numOfStarsText.wordWrap = true;
               if(_loc3_ || _loc3_)
               {
                  this.m_numOfStarsText.autoSize = TextFieldAutoSize.LEFT;
                  this.m_numOfStarsText.text = "Stars: 0";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     this.m_numOfStarsText.width = 228;
                     this.m_numOfStarsText.height = 50;
                     if(_loc3_)
                     {
                        this.m_numOfStarsText.selectable = false;
                        m_currSprite.addChild(this.m_numOfStarsText);
                        this.m_nameText = new TextField();
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           this.m_nameText.x = -55;
                           if(_loc3_)
                           {
                              addr247:
                              this.m_nameText.y = 4;
                              if(!_loc2_)
                              {
                                 §§goto(addr253);
                              }
                              §§goto(addr363);
                           }
                           §§goto(addr430);
                        }
                        §§goto(addr287);
                     }
                     addr253:
                     this.m_nameText.embedFonts = true;
                     _loc1_.size = 11;
                     _loc1_.color = 8494017;
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.align = TextFormatAlign.CENTER;
                        this.m_nameText.defaultTextFormat = _loc1_;
                        this.m_nameText.wordWrap = true;
                        this.m_nameText.autoSize = TextFieldAutoSize.CENTER;
                        addr287:
                        this.m_nameText.text = "Key Keeper";
                        if(!(_loc2_ && _loc3_))
                        {
                           this.m_nameText.width = 228;
                           addr302:
                           this.m_nameText.height = 50;
                           if(!_loc2_)
                           {
                              this.m_nameText.selectable = false;
                              if(!(_loc2_ && _loc2_))
                              {
                                 m_currSprite.addChild(this.m_nameText);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr330:
                                    this.m_textMask = new Sprite();
                                    if(!_loc2_)
                                    {
                                       this.m_textMask.graphics.beginFill(5592405,0.5);
                                       this.m_textMask.graphics.drawRect(0,0,228,43);
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr357:
                                          this.m_textMask.graphics.endFill();
                                          if(!_loc2_)
                                          {
                                             addr363:
                                             this.m_textMask.x = 10;
                                             this.m_textMask.y = 7 + 22;
                                             m_currSprite.addChild(this.m_textMask);
                                             if(!(_loc2_ && Boolean(_loc1_)))
                                             {
                                                addr384:
                                                this.m_chatText.mask = this.m_textMask;
                                                §§push(this.m_yesButton);
                                                if(!_loc2_)
                                                {
                                                   §§push(202);
                                                   if(_loc3_)
                                                   {
                                                      §§pop().x = §§pop();
                                                      §§goto(addr444);
                                                   }
                                                   §§pop().y = §§pop() + 22;
                                                   if(_loc3_ || Boolean(_loc1_))
                                                   {
                                                      addr412:
                                                      m_currSprite.addChild(this.m_yesButton);
                                                      §§push(this.m_noButton);
                                                      if(!_loc2_)
                                                      {
                                                         §§push(202);
                                                         if(_loc3_)
                                                         {
                                                            §§pop().x = §§pop();
                                                            addr426:
                                                            §§push(this.m_noButton);
                                                            §§push(79);
                                                         }
                                                         §§pop().y = §§pop() + 22;
                                                         §§goto(addr430);
                                                      }
                                                   }
                                                   §§goto(addr426);
                                                }
                                                §§goto(addr401);
                                             }
                                             §§goto(addr430);
                                          }
                                          §§goto(addr426);
                                       }
                                       §§goto(addr430);
                                    }
                                    §§goto(addr412);
                                 }
                              }
                              addr430:
                              m_currSprite.addChild(this.m_noButton);
                              this.m_isArrowOnYes = false;
                              this.m_moveTextArrow = Singleton.utility.m_spriteHandler.CreateSprite("menus_speechBubble_arrow");
                              §§goto(addr444);
                           }
                           §§goto(addr472);
                        }
                     }
                     §§goto(addr444);
                  }
                  §§goto(addr472);
               }
               §§goto(addr330);
            }
            addr444:
            if(!_loc2_)
            {
               addr401:
               §§push(this.m_yesButton);
               §§push(52);
            }
            this.m_moveTextArrow.x = 230;
            this.m_moveTextArrow.y = 52 + 22;
            m_currSprite.addChild(this.m_moveTextArrow);
            if(!(_loc2_ && _loc2_))
            {
               addr472:
               this.m_isOpen = false;
               §§goto(addr475);
            }
            addr475:
            return;
         }
         §§goto(addr136);
      }
      
      override public function Cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            m_currSprite.removeChild(this.m_numOfStarsText);
            if(_loc2_ || _loc1_)
            {
               m_currSprite.removeChild(this.m_noButton);
               if(!(_loc1_ && _loc1_))
               {
                  §§goto(addr50);
               }
               §§goto(addr56);
            }
            §§goto(addr88);
         }
         addr50:
         m_currSprite.removeChild(this.m_yesButton);
         if(!_loc1_)
         {
            addr56:
            m_currSprite.removeChild(this.m_chatText);
            if(_loc2_ || Boolean(this))
            {
               m_currSprite.removeChild(this.m_nameText);
               m_currSprite.removeChild(this.m_textMask);
               if(_loc2_)
               {
                  m_currSprite.removeChild(this.m_moveTextArrow);
                  addr88:
                  super.Cleanup();
               }
            }
         }
      }
      
      public function SetFunctions(param1:Function = null, param2:Function = null, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.m_onTextFinishFunction = param1;
            if(_loc5_)
            {
               this.m_onYesFunction = param2;
               if(!_loc4_)
               {
                  addr26:
                  this.m_onNoFunction = param3;
               }
            }
            return;
         }
         §§goto(addr26);
      }
      
      public function BringInWithText(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(Singleton.utility);
         if(!_loc3_)
         {
            §§pop().m_soundController.PlaySound("menu_tickSound");
            §§push(Singleton.utility);
            if(!_loc3_)
            {
               §§pop().m_screenControllers.m_topDownScreen.m_currState = TopDownStates.IN_CHAT;
               if(_loc4_ || Boolean(this))
               {
                  this.m_isOpen = true;
                  m_currSprite.visible = true;
                  m_currSprite.alpha = 0;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     this.m_isAnimating = false;
                     if(!(_loc3_ && Boolean(param2)))
                     {
                        addr63:
                        this.m_chatText.text = param1;
                        if(_loc4_)
                        {
                           this.m_chatText.x = 10;
                           if(!(_loc3_ && Boolean(param2)))
                           {
                              this.m_chatText.y = 22;
                              if(!_loc3_)
                              {
                                 addr93:
                                 this.m_nameText.text = param2;
                                 this.m_moveTextArrow.rotation = 0;
                                 this.m_moveTextArrow.x = 230;
                                 this.m_moveTextArrow.y = 71;
                                 if(!_loc3_)
                                 {
                                    addr111:
                                    this.m_yesButton.alpha = 0;
                                    if(!_loc3_)
                                    {
                                       this.m_noButton.alpha = 0;
                                    }
                                 }
                              }
                              this.m_isYesNoButtonsActive = false;
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 this.SetTheExtraVisualsForTheChatBoxToWhereTheyNeedToBe();
                                 if(!_loc3_)
                                 {
                                    this.SetNumOfStars(0);
                                    TweenLite.to(m_currSprite,0.2,{"alpha":1});
                                    if(!(_loc3_ && Boolean(param2)))
                                    {
                                       addr161:
                                       Singleton.utility.m_stage.addEventListener(MouseEvent.CLICK,this.MouseClicked);
                                       addr159:
                                    }
                                 }
                              }
                              return;
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr159);
               }
               §§goto(addr63);
            }
         }
         §§goto(addr161);
      }
      
      public function SetNumOfStars(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 == 0)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this.m_numOfStarsText.visible = false;
                  if(_loc3_ && _loc3_)
                  {
                     addr57:
                     this.m_numOfStarsText.text = "Stars: " + param1 + "/3";
                  }
                  else
                  {
                     addr50:
                  }
               }
               §§goto(addr50);
            }
            else
            {
               this.m_numOfStarsText.visible = true;
               if(!_loc3_)
               {
                  §§goto(addr57);
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function Update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!this.m_isOpen)
         {
            if(_loc1_ || Boolean(this))
            {
               return;
            }
         }
         else
         {
            §§push(!this.m_isAnimating);
            if(_loc1_)
            {
               §§push(§§pop());
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(Input.kp("SPACE","ENTER"));
                  }
                  if(§§pop())
                  {
                     §§push(this.m_isYesNoButtonsActive);
                     if(!_loc2_)
                     {
                        if(!§§pop())
                        {
                           this.ActionHasBeenPreformed();
                           if(_loc1_)
                           {
                              addr72:
                              if(this.m_isYesNoButtonsActive)
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(!this.m_isAnimating);
                                    §§push(!this.m_isAnimating);
                                    if(!_loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          §§pop();
                                          §§push(Input.kp("UP","W"));
                                          if(!_loc2_)
                                          {
                                             addr92:
                                             if(§§pop())
                                             {
                                                if(_loc1_)
                                                {
                                                   this.m_isArrowOnYes = true;
                                                   this.m_moveTextArrow.y = 75 + 22;
                                                   addr111:
                                                   §§push(!this.m_isAnimating);
                                                   §§push(!this.m_isAnimating);
                                                   if(!_loc2_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr118:
                                                         §§pop();
                                                         §§push(Input.kp("DOWN","S"));
                                                         if(!_loc2_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc2_)
                                                            {
                                                               addr128:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     this.m_isArrowOnYes = false;
                                                                     this.m_moveTextArrow.y = 97 + 22;
                                                                     addr140:
                                                                     §§push(!this.m_isAnimating);
                                                                     §§push(!this.m_isAnimating);
                                                                     if(_loc1_ || _loc1_)
                                                                     {
                                                                        addr151:
                                                                        if(§§pop())
                                                                        {
                                                                           addr152:
                                                                           §§pop();
                                                                           addr206:
                                                                           if(_loc1_ || Boolean(this))
                                                                           {
                                                                              §§push(Input.kp("Y"));
                                                                              if(_loc1_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                              }
                                                                           }
                                                                           if(this.m_isYesNoButtonsActive)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr211:
                                                                                 this.m_noButton.m_isActive = true;
                                                                                 addr215:
                                                                                 this.m_yesButton.m_isActive = true;
                                                                              }
                                                                              §§goto(addr215);
                                                                           }
                                                                           §§goto(addr219);
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           addr167:
                                                                           this.YesHasBeenPressed(null);
                                                                           if(_loc1_)
                                                                           {
                                                                              addr172:
                                                                              §§push(this.m_isAnimating);
                                                                              if(_loc1_)
                                                                              {
                                                                                 addr178:
                                                                                 §§push(!§§pop());
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(_loc1_ || _loc2_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          addr199:
                                                                                          §§push(Input.kp("N"));
                                                                                       }
                                                                                       addr219:
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr199);
                                                                                 }
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 addr201:
                                                                                 this.NoHasBeenPressed(null);
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    §§goto(addr206);
                                                                                 }
                                                                                 §§goto(addr211);
                                                                              }
                                                                           }
                                                                           §§goto(addr206);
                                                                        }
                                                                        §§goto(addr172);
                                                                     }
                                                                     §§goto(addr178);
                                                                  }
                                                                  §§goto(addr167);
                                                               }
                                                               §§goto(addr140);
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                         §§goto(addr152);
                                                      }
                                                      §§goto(addr128);
                                                   }
                                                   §§goto(addr178);
                                                }
                                                §§goto(addr211);
                                             }
                                             §§goto(addr111);
                                          }
                                          §§goto(addr118);
                                       }
                                       §§goto(addr92);
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr111);
                              }
                              §§goto(addr152);
                           }
                           §§goto(addr201);
                        }
                        else if(this.m_isArrowOnYes)
                        {
                           this.YesHasBeenPressed(null);
                           if(_loc1_ || Boolean(this))
                           {
                              §§goto(addr72);
                           }
                           §§goto(addr118);
                        }
                        else
                        {
                           this.NoHasBeenPressed(null);
                           §§goto(addr72);
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr199);
                  }
                  §§goto(addr72);
               }
               §§goto(addr178);
            }
            §§goto(addr140);
         }
         §§goto(addr152);
      }
      
      private function ActionHasBeenPreformed() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(Singleton.utility);
            if(_loc2_)
            {
               §§pop().m_soundController.PlaySound("menu_tickSound");
               §§push(this.m_chatText.y + this.m_chatText.height - 65);
               if(!_loc3_)
               {
                  §§push(22);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr42:
                     §§push(§§pop() - §§pop());
                     §§push(0);
                  }
                  if(§§pop() < §§pop())
                  {
                     if(!_loc3_)
                     {
                        this.ExitOutTextBox();
                        addr48:
                        §§push(this.m_onTextFinishFunction);
                        if(!_loc3_)
                        {
                           if(§§pop() != null)
                           {
                           }
                           §§goto(addr66);
                        }
                        §§pop().call();
                     }
                     §§goto(addr66);
                  }
                  else
                  {
                     this.m_isAnimating = true;
                     var _loc1_:TimelineLite = new TimelineLite();
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.append(new TweenLite(this.m_chatText,0.25,{
                           "y":"-21.5",
                           "onComplete":this.SetTheExtraVisualsForTheChatBoxToWhereTheyNeedToBe
                        }));
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.append(new TweenLite(this.m_chatText,0.1,{"onComplete":this.CheckForTimeNeededToFinishTheAnimation}));
                        }
                     }
                     return;
                  }
               }
               §§goto(addr42);
            }
            addr66:
            if(_loc2_)
            {
               §§push(this.m_onTextFinishFunction);
            }
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.UpdateAnimationState();
            return;
         }
         §§goto(addr48);
      }
      
      private function SetTheExtraVisualsForTheChatBoxToWhereTheyNeedToBe() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.m_chatText.y + this.m_chatText.height - 65);
            if(!_loc2_)
            {
               §§push(22);
               if(_loc1_)
               {
                  addr35:
                  §§push(§§pop() - §§pop());
                  §§push(0);
               }
               if(§§pop() < §§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     this.m_moveTextArrow.alpha = 0;
                     §§push(!this.m_isYesNoButtonsActive);
                     §§push(!this.m_isYesNoButtonsActive);
                     if(!(_loc2_ && _loc1_))
                     {
                        if(§§pop())
                        {
                           §§pop();
                           §§push(this.m_onYesFunction);
                           if(_loc1_)
                           {
                              §§push(null);
                              if(!_loc2_)
                              {
                                 addr80:
                                 §§push(§§pop() == §§pop());
                                 if(_loc1_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    if(!_loc2_)
                                    {
                                       addr89:
                                       if(this.m_onNoFunction != null)
                                       {
                                          this.m_yesButton.alpha = 1;
                                          if(_loc1_)
                                          {
                                             this.m_noButton.alpha = 1;
                                             this.m_moveTextArrow.alpha = 1;
                                             this.m_moveTextArrow.rotation = 270;
                                             this.m_moveTextArrow.x = 204;
                                             if(this.m_isArrowOnYes)
                                             {
                                                if(_loc1_ || Boolean(this))
                                                {
                                                   this.m_moveTextArrow.y = 75 + 22;
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      addr142:
                                                   }
                                                   addr151:
                                                   this.m_isYesNoButtonsActive = true;
                                                   addr159:
                                                   return;
                                                   addr154:
                                                }
                                                §§goto(addr159);
                                             }
                                             else
                                             {
                                                this.m_moveTextArrow.y = 97 + 22;
                                                if(_loc1_)
                                                {
                                                   §§goto(addr151);
                                                }
                                                §§goto(addr154);
                                             }
                                          }
                                          §§goto(addr142);
                                       }
                                    }
                                    §§goto(addr151);
                                 }
                              }
                           }
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr80);
                  }
               }
               else
               {
                  this.m_moveTextArrow.alpha = 1;
               }
               §§goto(addr151);
            }
            §§goto(addr35);
         }
         §§goto(addr151);
      }
      
      private function MouseClicked(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(this))
         {
            if(!this.m_isYesNoButtonsActive)
            {
               if(_loc2_ || _loc3_)
               {
                  addr37:
                  this.ActionHasBeenPreformed();
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      private function CheckForTimeNeededToFinishTheAnimation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            if(!this.m_isYesNoButtonsActive)
            {
               if(_loc2_ || _loc2_)
               {
                  addr45:
                  this.FinishAnimation();
                  if(_loc1_ && _loc2_)
                  {
                  }
                  §§goto(addr64);
               }
            }
            else
            {
               TweenLite.to(this.m_chatText,0.2,{"onComplete":this.FinishAnimation});
            }
            addr64:
            return;
         }
         §§goto(addr45);
      }
      
      private function FinishAnimation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_isAnimating = false;
         }
      }
      
      private function ExitOutTextBox() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_isOpen = false;
            if(!_loc2_)
            {
               §§push(Singleton.utility);
               if(!_loc2_)
               {
                  §§pop().m_stage.removeEventListener(MouseEvent.CLICK,this.MouseClicked);
                  if(_loc1_)
                  {
                     addr46:
                     TweenLite.to(m_currSprite,0.2,{"alpha":0});
                     if(_loc1_ || _loc2_)
                     {
                        addr62:
                        Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.MOVEMENT;
                     }
                  }
                  return;
               }
            }
            §§goto(addr62);
         }
         §§goto(addr46);
      }
      
      private function YesHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.ExitOutTextBox();
            if(!(_loc2_ && Boolean(param1)))
            {
               §§push(this.m_onYesFunction);
               if(!_loc2_)
               {
                  if(§§pop() != null)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr59:
                        this.m_onYesFunction.call();
                        if(!(_loc2_ && _loc2_))
                        {
                           addr67:
                           Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.UpdateAnimationState();
                        }
                     }
                     return;
                  }
                  §§goto(addr67);
               }
            }
            §§goto(addr59);
         }
         §§goto(addr67);
      }
      
      private function NoHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.ExitOutTextBox();
            if(!(_loc2_ && Boolean(param1)))
            {
               §§push(this.m_onNoFunction);
               if(_loc3_ || Boolean(this))
               {
                  if(§§pop() != null)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr59:
                        this.m_onNoFunction.call();
                        addr57:
                        if(_loc2_)
                        {
                        }
                     }
                     §§goto(addr69);
                  }
                  Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.UpdateAnimationState();
                  addr69:
                  return;
               }
               §§goto(addr59);
            }
            §§goto(addr57);
         }
         §§goto(addr59);
      }
   }
}
