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
         super();
      }
      
      override public function LoadSprites() : void
      {
         var _loc2_:TextFormat = null;
         var _loc3_:int = 0;
         super.LoadSprites();
         _loc2_ = new TextFormat();
         _loc2_.color = 15790320;
         _loc2_.size = 20;
         _loc2_.font = "BurbinCasual";
         _loc2_.align = TextFormatAlign.CENTER;
         this.m_needSameTieredGemsText = new TextField();
         this.m_needSameTieredGemsText.embedFonts = true;
         _loc2_.color = 16001835;
         _loc2_.size = 12;
         this.m_needSameTieredGemsText.defaultTextFormat = _loc2_;
         this.m_needSameTieredGemsText.wordWrap = true;
         this.m_needSameTieredGemsText.autoSize = TextFieldAutoSize.CENTER;
         this.m_needSameTieredGemsText.text = "Gems need to be of the same tier";
         this.m_needSameTieredGemsText.x = 334;
         this.m_needSameTieredGemsText.y = 283;
         this.m_needSameTieredGemsText.width = 200;
         this.m_needSameTieredGemsText.selectable = false;
         m_background.addChild(this.m_needSameTieredGemsText);
         this.m_notEnoughMoneyText = new TextField();
         this.m_notEnoughMoneyText.embedFonts = true;
         _loc2_.color = 16001835;
         _loc2_.size = 12;
         this.m_notEnoughMoneyText.defaultTextFormat = _loc2_;
         this.m_notEnoughMoneyText.wordWrap = true;
         this.m_notEnoughMoneyText.autoSize = TextFieldAutoSize.CENTER;
         this.m_notEnoughMoneyText.text = "Not enough money";
         this.m_notEnoughMoneyText.x = 485;
         this.m_notEnoughMoneyText.y = 369;
         this.m_notEnoughMoneyText.width = 200;
         this.m_notEnoughMoneyText.selectable = false;
         m_background.addChild(this.m_notEnoughMoneyText);
         this.m_resetButton = new TCButton(this.ResetButtonPressed,"menus_gemCombiner_resetButton");
         this.m_resetButton.x = 341;
         this.m_resetButton.y = 408;
         m_background.addChild(this.m_resetButton);
         this.m_combineButton = new TCButton(this.CombineGemsButtonPressed,"menus_gemCombiner_CombineButton");
         this.m_combineButton.x = 507;
         this.m_combineButton.y = 386;
         m_background.addChild(this.m_combineButton);
         this.m_combinedButtonText = new TextField();
         this.m_combinedButtonText.embedFonts = true;
         _loc2_.color = 15790320;
         _loc2_.size = 18;
         this.m_combinedButtonText.defaultTextFormat = _loc2_;
         this.m_combinedButtonText.wordWrap = true;
         this.m_combinedButtonText.autoSize = TextFieldAutoSize.CENTER;
         this.m_combinedButtonText.text = "Combine ($10)";
         this.m_combinedButtonText.x = 4;
         this.m_combinedButtonText.y = 9;
         this.m_combinedButtonText.width = 150;
         this.m_combinedButtonText.selectable = false;
         this.m_combineButton.addChild(this.m_combinedButtonText);
         this.m_gemSelectButtons = new Vector.<TCButton>(4);
         this.m_gemVisuals = new Vector.<GemVisuals>(4);
         this.m_gems = new Vector.<OwnedGem>(4);
         _loc3_ = 0;
         while(_loc3_ < this.m_gemSelectButtons.length)
         {
            this.m_gemSelectButtons[_loc3_] = new TCButton(this.DoesNothingFunction,"menus_emptyGemSocket");
            this.m_gemSelectButtons[_loc3_].x = 342 + _loc3_ * 64;
            this.m_gemSelectButtons[_loc3_].y = 302;
            this.m_gemSelectButtons[_loc3_].ActivateTooltip();
            m_background.addChild(this.m_gemSelectButtons[_loc3_]);
            _loc3_++;
         }
         this.m_gemSelectButtons[3].x = 584;
         _loc3_ = 0;
         while(_loc3_ < this.m_gemSelectButtons.length)
         {
            this.m_gemVisuals[_loc3_] = new GemVisuals();
            this.m_gemVisuals[_loc3_].x = this.m_gemSelectButtons[_loc3_].x;
            this.m_gemVisuals[_loc3_].y = this.m_gemSelectButtons[_loc3_].y;
            this.m_gemVisuals[_loc3_].visible = false;
            m_background.addChild(this.m_gemVisuals[_loc3_]);
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this.m_gemSelectButtons.length)
         {
            this.m_gems[_loc3_] = null;
            _loc3_++;
         }
         this.visible = false;
      }
      
      override public function BringIn() : void
      {
         super.BringIn();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.IN_GEM_COMBINER;
      }
      
      override protected function UpdateAllTheInterfacePieces() : void
      {
         var _loc1_:int = 0;
         m_playersMoneyText.text = "$" + Singleton.dynamicData.m_currMoney;
         this.m_needSameTieredGemsText.visible = false;
         this.m_notEnoughMoneyText.visible = false;
         if(this.m_gems[0] != null)
         {
            this.m_resetButton.visible = true;
         }
         else
         {
            this.m_resetButton.visible = false;
         }
         if(this.m_gems[0] != null && this.m_gems[1] != null && this.m_gems[2] != null)
         {
            this.m_gems[3] = this.m_gems[0].CombineGems(this.m_gems[1],this.m_gems[2]);
            this.m_combinedButtonText.text = "Combine" + "($" + Singleton.staticData.GetGemCombineCostAmount(this.m_gems[3].m_tier) + ")";
            if(Singleton.dynamicData.m_currMoney >= Singleton.staticData.GetGemCombineCostAmount(this.m_gems[3].m_tier))
            {
               this.m_combineButton.alpha = 1;
            }
            else
            {
               this.m_combineButton.alpha = 0.3;
               this.m_notEnoughMoneyText.visible = true;
            }
         }
         else
         {
            this.m_combinedButtonText.text = "Combine";
            this.m_combineButton.alpha = 0.3;
         }
         _loc1_ = 0;
         while(_loc1_ < this.m_gems.length)
         {
            if(this.m_gems[_loc1_] != null)
            {
               this.m_gemVisuals[_loc1_].visible = true;
               this.m_gemVisuals[_loc1_].SetGem(this.m_gems[_loc1_]);
               this.m_gemSelectButtons[_loc1_].visible = false;
               this.m_gemSelectButtons[_loc1_].SetNewPopupSprite(this.m_gems[_loc1_].GetTooltip());
            }
            else
            {
               this.m_gemVisuals[_loc1_].visible = false;
               this.m_gemSelectButtons[_loc1_].visible = true;
            }
            _loc1_++;
         }
      }
      
      override public function Update() : void
      {
         super.Update();
         if(this.m_combineButton.alpha == 1)
         {
            this.m_combineButton.m_isActive = true;
         }
         if(this.m_resetButton.visible)
         {
            this.m_resetButton.m_isActive = true;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.m_gems.length)
         {
            if(this.m_gems[_loc1_] != null)
            {
               this.m_gemSelectButtons[_loc1_].m_isActive = true;
            }
            _loc1_++;
         }
         if(m_gemSelector.m_state == GemSelectorState.GSS_GEM_SELECTED)
         {
            this.m_needSameTieredGemsText.visible = false;
            if(this.m_gems[0] == null || this.m_gems[1] == null || this.m_gems[2] == null)
            {
               if(this.m_gems[0] != null && this.m_gems[0].m_tier != m_gemSelector.m_selectedGem.m_tier)
               {
                  m_gemSelector.DeselectGem();
                  this.UpdateAllTheInterfacePieces();
                  this.m_needSameTieredGemsText.visible = true;
               }
               else
               {
                  this.AddButtonPressed(null);
                  this.UpdateAllTheInterfacePieces();
               }
            }
            else
            {
               m_gemSelector.DeselectGem();
            }
         }
      }
      
      public function AddButtonPressed(param1:MouseEvent) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = Singleton.dynamicData.GetGemPosition(m_gemSelector.m_selectedGem);
         if(this.m_gems[0] == null)
         {
            _loc3_ = 0;
         }
         else if(this.m_gems[1] == null)
         {
            _loc3_ = 1;
         }
         else
         {
            _loc3_ = 2;
         }
         var _loc4_:OwnedGem = this.m_gems[_loc3_];
         this.m_gems[_loc3_] = m_gemSelector.m_selectedGem;
         Singleton.dynamicData.SetGemAt(_loc4_,_loc2_);
         m_gemSelector.BringIn();
         this.UpdateAllTheInterfacePieces();
      }
      
      public function CombineGemsButtonPressed(param1:MouseEvent) : void
      {
         Singleton.utility.m_soundController.PlaySound("menu_buyingItem",0.6);
         Singleton.dynamicData.m_currMoney -= Singleton.staticData.GetGemCombineCostAmount(this.m_gems[3].m_tier);
         Singleton.dynamicData.AddToOwnedGems(this.m_gems[3]);
         var _loc2_:int = 0;
         while(_loc2_ < this.m_gems.length)
         {
            this.m_gems[_loc2_] = null;
            _loc2_++;
         }
         m_gemSelector.BringIn();
         this.UpdateAllTheInterfacePieces();
      }
      
      public function ResetButtonPressed(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            if(this.m_gems[_loc2_] != null)
            {
               Singleton.dynamicData.AddToOwnedGems(this.m_gems[_loc2_]);
               this.m_gems[_loc2_] = null;
            }
            _loc2_++;
         }
         this.m_gems[3] = null;
         m_gemSelector.BringIn();
         this.UpdateAllTheInterfacePieces();
      }
      
      override public function ReturnButtonPressed(param1:MouseEvent) : void
      {
         this.ResetButtonPressed(null);
         super.ReturnButtonPressed(param1);
      }
      
      public function DoesNothingFunction(param1:MouseEvent) : void
      {
      }
   }
}
