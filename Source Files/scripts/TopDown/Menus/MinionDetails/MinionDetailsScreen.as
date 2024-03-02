package TopDown.Menus.MinionDetails
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import SharedObjects.InterfaceBar;
   import SharedObjects.TutorialPopup;
   import States.TopDownMenuState;
   import States.TutorialTypes;
   import TopDown.Menus.MinionOverviewObject;
   import Utilities.Input;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class MinionDetailsScreen extends GameObject
   {
       
      
      protected var m_currMinion:OwnedMinion;
      
      protected var m_currMinionOverviewObject:MinionOverviewObject;
      
      protected var m_expbarBackground:Sprite;
      
      protected var m_expbar:InterfaceBar;
      
      protected var m_returnButton:TCButton;
      
      protected var m_upArrowButton:TCButton;
      
      protected var m_downArrowButton:TCButton;
      
      protected var m_minionStats:MinionDetailsMinionStatsObject;
      
      protected var m_minionMoves:MinionDetailsMinionMovesObject;
      
      protected var m_minionGems:MinionDetailsMinionGemsObject;
      
      protected var m_statsButton:TCButton;
      
      protected var m_movesButton:TCButton;
      
      protected var m_gemsButton:TCButton;
      
      protected var m_gemPopup:TutorialPopup;
      
      public function MinionDetailsScreen()
      {
         super();
      }
      
      public function LoadSprites() : void
      {
         this.m_expbarBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_minionXP_background");
         this.m_expbarBackground.x = 18;
         this.m_expbarBackground.y = 92;
         addChild(this.m_expbarBackground);
         this.m_expbar = new InterfaceBar("menus_minionXP_fill");
         this.m_expbar.x = 54;
         this.m_expbar.y = 99;
         addChild(this.m_expbar);
         this.m_minionStats = new MinionDetailsMinionStatsObject();
         this.m_minionStats.LoadSprites();
         this.m_minionStats.x = 15;
         this.m_minionStats.y = 113;
         addChild(this.m_minionStats);
         this.m_minionMoves = new MinionDetailsMinionMovesObject();
         this.m_minionMoves.LoadSprites();
         this.m_minionMoves.x = 15;
         this.m_minionMoves.y = 113;
         addChild(this.m_minionMoves);
         this.m_minionGems = new MinionDetailsMinionGemsObject();
         this.m_minionGems.LoadSprites();
         this.m_minionGems.x = 15;
         this.m_minionGems.y = 113;
         addChild(this.m_minionGems);
         this.m_returnButton = new TCButton(this.ReturnButtonPress,"menus_returnButton");
         this.m_returnButton.x = 2;
         this.m_returnButton.y = 356;
         addChild(this.m_returnButton);
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(16711680);
         _loc1_.graphics.drawRect(0,0,106,32);
         _loc1_.graphics.endFill();
         this.m_statsButton = new TCButton(this.StatsButtonPress);
         this.m_statsButton.CreateButton(_loc1_);
         this.m_statsButton.x = 23;
         this.m_statsButton.y = 120;
         this.m_statsButton.visible = false;
         addChild(this.m_statsButton);
         _loc1_ = new Sprite();
         _loc1_.graphics.beginFill(16776960);
         _loc1_.graphics.drawRect(0,0,105,32);
         _loc1_.graphics.endFill();
         this.m_movesButton = new TCButton(this.MovesButtonPress);
         this.m_movesButton.CreateButton(_loc1_);
         this.m_movesButton.x = 130;
         this.m_movesButton.y = 120;
         this.m_movesButton.visible = false;
         addChild(this.m_movesButton);
         _loc1_ = new Sprite();
         _loc1_.graphics.beginFill(65280);
         _loc1_.graphics.drawRect(0,0,104,32);
         _loc1_.graphics.endFill();
         this.m_gemsButton = new TCButton(this.GemsButtonPress);
         this.m_gemsButton.CreateButton(_loc1_);
         this.m_gemsButton.x = 236;
         this.m_gemsButton.y = 120;
         this.m_gemsButton.visible = false;
         addChild(this.m_gemsButton);
         this.m_upArrowButton = new TCButton(this.UpArrowPress);
         this.m_upArrowButton.CreateButtonWithStrings("menus_compare_arrow");
         this.m_upArrowButton.x = 171;
         this.m_upArrowButton.y = -15 - 7;
         addChild(this.m_upArrowButton);
         this.m_downArrowButton = new TCButton(this.DownArrowPress);
         this.m_downArrowButton.CreateButtonWithStrings("menus_compare_arrow");
         this.m_downArrowButton.x = 171 + this.m_downArrowButton.width;
         this.m_downArrowButton.y = 432 + 7;
         this.m_downArrowButton.rotation = 180;
         addChild(this.m_downArrowButton);
         this.m_gemPopup = new TutorialPopup();
         this.m_gemPopup.Create("tutorial_firstGemMenuPopup");
         this.m_gemPopup.x = 256;
         this.m_gemPopup.y = 62;
         addChild(this.m_gemPopup);
         this.visible = false;
      }
      
      public function SnapIn(param1:OwnedMinion) : void
      {
         this.m_currMinion = param1;
         this.m_expbar.SetBarSize(param1.m_currExpPercentageToNextLevel);
         this.SetArrowVisiblity();
         this.m_minionGems.BringOut();
         this.m_minionMoves.BringOut();
         this.m_minionStats.BringOut();
         this.m_minionStats.SetNewMinion(param1);
         this.m_minionMoves.SetNewMinion(param1);
         this.m_minionGems.SetNewMinion(param1);
         switch(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState)
         {
            case TopDownMenuState.TOP_DOWN_MENU_MINION_MOVES:
               this.m_minionMoves.BringIn();
               break;
            case TopDownMenuState.TOP_DOWN_MENU_MINION_GEMS:
               this.m_minionGems.BringIn();
               break;
            default:
               this.m_minionStats.BringIn();
         }
         this.m_currMinionOverviewObject = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.GetMinionOverviewObjectForMinion(param1);
         if(this.m_currMinionOverviewObject)
         {
            this.m_currMinionOverviewObject.SnapRenameButtonOn();
         }
      }
      
      public function BringIn(param1:OwnedMinion) : void
      {
         this.SnapIn(param1);
         if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_GEMS) && Singleton.dynamicData.GetOwnedGemAt(0) != null)
         {
            this.m_gemPopup.visible = true;
         }
         else
         {
            this.m_gemPopup.visible = false;
         }
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimationJustFade(this);
         this.m_currMinionOverviewObject = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.GetMinionOverviewObjectForMinion(param1);
         if(this.m_currMinionOverviewObject)
         {
            this.m_currMinionOverviewObject.TurnRenameButtonOn();
         }
      }
      
      public function ExitOut() : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimationJustFade(this);
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.TurnAllRenameButtonsOff();
      }
      
      protected function ClosePreviousTab() : void
      {
         switch(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState)
         {
            case TopDownMenuState.TOP_DOWN_MENU_MINION_STATS:
               this.m_minionStats.BringOut();
               break;
            case TopDownMenuState.TOP_DOWN_MENU_MINION_MOVES:
               this.m_minionMoves.BringOut();
               break;
            case TopDownMenuState.TOP_DOWN_MENU_MINION_GEMS:
               this.m_minionGems.BringOut();
         }
      }
      
      protected function StatsButtonPress(param1:MouseEvent) : void
      {
         this.ClosePreviousTab();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_STATS;
         this.m_minionStats.BringIn();
      }
      
      protected function MovesButtonPress(param1:MouseEvent) : void
      {
         this.ClosePreviousTab();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_MOVES;
         this.m_minionMoves.BringIn();
      }
      
      protected function GemsButtonPress(param1:MouseEvent) : void
      {
         this.ClosePreviousTab();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_GEMS;
         this.m_minionGems.BringIn();
      }
      
      protected function ReturnButtonPress(param1:MouseEvent) : void
      {
         this.ExitOut();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_OVERVIEW;
         if(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.m_minionCurrentlySelected == 0)
         {
            this.FinishPressingReturnButton();
         }
         else
         {
            TweenLite.to(this,0.5,{"onComplete":this.FinishPressingReturnButton});
         }
      }
      
      protected function UpArrowPress(param1:MouseEvent) : void
      {
         if(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.m_minionCurrentlySelected == 0)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.m_minionCurrentlySelected = 4;
         }
         else
         {
            --Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.m_minionCurrentlySelected;
         }
         this.SnapIn(Singleton.dynamicData.GetOwnedMinionAt(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.m_minionCurrentlySelected));
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.SnapNewMinionIconForQuickOptionsChange();
      }
      
      protected function DownArrowPress(param1:MouseEvent) : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.GetMinionOverviewObjectForMinion(this.m_currMinion).TurnRenameButtonOff();
         if(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.m_minionCurrentlySelected == 4)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.m_minionCurrentlySelected = 0;
         }
         else
         {
            ++Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.m_minionCurrentlySelected;
         }
         this.SnapIn(Singleton.dynamicData.GetOwnedMinionAt(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.m_minionCurrentlySelected));
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.SnapNewMinionIconForQuickOptionsChange();
      }
      
      protected function SetArrowVisiblity() : void
      {
         var _loc1_:int = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.m_minionCurrentlySelected;
         if(_loc1_ == 4)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_ - 1) == null)
            {
               this.m_upArrowButton.visible = false;
            }
            else
            {
               this.m_upArrowButton.visible = true;
            }
            if(Singleton.dynamicData.GetOwnedMinionAt(0) == null)
            {
               this.m_downArrowButton.visible = false;
            }
            else
            {
               this.m_downArrowButton.visible = true;
            }
         }
         else if(_loc1_ == 0)
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(4) == null)
            {
               this.m_upArrowButton.visible = false;
            }
            else
            {
               this.m_upArrowButton.visible = true;
            }
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_ + 1) == null)
            {
               this.m_downArrowButton.visible = false;
            }
            else
            {
               this.m_downArrowButton.visible = true;
            }
         }
         else
         {
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_ - 1) == null)
            {
               this.m_upArrowButton.visible = false;
            }
            else
            {
               this.m_upArrowButton.visible = true;
            }
            if(Singleton.dynamicData.GetOwnedMinionAt(_loc1_ + 1) == null)
            {
               this.m_downArrowButton.visible = false;
            }
            else
            {
               this.m_downArrowButton.visible = true;
            }
         }
      }
      
      protected function FinishPressingReturnButton() : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.AnimateFromMinionDetials();
      }
      
      override public function UpdateFullFrames() : void
      {
         if(this.m_gemPopup.visible)
         {
            if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_GEMS) && Singleton.dynamicData.GetOwnedGemAt(0) != null)
            {
               this.m_gemPopup.visible = true;
            }
            else
            {
               this.m_gemPopup.visible = false;
            }
         }
         this.m_returnButton.m_isActive = true;
         if(this.m_currMinionOverviewObject)
         {
            this.m_currMinionOverviewObject.UpdateRenameButton();
         }
         if(this.m_upArrowButton.visible)
         {
            this.m_upArrowButton.m_isActive = true;
         }
         if(this.m_downArrowButton.visible)
         {
            this.m_downArrowButton.m_isActive = true;
         }
         if(this.m_upArrowButton.visible && Input.kp("UP"))
         {
            this.UpArrowPress(null);
         }
         if(this.m_downArrowButton.visible && Input.kp("DOWN"))
         {
            this.DownArrowPress(null);
         }
         switch(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState)
         {
            case TopDownMenuState.TOP_DOWN_MENU_MINION_STATS:
               this.m_movesButton.m_isActive = true;
               this.m_gemsButton.m_isActive = true;
               break;
            case TopDownMenuState.TOP_DOWN_MENU_MINION_MOVES:
               this.m_statsButton.m_isActive = true;
               this.m_gemsButton.m_isActive = true;
               this.m_minionMoves.UpdateFullFrames();
               break;
            case TopDownMenuState.TOP_DOWN_MENU_MINION_GEMS:
               this.m_movesButton.m_isActive = true;
               this.m_statsButton.m_isActive = true;
               this.m_minionGems.UpdateFullFrames();
         }
      }
   }
}
