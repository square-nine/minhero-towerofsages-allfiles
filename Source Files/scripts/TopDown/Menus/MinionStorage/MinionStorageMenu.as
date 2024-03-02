package TopDown.Menus.MinionStorage
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.ConformationBox;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.TutorialPopup;
   import States.TopDownMenuState;
   import States.TopDownStates;
   import States.TutorialTypes;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class MinionStorageMenu extends Sprite
   {
       
      
      protected var m_background:Sprite;
      
      protected var m_minionSelector:MinionStorageSelector;
      
      public var m_minionDetails:MinionDetailsScreenForStorage;
      
      protected var m_returnButton:TCButton;
      
      protected var m_turnSwapOnButton:TCButton;
      
      protected var m_turnSwapOffButton:TCButton;
      
      protected var m_releaseButton:TCButton;
      
      protected var m_conformationBox:ConformationBox;
      
      protected var m_previouslySelectedMinion:OwnedMinion;
      
      private var m_swapMinionsTutorial:TutorialPopup;
      
      public function MinionStorageMenu()
      {
         super();
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:Sprite = this;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_backgroundLarge");
         _loc1_.addChild(this.m_background);
         this.m_minionSelector = new MinionStorageSelector();
         this.m_minionSelector.LoadSprites();
         this.m_minionSelector.m_onMinionPressedFunction = this.UpdatePieces;
         _loc1_.addChild(this.m_minionSelector);
         this.m_returnButton = new TCButton(this.ReturnButtonPressed,"menus_returnButton");
         this.m_returnButton.x = 3;
         this.m_returnButton.y = 409;
         this.m_background.addChild(this.m_returnButton);
         this.m_releaseButton = new TCButton(this.ReleasedButtonPressed,"menus_minionStorage_releaseButton");
         this.m_releaseButton.x = 580;
         this.m_releaseButton.y = 412;
         this.m_background.addChild(this.m_releaseButton);
         this.m_minionDetails = new MinionDetailsScreenForStorage();
         this.m_minionDetails.x = 330;
         this.m_minionDetails.y = 43;
         this.m_minionDetails.LoadSprites();
         this.m_background.addChild(this.m_minionDetails);
         this.m_conformationBox = new ConformationBox("This will delete your minion");
         this.m_conformationBox.x = 485;
         this.m_conformationBox.y = 327;
         this.m_background.addChild(this.m_conformationBox);
         this.m_turnSwapOnButton = new TCButton(this.TurnSwapOnButtonPressed,"menus_minionStorage_swapButtonOff");
         this.m_turnSwapOnButton.x = 269;
         this.m_turnSwapOnButton.y = 398;
         _loc1_.addChild(this.m_turnSwapOnButton);
         this.m_turnSwapOffButton = new TCButton(this.TurnSwapOffButtonPressed,"menus_minionStorage_swapButtonOn");
         this.m_turnSwapOffButton.x = 269;
         this.m_turnSwapOffButton.y = 398;
         _loc1_.addChild(this.m_turnSwapOffButton);
         this.m_swapMinionsTutorial = new TutorialPopup();
         this.m_swapMinionsTutorial.Create("tutorial_swapMinions");
         this.m_swapMinionsTutorial.x = 220;
         this.m_swapMinionsTutorial.y = 341;
         _loc1_.addChild(this.m_swapMinionsTutorial);
         this.visible = false;
      }
      
      public function UpdatePieces() : void
      {
         if(this.m_minionSelector.m_selectedMinion != null && !this.m_minionSelector.m_isSwapModeActive)
         {
            if(this.m_previouslySelectedMinion == null)
            {
               this.m_minionDetails.BringIn(this.m_minionSelector.m_selectedMinion);
            }
            else
            {
               this.m_minionDetails.SnapIn(this.m_minionSelector.m_selectedMinion);
            }
            this.m_releaseButton.visible = true;
         }
         else
         {
            this.m_minionDetails.ExitOut();
            this.m_releaseButton.visible = false;
         }
         this.m_previouslySelectedMinion = this.m_minionSelector.m_selectedMinion;
         if(!this.m_minionSelector.m_isSwapModeActive)
         {
            this.m_turnSwapOnButton.visible = true;
            this.m_turnSwapOffButton.visible = false;
         }
         else
         {
            this.m_turnSwapOnButton.visible = false;
            this.m_turnSwapOffButton.visible = true;
            this.m_previouslySelectedMinion = null;
         }
      }
      
      public function BringIn() : void
      {
         this.m_previouslySelectedMinion = null;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.IN_MINION_STORAGE;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimationJustFade(this);
         this.m_minionSelector.BringIn();
         this.m_minionSelector.m_isSwapModeActive = false;
         this.UpdatePieces();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOffTheActionIcon();
         Singleton.dynamicData.ResetFloorData();
         if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_SWAP_MINIONS))
         {
            this.m_swapMinionsTutorial.visible = true;
         }
         else
         {
            this.m_swapMinionsTutorial.visible = false;
         }
      }
      
      public function ExitOut() : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_currState = TopDownStates.MOVEMENT;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimationJustFade(this);
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOnTheActionIcon();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.UpdateMovementHUD();
      }
      
      public function Update() : void
      {
         if(this.m_conformationBox.m_isOpen)
         {
            return;
         }
         if(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState == TopDownMenuState.TOP_DOWN_MENU_MINION_GEM_SELECT_FROM_MINION_STORAGE)
         {
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_gemMenu.UpdateFullFrames();
            return;
         }
         this.m_returnButton.m_isActive = true;
         this.m_minionSelector.Update();
         this.m_minionDetails.UpdateFullFrames();
         if(this.m_turnSwapOffButton.visible)
         {
            this.m_turnSwapOffButton.m_isActive = true;
         }
         if(this.m_turnSwapOnButton.visible)
         {
            this.m_turnSwapOnButton.m_isActive = true;
         }
         if(this.m_releaseButton.visible)
         {
            this.m_releaseButton.m_isActive = true;
         }
      }
      
      public function ReturnButtonPressed(param1:MouseEvent) : void
      {
         this.ExitOut();
      }
      
      public function TurnSwapOnButtonPressed(param1:MouseEvent) : void
      {
         this.m_minionSelector.m_isSwapModeActive = true;
         this.UpdatePieces();
         this.m_swapMinionsTutorial.visible = false;
      }
      
      public function TurnSwapOffButtonPressed(param1:MouseEvent) : void
      {
         this.m_minionSelector.m_isSwapModeActive = false;
         this.UpdatePieces();
         if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_SWAP_MINIONS))
         {
            this.m_swapMinionsTutorial.visible = true;
         }
      }
      
      public function ReleasedButtonPressed(param1:MouseEvent) : void
      {
         this.m_conformationBox.BringIn(this.ReleasedYesButtonPressed,this.ReleasedNoButtonPressed);
      }
      
      public function ReleasedNoButtonPressed() : void
      {
         this.CloseOutYesNoBox();
      }
      
      private function CloseOutYesNoBox() : void
      {
      }
      
      public function ReleasedYesButtonPressed() : void
      {
         var _loc1_:int = Singleton.dynamicData.GetMinionPosition(this.m_minionSelector.m_selectedMinion);
         this.m_minionSelector.DeselectMinion();
         Singleton.dynamicData.SetMinionTo(_loc1_,null);
         this.UpdatePieces();
         this.m_minionSelector.UpdateMinions_Snap();
         this.CloseOutYesNoBox();
      }
   }
}
