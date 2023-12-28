package BattleSystems.Visuals
{
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import States.TutorialTypes;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class VisualMoveButtonObject extends GameObject
   {
       
      
      private var m_moveButton:TCButton;
      
      private var m_textBackground:Sprite;
      
      private var m_moveNameText:TextField;
      
      private var m_cooldownBackground:Sprite;
      
      private var m_currMinion:OwnedMinion;
      
      public var m_currMove:BaseMinionMove;
      
      public var m_isInUse:Boolean;
      
      public var m_textBubble:Sprite;
      
      public var m_textArrow:Sprite;
      
      public function VisualMoveButtonObject()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(!_loc2_)
            {
               this.m_isInUse = false;
               if(!_loc2_)
               {
                  this.m_moveButton = new TCButton(this.MoveButtonHasBeenPressed);
                  if(_loc1_)
                  {
                     addr44:
                     this.m_moveButton.ActivateTooltip();
                  }
                  return;
               }
            }
         }
         §§goto(addr44);
      }
      
      public function CreateObject(param1:OwnedMinion, param2:int, param3:int) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || Boolean(param1))
         {
            this.m_isInUse = true;
            if(!_loc7_)
            {
               addr26:
               this.m_currMove = Singleton.staticData.GetBaseMinionMove(param2);
               if(!(_loc7_ && Boolean(param2)))
               {
                  addr39:
                  this.m_currMinion = param1;
               }
               var _loc4_:BaseMinionMove = Singleton.staticData.GetBaseMinionMove(param2);
               if(_loc8_ || Boolean(param3))
               {
                  §§push(this.m_moveButton);
                  if(!_loc7_)
                  {
                     §§pop().CreateButtonWithStrings(_loc4_.m_moveIcon);
                     if(!(_loc7_ && Boolean(param2)))
                     {
                        §§push(this.m_moveButton);
                        if(!(_loc7_ && Boolean(this)))
                        {
                           §§push(0.9);
                           if(_loc8_)
                           {
                              §§pop().scaleX = §§pop();
                              addr94:
                              if(!_loc7_)
                              {
                                 addr86:
                                 §§push(this.m_moveButton);
                                 §§push(0.9);
                              }
                              var _loc5_:BaseMinionMove = Singleton.staticData.GetBaseMinionMove(param2);
                              if(_loc8_)
                              {
                                 this.m_moveButton.SetNewPopupSprite(_loc5_.GetToolTipForMoveDescription());
                                 if(!(_loc7_ && Boolean(param2)))
                                 {
                                    this.m_textArrow = new Sprite();
                                    this.m_textArrow.graphics.beginFill(0);
                                    this.m_textArrow.graphics.drawRect(0,0,7,7);
                                    if(_loc7_)
                                    {
                                    }
                                    addr141:
                                    this.m_textArrow.x = 25;
                                    this.m_textArrow.y = -8;
                                    if(_loc8_ || Boolean(this))
                                    {
                                       this.m_textArrow.rotation = 45;
                                    }
                                    var _loc6_:TextFormat;
                                    (_loc6_ = new TextFormat()).color = 15461355;
                                    _loc6_.size = 10;
                                    if(!_loc7_)
                                    {
                                       _loc6_.font = "BurbinCasual";
                                       _loc6_.align = TextFormatAlign.LEFT;
                                       this.m_moveNameText = new TextField();
                                       this.m_moveNameText.embedFonts = true;
                                    }
                                    this.m_moveNameText.defaultTextFormat = _loc6_;
                                    this.m_moveNameText.autoSize = TextFieldAutoSize.CENTER;
                                    this.m_moveNameText.text = _loc4_.m_moveName;
                                    if(_loc8_)
                                    {
                                       this.m_moveNameText.y = 0;
                                    }
                                    this.m_moveNameText.selectable = false;
                                    this.m_textBubble = new Sprite();
                                    if(!_loc7_)
                                    {
                                       this.m_textBubble.graphics.beginFill(0);
                                       if(this.m_moveNameText.width > 60)
                                       {
                                          this.m_textBubble.graphics.drawRoundRect(0,0,this.m_moveNameText.width + 10,17,20);
                                          if(!_loc7_)
                                          {
                                             addr259:
                                             this.m_textBubble.graphics.endFill();
                                             if(_loc8_ || Boolean(param1))
                                             {
                                                addChild(this.m_textBubble);
                                                this.m_textBubble.x = -11;
                                                if(_loc8_)
                                                {
                                                   this.m_textBubble.y = -19;
                                                   addr284:
                                                   this.m_moveNameText.x = 1 + this.m_textBubble.width / 2 - this.m_moveNameText.width / 2;
                                                   this.m_textBubble.addChild(this.m_moveNameText);
                                                   §§push(param3 == 0);
                                                   §§push(param3 == 0);
                                                   if(!_loc7_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc8_ || Boolean(param1))
                                                         {
                                                            §§pop();
                                                            addr323:
                                                            §§push(param3 == 3);
                                                            if(!(param3 == 3))
                                                            {
                                                               if(_loc8_ || Boolean(param1))
                                                               {
                                                                  §§pop();
                                                                  addr340:
                                                                  §§push(param3 == 6);
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr345:
                                                                     §§push(§§pop());
                                                                     if(_loc8_ || Boolean(param1))
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc8_)
                                                                              {
                                                                                 addr362:
                                                                                 if(param3 == 9)
                                                                                 {
                                                                                    this.m_textBubble.x -= 10;
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       this.m_textBubble.x -= this.m_textBubble.width - 70;
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr449:
                                                                                       this.m_textBubble.x -= (this.m_textBubble.width - 70) / 2;
                                                                                       if(!(_loc8_ || Boolean(param3)))
                                                                                       {
                                                                                          addr540:
                                                                                          this.m_textBubble.x += 10;
                                                                                       }
                                                                                    }
                                                                                    addr548:
                                                                                    §§push(param3);
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr553:
                                                                                       addr552:
                                                                                       addr551:
                                                                                       addr554:
                                                                                       §§push(§§pop() == 3);
                                                                                       if(!(§§pop() == 3))
                                                                                       {
                                                                                          §§pop();
                                                                                          addr573:
                                                                                          §§push(param3);
                                                                                          §§push(4);
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                          }
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             if(_loc8_ || Boolean(param2))
                                                                                             {
                                                                                                addr582:
                                                                                                this.m_textArrow.y += 52;
                                                                                                this.m_textBubble.y += 68;
                                                                                                if(!(_loc7_ && Boolean(this)))
                                                                                                {
                                                                                                   addr605:
                                                                                                   this.m_cooldownBackground = new Sprite();
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      addr611:
                                                                                                      this.m_cooldownBackground.graphics.beginFill(16777215);
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         addr618:
                                                                                                         this.m_cooldownBackground.graphics.drawRoundRect(0,0,this.m_moveButton.width,this.m_moveButton.height,6);
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            this.m_cooldownBackground.graphics.endFill();
                                                                                                            if(_loc8_ || Boolean(param3))
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr665);
                                                                                                      }
                                                                                                      this.m_cooldownBackground.x = this.m_moveButton.x;
                                                                                                      this.m_cooldownBackground.y = this.m_moveButton.y;
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr665);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr605);
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(_loc8_ || Boolean(param3))
                                                                                          {
                                                                                             §§pop();
                                                                                             addr572:
                                                                                             §§goto(addr573);
                                                                                             §§push(param3);
                                                                                             §§push(5);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr573);
                                                                                    }
                                                                                    §§goto(addr572);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(param3);
                                                                                    §§push(1);
                                                                                    if(_loc8_ || Boolean(param2))
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(!(§§pop() == §§pop()))
                                                                                       {
                                                                                          §§pop();
                                                                                          §§push(param3);
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§push(4);
                                                                                             if(!(_loc7_ && Boolean(this)))
                                                                                             {
                                                                                                addr411:
                                                                                                §§push(§§pop() == §§pop());
                                                                                                if(!(§§pop() == §§pop()))
                                                                                                {
                                                                                                   §§pop();
                                                                                                   §§push(param3 == 7);
                                                                                                   if(_loc8_ || Boolean(this))
                                                                                                   {
                                                                                                      addr424:
                                                                                                      §§push(§§pop());
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            if(_loc8_ || Boolean(param2))
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(_loc8_ || Boolean(param1))
                                                                                                               {
                                                                                                                  addr445:
                                                                                                                  §§push(param3 == 10);
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     addr448:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        §§goto(addr449);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(param3 == 2);
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc8_ || Boolean(this))
                                                                                                                           {
                                                                                                                              addr484:
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    §§push(param3);
                                                                                                                                    if(_loc8_ || Boolean(param1))
                                                                                                                                    {
                                                                                                                                       §§push(5);
                                                                                                                                       if(_loc8_ || Boolean(param2))
                                                                                                                                       {
                                                                                                                                          addr505:
                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                          if(!(§§pop() == §§pop()))
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             §§push(param3);
                                                                                                                                             if(_loc8_ || Boolean(param3))
                                                                                                                                             {
                                                                                                                                                §§push(8);
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   addr519:
                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      addr522:
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(!(_loc7_ && Boolean(this)))
                                                                                                                                                      {
                                                                                                                                                         addr530:
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr531:
                                                                                                                                                            §§pop();
                                                                                                                                                            §§push(param3 == 11);
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               addr537:
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr540);
                                                                                                                                                                  }
                                                                                                                                                                  addr665:
                                                                                                                                                                  addChild(this.m_cooldownBackground);
                                                                                                                                                                  return;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr548);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr553);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr537);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr553);
                                                                                                                                                }
                                                                                                                                                §§goto(addr552);
                                                                                                                                             }
                                                                                                                                             §§goto(addr572);
                                                                                                                                          }
                                                                                                                                          §§goto(addr522);
                                                                                                                                       }
                                                                                                                                       §§goto(addr519);
                                                                                                                                    }
                                                                                                                                    §§goto(addr551);
                                                                                                                                 }
                                                                                                                                 §§goto(addr553);
                                                                                                                              }
                                                                                                                              §§goto(addr505);
                                                                                                                           }
                                                                                                                           §§goto(addr554);
                                                                                                                        }
                                                                                                                        §§goto(addr531);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr537);
                                                                                                               }
                                                                                                               §§goto(addr540);
                                                                                                            }
                                                                                                            §§goto(addr553);
                                                                                                         }
                                                                                                         §§goto(addr448);
                                                                                                      }
                                                                                                      §§goto(addr530);
                                                                                                   }
                                                                                                   §§goto(addr522);
                                                                                                }
                                                                                                §§goto(addr424);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr445);
                                                                                       }
                                                                                       §§goto(addr411);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr573);
                                                                              }
                                                                              §§goto(addr618);
                                                                           }
                                                                           §§goto(addr505);
                                                                        }
                                                                        §§goto(addr362);
                                                                     }
                                                                     §§goto(addr553);
                                                                  }
                                                                  §§goto(addr424);
                                                               }
                                                               §§goto(addr553);
                                                            }
                                                            §§goto(addr345);
                                                         }
                                                         §§goto(addr531);
                                                      }
                                                      §§goto(addr323);
                                                   }
                                                   §§goto(addr484);
                                                }
                                                §§goto(addr449);
                                             }
                                             §§goto(addr611);
                                          }
                                          §§goto(addr582);
                                       }
                                       else
                                       {
                                          this.m_textBubble.graphics.drawRoundRect(0,0,70,17,20);
                                          if(_loc8_ || Boolean(param2))
                                          {
                                             §§goto(addr259);
                                          }
                                       }
                                       §§goto(addr284);
                                    }
                                    §§goto(addr340);
                                 }
                                 this.m_textArrow.graphics.endFill();
                                 addChild(this.m_textArrow);
                              }
                              §§goto(addr141);
                           }
                           §§pop().scaleY = §§pop();
                           if(_loc8_)
                           {
                              addr90:
                              addChild(this.m_moveButton);
                           }
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr86);
               }
               §§goto(addr90);
            }
            §§goto(addr39);
         }
         §§goto(addr26);
      }
      
      public function AnimateIn(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.m_textBubble.alpha = 0;
            if(_loc3_)
            {
               addr22:
               this.m_textArrow.alpha = 0;
               if(_loc3_ || Boolean(param1))
               {
                  TweenLite.to(this.m_textBubble,0.2,{
                     "delay":param1,
                     "alpha":1
                  });
                  §§goto(addr40);
               }
               §§goto(addr64);
            }
            addr40:
            if(!(_loc2_ && Boolean(param1)))
            {
               addr64:
               TweenLite.to(this.m_textArrow,0.2,{
                  "delay":param1,
                  "alpha":1
               });
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function AnimateOut(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            TweenLite.to(this.m_textBubble,0.2,{"alpha":0});
            if(_loc3_)
            {
               TweenLite.to(this.m_textArrow,0.2,{"alpha":0});
            }
         }
      }
      
      public function SetIsTheMoveActive() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = true;
         if(!(_loc3_ && _loc1_))
         {
            this.m_cooldownBackground.visible = false;
            §§push(this.m_currMinion);
            if(_loc2_ || _loc3_)
            {
               if(§§pop().m_currEnergy < this.m_currMove.m_energyUsed)
               {
                  alpha = 0.3;
                  if(!_loc3_)
                  {
                     §§push(false);
                     if(_loc2_ || _loc1_)
                     {
                        _loc1_ = §§pop();
                        if(!(_loc3_ && _loc1_))
                        {
                           addr68:
                           if(this.m_currMinion.GetRatioOfTurnsLeftOnCoolDown(this.m_currMove.m_moveID) > 0)
                           {
                              addr76:
                              alpha = 0.3;
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(false);
                                 if(!_loc3_)
                                 {
                                    addr89:
                                    _loc1_ = §§pop();
                                    this.m_cooldownBackground.visible = true;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       this.m_cooldownBackground.scaleY = this.m_currMinion.GetRatioOfTurnsLeftOnCoolDown(this.m_currMove.m_moveID);
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          addr124:
                                          §§push(_loc1_);
                                          if(_loc2_ || _loc1_)
                                          {
                                             if(!§§pop())
                                             {
                                             }
                                          }
                                       }
                                       §§goto(addr137);
                                    }
                                    alpha = 1;
                                 }
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr89);
                  }
                  addr137:
                  return _loc1_;
               }
            }
            §§goto(addr68);
         }
         §§goto(addr76);
      }
      
      private function MoveButtonHasBeenPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(param1))
         {
            §§push(this.m_currMinion);
            if(_loc2_)
            {
               §§push(§§pop().m_currEnergy >= this.m_currMove.m_energyUsed);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr47:
                        §§pop();
                        if(!_loc3_)
                        {
                           addr58:
                           if(this.m_currMinion.GetRatioOfTurnsLeftOnCoolDown(this.m_currMove.m_moveID) == 0)
                           {
                              if(_loc2_ || Boolean(param1))
                              {
                                 Singleton.utility.m_screenControllers.m_battleScreen.m_playerMoveSystem.MoveChosen(this.m_currMove.m_moveID);
                                 if(_loc2_)
                                 {
                                    addr84:
                                    Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_MOVE_SELECT,true);
                                 }
                              }
                              return;
                           }
                        }
                        §§goto(addr84);
                     }
                  }
                  §§goto(addr58);
               }
               §§goto(addr47);
            }
         }
         §§goto(addr58);
      }
      
      public function TurnOffButtons() : void
      {
      }
      
      public function Cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            this.m_isInUse = false;
            if(_loc2_ || _loc1_)
            {
               this.m_textBubble.removeChild(this.m_moveNameText);
               removeChild(this.m_textArrow);
               if(!_loc1_)
               {
                  removeChild(this.m_textBubble);
               }
            }
            removeChild(this.m_cooldownBackground);
            if(!_loc1_)
            {
               addr66:
               removeChild(this.m_moveButton);
               if(!_loc1_)
               {
                  this.m_moveButton.Cleanup();
               }
            }
            return;
         }
         §§goto(addr66);
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.UpdateFullFrames();
            if(!(_loc1_ && _loc1_))
            {
               this.m_moveButton.m_isActive = true;
            }
         }
      }
   }
}
