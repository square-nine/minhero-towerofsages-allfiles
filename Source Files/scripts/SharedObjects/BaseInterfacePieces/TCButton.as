package SharedObjects.BaseInterfacePieces
{
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   
   public class TCButton extends Sprite
   {
       
      
      public var m_isActive:Boolean;
      
      private var m_prevIsActive:Boolean;
      
      public var m_alwaysActive:Boolean;
      
      public var m_isOn:Boolean;
      
      public var m_restingSprite:Sprite;
      
      public var m_onOverSprite:Sprite;
      
      public var m_isMouseOver:Boolean;
      
      private var m_toolTipPopupSprite:Sprite;
      
      private var m_toolTipPopupText:TextField;
      
      private var m_toolTipSetX:int;
      
      private var m_toolTipSetY:int;
      
      public var m_isToolTipPopupActive:Boolean;
      
      private var m_onClickFunction:Function;
      
      public var m_onOverFunction:Function;
      
      public var m_onOutFunction:Function;
      
      public var m_onOverSpriteName:String;
      
      public var m_onClickSpriteName:String;
      
      public function TCButton(param1:Function, param2:String = "", param3:String = "")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            if(_loc4_)
            {
               this.m_onClickFunction = param1;
               if(!(_loc5_ && Boolean(param1)))
               {
                  if(param2 != "")
                  {
                     if(_loc4_ || Boolean(this))
                     {
                     }
                  }
                  §§goto(addr50);
               }
            }
            this.CreateButtonWithStrings(param2,param3);
         }
         addr50:
      }
      
      public function CreateButtonWithStrings(param1:String, param2:String = "") : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2 == "")
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this.CreateButton(Singleton.utility.m_spriteHandler.CreateSprite(param1));
                  addr32:
                  if(_loc4_ && Boolean(param2))
                  {
                  }
               }
            }
            else
            {
               this.CreateButton(Singleton.utility.m_spriteHandler.CreateSprite(param1),Singleton.utility.m_spriteHandler.CreateSprite(param2));
            }
            return;
         }
         §§goto(addr32);
      }
      
      public function CreateButton(param1:Sprite, param2:Sprite = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.m_isActive = false;
            this.m_prevIsActive = false;
            this.m_alwaysActive = false;
            this.m_isOn = true;
            this.m_isMouseOver = false;
            this.mouseChildren = false;
            this.m_onOverSpriteName = "menu_tickSound";
         }
         this.m_onClickSpriteName = "menu_onPress";
         §§push(Singleton.utility);
         if(!(_loc3_ && _loc3_))
         {
            §§pop().m_allButtons.push(this);
            this.m_restingSprite = param1;
            addChild(this.m_restingSprite);
            if(!_loc3_)
            {
               this.m_onOverSprite = param2;
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr78:
                  if(this.m_onOverSprite != null)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr84);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr94);
               }
               addr84:
               addChild(this.m_onOverSprite);
               if(!_loc3_)
               {
                  this.m_onOverSprite.visible = false;
                  addr94:
                  if(this.m_isToolTipPopupActive)
                  {
                     if(_loc4_ || Boolean(this))
                     {
                        addr113:
                        Singleton.utility.m_screenControllers.m_topMostLayer.addChild(this.m_toolTipPopupSprite);
                        addr111:
                     }
                  }
                  this.m_onOverFunction = this.OnOver;
                  if(_loc4_ || Boolean(param2))
                  {
                     this.m_onOutFunction = this.OnOut;
                  }
               }
               return;
            }
            §§goto(addr78);
         }
         §§goto(addr113);
      }
      
      public function Cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.m_isMouseOver);
            if(_loc1_)
            {
               if(§§pop())
               {
                  this.ResetButton();
                  addr22:
                  §§push(Singleton.utility);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§pop().m_allButtons.splice(Singleton.utility.m_allButtons.indexOf(this),1);
                     if(this.m_restingSprite != null)
                     {
                        removeChild(this.m_restingSprite);
                        if(_loc1_ || _loc1_)
                        {
                           addr68:
                           if(this.m_onOverSprite != null)
                           {
                              if(_loc1_)
                              {
                                 removeChild(this.m_onOverSprite);
                                 addr78:
                                 if(this.m_isToolTipPopupActive)
                                 {
                                    addr83:
                                    Singleton.utility.m_screenControllers.m_topMostLayer.removeChild(this.m_toolTipPopupSprite);
                                    addr81:
                                 }
                              }
                              return;
                           }
                           §§goto(addr78);
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr83);
               }
               §§goto(addr22);
            }
            §§goto(addr78);
         }
         §§goto(addr22);
      }
      
      private function SetButtonModeTo(param1:Boolean) : void
      {
      }
      
      public function ActivateTooltip(param1:String = "Temp Text") : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && Boolean(this)))
         {
            this.m_isToolTipPopupActive = true;
            if(_loc3_)
            {
               addr25:
               this.m_toolTipPopupSprite = new Sprite();
               if(_loc3_ || _loc3_)
               {
                  addr36:
                  Singleton.utility.m_screenControllers.m_topMostLayer.addChild(this.m_toolTipPopupSprite);
                  if(_loc3_)
                  {
                     addr45:
                     this.m_toolTipPopupSprite.visible = false;
                  }
                  var _loc2_:TextFormat = new TextFormat();
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     _loc2_.color = 16382457;
                     _loc2_.size = 14;
                     _loc2_.font = "BurbinCasual";
                     _loc2_.align = TextFormatAlign.CENTER;
                     this.m_toolTipPopupText = new TextField();
                     this.m_toolTipPopupText.embedFonts = true;
                     this.m_toolTipPopupText.defaultTextFormat = _loc2_;
                     if(_loc3_ || Boolean(param1))
                     {
                        this.m_toolTipPopupText.wordWrap = true;
                        if(!_loc4_)
                        {
                           this.m_toolTipPopupText.autoSize = TextFieldAutoSize.CENTER;
                        }
                        this.m_toolTipPopupText.text = "temp";
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.m_toolTipPopupText.width = 150;
                           addr132:
                           this.m_toolTipPopupText.selectable = false;
                           addr136:
                           this.m_toolTipPopupSprite.addChild(this.m_toolTipPopupText);
                        }
                        this.SetPopupText(param1);
                        return;
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr132);
               }
               §§goto(addr45);
            }
            §§goto(addr36);
         }
         §§goto(addr25);
      }
      
      public function SetPopupText(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || Boolean(this))
         {
            this.m_toolTipPopupText.text = param1;
         }
         var _loc2_:int = 5;
         var _loc3_:int = 2;
         var _loc4_:int = 6;
         this.m_toolTipPopupSprite.graphics.clear();
         this.m_toolTipPopupSprite.graphics.beginFill(15066856,0.85);
         if(_loc6_ || Boolean(_loc2_))
         {
            this.m_toolTipPopupSprite.graphics.drawRoundRect(-_loc2_ - _loc3_,-_loc2_ - _loc3_,this.m_toolTipPopupText.width + _loc2_ * 2 + _loc3_ * 2,this.m_toolTipPopupText.textHeight + _loc2_ * 3 + _loc3_ * 2,_loc4_);
            this.m_toolTipPopupSprite.graphics.drawRoundRect(-_loc2_,-_loc2_,this.m_toolTipPopupText.width + _loc2_ * 2,this.m_toolTipPopupText.textHeight + _loc2_ * 3,_loc4_);
            this.m_toolTipPopupSprite.graphics.endFill();
         }
         this.m_toolTipPopupSprite.graphics.beginFill(6186100,0.95);
         if(_loc6_ || Boolean(this))
         {
            this.m_toolTipPopupSprite.graphics.drawRoundRect(-_loc2_,-_loc2_,this.m_toolTipPopupText.width + _loc2_ * 2,this.m_toolTipPopupText.textHeight + _loc2_ * 3,_loc4_);
            if(_loc6_ || Boolean(_loc3_))
            {
               addr167:
               this.m_toolTipPopupSprite.graphics.endFill();
            }
            return;
         }
         §§goto(addr167);
      }
      
      public function SetNewPopupSprite(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(Singleton.utility);
            if(_loc2_)
            {
               §§push(§§pop().m_screenControllers);
               if(!(_loc3_ && Boolean(param1)))
               {
                  §§pop().m_topMostLayer.removeChild(this.m_toolTipPopupSprite);
                  if(!_loc3_)
                  {
                     this.m_toolTipPopupSprite = param1;
                     if(_loc2_ || Boolean(param1))
                     {
                        addr65:
                        Singleton.utility.m_screenControllers.m_topMostLayer.addChild(this.m_toolTipPopupSprite);
                        if(_loc2_)
                        {
                           addr71:
                           this.m_toolTipPopupSprite.visible = false;
                        }
                     }
                     return;
                  }
                  §§goto(addr71);
               }
            }
         }
         §§goto(addr65);
      }
      
      public function Clicked(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.m_isActive);
            if(!_loc2_)
            {
               §§push(!§§pop());
               if(_loc3_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(_loc3_ || Boolean(param1))
                     {
                        addr44:
                        §§pop();
                        if(_loc3_)
                        {
                           addr47:
                           §§push(this.m_isOn);
                           if(_loc3_ || _loc3_)
                           {
                           }
                           §§goto(addr57);
                        }
                        §§goto(addr75);
                     }
                  }
                  addr57:
                  §§goto(addr56);
               }
               addr56:
               if(!§§pop())
               {
                  if(_loc3_ || Boolean(this))
                  {
                     return;
                  }
               }
               else
               {
                  addr75:
                  Singleton.utility.m_soundController.PlaySound(this.m_onClickSpriteName,0.65);
                  if(_loc3_ || _loc2_)
                  {
                     this.m_onClickFunction.call(null,param1);
                  }
               }
               return;
            }
            §§goto(addr44);
         }
         §§goto(addr47);
      }
      
      public function OnOver() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.m_isActive);
            if(_loc1_ || _loc2_)
            {
               §§push(!§§pop());
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     if(_loc1_)
                     {
                        addr31:
                        §§pop();
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(this.m_isOn);
                           if(_loc1_)
                           {
                              addr51:
                              if(!§§pop())
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    return;
                                 }
                                 §§goto(addr79);
                              }
                              else
                              {
                                 addr60:
                                 this.m_isMouseOver = true;
                                 Singleton.utility.m_soundController.PlaySound(this.m_onOverSpriteName,0.5);
                                 if(_loc1_)
                                 {
                                    addr79:
                                    if(this.m_onOverSprite != null)
                                    {
                                       if(_loc1_ || Boolean(this))
                                       {
                                          addr90:
                                          this.m_onOverSprite.visible = true;
                                          this.m_restingSprite.visible = false;
                                       }
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr51);
                        }
                        §§goto(addr60);
                     }
                  }
               }
               §§goto(addr51);
            }
            §§goto(addr31);
         }
         §§goto(addr90);
      }
      
      public function OnOut() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.m_isActive);
         if(!_loc2_)
         {
            §§push(!§§pop());
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§pop();
                     §§push(this.m_isOn);
                     if(_loc1_)
                     {
                     }
                     addr47:
                     if(§§pop())
                     {
                        return;
                     }
                     Mouse.cursor = "auto";
                     if(_loc1_ || _loc1_)
                     {
                        this.m_isMouseOver = false;
                        if(this.m_onOverSprite != null)
                        {
                           addr73:
                           this.m_onOverSprite.visible = false;
                           this.m_restingSprite.visible = true;
                        }
                        return;
                     }
                     §§goto(addr73);
                  }
               }
               §§goto(addr47);
            }
            §§push(!§§pop());
         }
         §§goto(addr47);
      }
      
      public function MouseMovementForPopup(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.m_isActive);
         if(!_loc3_)
         {
            §§push(!§§pop());
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     §§push(this.m_isOn);
                     if(!(_loc3_ && _loc3_))
                     {
                        addr39:
                        §§push(!§§pop());
                        if(_loc2_ || Boolean(this))
                        {
                           addr47:
                           if(§§pop())
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 if(this.m_toolTipPopupSprite != null)
                                 {
                                    this.m_toolTipPopupSprite.visible = false;
                                 }
                                 return;
                              }
                              addr174:
                              this.m_toolTipPopupSprite.y = -1000;
                           }
                           else
                           {
                              addr87:
                              if(Singleton.utility.m_collController.RectDisplayObjectCollision(Singleton.utility.m_mousePointObject,this.m_restingSprite))
                              {
                                 if(_loc2_)
                                 {
                                    Mouse.cursor = "button";
                                    if(!_loc3_)
                                    {
                                       addr95:
                                       if(this.m_toolTipPopupSprite != null)
                                       {
                                          this.m_toolTipPopupSprite.visible = true;
                                          addr103:
                                          this.m_toolTipPopupSprite.x = Singleton.utility.m_stage.mouseX - this.m_toolTipPopupSprite.width / 2 + 5;
                                          this.m_toolTipPopupSprite.y = Singleton.utility.m_stage.mouseY - this.m_toolTipPopupSprite.height;
                                          if(_loc2_ || Boolean(param1))
                                          {
                                             if(this.m_toolTipPopupSprite.y < 10)
                                             {
                                             }
                                             addr178:
                                             return;
                                             addr147:
                                          }
                                          this.m_toolTipPopupSprite.y = 10;
                                          if(!_loc2_)
                                          {
                                             §§goto(addr174);
                                          }
                                          §§goto(addr178);
                                       }
                                       §§goto(addr147);
                                    }
                                    §§goto(addr103);
                                 }
                                 §§goto(addr95);
                              }
                              else if(this.m_toolTipPopupSprite != null)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    this.m_toolTipPopupSprite.visible = false;
                                    this.m_toolTipPopupSprite.x = -1000;
                                    §§goto(addr174);
                                 }
                              }
                           }
                           §§goto(addr178);
                        }
                     }
                     §§goto(addr87);
                  }
               }
            }
            §§goto(addr47);
         }
         §§goto(addr39);
      }
      
      protected function ResetButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            Mouse.cursor = "auto";
         }
         this.m_isMouseOver = false;
         if(this.m_onOverSprite != null)
         {
            if(_loc2_)
            {
               this.m_onOverSprite.visible = false;
               this.m_restingSprite.visible = true;
               addr50:
               if(this.m_toolTipPopupSprite != null)
               {
                  this.m_toolTipPopupSprite.visible = false;
                  if(_loc2_)
                  {
                     this.m_toolTipPopupSprite.x = -1000;
                  }
                  this.m_toolTipPopupSprite.y = -1000;
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
         §§push(this.m_prevIsActive);
         if(!_loc2_)
         {
            if(§§pop() != this.m_isActive)
            {
               if(_loc1_)
               {
                  §§push(this.m_isActive);
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        this.ResetButton();
                        if(_loc1_ || _loc1_)
                        {
                           §§goto(addr43);
                        }
                        §§goto(addr71);
                     }
                     §§goto(addr43);
                  }
                  §§goto(addr63);
               }
               §§goto(addr72);
            }
            addr43:
            this.m_prevIsActive = this.m_isActive;
            §§push(this.m_isOn);
            if(!(_loc2_ && _loc2_))
            {
               addr63:
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     this.m_isActive = false;
                     if(!_loc2_)
                     {
                        addr71:
                        return;
                     }
                     addr72:
                     §§push(this.m_alwaysActive);
                  }
               }
               §§goto(addr72);
            }
            if(§§pop())
            {
               if(_loc1_)
               {
                  this.m_isActive = true;
               }
            }
            else
            {
               this.m_isActive = false;
            }
            return;
         }
         §§goto(addr63);
      }
   }
}
