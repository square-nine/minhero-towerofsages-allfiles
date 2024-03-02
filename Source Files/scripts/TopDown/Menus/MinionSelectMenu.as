package TopDown.Menus
{
   import Minions.OwnedMinion;
   import SharedObjects.GameObject;
   import States.TopDownMenuState;
   import States.TutorialTypes;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class MinionSelectMenu extends GameObject
   {
       
      
      private var m_minionOverviewObject:Vector.<MinionOverviewObject>;
      
      public var m_minionCurrentlySelected:int;
      
      private var m_minionSelectTutorial:Sprite;
      
      private var m_minionSelectPopupText:TextField;
      
      private var m_isAnimating:Boolean;
      
      public function MinionSelectMenu()
      {
         super();
         this.m_minionOverviewObject = new Vector.<MinionOverviewObject>(5);
         this.m_isAnimating = false;
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:Array = [this.Minion1HasBeenPressed,this.Minion2HasBeenPressed,this.Minion3HasBeenPressed,this.Minion4HasBeenPressed,this.Minion5HasBeenPressed,this.Minion6HasBeenPressed];
         var _loc2_:int = 0;
         while(_loc2_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
         {
            this.m_minionOverviewObject[_loc2_] = new MinionOverviewObject(_loc1_[_loc2_]);
            this.m_minionOverviewObject[_loc2_].x = 39 - 6;
            this.m_minionOverviewObject[_loc2_].y = 45 + 75 * _loc2_;
            addChild(this.m_minionOverviewObject[_loc2_]);
            _loc2_++;
         }
         this.m_minionSelectTutorial = Singleton.utility.m_spriteHandler.CreateSprite("tutorial_choosingAMinionBar");
         this.m_minionSelectTutorial.x = 382;
         this.m_minionSelectTutorial.y = 74 - 16;
         addChild(this.m_minionSelectTutorial);
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.color = 16448250;
         _loc3_.size = 20;
         _loc3_.font = "BurbinCasual";
         _loc3_.align = TextFormatAlign.CENTER;
         this.m_minionSelectPopupText = new TextField();
         this.m_minionSelectPopupText.x = 448;
         this.m_minionSelectPopupText.y = 177 - 16;
         this.m_minionSelectPopupText.embedFonts = true;
         this.m_minionSelectPopupText.defaultTextFormat = _loc3_;
         this.m_minionSelectPopupText.wordWrap = true;
         this.m_minionSelectPopupText.autoSize = TextFieldAutoSize.CENTER;
         this.m_minionSelectPopupText.text = "Choose a minion to add your gem to";
         this.m_minionSelectPopupText.width = 90;
         this.m_minionSelectPopupText.selectable = false;
         addChild(this.m_minionSelectPopupText);
      }
      
      public function AnimateToMinionDetials() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null && _loc1_ != this.m_minionCurrentlySelected)
            {
               TweenLite.to(this.m_minionOverviewObject[_loc1_],0.3,{"alpha":0});
            }
            _loc1_++;
         }
         TweenLite.to(this.m_minionOverviewObject[this.m_minionCurrentlySelected],0.5,{"y":45});
         this.m_isAnimating = true;
         TweenLite.to(this,0.5,{"onComplete":this.FinishAnimation});
      }
      
      public function AnimateFromMinionDetials() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null && _loc1_ != this.m_minionCurrentlySelected)
            {
               TweenLite.to(this.m_minionOverviewObject[_loc1_],0.3,{
                  "delay":0.3,
                  "alpha":1
               });
            }
            _loc1_++;
         }
         this.m_minionOverviewObject[this.m_minionCurrentlySelected].TurnRenameButtonOff();
         TweenLite.to(this.m_minionOverviewObject[this.m_minionCurrentlySelected],0.5,{"y":45 + 75 * this.m_minionCurrentlySelected});
         this.m_isAnimating = true;
         TweenLite.to(this,0.6,{"onComplete":this.FinishAnimation});
      }
      
      private function FinishAnimation() : void
      {
         this.m_isAnimating = false;
      }
      
      public function SnapNewMinionIconForQuickOptionsChange() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
         {
            this.m_minionOverviewObject[_loc1_].alpha = 0;
            this.m_minionOverviewObject[_loc1_].y = 45 + 75 * _loc1_;
            _loc1_++;
         }
         this.m_minionOverviewObject[this.m_minionCurrentlySelected].alpha = 1;
         this.m_minionOverviewObject[this.m_minionCurrentlySelected].y = 45;
      }
      
      public function JustCallMinionUpdates() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null)
            {
               this.m_minionOverviewObject[_loc1_].SetMinion(Singleton.dynamicData.GetOwnedMinionAt(_loc1_));
            }
            _loc1_++;
         }
      }
      
      public function UpdateMinions() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null)
            {
               this.m_minionOverviewObject[_loc1_].visible = true;
               this.m_minionOverviewObject[_loc1_].SetMinion(Singleton.dynamicData.GetOwnedMinionAt(_loc1_));
               this.m_minionOverviewObject[_loc1_].x = 39;
               this.m_minionOverviewObject[_loc1_].y = 45 + 75 * _loc1_;
               this.m_minionOverviewObject[_loc1_].alpha = 1;
            }
            else
            {
               this.m_minionOverviewObject[_loc1_].visible = false;
            }
            _loc1_++;
         }
      }
      
      public function BringIn() : void
      {
         this.UpdateMinions();
         this.x = 0;
         this.y = 0;
         this.CheckForGemTutorial();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimation(this);
         this.TurnAllRenameButtonsOff();
      }
      
      public function TurnAllRenameButtonsOff() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.m_minionOverviewObject.length)
         {
            if(this.m_minionOverviewObject[_loc1_].m_currMinion != null)
            {
               this.m_minionOverviewObject[_loc1_].TurnRenameButtonOff();
            }
            _loc1_++;
         }
      }
      
      private function CheckForGemTutorial() : void
      {
         if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_GEMS) && Singleton.dynamicData.GetOwnedGemAt(0) != null)
         {
            this.m_minionSelectTutorial.visible = true;
            this.m_minionSelectPopupText.visible = true;
         }
         else
         {
            this.m_minionSelectTutorial.visible = false;
            this.m_minionSelectPopupText.visible = false;
         }
      }
      
      public function BringBackInFromMinionOptions() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null)
            {
               TweenLite.to(this.m_minionOverviewObject[_loc1_],0.5,{"alpha":1});
               this.m_minionOverviewObject[_loc1_].SetupUnspentTalentPointsTutorial(Singleton.dynamicData.GetOwnedMinionAt(_loc1_));
            }
            _loc1_++;
         }
         this.CheckForGemTutorial();
      }
      
      public function ExitOut() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null)
            {
               this.m_minionOverviewObject[_loc1_].Cleanup();
            }
            _loc1_++;
         }
      }
      
      public function GetMinionOverviewObjectForMinion(param1:OwnedMinion) : MinionOverviewObject
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.m_minionOverviewObject.length)
         {
            if(param1 == this.m_minionOverviewObject[_loc2_].m_currMinion)
            {
               return this.m_minionOverviewObject[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function MinionPressed(param1:int) : void
      {
         if(this.m_isAnimating)
         {
            return;
         }
         this.m_minionSelectTutorial.visible = false;
         this.m_minionSelectPopupText.visible = false;
         this.m_minionCurrentlySelected = param1;
         var _loc2_:int = 0;
         while(_loc2_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc2_) != null && _loc2_ != param1)
            {
               TweenLite.to(this.m_minionOverviewObject[_loc2_],0.3,{"alpha":0.3});
            }
            this.m_minionOverviewObject[_loc2_].m_unspentTalentPointsPopup.visible = false;
            _loc2_++;
         }
         TweenLite.to(this.m_minionOverviewObject[param1],0.3,{"alpha":1});
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectOptionsMenu.y = 23 + 75 * param1;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectOptionsMenu.BringIn(Singleton.dynamicData.GetOwnedMinionAt(param1));
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_OVERVIEW_POPUP_MENU;
      }
      
      public function Minion1HasBeenPressed(param1:MouseEvent) : void
      {
         this.MinionPressed(0);
      }
      
      public function Minion2HasBeenPressed(param1:MouseEvent) : void
      {
         this.MinionPressed(1);
      }
      
      public function Minion3HasBeenPressed(param1:MouseEvent) : void
      {
         this.MinionPressed(2);
      }
      
      public function Minion4HasBeenPressed(param1:MouseEvent) : void
      {
         this.MinionPressed(3);
      }
      
      public function Minion5HasBeenPressed(param1:MouseEvent) : void
      {
         this.MinionPressed(4);
      }
      
      public function Minion6HasBeenPressed(param1:MouseEvent) : void
      {
         this.MinionPressed(5);
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         var _loc1_:int = 0;
         while(_loc1_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null)
            {
               this.m_minionOverviewObject[_loc1_].UpdateFullFrames();
            }
            _loc1_++;
         }
      }
   }
}
