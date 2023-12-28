package BattleSystems.Visuals.BattleMods
{
   import Minions.MinionMove.BaseMinionMove;
   import States.ModStoneTypes;
   import States.StatType;
   import TopDown.Trainers.TrainerDataObject;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class MoveTimerModVisuals extends Sprite
   {
       
      
      private var m_opponetsStone:Sprite;
      
      private var m_playerStone:Sprite;
      
      private var m_timerText:TextField;
      
      private var m_moveIcon:Sprite;
      
      private var m_yourbuffPopupBackground:Sprite;
      
      private var m_yourbuffIcon:Sprite;
      
      private var m_yourbuffText:TextField;
      
      public function MoveTimerModVisuals()
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:TextFormat = new TextFormat();
         if(_loc2_ || _loc3_)
         {
            _loc1_.color = 15593717;
            _loc1_.size = 28;
            if(_loc2_)
            {
               _loc1_.font = "BurbinCasual";
               if(_loc2_)
               {
                  addr37:
                  _loc1_.align = TextFormatAlign.CENTER;
                  if(!(_loc3_ && _loc2_))
                  {
                     this.m_opponetsStone = Singleton.utility.m_spriteHandler.CreateSprite("modStone_extraMoveStone");
                     this.m_opponetsStone.x = 225;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        this.m_opponetsStone.y = -44;
                        addChild(this.m_opponetsStone);
                        this.m_playerStone = Singleton.utility.m_spriteHandler.CreateSprite("modStone_extraMoveStone");
                     }
                     this.m_playerStone.x = -87;
                     this.m_playerStone.y = -40;
                     if(_loc2_ || Boolean(this))
                     {
                        addChild(this.m_playerStone);
                        this.m_playerStone.scaleX = -1;
                        this.m_yourbuffPopupBackground = Singleton.utility.m_spriteHandler.CreateSprite("modStone_extraMoveYourBuffBackground");
                        this.m_yourbuffPopupBackground.x = -229;
                        this.m_yourbuffPopupBackground.y = 39;
                        addChild(this.m_yourbuffPopupBackground);
                        if(_loc2_)
                        {
                           this.m_yourbuffIcon = Singleton.utility.m_spriteHandler.CreateSprite("moveIcon_agileInspiration");
                        }
                        this.m_yourbuffIcon.x = 17;
                        if(!(_loc3_ && _loc2_))
                        {
                           this.m_yourbuffIcon.y = -47;
                           addr147:
                           this.m_yourbuffPopupBackground.addChild(this.m_yourbuffIcon);
                           if(!_loc3_)
                           {
                              this.m_yourbuffText = new TextField();
                              this.m_yourbuffText.x = -21;
                              if(_loc2_ || _loc3_)
                              {
                                 this.m_yourbuffText.y = 7;
                                 if(_loc2_)
                                 {
                                    this.m_yourbuffText.embedFonts = true;
                                    addr186:
                                    _loc1_.size = 13;
                                    this.m_yourbuffText.defaultTextFormat = _loc1_;
                                    this.m_yourbuffText.wordWrap = true;
                                    addr197:
                                    this.m_yourbuffText.autoSize = TextFieldAutoSize.CENTER;
                                    addr202:
                                    this.m_yourbuffText.text = "+20% speed";
                                    this.m_yourbuffText.width = 150;
                                    this.m_yourbuffText.selectable = false;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       this.m_yourbuffPopupBackground.addChild(this.m_yourbuffText);
                                       if(!_loc3_)
                                       {
                                          this.m_timerText = new TextField();
                                          if(_loc2_ || Boolean(_loc1_))
                                          {
                                             this.m_timerText.x = 256;
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                addr250:
                                                this.m_timerText.y = 40;
                                                this.m_timerText.embedFonts = true;
                                                if(_loc2_)
                                                {
                                                   addr260:
                                                   _loc1_.size = 28;
                                                   if(_loc2_ || Boolean(_loc1_))
                                                   {
                                                      addr270:
                                                      this.m_timerText.defaultTextFormat = _loc1_;
                                                      if(_loc2_)
                                                      {
                                                         addr276:
                                                         this.m_timerText.wordWrap = true;
                                                         if(!_loc3_)
                                                         {
                                                            this.m_timerText.autoSize = TextFieldAutoSize.CENTER;
                                                            this.m_timerText.text = "99";
                                                            this.m_timerText.width = 150;
                                                            addr295:
                                                            this.m_timerText.selectable = false;
                                                         }
                                                      }
                                                      addChild(this.m_timerText);
                                                      if(_loc2_ || Boolean(_loc1_))
                                                      {
                                                         this.m_moveIcon = Singleton.utility.m_spriteHandler.CreateSprite("moveIcon_agility");
                                                         §§goto(addr310);
                                                      }
                                                      §§goto(addr335);
                                                   }
                                                   §§goto(addr310);
                                                }
                                                §§goto(addr276);
                                             }
                                             §§goto(addr295);
                                          }
                                          addr310:
                                          if(_loc2_ || Boolean(this))
                                          {
                                             this.m_moveIcon.x = 308;
                                             addr335:
                                             this.m_moveIcon.y = -12;
                                             addChild(this.m_moveIcon);
                                          }
                                          return;
                                       }
                                       §§goto(addr270);
                                    }
                                    §§goto(addr335);
                                 }
                                 §§goto(addr250);
                              }
                              §§goto(addr202);
                           }
                        }
                        §§goto(addr197);
                     }
                     §§goto(addr186);
                  }
                  §§goto(addr147);
               }
               §§goto(addr260);
            }
            §§goto(addr295);
         }
         §§goto(addr37);
      }
      
      public function CheckForActivation() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(Singleton.dynamicData);
            if(!(_loc6_ && _loc2_))
            {
               §§push(§§pop().m_currTrainerData);
               if(_loc5_)
               {
                  if(§§pop().IsModActive(ModStoneTypes.MOD_STONE_MOVE_TIMER))
                  {
                     if(_loc5_ || _loc2_)
                     {
                        visible = true;
                        if(_loc6_ && _loc3_)
                        {
                           §§goto(addr54);
                        }
                     }
                     §§goto(addr54);
                  }
                  else
                  {
                     visible = false;
                     if(!_loc6_)
                     {
                        §§goto(addr54);
                     }
                  }
                  addr57:
                  §§push(Singleton.dynamicData.m_currTrainerData);
               }
               var _loc1_:TrainerDataObject = §§pop();
               removeChild(this.m_moveIcon);
               this.m_moveIcon = Singleton.utility.m_spriteHandler.CreateSprite(_loc1_.m_moveOnTimer.m_moveIcon);
               this.m_moveIcon.x = 308;
               if(!_loc6_)
               {
                  this.m_moveIcon.y = -12;
                  if(!(_loc6_ && Boolean(_loc1_)))
                  {
                     this.m_moveIcon.alpha = 0;
                     if(!_loc6_)
                     {
                        this.m_moveIcon.scaleX = 0.8;
                        if(_loc5_)
                        {
                           this.m_moveIcon.scaleY = this.m_moveIcon.scaleX;
                        }
                     }
                     addr112:
                     var _loc2_:BaseMinionMove = Singleton.staticData.GetBaseMinionMove(_loc1_.m_passiveMoveForMoveOnTimer);
                     this.m_yourbuffPopupBackground.removeChild(this.m_yourbuffIcon);
                     this.m_yourbuffIcon = Singleton.utility.m_spriteHandler.CreateSprite(_loc2_.m_moveIcon);
                     this.m_yourbuffIcon.x = 17;
                     this.m_yourbuffIcon.y = -47;
                     this.m_yourbuffIcon.alpha = 0;
                     if(!(_loc6_ && Boolean(this)))
                     {
                        this.m_yourbuffIcon.scaleX = 0.8;
                        this.m_yourbuffIcon.scaleY = this.m_moveIcon.scaleX;
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           addr168:
                           this.m_yourbuffPopupBackground.addChild(this.m_yourbuffIcon);
                        }
                        TweenLite.to(this.m_moveIcon,1.5,{
                           "delay":1.9,
                           "alpha":1
                        });
                        TweenLite.to(this.m_yourbuffIcon,1.5,{
                           "delay":1.9,
                           "alpha":1
                        });
                        var _loc3_:* = "test test";
                        var _loc4_:Object = 1842204;
                        §§push(_loc2_.m_isPassive);
                        if(_loc5_)
                        {
                           §§push(§§pop());
                           if(!(_loc6_ && Boolean(_loc2_)))
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc6_ && Boolean(_loc3_)))
                                 {
                                    addr219:
                                    §§pop();
                                    §§push(_loc2_.m_isGlobalPassive);
                                    if(!_loc6_)
                                    {
                                       addr224:
                                       §§push(§§pop());
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc5_ || Boolean(_loc1_))
                                 {
                                    if(_loc2_.m_statTypesToBuff.length > 0)
                                    {
                                       if(_loc5_)
                                       {
                                          §§push("+");
                                          if(_loc5_ || Boolean(_loc1_))
                                          {
                                             §§push(§§pop() + _loc2_.m_amountOfStatTypeToBuffPercentage);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() + "% ");
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() + this.GetStatTypeNameAsString(_loc2_.m_statTypesToBuff[0]));
                                                   if(!(_loc6_ && Boolean(_loc1_)))
                                                   {
                                                      addr278:
                                                      _loc3_ = §§pop();
                                                      addr397:
                                                      §§push(16774504);
                                                      if(_loc5_)
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(!(_loc6_ && Boolean(_loc1_)))
                                                         {
                                                            addr508:
                                                            this.m_yourbuffText.text = _loc3_;
                                                            if(!(_loc6_ && Boolean(this)))
                                                            {
                                                               this.SetTimerText(_loc1_.m_moveTimeCounter);
                                                            }
                                                         }
                                                         return;
                                                      }
                                                      addr455:
                                                      _loc4_ = §§pop();
                                                      §§goto(addr508);
                                                      §§goto(addr508);
                                                      addr280:
                                                   }
                                                   else
                                                   {
                                                      addr362:
                                                      _loc3_ = §§pop();
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr397);
                                                      }
                                                      else
                                                      {
                                                         addr429:
                                                         addr430:
                                                         §§push("+");
                                                         §§push(_loc2_.m_armor);
                                                         if(_loc5_ || Boolean(_loc3_))
                                                         {
                                                            addr440:
                                                            §§push(§§pop() + §§pop());
                                                            §§push("% armor");
                                                            if(!_loc6_)
                                                            {
                                                               addr443:
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc5_)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  addr447:
                                                                  §§push(16774504);
                                                                  if(!(_loc6_ && Boolean(this)))
                                                                  {
                                                                     §§goto(addr455);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr475:
                                                                     _loc4_ = §§pop();
                                                                  }
                                                                  §§goto(addr455);
                                                               }
                                                               else
                                                               {
                                                                  addr469:
                                                                  §§push("% armor");
                                                               }
                                                               §§goto(addr508);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc6_)
                                                            {
                                                               addr473:
                                                               _loc3_ = §§pop();
                                                               §§goto(addr475);
                                                               §§push(15039999);
                                                            }
                                                            else
                                                            {
                                                               addr492:
                                                               §§push(_loc2_.m_setReflectDamageAmount);
                                                            }
                                                            §§goto(addr508);
                                                         }
                                                         addr502:
                                                         _loc3_ = §§pop() + §§pop() + "% reflect";
                                                         _loc4_ = 16774504;
                                                         §§goto(addr508);
                                                         addr501:
                                                      }
                                                      §§goto(addr508);
                                                   }
                                                   §§goto(addr508);
                                                }
                                                §§goto(addr473);
                                             }
                                             §§goto(addr278);
                                          }
                                          else
                                          {
                                             addr348:
                                             §§push(§§pop() + _loc2_.m_increasedExtraCritChance);
                                             if(!(_loc6_ && Boolean(this)))
                                             {
                                                §§push(§§pop() + "% crit");
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr362);
                                                }
                                                §§goto(addr502);
                                             }
                                             else
                                             {
                                                addr392:
                                                §§push(§§pop() + "% reflect");
                                                if(_loc5_)
                                                {
                                                   _loc3_ = §§pop();
                                                   §§goto(addr278);
                                                }
                                                §§goto(addr508);
                                             }
                                          }
                                          §§goto(addr440);
                                       }
                                       else
                                       {
                                          addr423:
                                          §§push(_loc2_.m_armor);
                                          §§push(0);
                                          if(!_loc6_)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                §§goto(addr429);
                                             }
                                             else
                                             {
                                                §§push("");
                                                if(_loc5_ || Boolean(_loc2_))
                                                {
                                                   addr466:
                                                   §§goto(addr469);
                                                   §§push(§§pop() + _loc2_.m_armor);
                                                }
                                             }
                                             §§goto(addr429);
                                          }
                                          else
                                          {
                                             addr481:
                                             if(§§pop() != §§pop())
                                             {
                                                if(_loc5_ || Boolean(_loc3_))
                                                {
                                                   addr489:
                                                   §§push("+");
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr492);
                                                   }
                                                }
                                                §§goto(addr429);
                                             }
                                          }
                                       }
                                       §§goto(addr508);
                                    }
                                    else
                                    {
                                       §§push(_loc2_.m_armor);
                                       §§push(0);
                                       if(!(_loc6_ && Boolean(_loc2_)))
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                §§push("+");
                                                if(!(_loc6_ && Boolean(_loc1_)))
                                                {
                                                   §§push(§§pop() + _loc2_.m_armor);
                                                   §§push("% armor");
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc6_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(_loc5_ || Boolean(_loc3_))
                                                         {
                                                            §§goto(addr278);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr489);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr430);
                                                      }
                                                      §§goto(addr501);
                                                   }
                                                   §§goto(addr443);
                                                }
                                                else
                                                {
                                                   §§goto(addr466);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr423);
                                             }
                                             §§goto(addr508);
                                          }
                                          else
                                          {
                                             §§push(_loc2_.m_increasedExtraCritChance);
                                             if(_loc5_)
                                             {
                                                §§push(0);
                                                if(!(_loc6_ && Boolean(_loc3_)))
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!(_loc6_ && Boolean(_loc1_)))
                                                      {
                                                         §§push("+");
                                                         if(_loc5_ || Boolean(_loc2_))
                                                         {
                                                            §§goto(addr348);
                                                         }
                                                         §§goto(addr362);
                                                      }
                                                      §§goto(addr278);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc2_.m_setReflectDamageAmount);
                                                      if(!(_loc6_ && Boolean(_loc3_)))
                                                      {
                                                         addr375:
                                                         §§push(0);
                                                         if(!(_loc6_ && Boolean(this)))
                                                         {
                                                            addr383:
                                                            if(§§pop() > §§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§push("+");
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr392);
                                                                     §§push(§§pop() + _loc2_.m_setReflectDamageAmount);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr466);
                                                                  }
                                                                  §§goto(addr469);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr423);
                                                               }
                                                            }
                                                            §§goto(addr278);
                                                         }
                                                         else
                                                         {
                                                            addr420:
                                                            if(§§pop() != §§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr423);
                                                               }
                                                               §§goto(addr447);
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc2_.m_setReflectDamageAmount);
                                                            }
                                                            §§goto(addr481);
                                                         }
                                                      }
                                                      §§goto(addr481);
                                                      §§push(0);
                                                   }
                                                   §§goto(addr508);
                                                }
                                                §§goto(addr383);
                                             }
                                             §§goto(addr375);
                                          }
                                       }
                                       §§goto(addr383);
                                    }
                                 }
                                 §§goto(addr280);
                              }
                              else
                              {
                                 §§push(_loc2_.m_armor);
                                 §§push(0);
                                 if(_loc5_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr420);
                                 }
                              }
                              §§goto(addr481);
                           }
                           §§goto(addr219);
                        }
                        §§goto(addr224);
                     }
                     §§goto(addr168);
                  }
                  addChild(this.m_moveIcon);
               }
               §§goto(addr112);
            }
            §§goto(addr57);
         }
         addr54:
      }
      
      public function PlayUseMoveAnimation() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:TimelineLite = new TimelineLite();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.append(new TweenLite(this.m_moveIcon,0.5,{"transformAroundCenter":{
               "scaleX":2,
               "scaleY":2
            }}));
            if(!_loc3_)
            {
               _loc1_.append(new TweenLite(this.m_moveIcon,2.3,{"transformAroundCenter":{"rotation":"720"}}));
               addr47:
               if(!_loc3_)
               {
                  _loc1_.append(new TweenLite(this.m_moveIcon,0.5,{"transformAroundCenter":{
                     "scaleX":0.8,
                     "scaleY":0.8
                  }}));
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function SetTimerText(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.m_timerText.text = "" + param1;
         }
      }
      
      private function GetStatTypeNameAsString(param1:int) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_ || _loc2_)
         {
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               §§push(StatType.STAT_ENERGY);
               if(!_loc3_)
               {
                  §§push(_loc2_);
                  if(!_loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_)
                        {
                           §§push(0);
                           if(_loc3_)
                           {
                              addr121:
                              §§push(_loc2_);
                              if(!_loc3_)
                              {
                                 addr124:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc4_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr132:
                                    if(StatType.STAT_SPEED !== _loc2_)
                                    {
                                       addr139:
                                       addr127:
                                       addr140:
                                       switch(2)
                                       {
                                          case 0:
                                             §§push("energy");
                                             if(_loc4_ || _loc2_)
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr36);
                                             break;
                                          case 1:
                                             §§push("attack");
                                             if(_loc4_)
                                             {
                                                addr36:
                                                return §§pop();
                                             }
                                             §§goto(addr60);
                                             break;
                                          case 2:
                                             §§push("healing");
                                             if(_loc4_)
                                             {
                                                return §§pop();
                                             }
                                             break;
                                          case 3:
                                             §§push("speed");
                                             if(_loc4_)
                                             {
                                                addr60:
                                                return §§pop();
                                             }
                                             break;
                                          default:
                                             §§push("health");
                                       }
                                       return §§pop();
                                       §§push(4);
                                    }
                                 }
                                 §§goto(addr139);
                                 §§push(3);
                              }
                              §§goto(addr132);
                           }
                        }
                        else
                        {
                           addr110:
                           §§push(1);
                        }
                        §§goto(addr139);
                     }
                     else
                     {
                        §§push(StatType.STAT_ATTACK);
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 §§goto(addr110);
                              }
                              else
                              {
                                 §§goto(addr133);
                              }
                           }
                           else
                           {
                              §§goto(addr121);
                              §§push(StatType.STAT_HEALING);
                           }
                           §§goto(addr133);
                        }
                     }
                  }
                  §§goto(addr124);
               }
               §§goto(addr121);
            }
            §§goto(addr127);
         }
         §§goto(addr140);
      }
   }
}
