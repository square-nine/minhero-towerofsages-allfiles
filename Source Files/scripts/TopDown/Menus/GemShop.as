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
         super();
      }
      
      override public function LoadSprites() : void
      {
         var _loc2_:TextFormat = null;
         super.LoadSprites();
         _loc2_ = new TextFormat();
         _loc2_.color = 15790320;
         _loc2_.size = 16;
         _loc2_.font = "BurbinCasual";
         _loc2_.align = TextFormatAlign.CENTER;
         this.m_sellButton = new TCButton(this.SellButtonPressed,"menus_gemCombiner_buySellButton");
         this.m_sellButton.x = 553;
         this.m_sellButton.y = 224;
         m_background.addChild(this.m_sellButton);
         this.m_sellButtonsText = new TextField();
         this.m_sellButtonsText.embedFonts = true;
         this.m_sellButtonsText.defaultTextFormat = _loc2_;
         this.m_sellButtonsText.wordWrap = true;
         this.m_sellButtonsText.autoSize = TextFieldAutoSize.CENTER;
         this.m_sellButtonsText.text = "Sell ($999)";
         this.m_sellButtonsText.x = -19;
         this.m_sellButtonsText.y = 6;
         this.m_sellButtonsText.width = 150;
         this.m_sellButtonsText.selectable = false;
         this.m_sellButton.addChild(this.m_sellButtonsText);
         this.m_buyButton = new TCButton(this.BuyButtonPressed,"menus_gemCombiner_buySellButton");
         this.m_buyButton.x = 553;
         this.m_buyButton.y = 396;
         m_background.addChild(this.m_buyButton);
         this.m_buyButtonsText = new TextField();
         this.m_buyButtonsText.embedFonts = true;
         this.m_buyButtonsText.defaultTextFormat = _loc2_;
         this.m_buyButtonsText.wordWrap = true;
         this.m_buyButtonsText.autoSize = TextFieldAutoSize.CENTER;
         this.m_buyButtonsText.text = "Buy ($999)";
         this.m_buyButtonsText.x = -19;
         this.m_buyButtonsText.y = 6;
         this.m_buyButtonsText.width = 150;
         this.m_buyButtonsText.selectable = false;
         this.m_buyButton.addChild(this.m_buyButtonsText);
         this.m_gemSelectButtons = new Vector.<TCButton>(4);
         this.m_gemVisuals = new Vector.<GemVisuals>(4);
         this.m_selectedIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemMenuGemSelected");
         m_background.addChild(this.m_selectedIcon);
         var _loc3_:Array = new Array(this.GemButton1Pressed,this.GemButton2Pressed,this.GemButton3Pressed,this.GemButton4Pressed);
         var _loc4_:int = 0;
         while(_loc4_ < this.m_gemSelectButtons.length)
         {
            this.m_gemSelectButtons[_loc4_] = new TCButton(_loc3_[_loc4_],"menus_emptyGemSocket");
            this.m_gemSelectButtons[_loc4_].x = 354 + _loc4_ * 75;
            this.m_gemSelectButtons[_loc4_].y = 308;
            this.m_gemSelectButtons[_loc4_].visible = false;
            this.m_gemSelectButtons[_loc4_].ActivateTooltip();
            m_background.addChild(this.m_gemSelectButtons[_loc4_]);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.m_gemSelectButtons.length)
         {
            this.m_gemVisuals[_loc4_] = new GemVisuals();
            this.m_gemVisuals[_loc4_].x = this.m_gemSelectButtons[_loc4_].x;
            this.m_gemVisuals[_loc4_].y = this.m_gemSelectButtons[_loc4_].y;
            m_background.addChild(this.m_gemVisuals[_loc4_]);
            _loc4_++;
         }
      }
      
      public function CreateNewGems() : void
      {
         var _loc2_:OwnedGem = null;
         this.m_gems = new Vector.<OwnedGem>(4);
         this.m_isGemPurchased = new Vector.<Boolean>(4);
         var _loc1_:int = Singleton.staticData.GetGemTierForShop();
         var _loc3_:int = 0;
         while(_loc3_ < this.m_gems.length)
         {
            _loc2_ = new OwnedGem();
            if(Math.random() * 100 < 30)
            {
               if(_loc3_ == 1)
               {
                  _loc2_.CreateGemWithTier(_loc1_,int(Math.random() * 5));
               }
               else
               {
                  _loc2_.CreateGemWithTier(_loc1_ + _loc3_,int(Math.random() * 5));
               }
            }
            else if(_loc3_ == 1)
            {
               _loc2_.CreateRandomGemWithTier(_loc1_);
            }
            else
            {
               _loc2_.CreateRandomGemWithTier(_loc1_ + _loc3_);
            }
            this.m_gems[_loc3_] = _loc2_;
            this.m_gemVisuals[_loc3_].SetGem(this.m_gems[_loc3_]);
            this.m_gemSelectButtons[_loc3_].SetNewPopupSprite(this.m_gems[_loc3_].GetTooltip());
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this.m_isGemPurchased.length)
         {
            this.m_isGemPurchased[_loc3_] = false;
            _loc3_++;
         }
      }
      
      override protected function UpdateAllTheInterfacePieces() : void
      {
         m_playersMoneyText.text = "$" + Singleton.dynamicData.m_currMoney;
         if(m_gemSelector.m_state != GemSelectorState.GSS_GEM_SELECTED)
         {
            this.m_sellButtonsText.text = "Sell";
            this.m_sellButton.alpha = 0.3;
         }
         else
         {
            this.m_sellButtonsText.text = "Sell ($" + Singleton.staticData.GetGemSellAmount(m_gemSelector.m_selectedGem.m_tier) + ")";
            this.m_sellButton.alpha = 1;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_gemSelectButtons.length)
         {
            if(this.m_isGemPurchased[_loc1_])
            {
               this.m_gemVisuals[_loc1_].visible = false;
            }
            else
            {
               this.m_gemVisuals[_loc1_].visible = true;
            }
            _loc1_++;
         }
         if(this.m_selectedGemPosition == -99)
         {
            this.m_buyButtonsText.text = "Buy";
            this.m_buyButton.alpha = 0.3;
            this.m_selectedIcon.visible = false;
         }
         else
         {
            this.m_buyButtonsText.text = "Buy ($" + Singleton.staticData.GetGemBuyAmount(this.m_gems[this.m_selectedGemPosition].m_tier) + ")";
            if(Singleton.staticData.GetGemBuyAmount(this.m_gems[this.m_selectedGemPosition].m_tier) <= Singleton.dynamicData.m_currMoney)
            {
               this.m_buyButton.alpha = 1;
            }
            else
            {
               this.m_buyButton.alpha = 0.3;
            }
            this.m_selectedIcon.visible = true;
         }
      }
      
      override public function BringIn() : void
      {
         this.m_selectedGemPosition = -99;
         super.BringIn();
         m_gemSelector.m_onGemPressedFunction = this.UpdateAllTheInterfacePieces;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.IN_GEM_STORE;
      }
      
      override public function Update() : void
      {
         super.Update();
         if(this.m_sellButton.alpha == 1)
         {
            this.m_sellButton.m_isActive = true;
         }
         if(this.m_buyButton.alpha == 1)
         {
            this.m_buyButton.m_isActive = true;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_gemSelectButtons.length)
         {
            if(!this.m_isGemPurchased[_loc1_])
            {
               this.m_gemSelectButtons[_loc1_].m_isActive = true;
            }
            _loc1_++;
         }
      }
      
      public function BuyButtonPressed(param1:MouseEvent) : void
      {
         Singleton.utility.m_soundController.PlaySound("menu_buyingItem",0.6);
         Singleton.dynamicData.m_currMoney -= Singleton.staticData.GetGemBuyAmount(this.m_gems[this.m_selectedGemPosition].m_tier);
         this.m_isGemPurchased[this.m_selectedGemPosition] = true;
         Singleton.dynamicData.AddToOwnedGems(this.m_gems[this.m_selectedGemPosition]);
         this.m_selectedGemPosition = -99;
         m_gemSelector.BringIn();
         this.UpdateAllTheInterfacePieces();
      }
      
      public function SellButtonPressed(param1:MouseEvent) : void
      {
         Singleton.utility.m_soundController.PlaySound("tower_moneyPickup");
         Singleton.dynamicData.m_currMoney += Singleton.staticData.GetGemSellAmount(m_gemSelector.m_selectedGem.m_tier);
         var _loc2_:int = Singleton.dynamicData.GetGemPosition(m_gemSelector.m_selectedGem);
         Singleton.dynamicData.SetGemAt(null,_loc2_);
         m_gemSelector.BringIn();
         this.UpdateAllTheInterfacePieces();
      }
      
      private function GemButtonHasBeenPressed(param1:int) : void
      {
         this.m_selectedGemPosition = param1;
         this.m_selectedIcon.x = this.m_gemSelectButtons[param1].x - 10;
         this.m_selectedIcon.y = this.m_gemSelectButtons[param1].y - 11;
         this.UpdateAllTheInterfacePieces();
      }
      
      private function GemButton1Pressed(param1:MouseEvent) : void
      {
         this.GemButtonHasBeenPressed(0);
      }
      
      private function GemButton2Pressed(param1:MouseEvent) : void
      {
         this.GemButtonHasBeenPressed(1);
      }
      
      private function GemButton3Pressed(param1:MouseEvent) : void
      {
         this.GemButtonHasBeenPressed(2);
      }
      
      private function GemButton4Pressed(param1:MouseEvent) : void
      {
         this.GemButtonHasBeenPressed(3);
      }
   }
}
