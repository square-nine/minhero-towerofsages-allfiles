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
         super();
         this.m_onGemPressedFunction = null;
      }
      
      public function LoadSprites() : void
      {
         var _loc5_:int = 0;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemSelectBackground");
         addChild(this.m_background);
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 15790320;
         _loc1_.size = 23;
         _loc1_.font = "BurbinCasual";
         _loc1_.align = TextFormatAlign.CENTER;
         this.m_currPageText = new TextField();
         this.m_currPageText.embedFonts = true;
         this.m_currPageText.defaultTextFormat = _loc1_;
         this.m_currPageText.wordWrap = true;
         this.m_currPageText.autoSize = TextFieldAutoSize.CENTER;
         this.m_currPageText.text = "9";
         this.m_currPageText.x = 41;
         this.m_currPageText.y = 213;
         this.m_currPageText.width = 50;
         this.m_currPageText.selectable = false;
         addChild(this.m_currPageText);
         this.m_previousButton = new TCButton(this.PrevButtonPressed,"menus_scrollButton_up");
         this.m_previousButton.x = 16;
         this.m_previousButton.y = 212;
         addChild(this.m_previousButton);
         this.m_nextButton = new TCButton(this.NextButtonPressed,"menus_scrollButton_up");
         this.m_nextButton.x = 113;
         this.m_nextButton.y = 213;
         this.m_nextButton.scaleX = -1;
         addChild(this.m_nextButton);
         this.m_selector = Singleton.utility.m_spriteHandler.CreateSprite("menus_gemMenuGemSelected");
         addChild(this.m_selector);
         this.m_gemSelectButtons = new Vector.<TCButton>(this.m_numOfGemsPerPage);
         var _loc2_:int = 0;
         var _loc3_:Array = new Array(this.Gem1Pressed,this.Gem2Pressed,this.Gem3Pressed,this.Gem4Pressed,this.Gem5Pressed,this.Gem6Pressed,this.Gem7Pressed,this.Gem8Pressed,this.Gem9Pressed,this.Gem10Pressed,this.Gem11Pressed,this.Gem12Pressed,this.Gem13Pressed,this.Gem14Pressed,this.Gem15Pressed);
         var _loc4_:int = 0;
         while(_loc4_ < 3)
         {
            _loc5_ = 0;
            while(_loc5_ < 5)
            {
               _loc2_ = _loc4_ * 5 + _loc5_;
               this.m_gemSelectButtons[_loc2_] = new TCButton(_loc3_[_loc2_],"menus_emptyGemSocket");
               this.m_gemSelectButtons[_loc2_].x = 8 + _loc5_ * 64;
               this.m_gemSelectButtons[_loc2_].y = 10 + _loc4_ * 62;
               this.m_gemSelectButtons[_loc2_].ActivateTooltip("Move Gem");
               addChild(this.m_gemSelectButtons[_loc2_]);
               _loc5_++;
            }
            _loc4_++;
         }
         this.m_gemVisuals = new Vector.<GemVisuals>(this.m_numOfGemsPerPage);
         _loc4_ = 0;
         while(_loc4_ < 3)
         {
            _loc5_ = 0;
            while(_loc5_ < 5)
            {
               _loc2_ = _loc4_ * 5 + _loc5_;
               this.m_gemVisuals[_loc2_] = new GemVisuals();
               this.m_gemVisuals[_loc2_].x = 8 + _loc5_ * 64;
               this.m_gemVisuals[_loc2_].y = 10 + _loc4_ * 62;
               this.m_gemVisuals[_loc2_].visible = false;
               addChild(this.m_gemVisuals[_loc2_]);
               _loc5_++;
            }
            _loc4_++;
         }
      }
      
      public function BringIn() : void
      {
         this.m_state = GemSelectorState.GSS_NO_SELECTION;
         this.m_selectedGem = null;
         this.m_currPageOfGems = 0;
         this.UpdateGems_Snap();
      }
      
      public function UpdateGems_Snap() : void
      {
         var _loc4_:OwnedGem = null;
         var _loc1_:int = this.m_currPageOfGems * this.m_numOfGemsPerPage;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         while(_loc3_ < this.m_numOfGemsPerPage)
         {
            if((_loc4_ = Singleton.dynamicData.GetOwnedGemAt(_loc1_ + _loc3_)) != null)
            {
               this.m_gemVisuals[_loc3_].visible = true;
               this.m_gemVisuals[_loc3_].SetGem(_loc4_);
               this.m_gemVisuals[_loc3_].x = this.m_gemSelectButtons[_loc3_].x;
               this.m_gemVisuals[_loc3_].y = this.m_gemSelectButtons[_loc3_].y;
               this.m_gemSelectButtons[_loc3_].visible = false;
               this.m_gemSelectButtons[_loc3_].SetNewPopupSprite(_loc4_.GetTooltip());
               if(_loc4_ == this.m_selectedGem)
               {
                  this.m_selector.x = this.m_gemSelectButtons[_loc3_].x - 11;
                  this.m_selector.y = this.m_gemSelectButtons[_loc3_].y - 13;
                  _loc2_ = true;
               }
            }
            else
            {
               this.m_gemVisuals[_loc3_].visible = false;
               this.m_gemSelectButtons[_loc3_].visible = true;
            }
            _loc3_++;
         }
         this.m_currPageText.text = "" + (this.m_currPageOfGems + 1);
         if(_loc2_)
         {
            this.m_selector.visible = true;
         }
         else
         {
            this.m_selector.visible = false;
         }
         if(this.m_onGemPressedFunction != null)
         {
            this.m_onGemPressedFunction.call();
         }
      }
      
      public function UpdateGems_Tween() : void
      {
      }
      
      public function DeselectGem() : void
      {
         this.m_state = GemSelectorState.GSS_NO_SELECTION;
         this.m_selectedGem = null;
         this.UpdateGems_Snap();
      }
      
      public function GemButtonPressed(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc2_:int = this.m_currPageOfGems * this.m_numOfGemsPerPage;
         var _loc3_:OwnedGem = Singleton.dynamicData.GetOwnedGemAt(_loc2_ + param1);
         if(this.m_state == GemSelectorState.GSS_NO_SELECTION)
         {
            this.m_selectedGem = _loc3_;
            this.m_selectedGemStartingPagePosition = _loc2_;
            this.m_selectedGemPosition = param1;
            this.m_state = GemSelectorState.GSS_GEM_SELECTED;
            this.UpdateGems_Snap();
         }
         else if(this.m_state == GemSelectorState.GSS_GEM_SELECTED)
         {
            if(this.m_selectedGem == _loc3_)
            {
               this.DeselectGem();
               return;
            }
            _loc4_ = Singleton.dynamicData.GetGemPosition(this.m_selectedGem);
            Singleton.dynamicData.SwapGems(_loc4_,_loc2_ + param1);
            if(this.m_selectedGemStartingPagePosition != _loc2_)
            {
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
               TweenLite.to(this.m_gemVisuals[this.m_selectedGemPosition],0.5,{
                  "x":this.m_gemVisuals[param1].x,
                  "y":this.m_gemVisuals[param1].y
               });
               TweenLite.to(this,0.5,{"onComplete":this.DeselectGem});
            }
         }
      }
      
      public function NextButtonPressed(param1:MouseEvent) : void
      {
         if(this.m_currPageOfGems == 9)
         {
            this.m_currPageOfGems = 0;
         }
         else
         {
            ++this.m_currPageOfGems;
         }
         this.UpdateGems_Snap();
      }
      
      public function PrevButtonPressed(param1:MouseEvent) : void
      {
         if(this.m_currPageOfGems == 0)
         {
            this.m_currPageOfGems = 9;
         }
         else
         {
            --this.m_currPageOfGems;
         }
         this.UpdateGems_Snap();
      }
      
      public function Update() : void
      {
         this.m_nextButton.m_isActive = true;
         this.m_previousButton.m_isActive = true;
         var _loc1_:int = this.m_currPageOfGems * this.m_numOfGemsPerPage;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_numOfGemsPerPage)
         {
            if(this.m_state == GemSelectorState.GSS_NO_SELECTION)
            {
               if(Singleton.dynamicData.GetOwnedGemAt(_loc1_ + _loc2_) != null)
               {
                  this.m_gemSelectButtons[_loc2_].m_isActive = true;
               }
            }
            else if(this.m_state == GemSelectorState.GSS_GEM_SELECTED)
            {
               this.m_gemSelectButtons[_loc2_].m_isActive = true;
            }
            _loc2_++;
         }
      }
      
      private function Gem1Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(0);
      }
      
      private function Gem2Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(1);
      }
      
      private function Gem3Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(2);
      }
      
      private function Gem4Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(3);
      }
      
      private function Gem5Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(4);
      }
      
      private function Gem6Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(5);
      }
      
      private function Gem7Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(6);
      }
      
      private function Gem8Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(7);
      }
      
      private function Gem9Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(8);
      }
      
      private function Gem10Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(9);
      }
      
      private function Gem11Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(10);
      }
      
      private function Gem12Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(11);
      }
      
      private function Gem13Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(12);
      }
      
      private function Gem14Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(13);
      }
      
      private function Gem15Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(14);
      }
   }
}
