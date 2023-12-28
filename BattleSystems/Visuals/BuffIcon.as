package BattleSystems.Visuals
{
   import Minions.MinionMove.BaseMinionMove;
   import States.StatType;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class BuffIcon extends Sprite
   {
       
      
      private var m_currMove:BaseMinionMove;
      
      private var m_buffIcon:Sprite;
      
      private var m_mousePoint:Sprite;
      
      private var m_popup:Sprite;
      
      private var m_popupText:TextField;
      
      public function BuffIcon(param1:BaseMinionMove)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         super();
         this.m_currMove = param1;
         this.m_buffIcon = Singleton.utility.m_spriteHandler.CreateSprite(param1.m_buffIcon);
         this.m_buffIcon.scaleX = 0.5;
         this.m_buffIcon.scaleY = 0.5;
         addChild(this.m_buffIcon);
         this.m_mousePoint = new Sprite();
         this.m_mousePoint.graphics.beginFill(5592405);
         if(!(_loc2_ && Boolean(param1)))
         {
            this.m_mousePoint.graphics.drawRect(0,0,1,1);
            this.m_mousePoint.graphics.endFill();
            if(!(_loc2_ && Boolean(this)))
            {
               addr81:
               §§push(Singleton.utility);
               if(_loc3_ || _loc2_)
               {
                  §§pop().m_stage.addChild(this.m_mousePoint);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr108:
                     this.m_mousePoint.visible = false;
                     this.CreatePopup();
                     if(_loc3_)
                     {
                        addr118:
                        Singleton.utility.m_stage.addEventListener(MouseEvent.MOUSE_MOVE,this.MouseMovement);
                     }
                  }
                  return;
               }
               §§goto(addr118);
            }
            §§goto(addr108);
         }
         §§goto(addr81);
      }
      
      public function CleanUp() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            removeChild(this.m_buffIcon);
            if(!_loc2_)
            {
               §§push(Singleton.utility);
               if(_loc1_ || _loc2_)
               {
                  §§pop().m_stage.removeChild(this.m_mousePoint);
                  if(_loc1_ || _loc1_)
                  {
                     this.m_popup.removeChild(this.m_popupText);
                     if(_loc2_)
                     {
                     }
                     §§goto(addr85);
                  }
                  §§push(Singleton.utility);
                  if(_loc1_)
                  {
                     addr71:
                     §§pop().m_stage.removeChild(this.m_popup);
                     if(_loc1_)
                     {
                        §§push(Singleton.utility);
                     }
                     §§goto(addr85);
                  }
                  §§pop().m_stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.MouseMovement);
                  §§goto(addr85);
               }
               §§goto(addr71);
            }
         }
         addr85:
      }
      
      private function MouseMovement(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.m_mousePoint.x = param1.stageX;
         if(_loc3_)
         {
            this.m_mousePoint.y = param1.stageY;
            if(Singleton.utility.m_collController.RectDisplayObjectCollision(this.m_mousePoint,this.m_buffIcon))
            {
               this.m_popup.x = this.m_mousePoint.x - this.m_popup.width / 2 + 5;
               this.m_popup.y = this.m_mousePoint.y - 18;
               this.m_popup.visible = true;
               addr75:
            }
            else
            {
               this.m_popup.x = -200;
               if(!_loc2_)
               {
                  this.m_popup.y = -200;
                  this.m_popup.visible = false;
               }
            }
            return;
         }
         §§goto(addr75);
      }
      
      private function CreatePopup() : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_)
         {
            this.m_popup = new Sprite();
            if(!_loc10_)
            {
               addr22:
               Singleton.utility.m_stage.addChild(this.m_popup);
            }
            var _loc1_:* = "test test";
            var _loc2_:Object = 1842204;
            §§push(this.m_currMove.m_DOTDamage > 0);
            §§push(this.m_currMove.m_DOTDamage > 0);
            if(_loc11_ || Boolean(_loc1_))
            {
               if(!§§pop())
               {
                  §§pop();
                  §§push(this.m_currMove.m_additionalDOTDamage);
                  §§push(0);
                  if(!(_loc10_ && _loc3_))
                  {
                     §§push(§§pop() > §§pop());
                     if(_loc11_ || Boolean(_loc2_))
                     {
                        addr67:
                        if(§§pop())
                        {
                           if(this.m_currMove.m_additionalDOTDamage > 0)
                           {
                              if(_loc11_ || Boolean(_loc2_))
                              {
                                 §§push("");
                                 §§push(this.m_currMove);
                                 if(!(_loc10_ && Boolean(_loc1_)))
                                 {
                                    §§push(§§pop() + §§pop().m_DOTDamage);
                                    if(_loc11_ || Boolean(_loc1_))
                                    {
                                       §§push("-");
                                       if(!(_loc10_ && Boolean(_loc1_)))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc11_ || _loc3_)
                                          {
                                             addr115:
                                             §§push(this.m_currMove.m_DOTDamage);
                                             §§push(this.m_currMove);
                                             if(_loc11_ || Boolean(_loc1_))
                                             {
                                                §§push(§§pop().m_additionalDOTDamage);
                                                if(_loc11_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc10_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      §§push(" damage");
                                                      if(!(_loc10_ && Boolean(this)))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc11_ || Boolean(_loc2_))
                                                         {
                                                            _loc1_ = §§pop();
                                                            addr171:
                                                            _loc2_ = 16740659;
                                                         }
                                                         else
                                                         {
                                                            addr368:
                                                            §§push(this.m_currMove.m_armor);
                                                            if(_loc11_)
                                                            {
                                                               addr375:
                                                               _loc1_ = §§pop() + §§pop() + "% armor";
                                                               addr455:
                                                               §§push(16774504);
                                                               if(!(_loc10_ && Boolean(this)))
                                                               {
                                                                  _loc2_ = §§pop();
                                                               }
                                                               else
                                                               {
                                                                  addr536:
                                                                  if(§§pop() != 0)
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        addr542:
                                                                        §§push("+" + this.m_currMove.m_setReflectDamageAmount);
                                                                        if(!(_loc10_ && Boolean(_loc1_)))
                                                                        {
                                                                           addr551:
                                                                           §§push(§§pop() + "% reflect");
                                                                        }
                                                                        _loc1_ = §§pop();
                                                                     }
                                                                     addr555:
                                                                     _loc2_ = 16774504;
                                                                  }
                                                               }
                                                               addr377:
                                                            }
                                                            else
                                                            {
                                                               addr435:
                                                               §§push(§§pop() + §§pop());
                                                               §§push("% reflect");
                                                               if(!_loc10_)
                                                               {
                                                                  addr439:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc11_ || Boolean(_loc1_))
                                                                  {
                                                                     addr447:
                                                                     _loc1_ = §§pop();
                                                                     if(_loc11_ || Boolean(_loc1_))
                                                                     {
                                                                        §§goto(addr455);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr495:
                                                                        §§push(16774504);
                                                                        if(!(_loc10_ && _loc3_))
                                                                        {
                                                                           addr503:
                                                                           _loc2_ = §§pop();
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr555);
                                                                        }
                                                                        addr557:
                                                                        var _loc3_:TextFormat = new TextFormat();
                                                                        if(_loc11_)
                                                                        {
                                                                           _loc3_.color = _loc2_;
                                                                        }
                                                                        _loc3_.size = 12;
                                                                        _loc3_.font = "BurbinCasual";
                                                                        _loc3_.align = TextFormatAlign.CENTER;
                                                                        if(!(_loc10_ && Boolean(_loc2_)))
                                                                        {
                                                                           this.m_popupText = new TextField();
                                                                           if(!(_loc10_ && Boolean(_loc3_)))
                                                                           {
                                                                              this.m_popupText.embedFonts = true;
                                                                              this.m_popupText.wordWrap = false;
                                                                              addr602:
                                                                              this.m_popupText.defaultTextFormat = _loc3_;
                                                                              this.m_popupText.autoSize = TextFieldAutoSize.CENTER;
                                                                              if(_loc11_)
                                                                              {
                                                                                 this.m_popupText.text = _loc1_;
                                                                              }
                                                                              this.m_popupText.selectable = false;
                                                                              this.m_popupText.x = -5;
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr627:
                                                                                 this.m_popupText.y = -6;
                                                                              }
                                                                              var _loc4_:int = 5;
                                                                              var _loc5_:int = 1;
                                                                              var _loc6_:int = 6;
                                                                              var _loc7_:int = 20;
                                                                              var _loc8_:int = this.m_popupText.textWidth;
                                                                              var _loc9_:int = -15;
                                                                              this.m_popup.graphics.beginFill(15066856,0.85);
                                                                              this.m_popup.graphics.drawRoundRect(-_loc4_ - _loc5_,-_loc4_ - _loc5_,_loc8_ + _loc4_ * 2 + _loc5_ * 2,_loc9_ + _loc7_ + _loc4_ * 3 + _loc5_ * 2,_loc6_);
                                                                              this.m_popup.graphics.drawRoundRect(-_loc4_,-_loc4_,_loc8_ + _loc4_ * 2,_loc9_ + _loc7_ + _loc4_ * 3,_loc6_);
                                                                              this.m_popup.graphics.beginFill(6186100,0.95);
                                                                              if(_loc11_)
                                                                              {
                                                                                 this.m_popup.graphics.drawRoundRect(-_loc4_,-_loc4_,_loc8_ + _loc4_ * 2,_loc9_ + _loc7_ + _loc4_ * 3,_loc6_);
                                                                                 this.m_popup.graphics.endFill();
                                                                                 this.m_popup.graphics.endFill();
                                                                                 if(_loc11_ || Boolean(_loc1_))
                                                                                 {
                                                                                    this.m_popupText.wordWrap = true;
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       this.m_popupText.width = this.m_popup.width;
                                                                                       this.m_popup.addChild(this.m_popupText);
                                                                                       addr774:
                                                                                       this.m_popup.x = -200;
                                                                                       if(_loc11_ || Boolean(_loc1_))
                                                                                       {
                                                                                          this.m_popup.y = -200;
                                                                                          this.m_popup.visible = false;
                                                                                       }
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                              }
                                                                              §§goto(addr774);
                                                                           }
                                                                           §§goto(addr627);
                                                                        }
                                                                        §§goto(addr602);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr520:
                                                                     _loc1_ = §§pop();
                                                                     _loc2_ = 15039999;
                                                                  }
                                                                  addr524:
                                                                  §§goto(addr557);
                                                               }
                                                               else
                                                               {
                                                                  addr493:
                                                                  _loc1_ = §§pop() + §§pop();
                                                               }
                                                               §§goto(addr495);
                                                            }
                                                            §§goto(addr555);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr271:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc11_ || Boolean(_loc2_))
                                                         {
                                                            _loc1_ = §§pop();
                                                            addr280:
                                                            _loc2_ = 8576630;
                                                         }
                                                         else
                                                         {
                                                            addr486:
                                                            §§push(§§pop() + this.m_currMove.m_armor);
                                                            if(!_loc10_)
                                                            {
                                                               §§goto(addr493);
                                                               §§push("% armor");
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr520);
                                                            }
                                                            §§goto(addr524);
                                                         }
                                                      }
                                                      §§goto(addr495);
                                                   }
                                                   else
                                                   {
                                                      addr253:
                                                      _loc1_ = §§pop() + §§pop() + " healing";
                                                   }
                                                   §§goto(addr280);
                                                }
                                                else
                                                {
                                                   addr252:
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§goto(addr253);
                                             }
                                             else
                                             {
                                                addr251:
                                                §§push(§§pop().m_additionalHOTHealing);
                                             }
                                             §§goto(addr252);
                                          }
                                          §§goto(addr447);
                                       }
                                       else
                                       {
                                          addr328:
                                          §§push(§§pop() + §§pop() + this.GetStatTypeNameAsString(this.m_currMove.m_statTypesToBuff[0]));
                                          if(_loc11_)
                                          {
                                             _loc1_ = §§pop();
                                             if(_loc11_ || Boolean(_loc1_))
                                             {
                                                §§goto(addr455);
                                             }
                                             else
                                             {
                                                addr485:
                                                §§goto(addr486);
                                                §§push("+");
                                             }
                                             §§goto(addr495);
                                          }
                                          else
                                          {
                                             addr404:
                                             §§push("% crit");
                                             if(!(_loc10_ && Boolean(this)))
                                             {
                                                _loc1_ = §§pop() + §§pop();
                                                addr414:
                                                §§goto(addr455);
                                             }
                                             §§goto(addr555);
                                          }
                                       }
                                       §§goto(addr493);
                                    }
                                    §§goto(addr115);
                                 }
                                 else
                                 {
                                    addr238:
                                    §§push(§§pop() + §§pop().m_HOTHealing);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() + "-");
                                       §§push(this.m_currMove);
                                       if(!_loc10_)
                                       {
                                          §§goto(addr251);
                                          §§push(§§pop().m_HOTHealing);
                                          §§push(this.m_currMove);
                                       }
                                       else
                                       {
                                          addr434:
                                          §§goto(addr435);
                                          §§push(§§pop().m_setReflectDamageAmount);
                                       }
                                       §§goto(addr495);
                                    }
                                 }
                                 §§goto(addr551);
                              }
                              §§goto(addr414);
                           }
                           else
                           {
                              §§push("");
                              if(!_loc10_)
                              {
                                 §§push(§§pop() + this.m_currMove.m_DOTDamage);
                                 §§push(" damage");
                                 if(!(_loc10_ && Boolean(_loc2_)))
                                 {
                                    _loc1_ = §§pop() + §§pop();
                                    if(!_loc10_)
                                    {
                                       §§goto(addr171);
                                    }
                                    else
                                    {
                                       §§goto(addr377);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr439);
                                 }
                                 §§goto(addr495);
                              }
                              else
                              {
                                 addr398:
                                 §§push(§§pop() + this.m_currMove.m_increasedExtraCritChance);
                                 if(!_loc10_)
                                 {
                                    §§goto(addr404);
                                 }
                                 else
                                 {
                                    addr511:
                                    §§push("% armor");
                                    if(_loc11_ || Boolean(_loc3_))
                                    {
                                       §§goto(addr520);
                                       §§push(§§pop() + §§pop());
                                    }
                                    else
                                    {
                                       §§goto(addr551);
                                    }
                                    §§goto(addr495);
                                 }
                              }
                              §§goto(addr551);
                           }
                        }
                        else
                        {
                           §§push(this.m_currMove);
                           if(_loc11_ || Boolean(_loc2_))
                           {
                              §§push(§§pop().m_HOTHealing > 0);
                              if(!(_loc10_ && Boolean(_loc3_)))
                              {
                                 §§push(§§pop());
                                 if(_loc11_)
                                 {
                                    addr197:
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       if(_loc11_ || Boolean(_loc3_))
                                       {
                                          addr211:
                                          if(this.m_currMove.m_additionalHOTHealing > 0)
                                          {
                                             if(!(_loc10_ && Boolean(_loc2_)))
                                             {
                                                §§push(this.m_currMove.m_additionalHOTHealing);
                                                if(!_loc10_)
                                                {
                                                   §§push(0);
                                                   if(!(_loc10_ && Boolean(_loc1_)))
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         §§push("");
                                                         §§push(this.m_currMove);
                                                         if(_loc11_)
                                                         {
                                                            §§goto(addr238);
                                                         }
                                                         §§goto(addr542);
                                                      }
                                                      else
                                                      {
                                                         §§push("");
                                                         if(!(_loc10_ && Boolean(_loc1_)))
                                                         {
                                                            §§goto(addr271);
                                                            §§push(§§pop() + this.m_currMove.m_HOTHealing);
                                                            §§push(" healing");
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr511);
                                                         }
                                                         §§goto(addr555);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr396:
                                                      if(§§pop() > §§pop())
                                                      {
                                                         addr397:
                                                         §§goto(addr398);
                                                         §§push("+");
                                                      }
                                                      else
                                                      {
                                                         §§push(this.m_currMove.m_setReflectDamageAmount);
                                                         if(_loc11_)
                                                         {
                                                         }
                                                         §§goto(addr555);
                                                      }
                                                      §§goto(addr555);
                                                   }
                                                   §§goto(addr555);
                                                }
                                                §§push(0);
                                                if(_loc11_)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      §§push("+");
                                                      if(!(_loc10_ && Boolean(this)))
                                                      {
                                                         §§goto(addr434);
                                                         §§push(this.m_currMove);
                                                      }
                                                      §§goto(addr542);
                                                   }
                                                   §§goto(addr455);
                                                }
                                                §§goto(addr536);
                                             }
                                             §§goto(addr253);
                                          }
                                          else
                                          {
                                             §§push(this.m_currMove.m_isPassive);
                                             if(!_loc10_)
                                             {
                                                §§push(§§pop());
                                                if(!_loc10_)
                                                {
                                                   addr293:
                                                   addr292:
                                                   if(§§pop())
                                                   {
                                                   }
                                                   addr306:
                                                   if(§§pop())
                                                   {
                                                      if(this.m_currMove.m_statTypesToBuff.length > 0)
                                                      {
                                                         §§push("+");
                                                         if(_loc11_)
                                                         {
                                                            §§push(§§pop() + this.m_currMove.m_amountOfStatTypeToBuffPercentage);
                                                         }
                                                         §§push("% ");
                                                         if(!(_loc10_ && Boolean(_loc2_)))
                                                         {
                                                            §§goto(addr328);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr375);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(this.m_currMove.m_armor);
                                                         if(_loc11_)
                                                         {
                                                            §§push(0);
                                                            if(_loc11_ || Boolean(_loc1_))
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push("+");
                                                                     if(_loc11_)
                                                                     {
                                                                        §§goto(addr368);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr398);
                                                                     }
                                                                  }
                                                                  §§goto(addr495);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.m_currMove.m_increasedExtraCritChance);
                                                                  if(!(_loc10_ && Boolean(this)))
                                                                  {
                                                                     §§goto(addr396);
                                                                     §§push(0);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr484:
                                                                     if(§§pop() > 0)
                                                                     {
                                                                        §§goto(addr485);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push("" + this.m_currMove.m_armor);
                                                                     }
                                                                     §§goto(addr555);
                                                                  }
                                                               }
                                                               §§goto(addr511);
                                                            }
                                                            §§goto(addr484);
                                                         }
                                                      }
                                                      §§goto(addr503);
                                                   }
                                                   else
                                                   {
                                                      if(this.m_currMove.m_armor != 0)
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            §§push(this.m_currMove);
                                                            if(!(_loc10_ && Boolean(_loc1_)))
                                                            {
                                                               §§goto(addr484);
                                                               §§push(§§pop().m_armor);
                                                            }
                                                            else
                                                            {
                                                               addr527:
                                                               §§push(§§pop().m_setReflectDamageAmount);
                                                               if(!(_loc10_ && Boolean(this)))
                                                               {
                                                                  §§goto(addr536);
                                                               }
                                                               §§goto(addr555);
                                                            }
                                                            §§goto(addr555);
                                                         }
                                                         §§goto(addr520);
                                                      }
                                                      else
                                                      {
                                                         §§push(this.m_currMove);
                                                      }
                                                      §§goto(addr527);
                                                   }
                                                }
                                             }
                                             §§pop();
                                             if(_loc11_ || Boolean(_loc2_))
                                             {
                                                addr304:
                                                §§goto(addr306);
                                                §§push(this.m_currMove.m_isGlobalPassive);
                                             }
                                          }
                                          §§goto(addr495);
                                       }
                                       §§goto(addr397);
                                    }
                                    §§goto(addr211);
                                 }
                                 §§goto(addr293);
                              }
                              §§goto(addr292);
                           }
                           §§goto(addr304);
                        }
                        §§goto(addr555);
                     }
                     §§goto(addr293);
                  }
                  §§goto(addr211);
               }
               §§goto(addr67);
            }
            §§goto(addr197);
         }
         §§goto(addr22);
      }
      
      private function GetStatTypeNameAsString(param1:int) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_ || Boolean(param1))
         {
            var _loc2_:* = §§pop();
            if(_loc4_ || Boolean(this))
            {
               §§push(StatType.STAT_ENERGY);
               §§push(_loc2_);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc3_)
                     {
                        §§push(0);
                        if(_loc3_ && Boolean(this))
                        {
                        }
                     }
                     else
                     {
                        addr140:
                        §§push(2);
                        if(_loc4_ || _loc2_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(StatType.STAT_ATTACK);
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        if(!_loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc4_ || Boolean(param1))
                              {
                                 §§push(1);
                              }
                              else
                              {
                                 §§goto(addr140);
                              }
                              addr174:
                              switch(§§pop())
                              {
                                 case 0:
                                    §§push("energy");
                                    if(_loc4_)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr50);
                                    break;
                                 case 1:
                                    §§push("attack");
                                    if(!_loc3_)
                                    {
                                       return §§pop();
                                    }
                                    break;
                                 case 2:
                                    §§push("healing");
                                    if(_loc4_ || _loc3_)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr50);
                                    break;
                                 case 3:
                                    §§push("speed");
                                    if(!_loc3_)
                                    {
                                       addr50:
                                       return §§pop();
                                    }
                                    break;
                                 default:
                                    §§push("health");
                              }
                              return §§pop();
                              addr173:
                           }
                           else
                           {
                              §§push(StatType.STAT_HEALING);
                              §§push(_loc2_);
                              if(_loc4_ || _loc2_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc4_ || Boolean(param1))
                                    {
                                       §§goto(addr140);
                                    }
                                    else
                                    {
                                       addr160:
                                       §§push(3);
                                       if(_loc4_ || _loc2_)
                                       {
                                       }
                                       §§goto(addr173);
                                    }
                                 }
                                 else
                                 {
                                    addr159:
                                    if(StatType.STAT_SPEED === _loc2_)
                                    {
                                       §§goto(addr160);
                                    }
                                    else
                                    {
                                       §§goto(addr173);
                                       §§push(4);
                                    }
                                    §§goto(addr173);
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr173);
                        }
                        §§goto(addr159);
                     }
                  }
                  §§goto(addr173);
               }
               §§goto(addr159);
            }
            §§goto(addr160);
         }
         §§goto(addr174);
      }
   }
}
