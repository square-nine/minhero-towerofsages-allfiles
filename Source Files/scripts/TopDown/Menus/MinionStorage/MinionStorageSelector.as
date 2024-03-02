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
         super();
         this.m_onMinionPressedFunction = null;
         this.m_isSwapModeActive = false;
      }
      
      public function LoadSprites() : void
      {
         var _loc2_:int = 0;
         var _loc6_:Sprite = null;
         var _loc7_:int = 0;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionStorage_minionsBackground");
         this.m_background.x = 15;
         this.m_background.y = 54;
         addChild(this.m_background);
         this.m_otherBoxesBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionStorage_boxSelectBar");
         this.m_otherBoxesBackground.x = 60;
         this.m_otherBoxesBackground.y = 21;
         addChild(this.m_otherBoxesBackground);
         this.m_tabSelectedIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionStorage_boxSelectedIcon");
         addChild(this.m_tabSelectedIcon);
         var _loc1_:Array = new Array(this.Tab1Pressed,this.Tab2Pressed,this.Tab3Pressed,this.Tab4Pressed,this.Tab5Pressed,this.Tab6Pressed,this.Tab7Pressed,this.Tab8Pressed,this.Tab9Pressed,this.Tab10Pressed);
         this.m_tabButtons = new Vector.<TCButton>(10);
         _loc2_ = 0;
         while(_loc2_ < this.m_tabButtons.length)
         {
            (_loc6_ = new Sprite()).graphics.beginFill(16711680);
            _loc6_.graphics.drawRect(0,0,57,22);
            _loc6_.graphics.endFill();
            this.m_tabButtons[_loc2_] = new TCButton(_loc1_[_loc2_]);
            this.m_tabButtons[_loc2_].CreateButton(_loc6_);
            this.m_tabButtons[_loc2_].visible = false;
            this.m_tabButtons[_loc2_].x = 52 + _loc2_ * 59;
            this.m_tabButtons[_loc2_].y = 27;
            addChild(this.m_tabButtons[_loc2_]);
            _loc2_++;
         }
         this.m_previousButton = new TCButton(this.PrevButtonPressed,"menus_minionStorage_nextContainerButton");
         this.m_previousButton.x = 55;
         this.m_previousButton.y = 22;
         this.m_previousButton.scaleX = -1;
         addChild(this.m_previousButton);
         this.m_nextButton = new TCButton(this.NextButtonPressed,"menus_minionStorage_nextContainerButton");
         this.m_nextButton.x = 635;
         this.m_nextButton.y = 22;
         addChild(this.m_nextButton);
         this.m_currTeamIcon = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionStorage_currTeamIndecator");
         this.m_currTeamIcon.x = 7;
         this.m_currTeamIcon.y = 12;
         this.m_background.addChild(this.m_currTeamIcon);
         this.m_selector = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionStorage_minionSelectIcon");
         this.m_background.addChild(this.m_selector);
         this.m_minionSelectButtons = new Vector.<TCButton>(this.m_numOfMinionsPerPage);
         var _loc3_:int = 0;
         this.m_minionSelectButtonsBaseXPosition = new Vector.<int>(this.m_numOfMinionsPerPage);
         this.m_minionSelectButtonsBaseYPosition = new Vector.<int>(this.m_numOfMinionsPerPage);
         var _loc4_:Array = new Array(this.Gem1Pressed,this.Gem2Pressed,this.Gem3Pressed,this.Gem4Pressed,this.Gem5Pressed,this.Gem6Pressed,this.Gem7Pressed,this.Gem8Pressed,this.Gem9Pressed,this.Gem10Pressed,this.Gem11Pressed,this.Gem12Pressed,this.Gem13Pressed,this.Gem14Pressed,this.Gem15Pressed,this.Gem16Pressed,this.Gem17Pressed,this.Gem18Pressed,this.Gem19Pressed,this.Gem20Pressed);
         var _loc5_:int = 0;
         while(_loc5_ < 4)
         {
            _loc7_ = 0;
            while(_loc7_ < 5)
            {
               _loc3_ = _loc5_ * 5 + _loc7_;
               this.m_minionSelectButtons[_loc3_] = new TCButton(_loc4_[_loc3_],"menus_emptyGemSocket");
               this.m_minionSelectButtonsBaseXPosition[_loc3_] = 44 + _loc7_ * 65;
               this.m_minionSelectButtonsBaseYPosition[_loc3_] = 78 + _loc5_ * 78;
               this.m_minionSelectButtons[_loc3_].scaleX = 0.4;
               this.m_minionSelectButtons[_loc3_].scaleY = 0.4;
               this.m_background.addChild(this.m_minionSelectButtons[_loc3_]);
               _loc7_++;
            }
            _loc5_++;
         }
      }
      
      public function BringIn() : void
      {
         this.m_state = GemSelectorState.GSS_NO_SELECTION;
         this.m_selectedMinion = null;
         this.m_currPageOfMinions = 0;
         this.UpdateMinions_Snap();
      }
      
      public function UpdateMinions_Snap() : void
      {
         var _loc3_:int = 0;
         var _loc4_:OwnedMinion = null;
         var _loc1_:int = this.m_currPageOfMinions * this.m_numOfMinionsPerPage;
         var _loc2_:Boolean = false;
         _loc3_ = 0;
         while(_loc3_ < this.m_numOfMinionsPerPage)
         {
            if((_loc4_ = Singleton.dynamicData.GetOwnedMinionAt(_loc1_ + _loc3_)) != null)
            {
               this.m_minionSelectButtons[_loc3_].visible = true;
               this.m_minionSelectButtons[_loc3_].Cleanup();
               this.m_minionSelectButtons[_loc3_].CreateButtonWithStrings(_loc4_.m_baseMinion.m_minionBattleSprite);
               this.m_minionSelectButtons[_loc3_].x = this.m_minionSelectButtonsBaseXPosition[_loc3_] - this.m_minionSelectButtons[_loc3_].width / 2;
               this.m_minionSelectButtons[_loc3_].y = this.m_minionSelectButtonsBaseYPosition[_loc3_] - this.m_minionSelectButtons[_loc3_].height;
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
         }
         if(_loc2_)
         {
            this.m_selector.visible = true;
         }
         else
         {
            this.m_selector.visible = false;
         }
         this.m_tabSelectedIcon.x = 45 + this.m_currPageOfMinions * 56.2;
         this.m_tabSelectedIcon.y = 9;
         if(this.m_currPageOfMinions == 0)
         {
            this.m_currTeamIcon.visible = true;
         }
         else
         {
            this.m_currTeamIcon.visible = false;
         }
         if(this.m_onMinionPressedFunction != null)
         {
            this.m_onMinionPressedFunction.call();
         }
      }
      
      public function DeselectMinion() : void
      {
         this.m_state = GemSelectorState.GSS_NO_SELECTION;
         this.m_selectedMinion = null;
         this.UpdateMinions_Snap();
      }
      
      public function GemButtonPressed(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc2_:int = this.m_currPageOfMinions * this.m_numOfMinionsPerPage;
         var _loc3_:OwnedMinion = Singleton.dynamicData.GetOwnedMinionAt(_loc2_ + param1);
         if(this.m_state == GemSelectorState.GSS_NO_SELECTION)
         {
            this.m_selectedMinion = _loc3_;
            this.m_selectedMinionStartingPagePosition = _loc2_;
            this.m_selectedMinionPosition = param1;
            this.m_state = GemSelectorState.GSS_GEM_SELECTED;
            this.UpdateMinions_Snap();
         }
         else if(this.m_state == GemSelectorState.GSS_GEM_SELECTED)
         {
            if(this.m_selectedMinion == _loc3_)
            {
               this.DeselectMinion();
               return;
            }
            if(!this.m_isSwapModeActive)
            {
               this.m_selectedMinion = _loc3_;
               this.m_selectedMinionStartingPagePosition = _loc2_;
               this.m_selectedMinionPosition = param1;
               this.m_state = GemSelectorState.GSS_GEM_SELECTED;
               this.UpdateMinions_Snap();
            }
            else
            {
               _loc4_ = Singleton.dynamicData.GetMinionPosition(this.m_selectedMinion);
               Singleton.dynamicData.SwapMinions(_loc4_,_loc2_ + param1);
               if(this.m_selectedMinionStartingPagePosition != _loc2_)
               {
                  this.DeselectMinion();
               }
               else
               {
                  this.m_state = GemSelectorState.GSS_GEM_SWAPPING;
                  this.m_selector.visible = false;
                  _loc5_ = this.m_minionSelectButtonsBaseXPosition[this.m_selectedMinionPosition] - this.m_minionSelectButtons[param1].width / 2;
                  _loc6_ = this.m_minionSelectButtonsBaseYPosition[this.m_selectedMinionPosition] - this.m_minionSelectButtons[param1].height;
                  _loc7_ = this.m_minionSelectButtonsBaseXPosition[param1] - this.m_minionSelectButtons[this.m_selectedMinionPosition].width / 2;
                  _loc8_ = this.m_minionSelectButtonsBaseYPosition[param1] - this.m_minionSelectButtons[this.m_selectedMinionPosition].height;
                  TweenLite.to(this.m_minionSelectButtons[param1],0.5,{
                     "x":_loc5_,
                     "y":_loc6_
                  });
                  TweenLite.to(this.m_minionSelectButtons[this.m_selectedMinionPosition],0.5,{
                     "x":_loc7_,
                     "y":_loc8_
                  });
                  TweenLite.to(this,0.5,{"onComplete":this.DeselectMinion});
                  Singleton.dynamicData.SetHasTutorialBeenSeen(TutorialTypes.TUTORIAL_SWAP_MINIONS,true);
               }
            }
         }
      }
      
      public function NextButtonPressed(param1:MouseEvent) : void
      {
         if(this.m_currPageOfMinions == 9)
         {
            this.m_currPageOfMinions = 0;
         }
         else
         {
            ++this.m_currPageOfMinions;
         }
         this.UpdateMinions_Snap();
      }
      
      public function PrevButtonPressed(param1:MouseEvent) : void
      {
         if(this.m_currPageOfMinions == 0)
         {
            this.m_currPageOfMinions = 9;
         }
         else
         {
            --this.m_currPageOfMinions;
         }
         this.UpdateMinions_Snap();
      }
      
      public function TabButtonPressed(param1:int) : void
      {
         this.m_currPageOfMinions = param1;
         this.UpdateMinions_Snap();
      }
      
      public function Update() : void
      {
         this.m_nextButton.m_isActive = true;
         this.m_previousButton.m_isActive = true;
         var _loc1_:int = this.m_currPageOfMinions * this.m_numOfMinionsPerPage;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_numOfMinionsPerPage)
         {
            if(this.m_state == GemSelectorState.GSS_NO_SELECTION)
            {
               if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_ + _loc2_) != null)
               {
                  this.m_minionSelectButtons[_loc2_].m_isActive = true;
               }
            }
            else if(this.m_state == GemSelectorState.GSS_GEM_SELECTED)
            {
               this.m_minionSelectButtons[_loc2_].m_isActive = true;
            }
            _loc2_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.m_tabButtons.length)
         {
            if(_loc3_ != this.m_currPageOfMinions)
            {
               this.m_tabButtons[_loc3_].m_isActive = true;
            }
            _loc3_++;
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
      
      private function Gem16Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(15);
      }
      
      private function Gem17Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(16);
      }
      
      private function Gem18Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(17);
      }
      
      private function Gem19Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(18);
      }
      
      private function Gem20Pressed(param1:MouseEvent) : void
      {
         this.GemButtonPressed(19);
      }
      
      private function Tab1Pressed(param1:MouseEvent) : void
      {
         this.TabButtonPressed(0);
      }
      
      private function Tab2Pressed(param1:MouseEvent) : void
      {
         this.TabButtonPressed(1);
      }
      
      private function Tab3Pressed(param1:MouseEvent) : void
      {
         this.TabButtonPressed(2);
      }
      
      private function Tab4Pressed(param1:MouseEvent) : void
      {
         this.TabButtonPressed(3);
      }
      
      private function Tab5Pressed(param1:MouseEvent) : void
      {
         this.TabButtonPressed(4);
      }
      
      private function Tab6Pressed(param1:MouseEvent) : void
      {
         this.TabButtonPressed(5);
      }
      
      private function Tab7Pressed(param1:MouseEvent) : void
      {
         this.TabButtonPressed(6);
      }
      
      private function Tab8Pressed(param1:MouseEvent) : void
      {
         this.TabButtonPressed(7);
      }
      
      private function Tab9Pressed(param1:MouseEvent) : void
      {
         this.TabButtonPressed(8);
      }
      
      private function Tab10Pressed(param1:MouseEvent) : void
      {
         this.TabButtonPressed(9);
      }
   }
}
