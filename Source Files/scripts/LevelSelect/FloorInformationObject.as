package LevelSelect
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.GameState;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class FloorInformationObject extends Sprite
   {
       
      
      private var m_background:Sprite;
      
      private var m_goButton:TCButton;
      
      private var m_currStarsIcon:Sprite;
      
      private var m_currStarsText:TextField;
      
      private var m_currFloor:int;
      
      private var m_newIcon:Sprite;
      
      private var m_currFloorIcon:Sprite;
      
      private var m_femaleIcon:Sprite;
      
      private var m_maleIcon:Sprite;
      
      private var m_hardModeIcon:Sprite;
      
      public function FloorInformationObject()
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_roomInformationBackground");
         if(_loc2_)
         {
            addChild(this.m_background);
            this.m_goButton = new TCButton(this.GoButtonPressed,"roomSelect_roomInformationGoButton");
            if(!(_loc3_ && _loc2_))
            {
               §§push(this.m_goButton);
               if(_loc2_)
               {
                  §§push(124);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§pop().x = §§pop();
                     if(_loc2_)
                     {
                        addr58:
                        this.m_goButton.y = 11;
                        addChild(this.m_goButton);
                        addr57:
                        addr55:
                        if(!(_loc3_ && Boolean(this)))
                        {
                           this.m_currStarsIcon = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_roomInformationStars");
                           if(!_loc3_)
                           {
                              addr79:
                              this.m_currStarsIcon.x = 24;
                              if(_loc2_ || _loc3_)
                              {
                                 this.m_currStarsIcon.y = 11;
                              }
                              addr98:
                              var _loc1_:TextFormat = new TextFormat();
                              if(!_loc3_)
                              {
                                 _loc1_.color = 15987699;
                                 _loc1_.size = 21;
                                 _loc1_.font = "BurbinCasual";
                                 if(_loc2_)
                                 {
                                    _loc1_.align = TextFormatAlign.LEFT;
                                    if(_loc2_ || _loc3_)
                                    {
                                       this.m_currStarsText = new TextField();
                                       this.m_currStarsText.x = 55;
                                       this.m_currStarsText.y = 10;
                                       this.m_currStarsText.embedFonts = true;
                                       if(_loc2_ || _loc3_)
                                       {
                                          this.m_currStarsText.defaultTextFormat = _loc1_;
                                          if(!_loc3_)
                                          {
                                             this.m_currStarsText.wordWrap = true;
                                             if(_loc2_ || _loc2_)
                                             {
                                                this.m_currStarsText.autoSize = TextFieldAutoSize.LEFT;
                                                this.m_currStarsText.text = "99/99";
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   this.m_currStarsText.width = 150;
                                                   addr193:
                                                   this.m_currStarsText.selectable = false;
                                                   addChild(this.m_currStarsText);
                                                   this.m_newIcon = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_roomInformationNewIcon");
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      this.m_newIcon.x = 164;
                                                      if(_loc2_)
                                                      {
                                                         this.m_newIcon.y = 8;
                                                         if(_loc2_)
                                                         {
                                                            addChild(this.m_newIcon);
                                                            if(_loc2_ || Boolean(this))
                                                            {
                                                               this.m_currFloorIcon = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_tempCharIcon");
                                                               if(_loc2_ || Boolean(this))
                                                               {
                                                                  this.m_currFloorIcon.x = 176;
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                     this.m_currFloorIcon.y = 0;
                                                                     addChild(this.m_currFloorIcon);
                                                                     addr271:
                                                                     this.m_femaleIcon = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_femaleIcon");
                                                                     addr278:
                                                                     this.m_femaleIcon.x = 13;
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        this.m_femaleIcon.y = 7;
                                                                        this.m_currFloorIcon.addChild(this.m_femaleIcon);
                                                                        addr298:
                                                                        this.m_maleIcon = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_maleIcon");
                                                                        if(_loc2_)
                                                                        {
                                                                           addr307:
                                                                           this.m_maleIcon.x = 13;
                                                                           if(_loc2_)
                                                                           {
                                                                              this.m_maleIcon.y = 7;
                                                                              if(_loc2_ || _loc2_)
                                                                              {
                                                                                 addr324:
                                                                                 this.m_currFloorIcon.addChild(this.m_maleIcon);
                                                                                 this.m_hardModeIcon = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_hardModeTab");
                                                                                 this.m_hardModeIcon.x = 34;
                                                                                 addr329:
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    addr354:
                                                                                    this.m_hardModeIcon.y = -13;
                                                                                 }
                                                                              }
                                                                              addChild(this.m_hardModeIcon);
                                                                              §§goto(addr362);
                                                                           }
                                                                           §§goto(addr354);
                                                                        }
                                                                        §§goto(addr362);
                                                                     }
                                                                     §§goto(addr329);
                                                                  }
                                                                  addr362:
                                                                  return;
                                                               }
                                                            }
                                                            §§goto(addr278);
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                      §§goto(addr278);
                                                   }
                                                   §§goto(addr298);
                                                }
                                                §§goto(addr324);
                                             }
                                             §§goto(addr193);
                                          }
                                          §§goto(addr354);
                                       }
                                       §§goto(addr193);
                                    }
                                 }
                                 §§goto(addr271);
                              }
                              §§goto(addr354);
                           }
                        }
                        addChild(this.m_currStarsIcon);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr58);
               }
               §§goto(addr57);
            }
            §§goto(addr79);
         }
         §§goto(addr55);
      }
      
      private function AnimateNewFloor() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:TimelineLite = new TimelineLite();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.append(new TweenLite(this.m_newIcon,0.8,{"x":"10"}));
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.append(new TweenLite(this.m_newIcon,0.8,{
                  "x":"-10",
                  "onComplete":this.AnimateNewFloor
               }));
            }
         }
      }
      
      public function StopAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            TweenLite.killTweensOf(this.m_newIcon);
         }
      }
      
      public function UpdateFloor(param1:int, param2:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:TextFormat = null;
         var _loc6_:TimelineLite = null;
         if(!_loc7_)
         {
            if(param2)
            {
               if(_loc8_)
               {
                  this.m_currFloor = param1 + Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER;
                  if(_loc8_ || _loc3_)
                  {
                     this.m_hardModeIcon.visible = true;
                     if(_loc7_)
                     {
                     }
                  }
               }
            }
            else
            {
               this.m_currFloor = param1;
               if(!_loc7_)
               {
                  addr52:
                  this.m_hardModeIcon.visible = false;
               }
            }
            var _loc3_:* = 12;
            §§push(Singleton.dynamicData.GetHighestStarCount(this.m_currFloor));
            if(_loc8_ || Boolean(_loc3_))
            {
               §§push(§§pop());
            }
            var _loc4_:* = §§pop();
            if(!_loc7_)
            {
               if(param2)
               {
                  §§push(18);
                  if(_loc8_)
                  {
                     _loc3_ = §§pop();
                     addr80:
                     §§push(param1);
                     if(!(_loc7_ && Boolean(param1)))
                     {
                        §§push(5);
                        if(_loc8_)
                        {
                           if(§§pop() % §§pop() == 4)
                           {
                              addr94:
                              §§push(3);
                              if(_loc8_ || Boolean(param1))
                              {
                                 _loc3_ = §§pop();
                              }
                              addr134:
                              if(§§pop() == _loc4_)
                              {
                                 addr136:
                                 (_loc5_ = new TextFormat()).color = 4695355;
                                 _loc5_.size = 21;
                                 _loc5_.font = "BurbinCasual";
                                 _loc5_.align = TextFormatAlign.LEFT;
                              }
                              else
                              {
                                 (_loc5_ = new TextFormat()).color = 15987699;
                                 if(_loc8_)
                                 {
                                    _loc5_.size = 21;
                                    if(_loc8_)
                                    {
                                       _loc5_.font = "BurbinCasual";
                                       if(_loc7_ && Boolean(this))
                                       {
                                       }
                                       addr182:
                                       this.m_currStarsText.defaultTextFormat = _loc5_;
                                       this.m_currStarsText.text = "" + _loc4_ + "/" + _loc3_;
                                       if(_loc8_)
                                       {
                                          §§push(Singleton.dynamicData);
                                          if(!(_loc7_ && Boolean(param1)))
                                          {
                                             if(§§pop().m_isMale)
                                             {
                                                this.m_maleIcon.visible = true;
                                                if(_loc8_)
                                                {
                                                   this.m_femaleIcon.visible = false;
                                                }
                                                else
                                                {
                                                   addr238:
                                                   this.m_femaleIcon.visible = true;
                                                }
                                                addr244:
                                                if(Singleton.dynamicData.GetHighestStarCount(this.m_currFloor) == 0)
                                                {
                                                   addr249:
                                                   this.m_newIcon.visible = true;
                                                   if(!_loc7_)
                                                   {
                                                      this.AnimateNewFloor();
                                                      this.x += 50;
                                                      if(!_loc7_)
                                                      {
                                                         this.alpha = 0;
                                                         if(_loc7_)
                                                         {
                                                         }
                                                         addr334:
                                                         §§push(Singleton.dynamicData);
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            if(§§pop().m_currFloorOfTower == this.m_currFloor)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  this.m_currFloorIcon.visible = true;
                                                                  if(_loc8_)
                                                                  {
                                                                     addr355:
                                                                     this.m_newIcon.visible = false;
                                                                     if(_loc8_)
                                                                     {
                                                                        addr373:
                                                                        if(!Singleton.dynamicData.GetHasUnlockedFloor(this.m_currFloor))
                                                                        {
                                                                           visible = false;
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr388:
                                                                              this.m_currStarsText.visible = true;
                                                                           }
                                                                           else
                                                                           {
                                                                              addr384:
                                                                           }
                                                                           return;
                                                                        }
                                                                        visible = true;
                                                                        §§goto(addr388);
                                                                        addr361:
                                                                     }
                                                                     §§goto(addr384);
                                                                  }
                                                                  §§goto(addr361);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               this.m_currFloorIcon.visible = false;
                                                            }
                                                         }
                                                         §§goto(addr373);
                                                      }
                                                      this.m_newIcon.alpha = 0;
                                                      (_loc6_ = new TimelineLite()).append(new TweenLite(this,0.9,{}));
                                                      if(_loc8_ || Boolean(param1))
                                                      {
                                                         _loc6_.append(new TweenLite(this,1,{
                                                            "x":"-50",
                                                            "alpha":1
                                                         }));
                                                         _loc6_.append(new TweenLite(this,1.4,{}));
                                                         if(!(_loc7_ && Boolean(_loc3_)))
                                                         {
                                                            _loc6_.append(new TweenLite(this.m_newIcon,0.5,{"alpha":1}));
                                                            if(_loc8_)
                                                            {
                                                               §§goto(addr334);
                                                            }
                                                            §§goto(addr355);
                                                         }
                                                      }
                                                      §§goto(addr373);
                                                   }
                                                }
                                                else
                                                {
                                                   this.m_newIcon.visible = false;
                                                }
                                                §§goto(addr334);
                                             }
                                             else
                                             {
                                                this.m_maleIcon.visible = false;
                                                if(!(_loc7_ && Boolean(this)))
                                                {
                                                   §§goto(addr238);
                                                }
                                             }
                                             §§goto(addr249);
                                          }
                                          §§goto(addr244);
                                       }
                                       §§goto(addr238);
                                    }
                                 }
                                 _loc5_.align = TextFormatAlign.LEFT;
                              }
                              §§goto(addr182);
                           }
                           §§push(param1);
                           if(!_loc7_)
                           {
                              §§push(30);
                              if(!(_loc7_ && Boolean(_loc3_)))
                              {
                                 addr114:
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc8_ || Boolean(param1))
                                    {
                                       §§push(3);
                                       if(!(_loc7_ && param2))
                                       {
                                          addr130:
                                          _loc3_ = §§pop();
                                          if(!_loc7_)
                                          {
                                             addr133:
                                             §§goto(addr134);
                                             §§push(_loc3_);
                                          }
                                       }
                                       §§goto(addr134);
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr134);
               }
               §§goto(addr80);
            }
            §§goto(addr94);
         }
         §§goto(addr52);
      }
      
      private function GoButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(Singleton.dynamicData);
         if(_loc3_)
         {
            if(§§pop().m_currFloorOfTower == this.m_currFloor)
            {
               §§push(Singleton.dynamicData);
               §§push(0);
               if(!(_loc2_ && _loc3_))
               {
                  §§pop().m_currRoomOfTower = §§pop();
                  §§push(Singleton.dynamicData);
                  if(_loc3_ || _loc3_)
                  {
                     addr42:
                     §§push(0);
                     if(_loc3_)
                     {
                        §§pop().m_currTransitionID = §§pop();
                        §§push(Singleton.dynamicData);
                        if(!_loc2_)
                        {
                           §§push(-99);
                           if(_loc3_ || Boolean(param1))
                           {
                           }
                           addr90:
                           §§pop().m_topDownCharPositionY = §§pop();
                           §§push(Singleton.utility);
                           if(!_loc2_)
                           {
                              §§push(§§pop().m_screenControllers);
                              if(!(_loc2_ && Boolean(param1)))
                              {
                                 §§pop().SetSceneTo(GameState.TOP_DOWN_SCREEN);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr131:
                                    Singleton.dynamicData.SetNewReturnToOnDeathPoint();
                                    if(!_loc2_)
                                    {
                                       addr137:
                                       Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar.SetDirectionForStill(Singleton.staticData.GetCurrentLevel().m_initialDirection);
                                    }
                                 }
                                 return;
                              }
                           }
                           §§goto(addr137);
                           addr91:
                        }
                        addr82:
                        §§push(-99);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr90);
                        }
                        else
                        {
                           addr96:
                           §§pop().SetupDataForBringingInANewFloor(§§pop());
                           Singleton.dynamicData.HealAllOfAPlayersInPartyMinions();
                        }
                        §§goto(addr90);
                     }
                     §§pop().m_topDownCharPositionX = §§pop();
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§push(Singleton.dynamicData);
                        if(!(_loc2_ && Boolean(param1)))
                        {
                           §§goto(addr82);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr82);
               }
               §§goto(addr90);
            }
            else
            {
               §§push(Singleton.dynamicData);
               §§push(this.m_currFloor);
            }
            §§goto(addr96);
         }
         §§goto(addr42);
      }
      
      public function Update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(visible == true);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§pop();
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(this.m_goButton);
                        if(!_loc2_)
                        {
                           addr62:
                           if(Boolean(§§pop().visible))
                           {
                           }
                           §§goto(addr74);
                        }
                        §§pop().m_isActive = true;
                     }
                     addr74:
                     if(!(_loc2_ && _loc1_))
                     {
                        addr70:
                        §§push(this.m_goButton);
                     }
                     return;
                  }
               }
            }
            §§goto(addr62);
         }
         §§goto(addr70);
      }
   }
}
