package TopDown.Menus
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import SharedObjects.TalentTree.TalentTreeControllerScreen;
   import States.TopDownMenuState;
   import Utilities.Singleton;
   import flash.events.MouseEvent;
   
   public class TopDownTalentTreeWrapper extends GameObject
   {
       
      
      private var m_returnButton:TCButton;
      
      private var m_talentTreeControllerScreen:TalentTreeControllerScreen;
      
      public function TopDownTalentTreeWrapper()
      {
         super();
         this.m_talentTreeControllerScreen = new TalentTreeControllerScreen();
      }
      
      public function LoadSprites() : void
      {
         this.m_returnButton = new TCButton(this.ReturnButtonPressed,"menus_returnButton");
         this.m_returnButton.x = 2;
         this.m_returnButton.y = 356;
         addChild(this.m_returnButton);
         this.m_talentTreeControllerScreen.LoadSprites();
         addChild(this.m_talentTreeControllerScreen);
         this.visible = false;
      }
      
      public function BringIn(param1:OwnedMinion) : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimationJustFade(this);
         this.m_talentTreeControllerScreen.BringIn(param1);
      }
      
      public function ExitOut() : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimationJustFade(this);
         this.m_talentTreeControllerScreen.ExitOut();
      }
      
      private function ReturnButtonPressed(param1:MouseEvent = null) : void
      {
         this.ExitOut();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_minionSelectMenu.BringIn();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_MINION_OVERVIEW;
      }
      
      override public function UpdateFullFrames() : void
      {
         super.UpdateFullFrames();
         this.m_talentTreeControllerScreen.UpdateFullFrames();
         this.m_returnButton.m_isActive = true;
      }
   }
}
