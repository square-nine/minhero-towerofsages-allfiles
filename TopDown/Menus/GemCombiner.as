package TopDown.Menus
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.Gems.GemVisuals;
   import SharedObjects.Gems.OwnedGem;
   import States.GemSelectorState;
   import States.TopDownStates;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class GemCombiner extends BaseLargeGemMenu
   {
       
      
      protected var m_needSameTieredGemsText:TextField;
      
      protected var m_notEnoughMoneyText:TextField;
      
      protected var m_resetButton:TCButton;
      
      protected var m_combineButton:TCButton;
      
      protected var m_combinedButtonText:TextField;
      
      protected var m_gemSelectButtons:Vector.<TCButton>;
      
      protected var m_gemVisuals:Vector.<GemVisuals>;
      
      protected var m_gems:Vector.<OwnedGem>;
      
      public function GemCombiner()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      override public function LoadSprites() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:TextFormat = null;
         var _loc3_:* = 0;
         if(_loc4_)
         {
            super.LoadSprites();
         }
         var _loc1_:Sprite = this;
         _loc2_ = new TextFormat();
         if(_loc4_)
         {
            _loc2_.color = 15790320;
            _loc2_.size = 20;
            if(_loc4_ || Boolean(_loc1_))
            {
               _loc2_.font = "BurbinCasual";
               if(_loc4_ || Boolean(_loc1_))
               {
                  _loc2_.align = TextFormatAlign.CENTER;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     this.m_needSameTieredGemsText = new TextField();
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        this.m_needSameTieredGemsText.embedFonts = true;
                        if(!(_loc5_ && Boolean(_loc3_)))
                        {
                           _loc2_.color = 16001835;
                           _loc2_.size = 12;
                           if(_loc4_ || Boolean(_loc3_))
                           {
                              this.m_needSameTieredGemsText.defaultTextFormat = _loc2_;
                              this.m_needSameTieredGemsText.wordWrap = true;
                              this.m_needSameTieredGemsText.autoSize = TextFieldAutoSize.CENTER;
                              this.m_needSameTieredGemsText.text = "Gems need to be of the same tier";
                              this.m_needSameTieredGemsText.x = 334;
                              addr121:
                              this.m_needSameTieredGemsText.y = 283;
                              this.m_needSameTieredGemsText.width = 200;
                              if(!(_loc5_ && Boolean(_loc2_)))
                              {
                                 this.m_needSameTieredGemsText.selectable = false;
                                 m_background.addChild(this.m_needSameTieredGemsText);
                                 if(_loc4_ || Boolean(_loc2_))
                                 {
                                    this.m_notEnoughMoneyText = new TextField();
                                    if(_loc4_)
                                    {
                                       addr157:
                                       this.m_notEnoughMoneyText.embedFonts = true;
                                       _loc2_.color = 16001835;
                                       if(!_loc5_)
                                       {
                                          _loc2_.size = 12;
                                          this.m_notEnoughMoneyText.defaultTextFormat = _loc2_;
                                          this.m_notEnoughMoneyText.wordWrap = true;
                                          addr177:
                                          this.m_notEnoughMoneyText.autoSize = TextFieldAutoSize.CENTER;
                                          if(!(_loc5_ && Boolean(this)))
                                          {
                                             this.m_notEnoughMoneyText.text = "Not enough money";
                                             if(_loc4_)
                                             {
                                                this.m_notEnoughMoneyText.x = 485;
                                                if(!_loc5_)
                                                {
                                                   this.m_notEnoughMoneyText.y = 369;
                                                   this.m_notEnoughMoneyText.width = 200;
                                                   addr209:
                                                   this.m_notEnoughMoneyText.selectable = false;
                                                }
                                                m_background.addChild(this.m_notEnoughMoneyText);
                                                if(_loc4_ || Boolean(_loc3_))
                                                {
                                                   §§goto(addr224);
                                                }
                                                §§goto(addr328);
                                             }
                                          }
                                          §§goto(addr360);
                                       }
                                    }
                                    §§goto(addr281);
                                 }
                                 addr224:
                                 this.m_resetButton = new TCButton(this.ResetButtonPressed,"menus_gemCombiner_resetButton");
                                 if(!_loc5_)
                                 {
                                    §§push(this.m_resetButton);
                                    if(!(_loc5_ && Boolean(_loc1_)))
                                    {
                                       §§push(341);
                                       if(_loc4_)
                                       {
                                          §§pop().x = §§pop();
                                          addr248:
                                          §§push(this.m_resetButton);
                                          §§push(408);
                                       }
                                       §§pop().y = §§pop();
                                       m_background.addChild(this.m_resetButton);
                                       §§goto(addr254);
                                    }
                                    §§goto(addr248);
                                 }
                                 addr254:
                                 this.m_combineButton = new TCButton(this.CombineGemsButtonPressed,"menus_gemCombiner_CombineButton");
                                 §§push(this.m_combineButton);
                                 if(_loc4_ || Boolean(_loc2_))
                                 {
                                    §§push(507);
                                    if(!(_loc5_ && Boolean(_loc1_)))
                                    {
                                       §§pop().x = §§pop();
                                       if(_loc4_)
                                       {
                                          addr281:
                                          §§push(this.m_combineButton);
                                          if(!_loc5_)
                                          {
                                             §§goto(addr286);
                                          }
                                          §§goto(addr376);
                                       }
                                       §§goto(addr360);
                                    }
                                    §§goto(addr286);
                                 }
                                 addr286:
                                 §§pop().y = 386;
                                 m_background.addChild(this.m_combineButton);
                                 if(_loc4_ || Boolean(this))
                                 {
                                    this.m_combinedButtonText = new TextField();
                                    this.m_combinedButtonText.embedFonts = true;
                                    if(!(_loc5_ && Boolean(_loc2_)))
                                    {
                                       _loc2_.color = 15790320;
                                       _loc2_.size = 18;
                                       if(_loc4_)
                                       {
                                          addr328:
                                          this.m_combinedButtonText.defaultTextFormat = _loc2_;
                                          if(_loc4_)
                                          {
                                             this.m_combinedButtonText.wordWrap = true;
                                          }
                                          this.m_combinedButtonText.autoSize = TextFieldAutoSize.CENTER;
                                          if(!(_loc5_ && Boolean(_loc1_)))
                                          {
                                             addr350:
                                             this.m_combinedButtonText.text = "Combine ($10)";
                                             if(_loc4_)
                                             {
                                                this.m_combinedButtonText.x = 4;
                                                addr360:
                                                this.m_combinedButtonText.y = 9;
                                                this.m_combinedButtonText.width = 150;
                                                this.m_combinedButtonText.selectable = false;
                                                if(_loc4_)
                                                {
                                                   addr376:
                                                   this.m_combineButton.addChild(this.m_combinedButtonText);
                                                   this.m_gemSelectButtons = new Vector.<TCButton>(4);
                                                }
                                             }
                                             §§goto(addr360);
                                          }
                                          §§goto(addr409);
                                       }
                                       this.m_gemVisuals = new Vector.<GemVisuals>(4);
                                       addr393:
                                       this.m_gems = new Vector.<OwnedGem>(4);
                                       if(!(_loc5_ && Boolean(_loc3_)))
                                       {
                                          addr407:
                                          _loc3_ = 0;
                                       }
                                       §§goto(addr409);
                                    }
                                    §§goto(addr350);
                                 }
                                 addr409:
                                 loop0:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc4_ || Boolean(this))
                                    {
                                       if(§§pop() >= this.m_gemSelectButtons.length)
                                       {
                                          if(_loc4_ || Boolean(_loc3_))
                                          {
                                             this.m_gemSelectButtons[3].x = 584;
                                             if(_loc4_ || Boolean(_loc1_))
                                             {
                                                §§push(0);
                                                if(_loc4_ || Boolean(this))
                                                {
                                                   _loc3_ = §§pop();
                                                   if(_loc4_)
                                                   {
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc4_ || Boolean(_loc3_))
                                                         {
                                                            if(§§pop() < this.m_gemSelectButtons.length)
                                                            {
                                                               this.m_gemVisuals[_loc3_] = new GemVisuals();
                                                               if(_loc4_ || Boolean(_loc1_))
                                                               {
                                                                  this.m_gemVisuals[_loc3_].x = this.m_gemSelectButtons[_loc3_].x;
                                                                  if(_loc4_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.m_gemVisuals[_loc3_].y = this.m_gemSelectButtons[_loc3_].y;
                                                                        if(!_loc5_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.m_gemVisuals[_loc3_].visible = false;
                                                                              if(!(_loc5_ && Boolean(this)))
                                                                              {
                                                                                 m_background.addChild(this.m_gemVisuals[_loc3_]);
                                                                                 if(_loc5_ && Boolean(this))
                                                                                 {
                                                                                    this.visible = false;
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr563);
                                                                              }
                                                                              addr563:
                                                                              _loc3_++;
                                                                              if(_loc5_ && Boolean(_loc2_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop6;
                                                                              §§goto(addr616);
                                                                           }
                                                                           addr601:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              break loop0;
                                                                           }
                                                                           addr611:
                                                                           addr537:
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc3_++;
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§goto(addr611);
                                                                        }
                                                                        §§goto(addr616);
                                                                     }
                                                                     addr525:
                                                                     addr608:
                                                                  }
                                                                  §§goto(addr537);
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr586);
                                                   }
                                                   §§push(0);
                                                   if(_loc5_)
                                                   {
                                                   }
                                                   break;
                                                }
                                                addr586:
                                                _loc3_ = §§pop();
                                                if(_loc4_ || Boolean(_loc1_))
                                                {
                                                   §§goto(addr601);
                                                }
                                                §§goto(addr616);
                                             }
                                          }
                                          §§goto(addr601);
                                       }
                                       else
                                       {
                                          this.m_gemSelectButtons[_loc3_] = new TCButton(this.DoesNothingFunction,"menus_emptyGemSocket");
                                          this.m_gemSelectButtons[_loc3_].x = 342 + _loc3_ * 64;
                                          this.m_gemSelectButtons[_loc3_].y = 302;
                                          this.m_gemSelectButtons[_loc3_].ActivateTooltip();
                                          if(_loc4_ || Boolean(_loc2_))
                                          {
                                             continue;
                                          }
                                       }
                                       §§goto(addr525);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§§pop() < this.m_gemSelectButtons.length)
                                    {
                                       this.m_gems[_loc3_] = null;
                                       §§goto(addr608);
                                    }
                                    break;
                                    §§goto(addr601);
                                 }
                                 addr616:
                              }
                              §§goto(addr407);
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr360);
                     }
                     §§goto(addr209);
                  }
                  §§goto(addr157);
               }
               §§goto(addr393);
            }
            §§goto(addr121);
         }
         §§goto(addr157);
      }
      
      override public function BringIn() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.BringIn();
            if(!_loc1_)
            {
               addr20:
               Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.IN_GEM_COMBINER;
            }
            return;
         }
         §§goto(addr20);
      }
      
      override protected function UpdateAllTheInterfacePieces() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         m_playersMoneyText.text = "$" + Singleton.dynamicData.m_currMoney;
         this.m_needSameTieredGemsText.visible = false;
         this.m_notEnoughMoneyText.visible = false;
         if(this.m_gems[0] != null)
         {
            §§push(this.m_resetButton);
            if(_loc3_)
            {
               §§push(true);
               if(!_loc2_)
               {
                  §§pop().visible = §§pop();
                  if(_loc3_)
                  {
                     addr59:
                     §§push(this.m_gems[0] == null);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(!§§pop());
                        §§push(!§§pop());
                        if(!(_loc2_ && Boolean(this)))
                        {
                           if(§§pop())
                           {
                              addr82:
                              §§pop();
                              §§push(this.m_gems[1] != null);
                              if(_loc3_)
                              {
                                 addr92:
                                 if(§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       addr96:
                                       §§pop();
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          §§push(this.m_gems[2] == null);
                                          if(_loc3_)
                                          {
                                             addr113:
                                             if(!§§pop())
                                             {
                                                if(_loc3_)
                                                {
                                                   this.m_gems[3] = this.m_gems[0].CombineGems(this.m_gems[1],this.m_gems[2]);
                                                   this.m_combinedButtonText.text = "Combine" + "($" + Singleton.staticData.GetGemCombineCostAmount(this.m_gems[3].m_tier) + ")";
                                                   if(_loc3_)
                                                   {
                                                      §§push(Singleton.dynamicData.m_currMoney);
                                                      if(!_loc2_)
                                                      {
                                                         if(§§pop() >= Singleton.staticData.GetGemCombineCostAmount(this.m_gems[3].m_tier))
                                                         {
                                                            §§push(this.m_combineButton);
                                                            if(_loc3_)
                                                            {
                                                               §§pop().alpha = 1;
                                                               addr216:
                                                               _loc1_ = 0;
                                                               addr217:
                                                               while(_loc1_ < this.m_gems.length)
                                                               {
                                                                  if(this.m_gems[_loc1_] != null)
                                                                  {
                                                                     this.m_gemVisuals[_loc1_].visible = true;
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        this.m_gemVisuals[_loc1_].SetGem(this.m_gems[_loc1_]);
                                                                        this.m_gemSelectButtons[_loc1_].visible = false;
                                                                        if(!(_loc3_ || Boolean(this)))
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     this.m_gemSelectButtons[_loc1_].SetNewPopupSprite(this.m_gems[_loc1_].GetTooltip());
                                                                  }
                                                                  else
                                                                  {
                                                                     this.m_gemVisuals[_loc1_].visible = false;
                                                                     this.m_gemSelectButtons[_loc1_].visible = true;
                                                                     if(!_loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  _loc1_++;
                                                                  if(!(_loc3_ || _loc3_))
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               return;
                                                               addr197:
                                                               addr215:
                                                               addr179:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(this.m_combineButton);
                                                            if(!_loc2_)
                                                            {
                                                               addr184:
                                                               §§push(0.3);
                                                               if(_loc3_ || Boolean(_loc1_))
                                                               {
                                                                  §§pop().alpha = §§pop();
                                                                  this.m_notEnoughMoneyText.visible = true;
                                                                  §§goto(addr197);
                                                               }
                                                               §§goto(addr217);
                                                            }
                                                            else
                                                            {
                                                               addr211:
                                                               §§push(0.3);
                                                            }
                                                            §§pop().alpha = §§pop();
                                                            if(!_loc2_)
                                                            {
                                                               §§goto(addr215);
                                                            }
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                this.m_combinedButtonText.text = "Combine";
                                                if(_loc3_ || Boolean(_loc1_))
                                                {
                                                }
                                             }
                                             §§goto(addr216);
                                          }
                                          §§goto(addr113);
                                       }
                                       §§goto(addr211);
                                       §§push(this.m_combineButton);
                                    }
                                 }
                                 §§goto(addr113);
                              }
                              §§goto(addr96);
                           }
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr179);
               }
               else
               {
                  addr51:
                  §§pop().visible = §§pop();
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr59);
                  }
               }
               §§goto(addr216);
            }
            else
            {
               addr50:
               §§push(false);
            }
            §§goto(addr51);
         }
         else
         {
            §§push(this.m_resetButton);
         }
         §§goto(addr50);
      }
      
      override public function Update() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.Update();
            if(!_loc2_)
            {
               §§push(this.m_combineButton);
               if(_loc3_)
               {
                  if(§§pop().alpha == 1)
                  {
                     if(_loc3_ || _loc1_)
                     {
                        addr36:
                        this.m_combineButton.m_isActive = true;
                        if(!_loc2_)
                        {
                           addr40:
                           §§push(this.m_resetButton);
                           if(!_loc2_)
                           {
                              if(§§pop().visible)
                              {
                                 addr52:
                                 if(_loc3_)
                                 {
                                    addr48:
                                    §§push(this.m_resetButton);
                                 }
                                 var _loc1_:int = 0;
                                 do
                                 {
                                    if(_loc1_ >= this.m_gems.length)
                                    {
                                       if(!(_loc2_ && Boolean(_loc1_)))
                                       {
                                          if(m_gemSelector.m_state == GemSelectorState.GSS_GEM_SELECTED)
                                          {
                                             if(_loc3_ || Boolean(_loc1_))
                                             {
                                                this.m_needSameTieredGemsText.visible = false;
                                                §§push(this.m_gems[0] == null);
                                                §§push(this.m_gems[0] == null);
                                                if(!(_loc2_ && Boolean(this)))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§pop();
                                                         §§push(this.m_gems[1] == null);
                                                      }
                                                   }
                                                   §§push(§§pop());
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      addr140:
                                                      if(!§§pop())
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            §§pop();
                                                            addr150:
                                                            if(this.m_gems[2] == null)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(this.m_gems[0] != null);
                                                                  if(_loc3_)
                                                                  {
                                                                     addr163:
                                                                     if(§§pop() && this.m_gems[0].m_tier != m_gemSelector.m_selectedGem.m_tier)
                                                                     {
                                                                        addr183:
                                                                        m_gemSelector.DeselectGem();
                                                                        if(_loc3_)
                                                                        {
                                                                           this.UpdateAllTheInterfacePieces();
                                                                           if(_loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        addr206:
                                                                        return;
                                                                        addr203:
                                                                        addr195:
                                                                     }
                                                                     else
                                                                     {
                                                                        this.AddButtonPressed(null);
                                                                        this.UpdateAllTheInterfacePieces();
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§goto(addr203);
                                                                        }
                                                                        §§goto(addr206);
                                                                     }
                                                                     §§goto(addr206);
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               m_gemSelector.DeselectGem();
                                                            }
                                                            §§goto(addr206);
                                                         }
                                                         §§goto(addr164);
                                                      }
                                                      §§goto(addr150);
                                                   }
                                                   §§goto(addr163);
                                                }
                                                §§goto(addr140);
                                             }
                                          }
                                          §§goto(addr183);
                                       }
                                       break;
                                    }
                                    if(this.m_gems[_loc1_] == null)
                                    {
                                       continue;
                                    }
                                    if(!_loc2_)
                                    {
                                       this.m_gemSelectButtons[_loc1_].m_isActive = true;
                                       continue;
                                    }
                                    §§goto(addr183);
                                 }
                                 while(_loc1_++, !_loc2_);
                                 
                                 this.m_needSameTieredGemsText.visible = true;
                                 §§goto(addr195);
                              }
                              §§goto(addr52);
                           }
                           §§pop().m_isActive = true;
                        }
                        §§goto(addr48);
                     }
                     §§goto(addr52);
                  }
                  §§goto(addr40);
               }
               §§goto(addr36);
            }
         }
         §§goto(addr48);
      }
      
      public function AddButtonPressed(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         §§push(Singleton.dynamicData.GetGemPosition(m_gemSelector.m_selectedGem));
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc6_ && Boolean(param1)))
         {
            if(this.m_gems[0] == null)
            {
               if(_loc5_ || Boolean(this))
               {
                  §§push(0);
                  if(!(_loc6_ && _loc2_))
                  {
                     _loc3_ = §§pop();
                     if(!_loc5_)
                     {
                        addr71:
                        §§push(1);
                        if(_loc5_)
                        {
                           _loc3_ = §§pop();
                           if(_loc5_)
                           {
                              addr77:
                           }
                        }
                        else
                        {
                           addr79:
                           _loc3_ = §§pop();
                        }
                     }
                  }
                  §§goto(addr79);
               }
               var _loc4_:OwnedGem = this.m_gems[_loc3_];
               if(!(_loc6_ && Boolean(param1)))
               {
                  this.m_gems[_loc3_] = m_gemSelector.m_selectedGem;
                  if(!(_loc6_ && Boolean(this)))
                  {
                     Singleton.dynamicData.SetGemAt(_loc4_,_loc2_);
                     if(!(_loc6_ && _loc2_))
                     {
                        addr125:
                        m_gemSelector.BringIn();
                        if(_loc5_)
                        {
                           this.UpdateAllTheInterfacePieces();
                        }
                     }
                  }
                  return;
               }
               §§goto(addr125);
            }
            else if(this.m_gems[1] == null)
            {
               if(!_loc6_)
               {
                  §§goto(addr71);
               }
               §§goto(addr77);
            }
            else
            {
               §§push(2);
            }
            §§goto(addr79);
         }
         §§goto(addr71);
      }
      
      public function CombineGemsButtonPressed(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            Singleton.utility.m_soundController.PlaySound("menu_buyingItem",0.6);
            if(_loc3_)
            {
               §§push(Singleton.dynamicData);
               if(_loc3_)
               {
                  §§pop().m_currMoney = Singleton.dynamicData.m_currMoney - Singleton.staticData.GetGemCombineCostAmount(this.m_gems[3].m_tier);
                  if(!_loc4_)
                  {
                     addr56:
                     Singleton.dynamicData.AddToOwnedGems(this.m_gems[3]);
                  }
                  var _loc2_:int = 0;
                  do
                  {
                     if(_loc2_ >= this.m_gems.length)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        §§goto(addr105);
                     }
                     this.m_gems[_loc2_] = null;
                     if(!_loc3_)
                     {
                        break;
                     }
                     _loc2_++;
                  }
                  while(!(_loc4_ && _loc3_));
                  
                  m_gemSelector.BringIn();
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     this.UpdateAllTheInterfacePieces();
                  }
                  addr105:
                  return;
               }
               §§goto(addr56);
            }
         }
         §§goto(addr56);
      }
      
      public function ResetButtonPressed(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            if(this.m_gems[_loc2_] != null)
            {
               Singleton.dynamicData.AddToOwnedGems(this.m_gems[_loc2_]);
               this.m_gems[_loc2_] = null;
               if(!_loc3_)
               {
                  §§goto(addr64);
               }
            }
            _loc2_++;
            if(!_loc3_)
            {
               break;
            }
         }
         this.m_gems[3] = null;
         m_gemSelector.BringIn();
         addr64:
         this.UpdateAllTheInterfacePieces();
      }
      
      override public function ReturnButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.ResetButtonPressed(null);
            if(!(_loc3_ && _loc2_))
            {
               addr25:
               super.ReturnButtonPressed(param1);
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function DoesNothingFunction(param1:MouseEvent) : void
      {
      }
   }
}
