package SharedObjects.TalentTree
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import Utilities.Singleton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class TalentTreeControllerScreen extends GameObject
   {
       
      
      private var m_background:Sprite;
      
      private var m_buttonsBackground:Sprite;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_resetModeButton:TCButton;
      
      private var m_simpleModeButton:TCButton;
      
      private var m_advancedModeButton:TCButton;
      
      private var m_talentSpecailizationScreen:TalentSpecailizationScreen;
      
      private var m_talentTreeAdvancedModeScreen:TalentTreeAdvancedModeScreen;
      
      private var m_closeOutFunction:Function;
      
      public function TalentTreeControllerScreen()
      {
         super();
      }
      
      public function LoadSprites() : void
      {
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_skillTree_background");
         this.m_background.x = 17;
         this.m_background.y = 20;
         addChild(this.m_background);
         this.m_buttonsBackground = Singleton.utility.m_spriteHandler.CreateSprite("menus_skillTree_buttonBackground");
         this.m_buttonsBackground.x = 262;
         this.m_buttonsBackground.y = 340;
         addChild(this.m_buttonsBackground);
         this.m_simpleModeButton = new TCButton(this.SimpleModeButtonPressed,"menus_skillTree_simpleButton");
         this.m_simpleModeButton.x = 275;
         this.m_simpleModeButton.y = 351;
         this.m_simpleModeButton.alpha = 0.3;
         addChild(this.m_simpleModeButton);
         this.m_advancedModeButton = new TCButton(this.SimpleModeButtonPressed,"menus_skillTree_advancedButton");
         this.m_advancedModeButton.x = 275;
         this.m_advancedModeButton.y = 351;
         addChild(this.m_advancedModeButton);
         this.m_resetModeButton = new TCButton(this.ResetButtonPressed,"menus_skillTree_resetButton");
         this.m_resetModeButton.x = 276;
         this.m_resetModeButton.y = 361;
         addChild(this.m_resetModeButton);
         this.m_talentSpecailizationScreen = new TalentSpecailizationScreen(this.SetTreeToSpecializationAndRefreshTheTalentTree);
         this.m_talentSpecailizationScreen.LoadSprites();
         addChild(this.m_talentSpecailizationScreen);
         this.m_talentTreeAdvancedModeScreen = new TalentTreeAdvancedModeScreen(this.RefreshTalentTree);
         this.m_talentTreeAdvancedModeScreen.LoadSprites();
         addChild(this.m_talentTreeAdvancedModeScreen);
         this.visible = false;
      }
      
      public function BringIn(param1:OwnedMinion, param2:Function = null) : void
      {
         this.visible = true;
         this.m_talentSpecailizationScreen.visible = false;
         this.m_talentTreeAdvancedModeScreen.visible = false;
         this.m_currMinion = param1;
         this.m_closeOutFunction = param2;
         this.SetTreeToSpecializationAndRefreshTheTalentTree();
      }
      
      public function SetTreeToSpecializationAndRefreshTheTalentTree() : void
      {
         this.m_talentTreeAdvancedModeScreen.SetTabToCurrentSpecialization(this.m_currMinion);
         this.RefreshTalentTree();
      }
      
      public function RefreshTalentTree() : void
      {
         if(this.m_currMinion.m_maxTalentPoints == this.m_currMinion.m_availableTalentPoints)
         {
            this.m_talentSpecailizationScreen.BringIn(this.m_currMinion);
            this.m_resetModeButton.visible = false;
            this.m_simpleModeButton.visible = false;
            this.m_advancedModeButton.visible = false;
            this.m_buttonsBackground.visible = false;
         }
         else if(Singleton.dynamicData.m_isTalentTreeInSimpleMode)
         {
            this.m_resetModeButton.visible = true;
            this.m_simpleModeButton.visible = false;
            this.m_advancedModeButton.visible = false;
            this.m_buttonsBackground.visible = true;
         }
         else
         {
            this.m_resetModeButton.visible = true;
            this.m_simpleModeButton.visible = false;
            this.m_advancedModeButton.visible = false;
            this.m_buttonsBackground.visible = true;
            this.m_talentTreeAdvancedModeScreen.BringIn(this.m_currMinion);
         }
         if(this.m_closeOutFunction != null && this.m_currMinion.m_availableTalentPoints == 0)
         {
            this.m_closeOutFunction.call();
         }
      }
      
      public function ExitOut() : void
      {
         if(this.m_talentSpecailizationScreen.visible)
         {
            this.m_talentSpecailizationScreen.ExitOut();
         }
         else if(!Singleton.dynamicData.m_isTalentTreeInSimpleMode)
         {
            this.m_talentTreeAdvancedModeScreen.CleanUp();
         }
      }
      
      public function ResetButtonPressed(param1:MouseEvent) : void
      {
         this.m_currMinion.ResetMoves();
         if(!Singleton.dynamicData.m_isTalentTreeInSimpleMode)
         {
            this.m_talentTreeAdvancedModeScreen.ExitOut();
            this.m_talentTreeAdvancedModeScreen.CleanUp();
         }
         this.RefreshTalentTree();
      }
      
      public function SimpleModeButtonPressed(param1:MouseEvent) : void
      {
      }
      
      public function AdvancedModeButtonPressed(param1:MouseEvent) : void
      {
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         if(this.m_talentSpecailizationScreen.visible)
         {
            this.m_talentSpecailizationScreen.UpdateFullFrames();
         }
         else
         {
            this.m_resetModeButton.m_isActive = true;
            if(!Singleton.dynamicData.m_isTalentTreeInSimpleMode)
            {
               this.m_talentTreeAdvancedModeScreen.UpdateFullFrames();
            }
         }
      }
   }
}
