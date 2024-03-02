package TopDown.Menus
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import SharedObjects.TutorialPopup;
   import States.TopDownMenuState;
   import States.TutorialTypes;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class MinionSelectOptionsMenu extends GameObject
   {
       
      
      private var m_background:Sprite;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_detailsButton:TCButton;
      
      private var m_skillTreeButton:TCButton;
      
      private var m_cancelButton:TCButton;
      
      private var m_unspentTalentPointsPopup:TutorialPopup;
      
      private var m_gemPopup:TutorialPopup;
      
      public function MinionSelectOptionsMenu()
      {
         super();
      }
      
      public function LoadSprites() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_selectionPopUp_background");
         addChild(this.m_background);
         _loc1_ = 15;
         _loc2_ = 15;
         this.m_detailsButton = new TCButton(this.DetailsButtonHasBeenPressed,"menus_selectionPopUp_detailsButton");
         this.m_detailsButton.x = _loc1_;
         this.m_detailsButton.y = _loc2_ + 39 * 0;
         this.m_background.addChild(this.m_detailsButton);
         this.m_skillTreeButton = new TCButton(this.SkillTreeButtonHasBeenPressed,"menus_selectionPopUp_skillsTreeButton");
         this.m_skillTreeButton.x = _loc1_;
         this.m_skillTreeButton.y = _loc2_ + 39 * 1;
         this.m_background.addChild(this.m_skillTreeButton);
         this.m_cancelButton = new TCButton(this.CancelButtonHasBeenPressed,"menus_selectionPopUp_cancelButton");
         this.m_cancelButton.x = _loc1_;
         this.m_cancelButton.y = 105;
         this.m_background.addChild(this.m_cancelButton);
         this.m_unspentTalentPointsPopup = new TutorialPopup();
         this.m_unspentTalentPointsPopup.Create("tutorial_newTalentPointsPopup_side");
         this.m_unspentTalentPointsPopup.x = -92;
         this.m_unspentTalentPointsPopup.y = 48;
         this.m_background.addChild(this.m_unspentTalentPointsPopup);
         this.m_gemPopup = new TutorialPopup();
         this.m_gemPopup.Create("tutorial_firstGem_side");
         this.m_gemPopup.x = -37;
         this.m_gemPopup.y = 11;
         this.m_background.addChild(this.m_gemPopup);
         this.m_background.visible = false;
      }
      
      public function BringIn(param1:OwnedMinion) : void
      {
         this.m_currMinion = param1;
         this.m_background.x = 0;
         this.m_background.y = 0;
         TweenLite.killTweensOf(this.m_background);
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimation(this.m_background);
         if(param1.m_availableTalentPoints > 0)
         {
            this.m_unspentTalentPointsPopup.visible = true;
         }
         else
         {
            this.m_unspentTalentPointsPopup.visible = false;
         }
         if(!Singleton.dynamicData.HasTutorialBeenSeen(TutorialTypes.TUTORIAL_GEMS) && Singleton.dynamicData.GetOwnedGemAt(0) != null)
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
      
      private function DetailsButtonHasBeenPressed(param1:MouseEvent) : void
      {
         this.ExitOut();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.AnimateToMinionDetials();
         if(this.m_currMinion == Singleton.dynamicData.GetOwnedMinionAt(0))
         {
            this.FinishBringingInTheDetails();
         }
         else
         {
            TweenLite.to(this,0.4,{"onComplete":this.FinishBringingInTheDetails});
         }
      }
      
      private function FinishBringingInTheDetails() : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionDetailsScreen.BringIn(this.m_currMinion);
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_STATS;
      }
      
      private function SkillTreeButtonHasBeenPressed(param1:MouseEvent) : void
      {
         this.ExitOut();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.ExitOut();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimationJustFade(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu);
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_talentTreeScreen.BringIn(this.m_currMinion);
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_TALENT_TREE;
      }
      
      private function SwitchButtonHasBeenPressed(param1:MouseEvent) : void
      {
      }
      
      private function CancelButtonHasBeenPressed(param1:MouseEvent) : void
      {
         this.ExitOut();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.BringBackInFromMinionOptions();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_OVERVIEW;
      }
      
      override public function UpdateFullFrames() : void
      {
         this.m_detailsButton.m_isActive = true;
         this.m_skillTreeButton.m_isActive = true;
         this.m_cancelButton.m_isActive = true;
      }
   }
}
