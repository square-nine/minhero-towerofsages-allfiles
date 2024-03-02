package TopDown.Menus
{
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import SharedObjects.TutorialPopup;
   import States.GameState;
   import States.TopDownMenuState;
   import States.TutorialTypes;
   import Utilities.Input;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class RootTopDownMenu extends GameObject
   {
       
      
      private var m_background:Sprite;
      
      private var m_minionButton:TCButton;
      
      private var m_settingsButton:TCButton;
      
      private var m_youButton:TCButton;
      
      private var m_minionDexButton:TCButton;
      
      private var m_mainMenuButton:TCButton;
      
      private var m_saveButton:TCButton;
      
      private var m_resumeButton:TCButton;
      
      public var m_newStarsPopup:TutorialPopup;
      
      public var m_unspentTalentPointsPopup:TutorialPopup;
      
      public var m_gemPopup:TutorialPopup;
      
      public function RootTopDownMenu()
      {
         super();
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_topDownMenuPopUp_background");
         addChild(this.m_background);
         _loc1_ = 19;
         _loc2_ = 39;
         this.m_minionButton = new TCButton(this.MinionButtonHasBeenPressed,"menus_topDownMenuPopUp_minions");
         this.m_minionButton.x = 17;
         this.m_minionButton.y = _loc1_ + _loc2_ * 0;
         this.m_background.addChild(this.m_minionButton);
         this.m_minionDexButton = new TCButton(this.MinionPediaHasBeenPressed,"menus_topDownMenuPopUp_minionDex");
         this.m_minionDexButton.x = 17;
         this.m_minionDexButton.y = _loc1_ + _loc2_ * 1;
         this.m_background.addChild(this.m_minionDexButton);
         this.m_youButton = new TCButton(this.YouButtonHasBeenPressed,"menus_topDownMenuPopUp_you");
         this.m_youButton.x = 17;
         this.m_youButton.y = _loc1_ + _loc2_ * 2;
         this.m_background.addChild(this.m_youButton);
         this.m_saveButton = new TCButton(this.SaveHasBeenPressed,"menus_topDownMenuPopUp_save");
         this.m_saveButton.x = 17;
         this.m_saveButton.y = _loc1_ + _loc2_ * 3;
         this.m_background.addChild(this.m_saveButton);
         this.m_settingsButton = new TCButton(this.SettingsButtonHasBeenPressed,"menus_topDownMenuPopUp_settings");
         this.m_settingsButton.x = 17;
         this.m_settingsButton.y = _loc1_ + _loc2_ * 4;
         this.m_background.addChild(this.m_settingsButton);
         this.m_mainMenuButton = new TCButton(this.MenuButtonHasBeenPressed,"menus_topDownMenuPopUp_mainMenu");
         this.m_mainMenuButton.x = 17;
         this.m_mainMenuButton.y = _loc1_ + _loc2_ * 5;
         this.m_background.addChild(this.m_mainMenuButton);
         this.m_resumeButton = new TCButton(this.ResumeHasBeenPressed,"menus_topDownMenuPopUp_resume");
         this.m_resumeButton.x = 17;
         this.m_resumeButton.y = 269;
         this.m_background.addChild(this.m_resumeButton);
         this.m_newStarsPopup = new TutorialPopup();
         this.m_newStarsPopup.Create("tutorial_newStars_side");
         this.m_newStarsPopup.x = -42;
         this.m_newStarsPopup.y = 90;
         this.m_background.addChild(this.m_newStarsPopup);
         this.m_unspentTalentPointsPopup = new TutorialPopup();
         this.m_unspentTalentPointsPopup.Create("tutorial_newTalentPointsPopup_side");
         this.m_unspentTalentPointsPopup.x = -90;
         this.m_unspentTalentPointsPopup.y = 13;
         this.m_background.addChild(this.m_unspentTalentPointsPopup);
         this.m_gemPopup = new TutorialPopup();
         this.m_gemPopup.Create("tutorial_firstGem_side");
         this.m_gemPopup.x = -37;
         this.m_gemPopup.y = 13;
         this.m_background.addChild(this.m_gemPopup);
         this.m_background.visible = false;
      }
      
      public function BringIn() : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimation(this.m_background);
         if(Singleton.dynamicData.DoWeHaveAStarPointToSpend())
         {
            this.m_newStarsPopup.visible = true;
         }
         else
         {
            this.m_newStarsPopup.visible = false;
         }
         var _loc1_:Boolean = false;
         if(Singleton.dynamicData.DoAnyOfTheMinionsHaveUnspentTalentPoints())
         {
            this.m_unspentTalentPointsPopup.visible = true;
            _loc1_ = true;
         }
         else
         {
            this.m_unspentTalentPointsPopup.visible = false;
         }
         if(!_loc1_ && !Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_GEMS) && Singleton.dynamicData.GetOwnedGemAt(0) != null)
         {
            this.m_gemPopup.visible = true;
         }
         else
         {
            this.m_gemPopup.visible = false;
         }
      }
      
      public function ExitOut() : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimation(this.m_background);
      }
      
      private function ResumeHasBeenPressed(param1:MouseEvent) : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.CloseMenus();
      }
      
      private function SaveHasBeenPressed(param1:MouseEvent) : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_saveMenu.BringIn();
         this.ExitOut();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_SAVE_MENU;
      }
      
      private function SettingsButtonHasBeenPressed(param1:MouseEvent) : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_settingsMenu.BringIn();
         this.ExitOut();
      }
      
      private function YouButtonHasBeenPressed(param1:MouseEvent) : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_youMenu.BringIn();
         this.ExitOut();
      }
      
      private function MinionButtonHasBeenPressed(param1:MouseEvent) : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.BringInBackgroundNormalSized();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.BringIn();
         this.ExitOut();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_OVERVIEW;
      }
      
      private function MinionPediaHasBeenPressed(param1:MouseEvent) : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionPedia.BringIn();
         this.ExitOut();
      }
      
      private function MenuButtonHasBeenPressed(param1:MouseEvent) : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.CloseMenus();
         if(Singleton.dynamicData.m_isAutoSaveOn)
         {
            Singleton.dynamicData.SaveAllData(Singleton.dynamicData.m_saveSlot);
         }
         Singleton.utility.m_screenControllers.SetSceneTo(GameState.MAIN_MENU);
      }
      
      override public function UpdateFullFrames() : void
      {
         this.m_resumeButton.m_isActive = true;
         this.m_minionButton.m_isActive = true;
         this.m_settingsButton.m_isActive = true;
         this.m_youButton.m_isActive = true;
         this.m_minionDexButton.m_isActive = true;
         this.m_mainMenuButton.m_isActive = true;
         this.m_saveButton.m_isActive = true;
         if(Input.kp("G"))
         {
            this.SettingsButtonHasBeenPressed(null);
            return;
         }
         if(Input.kp("N"))
         {
            this.MinionButtonHasBeenPressed(null);
            return;
         }
         if(Input.kp("M","ESC"))
         {
            this.ResumeHasBeenPressed(null);
            return;
         }
      }
   }
}
