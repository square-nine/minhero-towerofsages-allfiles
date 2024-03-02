package TopDown.Menus
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import States.TopDownStates;
   import TopDown.LevelObjects.MainChar;
   import TopDown.Levels.MainTower.BaseEggery;
   import TopDown.Levels.MainTower.Lobby;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class EggeryPartySwapMenu extends GameObject
   {
       
      
      public var m_blackBackground:Sprite;
      
      public var m_backgroundNormalSize:Sprite;
      
      private var m_closeButton:TCButton;
      
      private var m_minionSelectTutorial:Sprite;
      
      private var m_minionSelectPopupText:TextField;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_isInEggery:Boolean;
      
      private var m_minionOverviewObject:Vector.<MinionOverviewObject>;
      
      public function EggeryPartySwapMenu()
      {
         super();
         this.m_minionOverviewObject = new Vector.<MinionOverviewObject>(5);
      }
      
      public function LoadSprites() : void
      {
         this.m_blackBackground = new Sprite();
         this.m_blackBackground.graphics.beginFill(0);
         this.m_blackBackground.graphics.drawRect(0,0,700,525);
         this.m_blackBackground.graphics.endFill();
         this.m_blackBackground.alpha = 0.65;
         addChild(this.m_blackBackground);
         this.m_backgroundNormalSize = Singleton.utility.m_spriteHandler.CreateSprite("menus_backgroundMedium");
         this.m_backgroundNormalSize.x = 186 - 18;
         this.m_backgroundNormalSize.y = 77 - 20;
         addChild(this.m_backgroundNormalSize);
         this.m_minionSelectTutorial = Singleton.utility.m_spriteHandler.CreateSprite("tutorial_choosingAMinionBar");
         this.m_minionSelectTutorial.x = 523;
         this.m_minionSelectTutorial.y = 103;
         addChild(this.m_minionSelectTutorial);
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 16448250;
         _loc1_.size = 20;
         _loc1_.font = "BurbinCasual";
         _loc1_.align = TextFormatAlign.CENTER;
         this.m_minionSelectPopupText = new TextField();
         this.m_minionSelectPopupText.x = 587;
         this.m_minionSelectPopupText.y = 220;
         this.m_minionSelectPopupText.embedFonts = true;
         this.m_minionSelectPopupText.defaultTextFormat = _loc1_;
         this.m_minionSelectPopupText.wordWrap = true;
         this.m_minionSelectPopupText.autoSize = TextFieldAutoSize.CENTER;
         this.m_minionSelectPopupText.text = "Choose a minion to swap";
         this.m_minionSelectPopupText.width = 90;
         this.m_minionSelectPopupText.selectable = false;
         addChild(this.m_minionSelectPopupText);
         this.m_closeButton = new TCButton(this.CloseButtonPressed,"menus_exitButton");
         this.m_closeButton.x = 296;
         this.m_closeButton.y = -22;
         this.m_backgroundNormalSize.addChild(this.m_closeButton);
         var _loc2_:Array = [this.Minion1HasBeenPressed,this.Minion2HasBeenPressed,this.Minion3HasBeenPressed,this.Minion4HasBeenPressed,this.Minion5HasBeenPressed,this.Minion6HasBeenPressed];
         var _loc3_:int = 0;
         while(_loc3_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
         {
            this.m_minionOverviewObject[_loc3_] = new MinionOverviewObject(_loc2_[_loc3_]);
            this.m_minionOverviewObject[_loc3_].x = 39;
            this.m_minionOverviewObject[_loc3_].y = 45 + 75 * _loc3_;
            addChild(this.m_minionOverviewObject[_loc3_]);
            _loc3_++;
         }
         visible = false;
      }
      
      public function UpdateMinions() : void
      {
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null)
            {
               this.m_minionOverviewObject[_loc1_].visible = true;
               this.m_minionOverviewObject[_loc1_].SetMinion(Singleton.dynamicData.GetOwnedMinionAt(_loc1_));
               this.m_minionOverviewObject[_loc1_].x = 186;
               this.m_minionOverviewObject[_loc1_].y = 97 - 20 + 75 * _loc1_;
               this.m_minionOverviewObject[_loc1_].alpha = 1;
            }
            else
            {
               this.m_minionOverviewObject[_loc1_].visible = false;
            }
            _loc1_++;
         }
      }
      
      public function CloseButtonPressed(param1:MouseEvent) : void
      {
         this.ExitOut();
      }
      
      public function BringIn(param1:OwnedMinion, param2:Boolean = true) : void
      {
         this.m_isInEggery = param2;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.IN_EGGERY_PARTY_SWAP_SCREEN;
         this.UpdateMinions();
         this.m_currMinion = param1;
         this.x = 0;
         this.y = 0;
         this.visible = true;
         this.alpha = 0;
         var _loc3_:TimelineLite = new TimelineLite();
         _loc3_.append(new TweenLite(this,0.1,{}));
         _loc3_.append(new TweenLite(this,0.5,{"alpha":1}));
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOffTheActionIcon();
      }
      
      public function ExitOut() : void
      {
         var _loc1_:TimelineLite = new TimelineLite();
         _loc1_.append(new TweenLite(this,0.5,{
            "alpha":0,
            "onComplete":this.FinishExitOut
         }));
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOnTheActionIcon();
      }
      
      private function FinishExitOut() : void
      {
         var _loc3_:BaseEggery = null;
         var _loc4_:Lobby = null;
         visible = false;
         var _loc1_:int = 0;
         while(_loc1_ < Singleton.staticData.MAX_NUM_OF_MINIONS_IN_GROUP)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_) != null)
            {
               this.m_minionOverviewObject[_loc1_].Cleanup();
            }
            _loc1_++;
         }
         var _loc2_:MainChar = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar;
         if(this.m_isInEggery)
         {
            _loc3_ = Singleton.staticData.GetCurrentLevel() as BaseEggery;
            _loc2_.BringInCharChatBoxWithText("" + this.m_currMinion.m_baseMinion.m_baseMinionName + " has been sent to storage",_loc3_.AddToFirstAvailiblePosition);
         }
         else
         {
            _loc4_ = Singleton.staticData.GetCurrentLevel() as Lobby;
            _loc2_.BringInCharChatBoxWithText("" + this.m_currMinion.m_baseMinion.m_baseMinionName + " has been sent to storage",_loc4_.AddToFirstAvailiblePosition);
         }
      }
      
      public function MinionPressed(param1:int) : void
      {
         var _loc2_:OwnedMinion = Singleton.dynamicData.GetOwnedMinionAt(param1);
         this.m_currMinion = _loc2_;
         Singleton.dynamicData.AddToOwnedMinions(_loc2_);
         Singleton.dynamicData.SetMinionTo(param1,null);
         this.ExitOut();
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
         this.m_closeButton.m_isActive = true;
      }
   }
}
