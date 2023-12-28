package TopDown.Menus.MinionStorage
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.GemSelectorState;
   import States.TutorialTypes;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class MinionStorageSelector extends Sprite
   {
       
      
      private var m_background:Sprite;
      
      private var m_selector:Sprite;
      
      private var m_tabSelectedIcon:Sprite;
      
      private var m_tabButtons:Vector.<TCButton>;
      
      private var m_nextButton:TCButton;
      
      private var m_previousButton:TCButton;
      
      private var m_otherBoxesBackground:Sprite;
      
      private var m_currTeamIcon:Sprite;
      
      private var m_minionSelectButtons:Vector.<TCButton>;
      
      private var m_minionSelectButtonsBaseXPosition:Vector.<int>;
      
      private var m_minionSelectButtonsBaseYPosition:Vector.<int>;
      
      public var m_currPageOfMinions:int;
      
      private const m_numOfMinionsPerPage:int = 20;
      
      public var m_state:int;
      
      public var m_selectedMinion:OwnedMinion;
      
      public var m_selectedMinionStartingPagePosition:int;
      
      public var m_selectedMinionPosition:int;
      
      public var m_onMinionPressedFunction:Function;
      
      public var m_isSwapModeActive:Boolean;
      
      public function MinionStorageSelector()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(_loc1_ || _loc1_)
            {
               this.m_onMinionPressedFunction = null;
               if(!_loc2_)
               {
                  addr41:
                  this.m_isSwapModeActive = false;
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function LoadSprites() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:int = 0;
         var _loc6_:Sprite = null;
         var _loc7_:* = 0;
         if(_loc8_ || _loc1_)
         {
            this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionStorage_minionsBackground");
            if(_loc8_)
            {
               this.m_background.x = 15;
               addr40:
               this.m_background.y = 54;
               if(_loc8_ || _loc1_)
               {
                  addChild(this.m_background);
                  this.m_otherBoxesBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionStorage_boxSelectBar");
                  this.m_otherBoxesBackground.x = 60;
                  if(!_loc9_)
                  {
                     this.m_otherBoxesBackground.y = 21;
                     addChild(this.m_otherBoxesBackground);
                     if(_loc8_ || Boolean(_loc2_))
                     {
                        this.m_tabSelectedIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionStorage_boxSelectedIcon");
                     }
                  }
                  addr94:
                  var _loc1_:Array = new Array(this.Tab1Pressed,this.Tab2Pressed,this.Tab3Pressed,this.Tab4Pressed,this.Tab5Pressed,this.Tab6Pressed,this.Tab7Pressed,this.Tab8Pressed,this.Tab9Pressed,this.Tab10Pressed);
                  if(_loc8_ || _loc3_)
                  {
                     this.m_tabButtons = new Vector.<TCButton>(10);
                     if(_loc8_ || Boolean(_loc2_))
                     {
                        addr139:
                        _loc2_ = 0;
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc8_)
                        {
                           if(§§pop() < this.m_tabButtons.length)
                           {
                              (_loc6_ = new Sprite()).graphics.beginFill(16711680);
                              _loc6_.graphics.drawRect(0,0,57,22);
                              _loc6_.graphics.endFill();
                              this.m_tabButtons[_loc2_] = new TCButton(_loc1_[_loc2_]);
                              this.m_tabButtons[_loc2_].CreateButton(_loc6_);
                              this.m_tabButtons[_loc2_].visible = false;
                              if(_loc8_)
                              {
                                 this.m_tabButtons[_loc2_].x = 52 + _loc2_ * 59;
                                 this.m_tabButtons[_loc2_].y = 27;
                                 if(_loc9_ && Boolean(_loc2_))
                                 {
                                    continue;
                                 }
                                 addChild(this.m_tabButtons[_loc2_]);
                                 if(_loc9_ && Boolean(_loc1_))
                                 {
                                    continue;
                                 }
                              }
                              _loc2_++;
                              continue;
                           }
                           if(!_loc9_)
                           {
                              this.m_previousButton = new TCButton(this.PrevButtonPressed,"menus_minionStorage_nextContainerButton");
                              if(_loc8_)
                              {
                                 §§push(this.m_previousButton);
                                 if(!(_loc9_ && Boolean(this)))
                                 {
                                    §§push(55);
                                    if(_loc8_ || Boolean(_loc2_))
                                    {
                                       §§pop().x = §§pop();
                                       §§push(this.m_previousButton);
                                       if(_loc8_ || Boolean(this))
                                       {
                                          §§push(22);
                                          if(_loc8_)
                                          {
                                             §§pop().y = §§pop();
                                             if(!_loc9_)
                                             {
                                                addr282:
                                                this.m_previousButton.scaleX = -1;
                                                addChild(this.m_previousButton);
                                                addr281:
                                                if(_loc8_ || Boolean(this))
                                                {
                                                   this.m_nextButton = new TCButton(this.NextButtonPressed,"menus_minionStorage_nextContainerButton");
                                                   §§push(this.m_nextButton);
                                                   if(_loc8_ || Boolean(_loc1_))
                                                   {
                                                      §§push(635);
                                                      if(!(_loc9_ && Boolean(_loc2_)))
                                                      {
                                                         §§pop().x = §§pop();
                                                         addr321:
                                                         §§push(this.m_nextButton);
                                                         §§push(22);
                                                      }
                                                      §§pop().y = §§pop();
                                                      addChild(this.m_nextButton);
                                                      addr327:
                                                      this.m_currTeamIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionStorage_currTeamIndecator");
                                                      if(!(_loc9_ && Boolean(this)))
                                                      {
                                                         this.m_currTeamIcon.x = 7;
                                                         addr345:
                                                         this.m_currTeamIcon.y = 12;
                                                         if(!_loc9_)
                                                         {
                                                            addr351:
                                                            this.m_background.addChild(this.m_currTeamIcon);
                                                            this.m_selector = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionStorage_minionSelectIcon");
                                                         }
                                                         this.m_background.addChild(this.m_selector);
                                                         if(_loc8_)
                                                         {
                                                         }
                                                         addr378:
                                                         break;
                                                      }
                                                      this.m_minionSelectButtons = new Vector.<TCButton>(this.m_numOfMinionsPerPage);
                                                      §§goto(addr378);
                                                   }
                                                   §§goto(addr321);
                                                }
                                                §§goto(addr327);
                                             }
                                             §§goto(addr378);
                                          }
                                       }
                                       §§goto(addr281);
                                    }
                                 }
                                 §§goto(addr282);
                              }
                              §§goto(addr351);
                           }
                           §§goto(addr345);
                        }
                        break;
                     }
                     var _loc3_:* = §§pop();
                     if(_loc8_)
                     {
                        this.m_minionSelectButtonsBaseXPosition = new Vector.<int>(this.m_numOfMinionsPerPage);
                        if(!(_loc9_ && Boolean(this)))
                        {
                           this.m_minionSelectButtonsBaseYPosition = new Vector.<int>(this.m_numOfMinionsPerPage);
                        }
                     }
                     var _loc4_:Array = new Array(this.Gem1Pressed,this.Gem2Pressed,this.Gem3Pressed,this.Gem4Pressed,this.Gem5Pressed,this.Gem6Pressed,this.Gem7Pressed,this.Gem8Pressed,this.Gem9Pressed,this.Gem10Pressed,this.Gem11Pressed,this.Gem12Pressed,this.Gem13Pressed,this.Gem14Pressed,this.Gem15Pressed,this.Gem16Pressed,this.Gem17Pressed,this.Gem18Pressed,this.Gem19Pressed,this.Gem20Pressed);
                     var _loc5_:int = 0;
                     loop1:
                     while(true)
                     {
                        §§push(_loc5_);
                        loop2:
                        while(true)
                        {
                           §§push(4);
                           while(§§pop() < §§pop())
                           {
                              §§push(0);
                              if(_loc8_)
                              {
                                 _loc7_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc7_);
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    addr519:
                                    this.m_minionSelectButtons[_loc3_].scaleX = 0.4;
                                    if(_loc8_)
                                    {
                                       this.m_minionSelectButtons[_loc3_].scaleY = 0.4;
                                    }
                                    this.m_background.addChild(this.m_minionSelectButtons[_loc3_]);
                                    _loc7_++;
                                 }
                                 continue loop2;
                              }
                              while(true)
                              {
                                 §§push(5);
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    continue loop1;
                                 }
                                 §§push(_loc5_);
                                 if(_loc8_ || Boolean(_loc1_))
                                 {
                                    §§push(5);
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc8_ || Boolean(_loc2_))
                                    {
                                       §§push(§§pop() + _loc7_);
                                    }
                                    §§push(§§pop());
                                    if(_loc9_ && Boolean(this))
                                    {
                                       continue;
                                    }
                                 }
                                 _loc3_ = §§pop();
                                 this.m_minionSelectButtons[_loc3_] = new TCButton(_loc4_[_loc3_],"menus_emptyGemSocket");
                                 this.m_minionSelectButtonsBaseXPosition[_loc3_] = 44 + _loc7_ * 65;
                                 this.m_minionSelectButtonsBaseYPosition[_loc3_] = 78 + _loc5_ * 78;
                                 if(!_loc8_)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr519);
                              }
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr139);
               }
               addChild(this.m_tabSelectedIcon);
            }
            §§goto(addr94);
         }
         §§goto(addr40);
      }
      
      public function BringIn() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.m_state = GemSelectorState.GSS_NO_SELECTION;
            if(!_loc1_)
            {
               this.m_selectedMinion = null;
               if(!(_loc1_ && _loc2_))
               {
                  addr39:
                  this.m_currPageOfMinions = 0;
                  if(!(_loc1_ && _loc1_))
                  {
                     this.UpdateMinions_Snap();
                  }
               }
               return;
            }
         }
         §§goto(addr39);
      }
      
      public function UpdateMinions_Snap() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:OwnedMinion = null;
         §§push(this.m_currPageOfMinions);
         if(!_loc6_)
         {
            §§push(int(§§pop() * this.m_numOfMinionsPerPage));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Boolean = false;
         if(_loc5_ || _loc2_)
         {
            _loc3_ = 0;
         }
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || Boolean(_loc3_))
            {
               §§push(this.m_numOfMinionsPerPage);
               if(!_loc6_)
               {
                  if(§§pop() < §§pop())
                  {
                     if((_loc4_ = Singleton.dynamicData.GetOwnedMinionAt(_loc1_ + _loc3_)) != null)
                     {
                        this.m_minionSelectButtons[_loc3_].visible = true;
                        this.m_minionSelectButtons[_loc3_].Cleanup();
                        this.m_minionSelectButtons[_loc3_].CreateButtonWithStrings(_loc4_.m_baseMinion.m_minionBattleSprite);
                        this.m_minionSelectButtons[_loc3_].x = this.m_minionSelectButtonsBaseXPosition[_loc3_] - this.m_minionSelectButtons[_loc3_].width / 2;
                        this.m_minionSelectButtons[_loc3_].y = this.m_minionSelectButtonsBaseYPosition[_loc3_] - this.m_minionSelectButtons[_loc3_].height;
                        if(_loc6_)
                        {
                           continue;
                        }
                        if(_loc4_ == this.m_selectedMinion)
                        {
                           this.m_selector.x = this.m_minionSelectButtonsBaseXPosition[_loc3_] - 28;
                           this.m_selector.y = this.m_minionSelectButtonsBaseYPosition[_loc3_] - 17 + 6;
                           _loc2_ = true;
                        }
                     }
                     else
                     {
                        this.m_minionSelectButtons[_loc3_].Cleanup();
                        this.m_minionSelectButtons[_loc3_].CreateButtonWithStrings("earthBear2");
                        this.m_minionSelectButtons[_loc3_].visible = false;
                     }
                     _loc3_++;
                     continue;
                  }
                  if(!_loc6_)
                  {
                     if(_loc2_)
                     {
                        this.m_selector.visible = true;
                     }
                     else
                     {
                        this.m_selector.visible = false;
                     }
                     this.m_tabSelectedIcon.x = 45 + this.m_currPageOfMinions * 56.2;
                     §§goto(addr240);
                  }
                  addr224:
                  §§push(this.m_onMinionPressedFunction);
                  if(_loc5_)
                  {
                     if(§§pop() != null)
                     {
                        if(_loc5_ || _loc2_)
                        {
                           addr239:
                           this.m_onMinionPressedFunction.call();
                        }
                     }
                     addr240:
                     if(!_loc6_)
                     {
                        this.m_tabSelectedIcon.y = 9;
                        if(!(_loc6_ && _loc2_))
                        {
                           §§push(this.m_currPageOfMinions);
                           break;
                        }
                     }
                     return;
                  }
                  §§goto(addr239);
                  addr219:
               }
               addr207:
               if(§§pop() == §§pop())
               {
                  this.m_currTeamIcon.visible = true;
                  §§goto(addr219);
               }
               else
               {
                  this.m_currTeamIcon.visible = false;
               }
               §§goto(addr224);
            }
            break;
         }
         §§goto(addr207);
         §§push(0);
      }
      
      public function DeselectMinion() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_state = GemSelectorState.GSS_NO_SELECTION;
            if(!(_loc2_ && Boolean(this)))
            {
               this.m_selectedMinion = null;
               if(_loc1_)
               {
                  addr38:
                  this.UpdateMinions_Snap();
               }
               return;
            }
         }
         §§goto(addr38);
      }
      
      public function GemButtonPressed(param1:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         §§push(this.m_currPageOfMinions);
         if(_loc10_ || Boolean(this))
         {
            §§push(int(§§pop() * this.m_numOfMinionsPerPage));
         }
         var _loc2_:* = §§pop();
         var _loc3_:OwnedMinion = Singleton.dynamicData.GetOwnedMinionAt(_loc2_ + param1);
         if(_loc10_)
         {
            §§push(this.m_state);
            §§push(GemSelectorState.GSS_NO_SELECTION);
            if(_loc10_)
            {
               if(§§pop() == §§pop())
               {
                  if(_loc10_)
                  {
                     this.m_selectedMinion = _loc3_;
                     this.m_selectedMinionStartingPagePosition = _loc2_;
                     addr63:
                     this.m_selectedMinionPosition = param1;
                     this.m_state = GemSelectorState.GSS_GEM_SELECTED;
                     if(!_loc9_)
                     {
                        this.UpdateMinions_Snap();
                        if(!(_loc10_ || _loc2_))
                        {
                           addr117:
                           this.m_selectedMinion = _loc3_;
                           if(_loc10_ || Boolean(param1))
                           {
                              this.m_selectedMinionStartingPagePosition = _loc2_;
                              addr130:
                              this.m_selectedMinionPosition = param1;
                              this.m_state = GemSelectorState.GSS_GEM_SELECTED;
                              if(_loc10_)
                              {
                                 addr139:
                                 this.UpdateMinions_Snap();
                                 addr141:
                              }
                              §§goto(addr317);
                           }
                           else
                           {
                              addr184:
                              this.DeselectMinion();
                           }
                        }
                        §§goto(addr317);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr141);
               }
               else
               {
                  §§push(this.m_state);
                  if(!(_loc9_ && _loc2_))
                  {
                     §§push(GemSelectorState.GSS_GEM_SELECTED);
                     if(!_loc9_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc9_ && Boolean(param1)))
                           {
                              if(this.m_selectedMinion == _loc3_)
                              {
                                 if(!_loc9_)
                                 {
                                    this.DeselectMinion();
                                    if(_loc10_)
                                    {
                                       return;
                                    }
                                    §§goto(addr117);
                                 }
                                 §§goto(addr117);
                              }
                              else
                              {
                                 if(this.m_isSwapModeActive)
                                 {
                                    §§push(Singleton.dynamicData);
                                    if(!_loc9_)
                                    {
                                       _loc4_ = int(§§pop().GetMinionPosition(this.m_selectedMinion));
                                       if(!_loc9_)
                                       {
                                          §§push(Singleton.dynamicData);
                                          if(!_loc9_)
                                          {
                                             addr164:
                                             §§push(_loc4_);
                                             if(!_loc9_)
                                             {
                                                §§pop().SwapMinions(§§pop(),_loc2_ + param1);
                                                if(_loc10_)
                                                {
                                                   addr173:
                                                   if(this.m_selectedMinionStartingPagePosition != _loc2_)
                                                   {
                                                      if(_loc10_ || Boolean(this))
                                                      {
                                                         §§goto(addr184);
                                                      }
                                                      else
                                                      {
                                                         addr197:
                                                         §§push(this.m_minionSelectButtonsBaseXPosition[this.m_selectedMinionPosition] - this.m_minionSelectButtons[param1].width / 2);
                                                         if(_loc10_)
                                                         {
                                                            addr213:
                                                            _loc5_ = §§pop();
                                                            §§push(this.m_minionSelectButtonsBaseYPosition[this.m_selectedMinionPosition] - this.m_minionSelectButtons[param1].height);
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               §§goto(addr232);
                                                            }
                                                            §§goto(addr269);
                                                         }
                                                         addr232:
                                                         _loc6_ = §§pop();
                                                         if(_loc10_ || Boolean(param1))
                                                         {
                                                            §§push(this.m_minionSelectButtonsBaseXPosition[param1] - this.m_minionSelectButtons[this.m_selectedMinionPosition].width / 2);
                                                            if(!_loc9_)
                                                            {
                                                               _loc7_ = §§pop();
                                                               addr269:
                                                               _loc8_ = this.m_minionSelectButtonsBaseYPosition[param1] - this.m_minionSelectButtons[this.m_selectedMinionPosition].height;
                                                               TweenLite.to(this.m_minionSelectButtons[param1],0.5,{
                                                                  "x":_loc5_,
                                                                  "y":_loc6_
                                                               });
                                                               TweenLite.to(this.m_minionSelectButtons[this.m_selectedMinionPosition],0.5,{
                                                                  "x":_loc7_,
                                                                  "y":_loc8_
                                                               });
                                                            }
                                                            §§goto(addr269);
                                                         }
                                                         TweenLite.to(this,0.5,{"onComplete":this.DeselectMinion});
                                                         Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_SWAP_MINIONS,true);
                                                         §§goto(addr317);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      this.m_state = GemSelectorState.GSS_GEM_SWAPPING;
                                                      if(_loc10_)
                                                      {
                                                         this.m_selector.visible = false;
                                                         §§goto(addr197);
                                                      }
                                                   }
                                                }
                                                §§goto(addr269);
                                             }
                                          }
                                          §§goto(addr232);
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr164);
                                 }
                                 §§goto(addr317);
                              }
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr317);
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr213);
               }
            }
            §§goto(addr173);
         }
         §§goto(addr63);
      }
      
      public function NextButtonPressed(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(this.m_currPageOfMinions == 9)
            {
               if(_loc5_ || Boolean(this))
               {
                  this.m_currPageOfMinions = 0;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr84:
                     this.UpdateMinions_Snap();
                  }
               }
               §§goto(addr84);
            }
            else
            {
               var _loc2_:*;
               §§push((_loc2_ = this).m_currPageOfMinions);
               if(_loc5_ || Boolean(_loc2_))
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(!_loc4_)
               {
                  _loc2_.m_currPageOfMinions = _loc3_;
               }
               if(!(_loc4_ && Boolean(param1)))
               {
                  §§goto(addr84);
               }
            }
            return;
         }
         §§goto(addr84);
      }
      
      public function PrevButtonPressed(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(this.m_currPageOfMinions == 0)
            {
               if(!(_loc5_ && _loc2_))
               {
                  this.m_currPageOfMinions = 9;
                  if(_loc5_ && Boolean(this))
                  {
                  }
                  §§goto(addr85);
               }
               addr83:
               this.UpdateMinions_Snap();
            }
            else
            {
               var _loc2_:*;
               §§push((_loc2_ = this).m_currPageOfMinions);
               if(_loc4_ || Boolean(_loc2_))
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(!(_loc5_ && Boolean(this)))
               {
                  _loc2_.m_currPageOfMinions = _loc3_;
               }
               if(_loc4_ || Boolean(param1))
               {
                  §§goto(addr83);
               }
            }
         }
         addr85:
      }
      
      public function TabButtonPressed(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.m_currPageOfMinions = param1;
            if(_loc2_ || Boolean(param1))
            {
               addr37:
               this.UpdateMinions_Snap();
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function Update() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.m_nextButton.m_isActive = true;
            if(_loc5_)
            {
               this.m_previousButton.m_isActive = true;
            }
         }
         §§push(this.m_currPageOfMinions);
         if(!(_loc4_ && _loc1_))
         {
            §§push(int(§§pop() * this.m_numOfMinionsPerPage));
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               loop1:
               while(true)
               {
                  §§push(this.m_numOfMinionsPerPage);
                  while(§§pop() < §§pop())
                  {
                     §§push(this.m_state);
                     if(_loc5_)
                     {
                        §§push(GemSelectorState.GSS_NO_SELECTION);
                        if(!_loc4_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc4_)
                              {
                                 continue loop0;
                              }
                              if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_ + _loc2_) != null)
                              {
                                 if(!(_loc5_ || Boolean(_loc2_)))
                                 {
                                    addr98:
                                    this.m_minionSelectButtons[_loc2_].m_isActive = true;
                                    if(!(_loc5_ || _loc1_))
                                    {
                                       break;
                                    }
                                    addr111:
                                    _loc2_++;
                                    continue loop0;
                                 }
                                 this.m_minionSelectButtons[_loc2_].m_isActive = true;
                                 §§goto(addr111);
                              }
                           }
                           else
                           {
                              §§push(this.m_state);
                              if(_loc4_)
                              {
                                 continue loop1;
                              }
                              addr88:
                              §§push(GemSelectorState.GSS_GEM_SELECTED);
                              if(_loc4_ && Boolean(_loc2_))
                              {
                                 continue;
                              }
                              addr97:
                              if(§§pop() == §§pop())
                              {
                                 §§goto(addr98);
                              }
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr88);
                  }
                  break loop0;
               }
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || _loc3_)
         {
         }
         loop3:
         while(true)
         {
            §§push(_loc3_);
            while(§§pop() < this.m_tabButtons.length)
            {
               §§push(_loc3_);
               if(_loc5_)
               {
                  if(§§pop() != this.m_currPageOfMinions)
                  {
                     if(_loc5_)
                     {
                        this.m_tabButtons[_loc3_].m_isActive = true;
                        if(!_loc5_)
                        {
                           continue loop3;
                        }
                     }
                  }
                  _loc3_++;
                  if(!_loc5_)
                  {
                     break;
                  }
                  continue loop3;
               }
            }
            return;
         }
      }
      
      private function Gem1Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.GemButtonPressed(0);
         }
      }
      
      private function Gem2Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(this)))
         {
            this.GemButtonPressed(1);
         }
      }
      
      private function Gem3Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.GemButtonPressed(2);
         }
      }
      
      private function Gem4Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.GemButtonPressed(3);
         }
      }
      
      private function Gem5Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(this))
         {
            this.GemButtonPressed(4);
         }
      }
      
      private function Gem6Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.GemButtonPressed(5);
         }
      }
      
      private function Gem7Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.GemButtonPressed(6);
         }
      }
      
      private function Gem8Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.GemButtonPressed(7);
         }
      }
      
      private function Gem9Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.GemButtonPressed(8);
         }
      }
      
      private function Gem10Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.GemButtonPressed(9);
         }
      }
      
      private function Gem11Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.GemButtonPressed(10);
         }
      }
      
      private function Gem12Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(this))
         {
            this.GemButtonPressed(11);
         }
      }
      
      private function Gem13Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.GemButtonPressed(12);
         }
      }
      
      private function Gem14Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.GemButtonPressed(13);
         }
      }
      
      private function Gem15Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.GemButtonPressed(14);
         }
      }
      
      private function Gem16Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.GemButtonPressed(15);
         }
      }
      
      private function Gem17Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.GemButtonPressed(16);
         }
      }
      
      private function Gem18Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && Boolean(param1)))
         {
            this.GemButtonPressed(17);
         }
      }
      
      private function Gem19Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.GemButtonPressed(18);
         }
      }
      
      private function Gem20Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.GemButtonPressed(19);
         }
      }
      
      private function Tab1Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.TabButtonPressed(0);
         }
      }
      
      private function Tab2Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.TabButtonPressed(1);
         }
      }
      
      private function Tab3Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.TabButtonPressed(2);
         }
      }
      
      private function Tab4Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(this)))
         {
            this.TabButtonPressed(3);
         }
      }
      
      private function Tab5Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.TabButtonPressed(4);
         }
      }
      
      private function Tab6Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(this)))
         {
            this.TabButtonPressed(5);
         }
      }
      
      private function Tab7Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.TabButtonPressed(6);
         }
      }
      
      private function Tab8Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.TabButtonPressed(7);
         }
      }
      
      private function Tab9Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.TabButtonPressed(8);
         }
      }
      
      private function Tab10Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(param1))
         {
            this.TabButtonPressed(9);
         }
      }
   }
}
