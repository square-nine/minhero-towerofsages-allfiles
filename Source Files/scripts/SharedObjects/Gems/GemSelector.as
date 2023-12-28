package SharedObjects.Gems
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import States.GemSelectorState;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class GemSelector extends Sprite
   {
       
      
      private var m_background:Sprite;
      
      private var m_selector:Sprite;
      
      private var m_nextButton:TCButton;
      
      private var m_previousButton:TCButton;
      
      private var m_currPageText:TextField;
      
      private var m_gemSelectButtons:Vector.<TCButton>;
      
      private var m_gemVisuals:Vector.<GemVisuals>;
      
      public var m_currPageOfGems:int;
      
      private const m_numOfGemsPerPage:int = 15;
      
      public var m_state:int;
      
      public var m_selectedGem:OwnedGem;
      
      public var m_selectedGemStartingPagePosition:int;
      
      public var m_selectedGemPosition:int;
      
      public var m_onGemPressedFunction:Function;
      
      public function GemSelector()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               this.m_onGemPressedFunction = null;
            }
         }
      }
      
      public function LoadSprites() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = 0;
         if(!_loc6_)
         {
            this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemSelectBackground");
            if(!_loc6_)
            {
               addChild(this.m_background);
            }
         }
         var _loc1_:TextFormat = new TextFormat();
         if(_loc7_)
         {
            _loc1_.color = 15790320;
            if(!_loc6_)
            {
               _loc1_.size = 23;
               if(_loc7_ || Boolean(this))
               {
                  _loc1_.font = "BurbinCasual";
                  if(!_loc6_)
                  {
                     _loc1_.align = TextFormatAlign.CENTER;
                     this.m_currPageText = new TextField();
                     this.m_currPageText.embedFonts = true;
                     this.m_currPageText.defaultTextFormat = _loc1_;
                     addr73:
                     this.m_currPageText.wordWrap = true;
                     if(!(_loc6_ && _loc3_))
                     {
                        this.m_currPageText.autoSize = TextFieldAutoSize.CENTER;
                        this.m_currPageText.text = "9";
                        if(_loc7_ || Boolean(this))
                        {
                           addr100:
                           this.m_currPageText.x = 41;
                           this.m_currPageText.y = 213;
                           this.m_currPageText.width = 50;
                           if(_loc7_ || Boolean(this))
                           {
                              this.m_currPageText.selectable = false;
                              if(!_loc6_)
                              {
                                 addChild(this.m_currPageText);
                                 this.m_previousButton = new TCButton(this.PrevButtonPressed,"menus_scrollButton_up");
                                 if(_loc7_ || Boolean(this))
                                 {
                                    §§push(this.m_previousButton);
                                    if(_loc7_ || _loc2_)
                                    {
                                       §§push(16);
                                       if(_loc7_)
                                       {
                                          §§pop().x = §§pop();
                                          addr169:
                                          if(_loc7_ || Boolean(_loc1_))
                                          {
                                             addr165:
                                             §§push(this.m_previousButton);
                                             §§push(212);
                                          }
                                          addChild(this.m_previousButton);
                                          this.m_nextButton = new TCButton(this.NextButtonPressed,"menus_scrollButton_up");
                                          §§push(this.m_nextButton);
                                          if(!(_loc6_ && Boolean(_loc1_)))
                                          {
                                             §§push(113);
                                             if(!(_loc6_ && Boolean(_loc1_)))
                                             {
                                                §§pop().x = §§pop();
                                                §§push(this.m_nextButton);
                                                if(_loc7_ || Boolean(_loc1_))
                                                {
                                                   §§push(213);
                                                   if(_loc7_)
                                                   {
                                                      §§pop().y = §§pop();
                                                      addr213:
                                                      §§push(this.m_nextButton);
                                                      §§push(-1);
                                                   }
                                                }
                                                §§goto(addr213);
                                             }
                                             §§pop().scaleX = §§pop();
                                             addr215:
                                             addChild(this.m_nextButton);
                                             this.m_selector = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemMenuGemSelected");
                                             addr226:
                                             addChild(this.m_selector);
                                             if(_loc7_ || Boolean(this))
                                             {
                                                this.m_gemSelectButtons = new Vector.<TCButton>(this.m_numOfGemsPerPage);
                                                addr252:
                                                var _loc2_:* = 0;
                                                var _loc3_:Array = new Array(this.Gem1Pressed,this.Gem2Pressed,this.Gem3Pressed,this.Gem4Pressed,this.Gem5Pressed,this.Gem6Pressed,this.Gem7Pressed,this.Gem8Pressed,this.Gem9Pressed,this.Gem10Pressed,this.Gem11Pressed,this.Gem12Pressed,this.Gem13Pressed,this.Gem14Pressed,this.Gem15Pressed);
                                                var _loc4_:* = 0;
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   §§push(3);
                                                   if(!_loc6_)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            this.m_gemVisuals = new Vector.<GemVisuals>(this.m_numOfGemsPerPage);
                                                            §§push(0);
                                                            if(_loc7_ || Boolean(this))
                                                            {
                                                               _loc4_ = §§pop();
                                                               if(_loc7_ || Boolean(_loc1_))
                                                               {
                                                                  addr500:
                                                                  if(_loc4_ < 3)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc7_)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        addr494:
                                                                        §§push(_loc5_);
                                                                        §§push(5);
                                                                        if(_loc7_)
                                                                        {
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              _loc4_++;
                                                                              §§goto(addr500);
                                                                           }
                                                                           §§push(_loc4_);
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(5);
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr443:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr441:
                                                                                    §§push(§§pop() + _loc5_);
                                                                                 }
                                                                                 _loc2_ = §§pop();
                                                                                 this.m_gemVisuals[_loc2_] = new GemVisuals();
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    this.m_gemVisuals[_loc2_].x = 8 + _loc5_ * 64;
                                                                                    this.m_gemVisuals[_loc2_].y = 10 + _loc4_ * 62;
                                                                                    this.m_gemVisuals[_loc2_].visible = false;
                                                                                    addr472:
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addChild(this.m_gemVisuals[_loc2_]);
                                                                                       _loc5_++;
                                                                                       §§goto(addr494);
                                                                                    }
                                                                                    §§goto(addr503);
                                                                                 }
                                                                                 §§goto(addr494);
                                                                              }
                                                                           }
                                                                           §§goto(addr443);
                                                                        }
                                                                        §§goto(addr500);
                                                                        addr429:
                                                                     }
                                                                     §§goto(addr500);
                                                                  }
                                                                  addr503:
                                                                  return;
                                                               }
                                                               §§goto(addr494);
                                                            }
                                                            §§goto(addr443);
                                                         }
                                                         §§goto(addr429);
                                                      }
                                                      else
                                                      {
                                                         §§push(0);
                                                         if(!_loc6_)
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(_loc7_)
                                                            {
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  §§push(5);
                                                                  if(_loc7_ || Boolean(this))
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           _loc4_++;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     §§push(_loc4_);
                                                                     if(_loc7_ || Boolean(_loc1_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(5);
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc6_ && Boolean(this)))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc2_ = §§pop();
                                                                                             this.m_gemSelectButtons[_loc2_] = new TCButton(_loc3_[_loc2_],"menus_emptyGemSocket");
                                                                                             this.m_gemSelectButtons[_loc2_].x = 8 + _loc5_ * 64;
                                                                                             this.m_gemSelectButtons[_loc2_].y = 10 + _loc4_ * 62;
                                                                                             addr359:
                                                                                             while(true)
                                                                                             {
                                                                                                this.m_gemSelectButtons[_loc2_].ActivateTooltip("Move Gem");
                                                                                                if(!(_loc7_ || Boolean(_loc1_)))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop1;
                                                                                             }
                                                                                             §§goto(addr472);
                                                                                          }
                                                                                          addr328:
                                                                                       }
                                                                                       §§goto(addr494);
                                                                                    }
                                                                                    §§goto(addr443);
                                                                                 }
                                                                              }
                                                                              §§goto(addr441);
                                                                           }
                                                                           break loop1;
                                                                        }
                                                                        addr308:
                                                                     }
                                                                     §§goto(addr328);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr443);
                                                            }
                                                            §§goto(addr359);
                                                         }
                                                         §§goto(addr308);
                                                      }
                                                   }
                                                   §§goto(addr443);
                                                }
                                             }
                                             §§goto(addr252);
                                          }
                                          §§goto(addr213);
                                       }
                                       §§pop().y = §§pop();
                                       if(_loc7_)
                                       {
                                          §§goto(addr169);
                                       }
                                       §§goto(addr252);
                                    }
                                    §§goto(addr165);
                                 }
                                 §§goto(addr226);
                              }
                              §§goto(addr215);
                           }
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr252);
                  }
                  §§goto(addr169);
               }
               §§goto(addr100);
            }
            §§goto(addr215);
         }
         §§goto(addr73);
      }
      
      public function BringIn() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_state = GemSelectorState.GSS_NO_SELECTION;
            if(!(_loc1_ && Boolean(this)))
            {
               addr34:
               this.m_selectedGem = null;
               if(!_loc1_)
               {
                  this.m_currPageOfGems = 0;
                  if(_loc2_)
                  {
                     this.UpdateGems_Snap();
                  }
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function UpdateGems_Snap() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:OwnedGem = null;
         §§push(this.m_currPageOfGems);
         if(_loc6_)
         {
            §§push(int(§§pop() * this.m_numOfGemsPerPage));
         }
         var _loc1_:* = §§pop();
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         while(_loc3_ < this.m_numOfGemsPerPage)
         {
            if((_loc4_ = Singleton.dynamicData.GetOwnedGemAt(_loc1_ + _loc3_)) != null)
            {
               this.m_gemVisuals[_loc3_].visible = true;
               this.m_gemVisuals[_loc3_].SetGem(_loc4_);
               this.m_gemVisuals[_loc3_].x = this.m_gemSelectButtons[_loc3_].x;
               if(_loc6_)
               {
                  this.m_gemVisuals[_loc3_].y = this.m_gemSelectButtons[_loc3_].y;
                  this.m_gemSelectButtons[_loc3_].visible = false;
                  if(!_loc5_)
                  {
                     this.m_gemSelectButtons[_loc3_].SetNewPopupSprite(_loc4_.GetTooltip());
                     if(_loc6_)
                     {
                        addr101:
                        if(_loc4_ == this.m_selectedGem)
                        {
                           this.m_selector.x = this.m_gemSelectButtons[_loc3_].x - 11;
                           if(!(_loc6_ || _loc1_))
                           {
                              continue;
                           }
                           this.m_selector.y = this.m_gemSelectButtons[_loc3_].y - 13;
                           _loc2_ = true;
                        }
                     }
                     else
                     {
                        addr141:
                        this.m_gemSelectButtons[_loc3_].visible = true;
                        if(_loc5_ && Boolean(this))
                        {
                           continue;
                        }
                     }
                  }
                  _loc3_++;
                  continue;
               }
               §§goto(addr101);
            }
            else
            {
               this.m_gemVisuals[_loc3_].visible = false;
            }
            §§goto(addr141);
         }
         this.m_currPageText.text = "" + (this.m_currPageOfGems + 1);
         if(_loc2_)
         {
            if(!_loc5_)
            {
               this.m_selector.visible = true;
               addr190:
               §§push(this.m_onGemPressedFunction);
               if(_loc6_ || Boolean(_loc3_))
               {
                  §§goto(addr204);
               }
               §§pop().call();
            }
         }
         else
         {
            this.m_selector.visible = false;
            if(!_loc5_)
            {
               §§goto(addr190);
            }
         }
         addr204:
         if(§§pop() != null)
         {
            §§push(this.m_onGemPressedFunction);
         }
      }
      
      public function UpdateGems_Tween() : void
      {
      }
      
      public function DeselectGem() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_state = GemSelectorState.GSS_NO_SELECTION;
            if(_loc1_ || Boolean(this))
            {
               this.m_selectedGem = null;
               if(_loc1_ || _loc1_)
               {
                  addr43:
                  this.UpdateGems_Snap();
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function GemButtonPressed(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         §§push(this.m_currPageOfGems);
         if(!(_loc5_ && Boolean(this)))
         {
            §§push(int(§§pop() * this.m_numOfGemsPerPage));
         }
         var _loc2_:* = §§pop();
         var _loc3_:OwnedGem = Singleton.dynamicData.GetOwnedGemAt(_loc2_ + param1);
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            §§push(this.m_state);
            if(!_loc5_)
            {
               §§push(GemSelectorState.GSS_NO_SELECTION);
               if(!(_loc5_ && Boolean(param1)))
               {
                  if(§§pop() == §§pop())
                  {
                     this.m_selectedGem = _loc3_;
                     this.m_selectedGemStartingPagePosition = _loc2_;
                     this.m_selectedGemPosition = param1;
                     if(!_loc5_)
                     {
                        this.m_state = GemSelectorState.GSS_GEM_SELECTED;
                        if(_loc6_ || _loc2_)
                        {
                           this.UpdateGems_Snap();
                           if(!_loc6_)
                           {
                              addr107:
                              if(this.m_selectedGem == _loc3_)
                              {
                                 this.DeselectGem();
                                 return;
                              }
                              §§push(Singleton.dynamicData);
                              if(_loc6_)
                              {
                                 addr142:
                                 §§push(§§pop().GetGemPosition(this.m_selectedGem));
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    addr128:
                                    §§push(§§pop());
                                    if(!_loc5_)
                                    {
                                       addr131:
                                       _loc4_ = §§pop();
                                       addr134:
                                       Singleton.dynamicData.SwapGems(_loc4_,_loc2_ + param1);
                                       §§push(this.m_selectedGemStartingPagePosition);
                                    }
                                 }
                                 if(§§pop() != _loc2_)
                                 {
                                    addr143:
                                    this.DeselectGem();
                                 }
                                 else
                                 {
                                    this.m_state = GemSelectorState.GSS_GEM_SWAPPING;
                                    this.m_selector.visible = false;
                                    TweenLite.to(this.m_gemVisuals[param1],0.5,{
                                       "x":this.m_gemVisuals[this.m_selectedGemPosition].x,
                                       "y":this.m_gemVisuals[this.m_selectedGemPosition].y
                                    });
                                    if(_loc6_ || _loc2_)
                                    {
                                       TweenLite.to(this.m_gemVisuals[this.m_selectedGemPosition],0.5,{
                                          "x":this.m_gemVisuals[param1].x,
                                          "y":this.m_gemVisuals[param1].y
                                       });
                                       TweenLite.to(this,0.5,{"onComplete":this.DeselectGem});
                                       addr183:
                                    }
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr134);
                           }
                           addr219:
                           return;
                        }
                     }
                     §§goto(addr143);
                  }
                  else
                  {
                     §§push(this.m_state);
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        §§push(GemSelectorState.GSS_GEM_SELECTED);
                        if(!_loc5_)
                        {
                           if(§§pop() == §§pop())
                           {
                              §§goto(addr107);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr142);
                     }
                  }
                  §§goto(addr128);
               }
               §§goto(addr142);
            }
            §§goto(addr131);
         }
         §§goto(addr183);
      }
      
      public function NextButtonPressed(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            if(this.m_currPageOfGems == 9)
            {
               if(_loc4_)
               {
                  this.m_currPageOfGems = 0;
                  if(!_loc5_)
                  {
                     addr63:
                     this.UpdateGems_Snap();
                  }
               }
               §§goto(addr63);
            }
            else
            {
               var _loc2_:*;
               §§push((_loc2_ = this).m_currPageOfGems);
               if(!_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(!_loc5_)
               {
                  _loc2_.m_currPageOfGems = _loc3_;
               }
               if(_loc4_)
               {
                  §§goto(addr63);
               }
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function PrevButtonPressed(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(this.m_currPageOfGems == 0)
            {
               if(!(_loc5_ && _loc2_))
               {
                  this.m_currPageOfGems = 9;
                  if(_loc4_ || Boolean(this))
                  {
                  }
                  §§goto(addr80);
               }
               addr78:
               this.UpdateGems_Snap();
            }
            else
            {
               var _loc2_:*;
               §§push((_loc2_ = this).m_currPageOfGems);
               if(_loc4_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(!(_loc5_ && Boolean(this)))
               {
                  _loc2_.m_currPageOfGems = _loc3_;
               }
               if(!(_loc5_ && Boolean(param1)))
               {
                  §§goto(addr78);
               }
            }
            addr80:
            return;
         }
         §§goto(addr78);
      }
      
      public function Update() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            this.m_nextButton.m_isActive = true;
            if(_loc4_)
            {
               addr27:
               this.m_previousButton.m_isActive = true;
            }
            §§push(this.m_currPageOfGems);
            if(_loc4_)
            {
               §§push(int(§§pop() * this.m_numOfGemsPerPage));
            }
            var _loc1_:* = §§pop();
            var _loc2_:int = 0;
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.m_numOfGemsPerPage);
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        return;
                     }
                     §§push(this.m_state);
                     if(_loc4_)
                     {
                        §§push(GemSelectorState.GSS_NO_SELECTION);
                        if(!_loc4_)
                        {
                           break;
                        }
                        if(§§pop() == §§pop())
                        {
                           if(Singleton.dynamicData.GetOwnedGemAt(_loc1_ + _loc2_) != null)
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 this.m_gemSelectButtons[_loc2_].m_isActive = true;
                              }
                           }
                           continue loop0;
                        }
                        §§push(this.m_state);
                        if(!(_loc3_ && _loc3_))
                        {
                           addr98:
                           §§push(GemSelectorState.GSS_GEM_SELECTED);
                           if(_loc4_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     §§goto(addr98);
                  }
                  if(§§pop() == §§pop())
                  {
                     if(_loc4_)
                     {
                        this.m_gemSelectButtons[_loc2_].m_isActive = true;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr27);
      }
      
      private function Gem1Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.GemButtonPressed(0);
         }
      }
      
      private function Gem2Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(this))
         {
            this.GemButtonPressed(3);
         }
      }
      
      private function Gem5Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.GemButtonPressed(4);
         }
      }
      
      private function Gem6Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.GemButtonPressed(5);
         }
      }
      
      private function Gem7Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.GemButtonPressed(6);
         }
      }
      
      private function Gem8Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.GemButtonPressed(7);
         }
      }
      
      private function Gem9Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.GemButtonPressed(8);
         }
      }
      
      private function Gem10Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.GemButtonPressed(9);
         }
      }
      
      private function Gem11Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.GemButtonPressed(10);
         }
      }
      
      private function Gem12Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.GemButtonPressed(11);
         }
      }
      
      private function Gem13Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.GemButtonPressed(12);
         }
      }
      
      private function Gem14Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.GemButtonPressed(13);
         }
      }
      
      private function Gem15Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.GemButtonPressed(14);
         }
      }
   }
}
