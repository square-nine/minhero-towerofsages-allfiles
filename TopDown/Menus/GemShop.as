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
   
   public class GemShop extends BaseLargeGemMenu
   {
       
      
      private var m_sellButton:TCButton;
      
      private var m_sellButtonsText:TextField;
      
      private var m_buyButton:TCButton;
      
      private var m_buyButtonsText:TextField;
      
      protected var m_gemSelectButtons:Vector.<TCButton>;
      
      protected var m_gemVisuals:Vector.<GemVisuals>;
      
      protected var m_gems:Vector.<OwnedGem>;
      
      protected var m_isGemPurchased:Vector.<Boolean>;
      
      private var m_selectedGemPosition:int;
      
      private var m_selectedIcon:Sprite;
      
      public function GemShop()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function LoadSprites() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:TextFormat = null;
         if(_loc6_ || _loc1_)
         {
            super.LoadSprites();
         }
         var _loc1_:Sprite = this;
         _loc2_ = new TextFormat();
         if(_loc6_ || Boolean(_loc2_))
         {
            _loc2_.color = 15790320;
            if(_loc6_)
            {
               _loc2_.size = 16;
               if(_loc6_)
               {
                  addr50:
                  _loc2_.font = "BurbinCasual";
                  if(_loc6_ || _loc3_)
                  {
                     _loc2_.align = TextFormatAlign.CENTER;
                     this.m_sellButton = new TCButton(this.SellButtonPressed,"menus_gemCombiner_buySellButton");
                     §§push(this.m_sellButton);
                     if(_loc6_ || Boolean(this))
                     {
                        §§push(553);
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           §§pop().x = §§pop();
                           if(!_loc5_)
                           {
                              §§push(this.m_sellButton);
                              if(!(_loc5_ && _loc3_))
                              {
                                 addr101:
                                 §§pop().y = 224;
                                 m_background.addChild(this.m_sellButton);
                                 this.m_sellButtonsText = new TextField();
                                 if(_loc6_ || Boolean(this))
                                 {
                                    addr117:
                                    this.m_sellButtonsText.embedFonts = true;
                                    this.m_sellButtonsText.defaultTextFormat = _loc2_;
                                    this.m_sellButtonsText.wordWrap = true;
                                    this.m_sellButtonsText.autoSize = TextFieldAutoSize.CENTER;
                                    this.m_sellButtonsText.text = "Sell ($999)";
                                    if(!_loc5_)
                                    {
                                       this.m_sellButtonsText.x = -19;
                                       this.m_sellButtonsText.y = 6;
                                       this.m_sellButtonsText.width = 150;
                                       if(_loc6_)
                                       {
                                          this.m_sellButtonsText.selectable = false;
                                          addr160:
                                          this.m_sellButton.addChild(this.m_sellButtonsText);
                                          this.m_buyButton = new TCButton(this.BuyButtonPressed,"menus_gemCombiner_buySellButton");
                                          §§push(this.m_buyButton);
                                          if(_loc6_)
                                          {
                                             §§push(553);
                                             if(_loc6_)
                                             {
                                                §§pop().x = §§pop();
                                                if(_loc6_ || _loc3_)
                                                {
                                                   addr185:
                                                   §§push(this.m_buyButton);
                                                   if(!_loc5_)
                                                   {
                                                      addr190:
                                                      §§pop().y = 396;
                                                      m_background.addChild(this.m_buyButton);
                                                      this.m_buyButtonsText = new TextField();
                                                      if(_loc6_)
                                                      {
                                                         addr201:
                                                         this.m_buyButtonsText.embedFonts = true;
                                                         if(!(_loc5_ && Boolean(this)))
                                                         {
                                                            addr212:
                                                            this.m_buyButtonsText.defaultTextFormat = _loc2_;
                                                            this.m_buyButtonsText.wordWrap = true;
                                                            if(_loc6_)
                                                            {
                                                               this.m_buyButtonsText.autoSize = TextFieldAutoSize.CENTER;
                                                               this.m_buyButtonsText.text = "Buy ($999)";
                                                               addr238:
                                                               this.m_buyButtonsText.x = -19;
                                                               if(_loc6_ || Boolean(_loc2_))
                                                               {
                                                                  addr249:
                                                                  this.m_buyButtonsText.y = 6;
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     addr260:
                                                                     this.m_buyButtonsText.width = 150;
                                                                     addr264:
                                                                     this.m_buyButtonsText.selectable = false;
                                                                     addr270:
                                                                     this.m_buyButton.addChild(this.m_buyButtonsText);
                                                                     this.m_gemSelectButtons = new Vector.<TCButton>(4);
                                                                     if(_loc6_)
                                                                     {
                                                                        addr282:
                                                                        this.m_gemVisuals = new Vector.<GemVisuals>(4);
                                                                        if(_loc5_)
                                                                        {
                                                                        }
                                                                        addr309:
                                                                        var _loc3_:Array = new Array(this.GemButton1Pressed,this.GemButton2Pressed,this.GemButton3Pressed,this.GemButton4Pressed);
                                                                        var _loc4_:* = 0;
                                                                        loop0:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(!(_loc5_ && Boolean(this)))
                                                                           {
                                                                              if(§§pop() >= this.m_gemSelectButtons.length)
                                                                              {
                                                                                 if(!(_loc5_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    addr397:
                                                                                    §§push(0);
                                                                                    if(_loc6_ || Boolean(_loc3_))
                                                                                    {
                                                                                       _loc4_ = §§pop();
                                                                                       if(!(_loc5_ && Boolean(this)))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             break loop0;
                                                                                          }
                                                                                          addr464:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          m_background.addChild(this.m_gemVisuals[_loc4_]);
                                                                                       }
                                                                                       addr455:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc4_++;
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§goto(addr464);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 addr469:
                                                                                 return;
                                                                                 addr461:
                                                                              }
                                                                              this.m_gemSelectButtons[_loc4_] = new TCButton(_loc3_[_loc4_],"menus_emptyGemSocket");
                                                                              this.m_gemSelectButtons[_loc4_].x = 354 + _loc4_ * 75;
                                                                              this.m_gemSelectButtons[_loc4_].y = 308;
                                                                              this.m_gemSelectButtons[_loc4_].visible = false;
                                                                              this.m_gemSelectButtons[_loc4_].ActivateTooltip();
                                                                              if(!(_loc6_ || Boolean(_loc1_)))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              m_background.addChild(this.m_gemSelectButtons[_loc4_]);
                                                                              if(_loc6_)
                                                                              {
                                                                                 _loc4_++;
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr397);
                                                                           }
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() < this.m_gemSelectButtons.length)
                                                                           {
                                                                              this.m_gemVisuals[_loc4_] = new GemVisuals();
                                                                              this.m_gemVisuals[_loc4_].x = this.m_gemSelectButtons[_loc4_].x;
                                                                              if(!(_loc5_ && Boolean(_loc3_)))
                                                                              {
                                                                                 this.m_gemVisuals[_loc4_].y = this.m_gemSelectButtons[_loc4_].y;
                                                                                 §§goto(addr455);
                                                                              }
                                                                              §§goto(addr461);
                                                                           }
                                                                           §§goto(addr469);
                                                                        }
                                                                     }
                                                                     this.m_selectedIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemMenuGemSelected");
                                                                     if(_loc6_ || Boolean(_loc2_))
                                                                     {
                                                                     }
                                                                     §§goto(addr309);
                                                                  }
                                                                  m_background.addChild(this.m_selectedIcon);
                                                                  §§goto(addr309);
                                                               }
                                                               §§goto(addr260);
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                         §§goto(addr282);
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr270);
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr190);
                                          }
                                          §§goto(addr260);
                                       }
                                       §§goto(addr185);
                                    }
                                 }
                                 §§goto(addr282);
                              }
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr264);
               }
               §§goto(addr201);
            }
            §§goto(addr50);
         }
         §§goto(addr117);
      }
      
      public function CreateNewGems() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:OwnedGem = null;
         if(!_loc4_)
         {
            this.m_gems = new Vector.<OwnedGem>(4);
            if(_loc5_)
            {
               addr28:
               this.m_isGemPurchased = new Vector.<Boolean>(4);
            }
            §§push(Singleton.staticData.GetGemTierForShop());
            if(!(_loc4_ && Boolean(this)))
            {
               §§push(§§pop());
            }
            var _loc1_:* = §§pop();
            var _loc3_:* = 0;
            loop0:
            while(true)
            {
               §§push(_loc3_);
               if(_loc5_ || Boolean(_loc2_))
               {
                  if(§§pop() >= this.m_gems.length)
                  {
                     if(_loc5_)
                     {
                        §§push(0);
                        if(_loc5_ || _loc1_)
                        {
                           _loc3_ = §§pop();
                           if(!_loc4_)
                           {
                              addr188:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 break loop0;
                              }
                              addr217:
                           }
                           §§goto(addr222);
                        }
                        break;
                     }
                     §§goto(addr188);
                  }
                  else
                  {
                     _loc2_ = new OwnedGem();
                     if(_loc5_)
                     {
                        if(Math.random() * 100 < 30)
                        {
                           if(!_loc4_)
                           {
                              §§push(_loc3_);
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 §§push(1);
                                 if(!_loc4_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          _loc2_.CreateGemWithTier(_loc1_,int(Math.random() * 5));
                                          if(!(_loc4_ && Boolean(_loc3_)))
                                          {
                                             addr129:
                                             this.m_gems[_loc3_] = _loc2_;
                                             if(_loc4_)
                                             {
                                                continue;
                                             }
                                             addr136:
                                             this.m_gemVisuals[_loc3_].SetGem(this.m_gems[_loc3_]);
                                             addr116:
                                          }
                                          else
                                          {
                                             addr123:
                                             §§goto(addr129);
                                          }
                                          §§goto(addr129);
                                       }
                                       §§goto(addr136);
                                    }
                                    else
                                    {
                                       _loc2_.CreateGemWithTier(_loc1_ + _loc3_,int(Math.random() * 5));
                                       if(!_loc4_)
                                       {
                                          §§goto(addr116);
                                       }
                                    }
                                    this.m_gemSelectButtons[_loc3_].SetNewPopupSprite(this.m_gems[_loc3_].GetTooltip());
                                    if(_loc5_ || Boolean(_loc2_))
                                    {
                                       _loc3_++;
                                    }
                                    continue;
                                 }
                                 addr119:
                                 if(§§pop() == §§pop())
                                 {
                                    _loc2_.CreateRandomGemWithTier(_loc1_);
                                    §§goto(addr123);
                                 }
                                 else
                                 {
                                    _loc2_.CreateRandomGemWithTier(_loc1_ + _loc3_);
                                 }
                                 §§goto(addr129);
                              }
                              else
                              {
                                 addr118:
                                 §§push(1);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr136);
                        }
                        else
                        {
                           §§push(_loc3_);
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr123);
                  }
               }
               break;
            }
            while(§§pop() < this.m_isGemPurchased.length)
            {
               this.m_isGemPurchased[_loc3_] = false;
               if(_loc5_ || Boolean(this))
               {
                  _loc3_++;
                  if(!(_loc5_ || Boolean(_loc3_)))
                  {
                     break;
                  }
               }
               §§goto(addr217);
            }
            addr222:
            return;
         }
         §§goto(addr28);
      }
      
      override protected function UpdateAllTheInterfacePieces() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            m_playersMoneyText.text = "$" + Singleton.dynamicData.m_currMoney;
            if(m_gemSelector.m_state != GemSelectorState.GSS_GEM_SELECTED)
            {
               addr27:
               this.m_sellButtonsText.text = "Sell";
               §§push(this.m_sellButton);
               if(!(_loc3_ && _loc1_))
               {
                  §§pop().alpha = 0.3;
               }
               else
               {
                  addr60:
                  §§pop().alpha = 1;
               }
            }
            else
            {
               this.m_sellButtonsText.text = "Sell ($" + Singleton.staticData.GetGemSellAmount(m_gemSelector.m_selectedGem.m_tier) + ")";
               if(!_loc3_)
               {
                  §§goto(addr60);
                  §§push(this.m_sellButton);
               }
            }
            var _loc1_:int = 0;
            while(true)
            {
               §§push(_loc1_);
               if(!_loc2_)
               {
                  break;
               }
               if(§§pop() >= this.m_gemSelectButtons.length)
               {
                  §§push(this.m_selectedGemPosition);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(-99);
                     if(_loc2_ || _loc2_)
                     {
                        if(§§pop() == §§pop())
                        {
                           this.m_buyButtonsText.text = "Buy";
                           if(_loc2_)
                           {
                              §§push(this.m_buyButton);
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 §§push(0.3);
                                 if(!_loc3_)
                                 {
                                    §§pop().alpha = §§pop();
                                    this.m_selectedIcon.visible = false;
                                 }
                                 else
                                 {
                                    addr193:
                                    §§pop().alpha = §§pop();
                                    this.m_selectedIcon.visible = true;
                                 }
                                 §§goto(addr198);
                              }
                              addr192:
                              §§push(0.3);
                              §§goto(addr193);
                           }
                        }
                        else
                        {
                           this.m_buyButtonsText.text = "Buy ($" + Singleton.staticData.GetGemBuyAmount(this.m_gems[this.m_selectedGemPosition].m_tier) + ")";
                           addr189:
                           if(_loc2_)
                           {
                              addr161:
                              §§push(Singleton.staticData.GetGemBuyAmount(this.m_gems[this.m_selectedGemPosition].m_tier));
                              break;
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr161);
                     }
                     addr180:
                     if(§§pop() <= §§pop())
                     {
                        §§push(this.m_buyButton);
                        if(_loc2_)
                        {
                           §§pop().alpha = 1;
                           if(_loc2_)
                           {
                              §§goto(addr189);
                           }
                           addr198:
                           return;
                        }
                        §§goto(addr192);
                        §§goto(addr193);
                     }
                     else
                     {
                        §§push(this.m_buyButton);
                     }
                     §§goto(addr192);
                  }
                  break;
               }
               if(this.m_isGemPurchased[_loc1_])
               {
                  this.m_gemVisuals[_loc1_].visible = false;
                  if(!_loc2_)
                  {
                     continue;
                  }
               }
               else
               {
                  this.m_gemVisuals[_loc1_].visible = true;
               }
               _loc1_++;
            }
            §§goto(addr180);
            §§push(Singleton.dynamicData.m_currMoney);
         }
         §§goto(addr27);
      }
      
      override public function BringIn() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_selectedGemPosition = -99;
            if(!_loc2_)
            {
               super.BringIn();
               if(_loc2_)
               {
               }
               §§goto(addr44);
            }
            m_gemSelector.m_onGemPressedFunction = this.UpdateAllTheInterfacePieces;
            if(_loc1_)
            {
               Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.IN_GEM_STORE;
            }
         }
         addr44:
      }
      
      override public function Update() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(this)))
         {
            super.Update();
            if(!_loc2_)
            {
               addr25:
               §§push(this.m_sellButton);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop().alpha == 1)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        this.m_sellButton.m_isActive = true;
                        addr46:
                        if(!_loc2_)
                        {
                           addr57:
                           §§push(this.m_buyButton);
                           if(_loc3_)
                           {
                              if(§§pop().alpha == 1)
                              {
                              }
                              §§goto(addr75);
                           }
                           §§pop().m_isActive = true;
                        }
                     }
                     addr75:
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§push(this.m_buyButton);
                     }
                     var _loc1_:int = 0;
                     while(_loc1_ < this.m_gemSelectButtons.length)
                     {
                        if(!this.m_isGemPurchased[_loc1_])
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              this.m_gemSelectButtons[_loc1_].m_isActive = true;
                              if(!_loc3_)
                              {
                                 break;
                              }
                           }
                        }
                        _loc1_++;
                        if(!_loc3_)
                        {
                           break;
                        }
                     }
                     return;
                  }
                  §§goto(addr57);
               }
               §§goto(addr46);
            }
            §§goto(addr57);
         }
         §§goto(addr25);
      }
      
      public function BuyButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         Singleton.utility.m_soundController.PlaySound("menu_buyingItem",0.6);
         §§push(Singleton.dynamicData);
         if(_loc2_ || _loc2_)
         {
            §§pop().m_currMoney = Singleton.dynamicData.m_currMoney - Singleton.staticData.GetGemBuyAmount(this.m_gems[this.m_selectedGemPosition].m_tier);
            if(_loc2_ || _loc2_)
            {
               this.m_isGemPurchased[this.m_selectedGemPosition] = true;
               if(_loc2_ || _loc3_)
               {
                  addr78:
                  Singleton.dynamicData.AddToOwnedGems(this.m_gems[this.m_selectedGemPosition]);
               }
               this.m_selectedGemPosition = -99;
            }
            m_gemSelector.BringIn();
            this.UpdateAllTheInterfacePieces();
            return;
         }
         §§goto(addr78);
      }
      
      public function SellButtonPressed(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || Boolean(this))
         {
            Singleton.utility.m_soundController.PlaySound("tower_moneyPickup");
            if(_loc3_)
            {
               §§goto(addr27);
            }
            §§goto(addr49);
         }
         addr27:
         §§push(Singleton.dynamicData);
         if(!_loc4_)
         {
            §§pop().m_currMoney = Singleton.dynamicData.m_currMoney + Singleton.staticData.GetGemSellAmount(m_gemSelector.m_selectedGem.m_tier);
            addr49:
            §§push(Singleton.dynamicData);
         }
         §§push(§§pop().GetGemPosition(m_gemSelector.m_selectedGem));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            Singleton.dynamicData.SetGemAt(null,_loc2_);
            if(!_loc4_)
            {
               m_gemSelector.BringIn();
               if(_loc4_ && Boolean(this))
               {
               }
               §§goto(addr85);
            }
            this.UpdateAllTheInterfacePieces();
         }
         addr85:
      }
      
      private function GemButtonHasBeenPressed(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(this)))
         {
            this.m_selectedGemPosition = param1;
            if(!(_loc2_ && Boolean(this)))
            {
               this.m_selectedIcon.x = this.m_gemSelectButtons[param1].x - 10;
               if(_loc3_ || _loc2_)
               {
               }
               §§goto(addr74);
            }
            this.m_selectedIcon.y = this.m_gemSelectButtons[param1].y - 11;
            if(_loc3_)
            {
            }
            §§goto(addr74);
         }
         addr74:
         this.UpdateAllTheInterfacePieces();
      }
      
      private function GemButton1Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || Boolean(this))
         {
            this.GemButtonHasBeenPressed(0);
         }
      }
      
      private function GemButton2Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.GemButtonHasBeenPressed(1);
         }
      }
      
      private function GemButton3Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.GemButtonHasBeenPressed(2);
         }
      }
      
      private function GemButton4Pressed(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.GemButtonHasBeenPressed(3);
         }
      }
   }
}
