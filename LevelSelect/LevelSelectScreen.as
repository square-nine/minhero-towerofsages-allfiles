package LevelSelect
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.BaseScreen;
   import States.GameState;
   import States.SpecialRoom;
   import States.TutorialTypes;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class LevelSelectScreen extends BaseScreen
   {
       
      
      private var m_backgroundBlueBase:Sprite;
      
      private var m_stars:Sprite;
      
      private var m_clouds:Vector.<Sprite>;
      
      private var m_backgroundFar:Sprite;
      
      private var m_backgroundBase:Sprite;
      
      private var m_floorDisplayObjects:Vector.<FloorDisplayObject>;
      
      private var m_floorInformationObjects:Vector.<FloorInformationObject>;
      
      private var m_returnButton:TCButton;
      
      private var m_upButton:TCButton;
      
      private var m_downButton:TCButton;
      
      private var m_currPage:int;
      
      private const m_numberOfPiecesPerScroll:int = 3;
      
      private const m_totalPages:int = 9;
      
      private var m_isAnimating:Boolean;
      
      public var m_isOnHardMode:Boolean;
      
      private var m_switchToHardModeButton:TCButton;
      
      private var m_switchToNormalModeButton:TCButton;
      
      private var m_hardModeIconOff:Sprite;
      
      private var m_normalModeIconOff:Sprite;
      
      public function LevelSelectScreen()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function LoadSprites() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         super.LoadSprites();
         this.m_backgroundBlueBase = new Sprite();
         if(_loc5_ || _loc2_)
         {
            this.m_backgroundBlueBase.graphics.beginFill(407651);
         }
         this.m_backgroundBlueBase.graphics.drawRect(0,0,700,525);
         if(!(_loc4_ && _loc2_))
         {
            this.m_backgroundBlueBase.graphics.endFill();
            if(_loc5_ || _loc2_)
            {
               this.m_backgroundBlueBase.x = 0;
               this.m_backgroundBlueBase.y = 0;
               addChild(this.m_backgroundBlueBase);
               this.m_stars = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_background_stars");
               if(_loc5_)
               {
                  addr79:
                  this.m_stars.x = 0;
                  addr83:
                  this.m_stars.y = 0;
                  if(!_loc4_)
                  {
                     addChild(this.m_stars);
                     if(!_loc4_)
                     {
                        this.m_backgroundFar = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_sky");
                        if(_loc5_)
                        {
                           this.m_backgroundFar.x = 0;
                           if(_loc5_)
                           {
                              addr110:
                              this.m_backgroundFar.y = 0;
                              addr114:
                              addChild(this.m_backgroundFar);
                              this.m_clouds = new Vector.<Sprite>(4);
                           }
                           var _loc1_:Array = [20,380,-90,300];
                           var _loc2_:int = 0;
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc4_)
                              {
                                 if(§§pop() >= this.m_clouds.length)
                                 {
                                    this.m_backgroundBase = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_background_frontMountains");
                                    this.m_backgroundBase.x = 0;
                                    if(_loc5_)
                                    {
                                       this.m_backgroundBase.y = 119;
                                       addChild(this.m_backgroundBase);
                                       this.m_returnButton = new TCButton(this.ReturnButtonPressed,"roomSelect_returnButton");
                                       if(_loc5_ || Boolean(_loc1_))
                                       {
                                          §§push(this.m_returnButton);
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§push(592);
                                             if(_loc5_ || Boolean(_loc1_))
                                             {
                                                §§pop().x = §§pop();
                                                addr261:
                                                §§push(this.m_returnButton);
                                                §§push(-2);
                                             }
                                             §§pop().y = §§pop();
                                             addChild(this.m_returnButton);
                                             addr267:
                                             this.m_normalModeIconOff = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_normalModeButton");
                                             this.m_normalModeIconOff.x = 610;
                                             if(_loc5_)
                                             {
                                                this.m_normalModeIconOff.y = 378 - 20;
                                                if(!_loc4_)
                                                {
                                                   addChild(this.m_normalModeIconOff);
                                                   if(!(_loc4_ && Boolean(_loc1_)))
                                                   {
                                                      this.m_switchToNormalModeButton = new TCButton(this.NormalModeButtonPressed,"roomSelect_normalModeButton_off","roomSelect_normalModeButton");
                                                      if(!_loc4_)
                                                      {
                                                         §§push(this.m_switchToNormalModeButton);
                                                         if(!(_loc4_ && Boolean(this)))
                                                         {
                                                            §§pop().x = this.m_normalModeIconOff.x;
                                                            §§push(this.m_switchToNormalModeButton);
                                                         }
                                                         §§pop().y = this.m_normalModeIconOff.y;
                                                         addChild(this.m_switchToNormalModeButton);
                                                         this.m_hardModeIconOff = Singleton.utility.m_spriteHandler.CreateSprite("roomSelect_hardModeButton");
                                                         if(!_loc4_)
                                                         {
                                                            addr348:
                                                            this.m_hardModeIconOff.x = 610;
                                                            this.m_hardModeIconOff.y = 444 - 20;
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               addChild(this.m_hardModeIconOff);
                                                               if(!_loc4_)
                                                               {
                                                                  this.m_switchToHardModeButton = new TCButton(this.HardModeButtonPressed,"roomSelect_hardModeButton_off","roomSelect_hardModeButton");
                                                                  if(_loc5_ || Boolean(this))
                                                                  {
                                                                     addr386:
                                                                     §§push(this.m_switchToHardModeButton);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§pop().x = this.m_hardModeIconOff.x;
                                                                        addr394:
                                                                        §§push(this.m_switchToHardModeButton);
                                                                     }
                                                                     §§pop().y = this.m_hardModeIconOff.y;
                                                                     addChild(this.m_switchToHardModeButton);
                                                                     this.m_upButton = new TCButton(this.UpButtonPressed,"roomSelect_upArrow");
                                                                     §§push(this.m_upButton);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(543);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           addr421:
                                                                           §§push(this.m_upButton);
                                                                           §§push(4);
                                                                        }
                                                                        §§pop().y = §§pop();
                                                                        addChild(this.m_upButton);
                                                                        addr427:
                                                                        this.m_downButton = new TCButton(this.DownButtonPressed,"roomSelect_upArrow");
                                                                        §§push(this.m_downButton);
                                                                        if(_loc5_ || Boolean(_loc1_))
                                                                        {
                                                                           §§push(543);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr449:
                                                                                 §§push(this.m_downButton);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr460:
                                                                                    §§push(504);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§pop().y = §§pop();
                                                                                       §§push(this.m_downButton);
                                                                                    }
                                                                                    §§pop().scaleY = §§pop();
                                                                                    addChild(this.m_downButton);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr467:
                                                                                       this.m_floorDisplayObjects = new Vector.<FloorDisplayObject>(Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr478:
                                                                                          this.m_floorInformationObjects = new Vector.<FloorInformationObject>(Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
                                                                                       }
                                                                                       §§push(int(this.m_floorDisplayObjects.length - 1));
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr478);
                                                                                 }
                                                                                 §§goto(addr460);
                                                                                 §§push(-1);
                                                                              }
                                                                              §§goto(addr467);
                                                                           }
                                                                        }
                                                                        §§goto(addr460);
                                                                     }
                                                                     §§goto(addr421);
                                                                  }
                                                               }
                                                               §§goto(addr421);
                                                            }
                                                            §§goto(addr427);
                                                         }
                                                         §§goto(addr386);
                                                      }
                                                      §§goto(addr449);
                                                   }
                                                   §§goto(addr348);
                                                }
                                             }
                                             §§goto(addr394);
                                          }
                                          §§goto(addr261);
                                       }
                                       §§goto(addr267);
                                    }
                                    §§goto(addr478);
                                 }
                                 else
                                 {
                                    this.m_clouds[_loc2_] = Singleton.utility.m_spriteHandler.CreateSprite("battleScreenBackground_clouds");
                                    if(_loc5_)
                                    {
                                       this.m_clouds[_loc2_].scaleX = 0.7 - _loc2_ * 0.07;
                                       if(_loc5_)
                                       {
                                          this.m_clouds[_loc2_].scaleY = this.m_clouds[_loc2_].scaleX;
                                          if(_loc5_ || Boolean(this))
                                          {
                                             continue;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr394);
                                       }
                                       §§goto(addr386);
                                    }
                                    else
                                    {
                                       §§goto(addr267);
                                    }
                                 }
                                 §§goto(addr267);
                              }
                              break;
                           }
                           var _loc3_:* = §§pop();
                           loop1:
                           while(true)
                           {
                              §§push(_loc3_);
                              while(§§pop() > -1)
                              {
                                 this.m_floorDisplayObjects[_loc3_] = new FloorDisplayObject(_loc3_);
                                 this.m_floorDisplayObjects[_loc3_].x = 114;
                                 if(!_loc4_)
                                 {
                                    this.m_floorDisplayObjects[_loc3_].y = 329 - _loc3_ * 94;
                                    this.m_floorDisplayObjects[_loc3_].LoadSprites();
                                    if(!_loc4_)
                                    {
                                       addChild(this.m_floorDisplayObjects[_loc3_]);
                                       this.m_floorDisplayObjects[_loc3_].SetFloor(_loc3_);
                                       addr539:
                                       this.m_floorInformationObjects[_loc3_] = new FloorInformationObject();
                                       if(!(_loc5_ || _loc3_))
                                       {
                                          continue loop1;
                                       }
                                       this.m_floorInformationObjects[_loc3_].x = 312;
                                    }
                                    this.m_floorInformationObjects[_loc3_].y = 354 - _loc3_ * 94;
                                    this.m_floorInformationObjects[_loc3_].LoadSprites();
                                    addChild(this.m_floorInformationObjects[_loc3_]);
                                    §§push(_loc3_);
                                    if(!(_loc4_ && Boolean(_loc2_)))
                                    {
                                       §§push(§§pop() - 1);
                                       if(_loc4_)
                                       {
                                          continue;
                                       }
                                    }
                                    _loc3_ = §§pop();
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr539);
                              }
                              return;
                           }
                        }
                        §§goto(addr110);
                     }
                  }
                  §§goto(addr114);
               }
               §§goto(addr110);
            }
            §§goto(addr83);
         }
         §§goto(addr79);
      }
      
      override public function DeActivate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.DeActivate();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_floorInformationObjects.length)
         {
            this.m_floorInformationObjects[_loc1_].StopAnimations();
            if(_loc3_ || Boolean(this))
            {
               _loc1_++;
               if(!_loc3_)
               {
                  break;
               }
            }
         }
      }
      
      private function GetHeightPositionBaseOnHiddenFloors(param1:int) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(param1);
         §§push(3);
         if(!_loc4_)
         {
            §§push(§§pop() >= §§pop());
            §§push(§§pop() >= §§pop());
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§pop();
                     §§push(Singleton.dynamicData);
                     §§push(3);
                     if(!_loc4_)
                     {
                        §§push(§§pop().GetHasUnlockedFloor(§§pop()));
                        if(_loc3_ || Boolean(param1))
                        {
                           §§push(!§§pop());
                           §§push(!§§pop());
                           if(!(_loc4_ && _loc3_))
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc4_ && Boolean(param1)))
                                 {
                                    §§pop();
                                    if(_loc3_)
                                    {
                                       §§push(Singleton.dynamicData);
                                       §§push(0);
                                       if(_loc3_)
                                       {
                                          addr80:
                                          if(Boolean(§§pop().GetAnimateNewFloorIn(§§pop())))
                                          {
                                             §§push(_loc2_ - 1);
                                             if(_loc3_)
                                             {
                                                _loc2_ = §§pop();
                                                addr86:
                                                §§push(param1);
                                                §§push(8);
                                                if(!(_loc4_ && Boolean(param1)))
                                                {
                                                   addr97:
                                                   §§push(§§pop() >= §§pop());
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         addr100:
                                                         §§pop();
                                                         §§push(Singleton.dynamicData);
                                                         §§push(8);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            addr111:
                                                            §§push(§§pop().GetHasUnlockedFloor(§§pop()));
                                                            if(_loc3_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§pop();
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              §§push(Singleton.dynamicData);
                                                                              §§push(1);
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr155:
                                                                                 addr153:
                                                                                 if(Boolean(§§pop().GetAnimateNewFloorIn(§§pop())))
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       _loc2_ = §§pop() - 1;
                                                                                    }
                                                                                    addr292:
                                                                                    _loc2_ = §§pop();
                                                                                    §§goto(addr293);
                                                                                 }
                                                                                 §§push(param1);
                                                                                 §§push(13);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr165:
                                                                                    §§push(§§pop() >= §§pop());
                                                                                    §§push(§§pop() >= §§pop());
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc3_ || Boolean(this))
                                                                                          {
                                                                                             §§pop();
                                                                                             if(_loc3_ || Boolean(this))
                                                                                             {
                                                                                                addr191:
                                                                                                §§push(!Singleton.dynamicData.GetHasUnlockedFloor(13));
                                                                                                if(!!Singleton.dynamicData.GetHasUnlockedFloor(13))
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr194:
                                                                                                      §§pop();
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(Singleton.dynamicData);
                                                                                                         if(!(_loc4_ && Boolean(this)))
                                                                                                         {
                                                                                                            §§push(2);
                                                                                                            if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                            {
                                                                                                               addr214:
                                                                                                               §§push(§§pop().GetAnimateNewFloorIn(§§pop()));
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  addr218:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc3_ || Boolean(_loc2_))
                                                                                                                     {
                                                                                                                        addr226:
                                                                                                                        _loc2_--;
                                                                                                                        addr229:
                                                                                                                        addr231:
                                                                                                                        §§push(param1 >= 18);
                                                                                                                        if(_loc3_ || Boolean(param1))
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr274:
                                                                                                                        §§pop();
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           §§goto(addr282);
                                                                                                                        }
                                                                                                                        §§push(_loc2_);
                                                                                                                        if(_loc3_ || Boolean(param1))
                                                                                                                        {
                                                                                                                           §§goto(addr292);
                                                                                                                           §§push(§§pop() - 1);
                                                                                                                        }
                                                                                                                        §§goto(addr292);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr229);
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     addr243:
                                                                                                                     §§pop();
                                                                                                                     if(!(_loc4_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        addr251:
                                                                                                                        §§push(Singleton.dynamicData);
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           addr255:
                                                                                                                           §§push(!§§pop().GetHasUnlockedFloor(18));
                                                                                                                           if(!(_loc4_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 §§goto(addr274);
                                                                                                                              }
                                                                                                                              §§goto(addr282);
                                                                                                                           }
                                                                                                                           §§goto(addr229);
                                                                                                                        }
                                                                                                                        §§goto(addr282);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr229);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr282);
                                                                                                         }
                                                                                                         §§goto(addr255);
                                                                                                      }
                                                                                                      §§goto(addr229);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr218);
                                                                                             }
                                                                                             §§goto(addr251);
                                                                                          }
                                                                                          §§goto(addr229);
                                                                                       }
                                                                                       §§goto(addr218);
                                                                                    }
                                                                                    §§goto(addr191);
                                                                                 }
                                                                                 §§goto(addr231);
                                                                              }
                                                                              §§goto(addr214);
                                                                           }
                                                                           §§goto(addr292);
                                                                        }
                                                                        §§goto(addr243);
                                                                     }
                                                                     §§goto(addr155);
                                                                  }
                                                                  §§goto(addr191);
                                                               }
                                                            }
                                                            §§goto(addr229);
                                                         }
                                                         §§goto(addr255);
                                                      }
                                                      addr282:
                                                      if(Singleton.dynamicData.GetAnimateNewFloorIn(3))
                                                      {
                                                      }
                                                      addr293:
                                                      return _loc2_;
                                                   }
                                                   §§goto(addr155);
                                                }
                                                §§goto(addr165);
                                             }
                                             §§goto(addr292);
                                          }
                                          §§goto(addr86);
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr226);
                                 }
                                 §§goto(addr100);
                              }
                              §§goto(addr80);
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr194);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr191);
               }
               §§goto(addr80);
            }
            §§goto(addr97);
         }
         §§goto(addr226);
      }
      
      private function GetTotalNumberOfUnlockedFloors() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               §§push(Singleton.staticData);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop().NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
                  if(!_loc4_)
                  {
                     if(§§pop() >= §§pop() + Singleton.staticData.NUM_OF_FLOORS_IN_THE_HARD_TOWER)
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr90:
                           if(this.m_isOnHardMode)
                           {
                              if(!_loc4_)
                              {
                                 §§push(_loc1_);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 addr103:
                                 §§push(_loc1_);
                              }
                              return §§pop();
                           }
                        }
                        §§goto(addr103);
                     }
                     else
                     {
                        §§push(Singleton.dynamicData.GetHasUnlockedFloor(_loc2_));
                        if(!(_loc4_ && Boolean(this)))
                        {
                           if(§§pop())
                           {
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue;
                              }
                              _loc1_++;
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr53:
                                 _loc2_++;
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr53);
                        }
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr101);
               }
               addr100:
               addr101:
               return §§pop() - §§pop();
               §§push(§§pop().NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
            }
            break;
         }
         §§goto(addr100);
         §§push(Singleton.staticData);
      }
      
      override public function StartActivate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         if(!_loc5_)
         {
            super.StartActivate();
            §§push(Singleton.dynamicData);
            if(!_loc5_)
            {
               §§pop().HealAllOfAPlayersInPartyMinions();
               this.m_isAnimating = false;
               if(_loc4_)
               {
                  §§push(Singleton.dynamicData);
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     addr38:
                     if(§§pop().GetHasUnlockedFloor(Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr52:
                           §§push(Singleton.dynamicData.m_currFloorOfTower);
                           if(_loc4_ || Boolean(this))
                           {
                              if(§§pop() < Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(this.m_switchToHardModeButton);
                                    if(_loc4_)
                                    {
                                       §§push(true);
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§pop().visible = §§pop();
                                          if(!_loc5_)
                                          {
                                             addr81:
                                             §§push(this.m_switchToNormalModeButton);
                                             if(_loc4_)
                                             {
                                                §§push(false);
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   §§pop().visible = §§pop();
                                                   this.m_isOnHardMode = false;
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      this.m_hardModeIconOff.visible = false;
                                                   }
                                                   this.m_normalModeIconOff.visible = true;
                                                   addr175:
                                                   var _loc1_:int = 0;
                                                   addr174:
                                                   while(_loc1_ < this.m_floorInformationObjects.length)
                                                   {
                                                      this.m_floorInformationObjects[_loc1_].UpdateFloor(_loc1_,this.m_isOnHardMode);
                                                      if(!(_loc4_ || Boolean(this)))
                                                      {
                                                         break;
                                                      }
                                                      this.m_floorDisplayObjects[_loc1_].UpdateFloor(_loc1_,this.m_isOnHardMode);
                                                      _loc1_++;
                                                      if(_loc4_)
                                                      {
                                                         continue;
                                                      }
                                                      addr331:
                                                      this.m_backgroundBase.y = this.GetBaseBackgroundPosition();
                                                      if(_loc4_ || Boolean(_loc1_))
                                                      {
                                                         addr343:
                                                         this.m_backgroundFar.alpha = this.GetCloundsBackground();
                                                         if(!_loc5_)
                                                         {
                                                            this.m_stars.alpha = this.GetStarsBackground();
                                                            if(!_loc5_)
                                                            {
                                                               _loc1_ = 0;
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  §§push(_loc1_);
                                                                  loop2:
                                                                  while(§§pop() < this.m_floorDisplayObjects.length)
                                                                  {
                                                                     §§push(this.GetHeightPositionBaseOnHiddenFloors(_loc1_));
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc5_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        _loc2_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           this.m_floorDisplayObjects[_loc1_].y = 329 - _loc2_ * 94 + 93 * this.m_numberOfPiecesPerScroll * this.m_currPage;
                                                                           if(!_loc4_)
                                                                           {
                                                                              break loop2;
                                                                           }
                                                                           this.m_floorInformationObjects[_loc1_].y = 354 - _loc2_ * 94 + 93 * this.m_numberOfPiecesPerScroll * this.m_currPage;
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc1_++;
                                                                              continue loop1;
                                                                           }
                                                                        }
                                                                     }
                                                                     var _loc3_:* = §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           if(§§pop() >= this.m_clouds.length)
                                                                           {
                                                                              this.SetArrowVisiblity();
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(Singleton.dynamicData);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(§§pop().GetAnimateNewFloorIn(0))
                                                                                    {
                                                                                       §§push(Singleton.dynamicData);
                                                                                       §§push(0);
                                                                                       §§push(false);
                                                                                       if(_loc4_ || Boolean(this))
                                                                                       {
                                                                                          §§pop().SetAnimateNewFloor(§§pop(),§§pop());
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§goto(addr473);
                                                                                          }
                                                                                          §§goto(addr478);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr546:
                                                                                          §§pop().SetAnimateNewFloor(§§pop(),§§pop());
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr549:
                                                                                             this.PlayNewEnterFloor(18);
                                                                                             §§goto(addr552);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr578);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(Singleton.dynamicData.GetAnimateNewFloorIn(1));
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§push(Singleton.dynamicData);
                                                                                                if(_loc4_ || _loc3_)
                                                                                                {
                                                                                                   §§push(1);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(false);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§pop().SetAnimateNewFloor(§§pop(),§§pop());
                                                                                                         this.PlayNewEnterFloor(8);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr546);
                                                                                                      }
                                                                                                      §§goto(addr578);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr513:
                                                                                                      if(§§pop().GetAnimateNewFloorIn(§§pop()))
                                                                                                      {
                                                                                                         addr517:
                                                                                                         §§push(Singleton.dynamicData);
                                                                                                         §§push(2);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(false);
                                                                                                            if(!(_loc5_ && Boolean(_loc2_)))
                                                                                                            {
                                                                                                               §§pop().SetAnimateNewFloor(§§pop(),§§pop());
                                                                                                               addr529:
                                                                                                               this.PlayNewEnterFloor(13);
                                                                                                               §§goto(addr552);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr546);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr552);
                                                                                                      }
                                                                                                      else if(Singleton.dynamicData.GetAnimateNewFloorIn(3))
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr542:
                                                                                                            §§push(Singleton.dynamicData);
                                                                                                            §§push(3);
                                                                                                            §§push(false);
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§goto(addr546);
                                                                                                            }
                                                                                                            §§goto(addr596);
                                                                                                         }
                                                                                                         §§goto(addr549);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr552);
                                                                                                }
                                                                                                §§goto(addr517);
                                                                                             }
                                                                                             §§goto(addr578);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(Singleton.dynamicData);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§goto(addr513);
                                                                                                §§push(2);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr517);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr559);
                                                                                 }
                                                                                 §§goto(addr542);
                                                                              }
                                                                              addr473:
                                                                              this.PlayNewEnterFloor(3);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr552:
                                                                                 §§push(Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_REPLAY_FLOORS));
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr559:
                                                                                    §§push(!§§pop());
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       addr562:
                                                                                       §§pop();
                                                                                       §§push(Singleton.dynamicData.GetHighestFloor());
                                                                                       break;
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr578:
                                                                                          TweenLite.to(this,0.8,{
                                                                                             "onComplete":Singleton.utility.m_tutorialHandler.BringIn_ReplayFloor,
                                                                                             "onCompleteParams":[null]
                                                                                          });
                                                                                       }
                                                                                       addr596:
                                                                                       Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_REPLAY_FLOORS,true);
                                                                                    }
                                                                                    §§goto(addr597);
                                                                                 }
                                                                                 §§goto(addr562);
                                                                                 addr478:
                                                                              }
                                                                              addr597:
                                                                              return;
                                                                           }
                                                                           this.m_clouds[_loc3_].y = this.GetCloudsBackgroundY(_loc3_);
                                                                           if(!(_loc5_ && Boolean(_loc1_)))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr529);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr559);
                                                                     §§push(§§pop() >= 15);
                                                                  }
                                                                  addr416:
                                                                  §§goto(addr417);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr410);
                                                      }
                                                      §§goto(addr370);
                                                      addr313:
                                                   }
                                                   this.m_currPage = int((this.GetTotalNumberOfUnlockedFloors() - 1) / this.m_numberOfPiecesPerScroll);
                                                   if(!(_loc5_ && Boolean(this)))
                                                   {
                                                      if(this.m_currPage > this.m_totalPages)
                                                      {
                                                         this.m_currPage = this.m_totalPages;
                                                         if(!_loc5_)
                                                         {
                                                            addr237:
                                                            §§push(Singleton.dynamicData);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(0);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(§§pop().GetAnimateNewFloorIn(§§pop()));
                                                                  if(_loc4_ || Boolean(_loc2_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr253:
                                                                        this.m_currPage = 0;
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(Singleton.dynamicData);
                                                                        if(_loc4_ || Boolean(this))
                                                                        {
                                                                           addr266:
                                                                           §§push(1);
                                                                           if(_loc4_)
                                                                           {
                                                                              addr269:
                                                                              §§push(§§pop().GetAnimateNewFloorIn(§§pop()));
                                                                              if(!(_loc5_ && Boolean(this)))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    this.m_currPage = 2;
                                                                                    §§goto(addr331);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(Singleton.dynamicData);
                                                                                    if(!(_loc5_ && Boolean(_loc1_)))
                                                                                    {
                                                                                       §§push(2);
                                                                                       if(_loc4_ || Boolean(this))
                                                                                       {
                                                                                          §§push(§§pop().GetAnimateNewFloorIn(§§pop()));
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr309:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr310:
                                                                                                this.m_currPage = 4;
                                                                                                §§goto(addr313);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr316:
                                                                                                §§push(Singleton.dynamicData.GetAnimateNewFloorIn(3));
                                                                                             }
                                                                                             §§goto(addr331);
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!(_loc5_ && Boolean(_loc1_)))
                                                                                             {
                                                                                                this.m_currPage = 5;
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§goto(addr331);
                                                                                                }
                                                                                                §§goto(addr343);
                                                                                             }
                                                                                             §§goto(addr416);
                                                                                          }
                                                                                          §§goto(addr331);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr316);
                                                                                 }
                                                                              }
                                                                              §§goto(addr309);
                                                                           }
                                                                        }
                                                                        §§goto(addr316);
                                                                     }
                                                                     §§goto(addr331);
                                                                  }
                                                                  §§goto(addr309);
                                                               }
                                                               §§goto(addr269);
                                                            }
                                                            §§goto(addr266);
                                                         }
                                                         §§goto(addr310);
                                                      }
                                                      §§goto(addr237);
                                                   }
                                                   §§goto(addr253);
                                                   addr147:
                                                }
                                                else
                                                {
                                                   addr128:
                                                   §§pop().visible = §§pop();
                                                   this.m_isOnHardMode = true;
                                                   this.m_hardModeIconOff.visible = true;
                                                   this.m_normalModeIconOff.visible = false;
                                                   if(_loc4_ || Boolean(_loc2_))
                                                   {
                                                      §§goto(addr147);
                                                   }
                                                   else
                                                   {
                                                      addr163:
                                                      this.m_isOnHardMode = false;
                                                      this.m_hardModeIconOff.visible = false;
                                                      this.m_normalModeIconOff.visible = false;
                                                   }
                                                   §§goto(addr174);
                                                }
                                                §§goto(addr174);
                                             }
                                             else
                                             {
                                                addr155:
                                                §§pop().visible = false;
                                                addr154:
                                                if(_loc4_ || Boolean(_loc2_))
                                                {
                                                   §§goto(addr163);
                                                }
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr174);
                                       }
                                       else
                                       {
                                          addr151:
                                          §§pop().visible = §§pop();
                                          §§push(this.m_switchToNormalModeButton);
                                       }
                                       §§goto(addr154);
                                    }
                                    else
                                    {
                                       addr117:
                                       §§push(false);
                                       if(!_loc5_)
                                       {
                                          §§pop().visible = §§pop();
                                          §§push(this.m_switchToNormalModeButton);
                                          if(_loc4_)
                                          {
                                             §§push(true);
                                             if(!_loc5_)
                                             {
                                                §§goto(addr128);
                                             }
                                             else
                                             {
                                                §§goto(addr155);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr155);
                                          }
                                          §§goto(addr155);
                                       }
                                       else
                                       {
                                          §§goto(addr151);
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(this.m_switchToHardModeButton);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr117);
                                 }
                                 else
                                 {
                                    addr150:
                                    §§push(false);
                                 }
                              }
                              §§goto(addr151);
                           }
                           §§goto(addr175);
                        }
                        §§goto(addr151);
                     }
                     else
                     {
                        §§push(this.m_switchToHardModeButton);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr52);
               }
               §§goto(addr151);
            }
            §§goto(addr38);
         }
         §§goto(addr81);
      }
      
      private function PlayShakeAnimation(param1:Sprite) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = 4;
         var _loc3_:TimelineLite = new TimelineLite();
         _loc3_.append(new TweenLite(param1,1,{}));
         if(!_loc5_)
         {
            _loc3_.append(new TweenLite(param1,0.125,{"x":"-" + _loc2_}));
            if(_loc4_)
            {
               _loc3_.append(new TweenLite(param1,0.125,{"x":"" + _loc2_}));
               if(!_loc5_)
               {
                  _loc3_.append(new TweenLite(param1,0.125,{"x":"-" + _loc2_}));
                  _loc3_.append(new TweenLite(param1,0.125,{"x":"" + _loc2_}));
                  _loc3_.append(new TweenLite(param1,0.125,{"x":"-" + _loc2_}));
                  if(!(_loc5_ && Boolean(this)))
                  {
                     _loc3_.append(new TweenLite(param1,0.125,{"x":"" + _loc2_}));
                  }
                  _loc3_.append(new TweenLite(param1,0.125,{"x":"-" + _loc2_}));
                  _loc3_.append(new TweenLite(param1,0.125,{"x":"" + _loc2_}));
                  if(!_loc5_)
                  {
                     _loc3_.append(new TweenLite(param1,0.125,{"x":"-" + _loc2_}));
                     if(!_loc5_)
                     {
                        _loc3_.append(new TweenLite(param1,0.125,{"x":"" + _loc2_}));
                        _loc3_.append(new TweenLite(param1,0.125,{"x":"-" + _loc2_}));
                        if(_loc4_ || Boolean(_loc3_))
                        {
                           addr178:
                           _loc3_.append(new TweenLite(param1,0.125,{"x":"" + _loc2_}));
                           if(_loc4_)
                           {
                              addr191:
                              _loc3_.append(new TweenLite(param1,0.125,{"x":"-" + _loc2_}));
                           }
                           §§goto(addr227);
                        }
                        _loc3_.append(new TweenLite(param1,0.125,{"x":"" + _loc2_}));
                        if(!(_loc5_ && Boolean(this)))
                        {
                           §§goto(addr227);
                        }
                        addr227:
                        _loc3_.append(new TweenLite(param1,0.125,{"x":"-" + _loc2_}));
                        §§goto(addr238);
                     }
                  }
                  §§goto(addr178);
               }
               addr238:
               _loc3_.append(new TweenLite(param1,0.125,{"x":"" + _loc2_}));
               return;
            }
            §§goto(addr191);
         }
         §§goto(addr178);
      }
      
      private function PlayNewEnterFloor(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:TimelineLite = null;
         var _loc4_:* = 0;
         if(!(_loc6_ && Boolean(this)))
         {
            this.m_isAnimating = true;
            if(!_loc6_)
            {
               TweenLite.to(this,0.4,{
                  "onComplete":Singleton.utility.m_soundController.PlaySound,
                  "onCompleteParams":["battle_earthquake2"]
               });
               if(_loc7_ || Boolean(_loc2_))
               {
                  addr51:
                  this.m_floorInformationObjects[param1].visible = false;
               }
               var _loc3_:int = 0;
               while(true)
               {
                  §§push(_loc3_);
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     if(§§pop() >= this.m_floorDisplayObjects.length)
                     {
                        if(!(_loc6_ && Boolean(this)))
                        {
                           this.PlayShakeAnimation(this.m_backgroundBase);
                        }
                     }
                     else
                     {
                        this.PlayShakeAnimation(this.m_floorDisplayObjects[_loc3_]);
                        if(!_loc6_)
                        {
                           continue;
                        }
                     }
                     addr100:
                     §§push(param1);
                     if(_loc7_)
                     {
                        §§push(§§pop());
                        break;
                     }
                     break;
                  }
                  break;
               }
               var _loc5_:* = §§pop();
               if(!(_loc6_ && Boolean(param1)))
               {
                  while(true)
                  {
                     §§push(_loc5_);
                     do
                     {
                        if(§§pop() >= this.m_floorDisplayObjects.length)
                        {
                           if(!_loc6_)
                           {
                              TweenLite.to(this,3.2,{
                                 "onComplete":this.FinishPlayingEnterFloor,
                                 "onCompleteParams":[param1]
                              });
                              break;
                           }
                           break;
                        }
                        §§push(this.GetHeightPositionBaseOnHiddenFloors(_loc5_));
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           §§push(§§pop());
                           if(!_loc7_)
                           {
                              continue;
                           }
                        }
                        _loc4_ = §§pop();
                     }
                     while(_loc7_ || Boolean(param1));
                     
                     return;
                  }
                  addr251:
               }
               while(true)
               {
                  _loc2_ = new TimelineLite();
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     _loc2_.append(new TweenLite(this.m_floorDisplayObjects[_loc5_],1.2,{}));
                     if(!_loc6_)
                     {
                        addr165:
                        _loc2_.append(new TweenLite(this.m_floorDisplayObjects[_loc5_],1.8,{"y":329 - _loc4_ * 94 + 93 * this.m_numberOfPiecesPerScroll * this.m_currPage}));
                     }
                     _loc2_ = new TimelineLite();
                     if(_loc7_)
                     {
                        _loc2_.append(new TweenLite(this.m_floorInformationObjects[_loc5_],1.2,{}));
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           addr212:
                           _loc2_.append(new TweenLite(this.m_floorInformationObjects[_loc5_],1.8,{"y":354 - _loc4_ * 94 + 93 * this.m_numberOfPiecesPerScroll * this.m_currPage}));
                           if(!(_loc6_ && Boolean(_loc2_)))
                           {
                              _loc5_++;
                           }
                        }
                        §§goto(addr251);
                     }
                     §§goto(addr212);
                  }
                  §§goto(addr165);
               }
            }
         }
         §§goto(addr51);
      }
      
      private function FinishPlayingEnterFloor(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.m_floorInformationObjects[param1].visible = true;
         this.m_floorInformationObjects[param1].alpha = 0;
         if(_loc2_)
         {
            TweenLite.to(this.m_floorInformationObjects[param1],0.5,{"alpha":1});
            if(!(_loc3_ && _loc2_))
            {
               §§push(Singleton.dynamicData);
               if(_loc2_)
               {
                  §§push(TutorialTypes.TUTORIAL_BONUS_LEVEL);
                  if(_loc2_)
                  {
                     if(§§pop().HasTutorialBeenSeen(§§pop()))
                     {
                        this.ReActivateLevelSelect();
                     }
                     §§goto(addr98);
                  }
                  §§pop().SetHasTutorialBeenSeen(§§pop(),true);
                  §§goto(addr98);
               }
            }
            §§goto(addr91);
         }
         addr98:
         if(_loc2_ || Boolean(this))
         {
            TweenLite.to(this,1.5,{
               "onComplete":Singleton.utility.m_tutorialHandler.BringIn_BonusLevelTut,
               "onCompleteParams":[this.ReActivateLevelSelect]
            });
            addr91:
            §§push(Singleton.dynamicData);
            §§push(TutorialTypes.TUTORIAL_BONUS_LEVEL);
         }
      }
      
      private function ReActivateLevelSelect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_isAnimating = false;
         }
      }
      
      private function AnimateToPosition() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc1_:Number = 1;
         var _loc2_:int = this.GetBaseBackgroundPosition();
         if(_loc6_)
         {
            TweenLite.to(this.m_backgroundBase,_loc1_,{"y":_loc2_});
            if(!(_loc7_ && Boolean(_loc3_)))
            {
               TweenLite.to(this.m_backgroundFar,_loc1_,{"alpha":this.GetCloundsBackground()});
               if(_loc6_ || Boolean(_loc3_))
               {
                  addr55:
                  TweenLite.to(this.m_stars,_loc1_,{"alpha":this.GetStarsBackground()});
               }
               var _loc4_:int = 0;
               loop0:
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     while(§§pop() < this.m_floorDisplayObjects.length)
                     {
                        §§push(this.GetHeightPositionBaseOnHiddenFloors(_loc4_));
                        if(!(_loc7_ && Boolean(_loc1_)))
                        {
                           §§push(§§pop());
                           if(_loc7_)
                           {
                              break loop0;
                           }
                           _loc3_ = §§pop();
                           if(!(_loc7_ && Boolean(_loc1_)))
                           {
                              TweenLite.to(this.m_floorDisplayObjects[_loc4_],_loc1_,{"y":329 - _loc3_ * 94 + 93 * this.m_numberOfPiecesPerScroll * this.m_currPage});
                              if(!_loc6_)
                              {
                                 break;
                              }
                              TweenLite.to(this.m_floorInformationObjects[_loc4_],_loc1_,{"y":354 - _loc3_ * 94 + 93 * this.m_numberOfPiecesPerScroll * this.m_currPage});
                              if(_loc7_)
                              {
                                 break;
                              }
                              _loc4_++;
                              if(!(_loc6_ || Boolean(this)))
                              {
                                 break;
                              }
                           }
                           continue loop0;
                        }
                     }
                     break;
                  }
                  break;
               }
               var _loc5_:* = §§pop();
               if(_loc6_)
               {
                  loop2:
                  while(_loc5_ < this.m_clouds.length)
                  {
                     TweenLite.to(this.m_clouds[_loc5_],_loc1_,{"y":this.GetCloudsBackgroundY(_loc5_)});
                     if(!(_loc6_ || Boolean(_loc1_)))
                     {
                        continue;
                     }
                     while(true)
                     {
                        _loc5_++;
                        if(!(_loc6_ || Boolean(this)))
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                  }
                  return;
               }
               §§goto(addr196);
            }
         }
         §§goto(addr55);
      }
      
      private function UpButtonPressed(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || Boolean(this))
         {
            var _loc2_:*;
            §§push((_loc2_ = this).m_currPage);
            if(!_loc4_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!(_loc4_ && Boolean(param1)))
            {
               _loc2_.m_currPage = _loc3_;
            }
            if(_loc5_)
            {
               §§goto(addr57);
            }
            §§goto(addr61);
         }
         addr57:
         this.SetArrowVisiblity();
         if(!_loc4_)
         {
            addr61:
            this.AnimateToPosition();
         }
      }
      
      private function DownButtonPressed(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).m_currPage);
            if(_loc5_ || Boolean(this))
            {
               §§push(§§pop() - 1);
            }
            var _loc3_:* = §§pop();
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               _loc2_.m_currPage = _loc3_;
            }
            if(_loc5_ || Boolean(_loc2_))
            {
               addr62:
               this.SetArrowVisiblity();
               if(_loc5_ || Boolean(this))
               {
                  this.AnimateToPosition();
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      private function GetBaseBackgroundPosition() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(119);
         §§push(this.m_currPage * 0.75);
         if(_loc2_)
         {
            §§push(§§pop() * 93);
         }
         return §§pop() + §§pop();
      }
      
      private function GetMountainsBackground() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(195);
         §§push(this.m_currPage * 0.7);
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§pop() * 93);
         }
         return §§pop() + §§pop();
      }
      
      private function GetCloundsBackground() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(1);
         §§push(this.m_currPage - 3);
         if(!_loc2_)
         {
            §§push(§§pop() / (this.m_totalPages - 3));
         }
         §§push(§§pop() - §§pop());
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(1);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(1);
                        if(_loc3_ || _loc1_)
                        {
                           §§push(§§pop());
                           if(!(_loc2_ && _loc2_))
                           {
                              _loc1_ = §§pop();
                              if(_loc3_ || _loc1_)
                              {
                                 addr85:
                                 §§push(_loc1_);
                                 if(!_loc2_)
                                 {
                                    addr88:
                                    addr89:
                                    if(§§pop() < 0)
                                    {
                                       if(_loc3_)
                                       {
                                          addr92:
                                          addr93:
                                          §§push(0);
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr101:
                                             _loc1_ = §§pop();
                                          }
                                          §§goto(addr103);
                                       }
                                    }
                                    addr103:
                                    return §§pop();
                                    §§push(_loc1_);
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr88);
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr85);
               }
               §§goto(addr89);
            }
            §§goto(addr92);
         }
         §§goto(addr85);
      }
      
      private function GetStarsBackground() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.m_currPage - 6);
         if(!(_loc3_ && _loc1_))
         {
            §§push(§§pop() / (this.m_totalPages - 6));
            if(!(_loc3_ && _loc1_))
            {
               §§push(§§pop());
            }
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc2_))
            {
               §§push(1);
               if(!_loc3_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§push(1);
                        if(!(_loc3_ && _loc1_))
                        {
                           §§push(§§pop());
                           if(_loc2_)
                           {
                              _loc1_ = §§pop();
                              if(_loc2_ || _loc1_)
                              {
                                 addr92:
                                 §§push(_loc1_);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr101:
                                    if(§§pop() < 0)
                                    {
                                       if(!_loc3_)
                                       {
                                          addr105:
                                          addr104:
                                          §§push(0);
                                          if(_loc2_ || Boolean(this))
                                          {
                                             addr113:
                                             _loc1_ = §§pop();
                                          }
                                          §§goto(addr115);
                                       }
                                    }
                                 }
                                 §§goto(addr115);
                              }
                              §§push(_loc1_);
                           }
                           addr115:
                           return §§pop();
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr92);
               }
               §§goto(addr101);
            }
            §§goto(addr113);
         }
         §§goto(addr92);
      }
      
      private function GetCloudsBackgroundY(param1:int) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(110 - param1 * 50);
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(this.m_currPage * 0.75);
            if(!_loc3_)
            {
               §§push(§§pop() * 93);
            }
            §§push(§§pop() + §§pop());
            if(_loc4_ || Boolean(param1))
            {
               §§push(§§pop());
            }
         }
         return §§pop();
      }
      
      private function SetArrowVisiblity() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.m_currPage);
         if(!_loc2_)
         {
            §§push(0);
            if(_loc1_)
            {
               if(§§pop() == §§pop())
               {
                  §§push(this.m_downButton);
                  if(_loc1_)
                  {
                     §§push(false);
                     if(!_loc2_)
                     {
                        §§pop().visible = §§pop();
                        if(_loc1_ || _loc2_)
                        {
                           addr43:
                           §§push(this.m_currPage);
                           if(!_loc2_)
                           {
                              addr56:
                              §§push(§§pop() == this.m_totalPages);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc1_ || _loc2_)
                                    {
                                       addr73:
                                       §§pop();
                                       §§push(this.m_currPage == int(Singleton.dynamicData.GetHighestFloor() / this.m_numberOfPiecesPerScroll));
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       addr95:
                                       §§push(this.m_upButton);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(false);
                                          if(!_loc2_)
                                          {
                                             §§pop().visible = §§pop();
                                             addr113:
                                             return;
                                             addr108:
                                          }
                                          §§goto(addr113);
                                       }
                                       else
                                       {
                                          addr111:
                                          §§push(true);
                                       }
                                       §§pop().visible = §§pop();
                                    }
                                    §§goto(addr113);
                                 }
                                 else
                                 {
                                    §§push(this.m_upButton);
                                 }
                                 §§goto(addr111);
                              }
                           }
                           §§goto(addr73);
                        }
                        §§goto(addr108);
                     }
                     else
                     {
                        addr40:
                        §§pop().visible = §§pop();
                        if(_loc1_)
                        {
                           §§goto(addr43);
                        }
                     }
                     §§goto(addr95);
                  }
                  else
                  {
                     addr39:
                     §§push(true);
                  }
                  §§goto(addr40);
               }
               else
               {
                  §§push(this.m_downButton);
               }
               §§goto(addr39);
            }
            §§goto(addr56);
         }
         §§goto(addr73);
      }
      
      private function HardModeButtonPressed(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.m_switchToHardModeButton.visible = false;
            if(_loc3_ || Boolean(param1))
            {
               this.m_switchToNormalModeButton.visible = true;
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr42:
                  this.m_isOnHardMode = true;
                  if(_loc3_)
                  {
                     this.m_hardModeIconOff.visible = true;
                     if(_loc3_ || _loc2_)
                     {
                        addr65:
                        this.m_normalModeIconOff.visible = false;
                     }
                  }
               }
               var _loc2_:int = 0;
               do
               {
                  if(_loc2_ >= this.m_floorInformationObjects.length)
                  {
                     if(_loc3_)
                     {
                        this.m_currPage = int((this.GetTotalNumberOfUnlockedFloors() - 1) / this.m_numberOfPiecesPerScroll);
                        if(_loc3_)
                        {
                           this.AnimateToPosition();
                           if(_loc3_ || _loc3_)
                           {
                              break;
                           }
                           §§goto(addr128);
                        }
                        break;
                     }
                     break;
                  }
                  this.m_floorInformationObjects[_loc2_].UpdateFloor(_loc2_,this.m_isOnHardMode);
                  if(_loc4_)
                  {
                     break;
                  }
                  _loc2_++;
               }
               while(!(_loc4_ && Boolean(_loc2_)));
               
               this.SetArrowVisiblity();
               addr128:
               return;
            }
            §§goto(addr65);
         }
         §§goto(addr42);
      }
      
      private function NormalModeButtonPressed(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || Boolean(param1))
         {
            this.m_switchToHardModeButton.visible = true;
            if(_loc4_)
            {
               §§goto(addr27);
            }
            §§goto(addr38);
         }
         addr27:
         this.m_switchToNormalModeButton.visible = false;
         if(_loc4_ || _loc3_)
         {
            this.m_isOnHardMode = false;
            addr38:
            if(_loc4_)
            {
               this.m_hardModeIconOff.visible = false;
               if(_loc4_ || Boolean(this))
               {
                  this.m_normalModeIconOff.visible = true;
               }
            }
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.m_floorInformationObjects.length)
         {
            this.m_floorInformationObjects[_loc2_].UpdateFloor(_loc2_,this.m_isOnHardMode);
            if(!(_loc3_ && Boolean(param1)))
            {
               _loc2_++;
               if(!_loc4_)
               {
                  break;
               }
            }
         }
      }
      
      private function ReturnButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(Singleton.dynamicData);
            if(!_loc3_)
            {
               §§push(-99);
               if(!_loc3_)
               {
                  §§pop().m_topDownCharPositionX = §§pop();
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(Singleton.dynamicData);
                     if(_loc2_)
                     {
                        addr41:
                        §§push(-99);
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           §§pop().m_topDownCharPositionY = §§pop();
                           §§goto(addr71);
                        }
                        §§goto(addr68);
                     }
                     addr68:
                     §§pop().m_currTransitionID = §§pop();
                     if(_loc2_)
                     {
                        §§goto(addr71);
                     }
                     addr71:
                     if(_loc2_ || Boolean(this))
                     {
                        addr64:
                        §§push(Singleton.dynamicData);
                     }
                     Singleton.utility.m_screenControllers.SetSceneTo(GameState.TOP_DOWN_SCREEN);
                     return;
                     §§push(SpecialRoom.LOBBY_ELEVATOR);
                  }
                  §§goto(addr64);
               }
               §§goto(addr68);
            }
            §§goto(addr41);
         }
         §§goto(addr71);
      }
      
      override public function UpdateFullFrames() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super.UpdateFullFrames();
         }
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               if(§§pop() >= this.m_clouds.length)
               {
                  §§push(this.m_isAnimating);
                  if(!_loc4_)
                  {
                     §§push(§§pop());
                     if(!_loc4_)
                     {
                        if(!§§pop())
                        {
                           if(_loc3_ || _loc2_)
                           {
                              §§pop();
                              if(!(_loc4_ && Boolean(_loc1_)))
                              {
                                 §§push(Singleton.utility);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop().m_tutorialHandler);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop().m_isActive);
                                       if(!_loc4_)
                                       {
                                          addr104:
                                          §§push(§§pop());
                                          if(_loc3_ || Boolean(this))
                                          {
                                             addr112:
                                             if(§§pop())
                                             {
                                                if(_loc3_)
                                                {
                                                   §§push(Singleton.utility);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      addr131:
                                                      §§push(§§pop().m_tutorialHandler);
                                                      if(_loc3_ || Boolean(this))
                                                      {
                                                         §§goto(addr145);
                                                      }
                                                      §§pop().Update();
                                                      §§goto(addr145);
                                                   }
                                                   §§goto(addr143);
                                                }
                                                §§goto(addr145);
                                             }
                                             else
                                             {
                                                §§push(this.m_switchToHardModeButton);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   if(§§pop().visible)
                                                   {
                                                      addr166:
                                                      this.m_switchToHardModeButton.m_isActive = true;
                                                   }
                                                   §§push(this.m_switchToNormalModeButton);
                                                   if(_loc3_ || Boolean(_loc1_))
                                                   {
                                                      if(§§pop().visible)
                                                      {
                                                         addr181:
                                                         this.m_switchToNormalModeButton.m_isActive = true;
                                                      }
                                                      this.m_returnButton.m_isActive = true;
                                                      if(!(_loc4_ && Boolean(_loc1_)))
                                                      {
                                                         §§push(this.m_upButton);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            if(§§pop().visible)
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  addr214:
                                                                  this.m_upButton.m_isActive = true;
                                                                  addr216:
                                                                  §§push(this.m_downButton);
                                                                  if(_loc3_)
                                                                  {
                                                                     if(§§pop().visible)
                                                                     {
                                                                        addr231:
                                                                        this.m_downButton.m_isActive = true;
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr231);
                                                                  addr212:
                                                               }
                                                               §§goto(addr231);
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         §§goto(addr214);
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                   §§goto(addr181);
                                                }
                                                §§goto(addr166);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr131);
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr104);
                        }
                     }
                     §§goto(addr112);
                  }
                  addr145:
               }
               continue;
               if(§§pop().m_isActive)
               {
                  addr143:
                  §§push(Singleton.utility.m_tutorialHandler);
               }
               return;
            }
            break;
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            loop1:
            while(_loc2_ < this.m_floorInformationObjects.length)
            {
               this.m_floorInformationObjects[_loc2_].Update();
               if(!_loc3_)
               {
                  break;
               }
               while(true)
               {
                  _loc2_++;
                  if(_loc4_)
                  {
                     break loop1;
                  }
                  continue loop1;
               }
            }
            return;
         }
         §§goto(addr246);
      }
   }
}
