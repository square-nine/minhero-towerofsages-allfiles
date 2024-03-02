package TopDown.Menus
{
   import Minions.OwnedMinion;
   import SharedObjects.BaseInterfacePieces.TCButton;
   import SharedObjects.GameObject;
   import States.SpecialRoom;
   import States.TopDownMenuState;
   import Utilities.Singleton;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class SaveMenu extends GameObject
   {
       
      
      private var m_background:Sprite;
      
      private var m_currMinion:OwnedMinion;
      
      private var m_saveButton:TCButton;
      
      private var m_saveAndGotoLobbyButton:TCButton;
      
      private var m_cancelButton:TCButton;
      
      private var m_savingPopup:Sprite;
      
      public function SaveMenu()
      {
         super();
      }
      
      public function LoadSprites() : void
      {
         this.m_background = Singleton.utility.m_spriteHandler.CreateSprite("menus_selectionPopUp_background");
         addChild(this.m_background);
         this.m_savingPopup = Singleton.utility.m_spriteHandler.CreateSprite("menus_savingPopup");
         this.m_savingPopup.x = 14;
         this.m_savingPopup.y = -27;
         this.m_background.addChild(this.m_savingPopup);
         this.m_savingPopup.visible = false;
         this.m_saveButton = new TCButton(this.SaveButtonHasBeenPressed,"menus_selectionPopUp_saveButton");
         this.m_saveButton.x = 15;
         this.m_saveButton.y = 15 + 39 * 0;
         this.m_background.addChild(this.m_saveButton);
         this.m_saveAndGotoLobbyButton = new TCButton(this.ReturnToLobbyButtonHasBeenPressed,"menus_selectionPopUp_saveReturnToLobbyButton");
         this.m_saveAndGotoLobbyButton.x = 15;
         this.m_saveAndGotoLobbyButton.y = 15 + 39 * 1;
         this.m_background.addChild(this.m_saveAndGotoLobbyButton);
         this.m_cancelButton = new TCButton(this.CancelButtonHasBeenPressed,"menus_selectionPopUp_cancelButton");
         this.m_cancelButton.x = 15;
         this.m_cancelButton.y = 104;
         this.m_background.addChild(this.m_cancelButton);
         this.m_background.visible = false;
      }
      
      public function BringIn() : void
      {
         this.m_savingPopup.visible = false;
         this.m_background.x = 0;
         this.m_background.y = 0;
         if(Singleton.dynamicData.GetHighestFloor() > 1)
         {
            this.m_saveAndGotoLobbyButton.alpha = 1;
         }
         else
         {
            this.m_saveAndGotoLobbyButton.alpha = 0.3;
         }
         TweenLite.killTweensOf(this.m_background);
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuBringInAnimation(this.m_background);
      }
      
      public function ExitOut() : void
      {
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.ApplyMenuExitOutAnimation(this.m_background);
      }
      
      private function SaveButtonHasBeenPressed(param1:MouseEvent) : void
      {
         this.m_savingPopup.visible = true;
         this.m_savingPopup.alpha = 0;
         var _loc2_:TimelineLite = new TimelineLite();
         _loc2_.append(new TweenLite(this.m_savingPopup,0.5,{"alpha":1}));
         _loc2_.append(new TweenLite(this.m_savingPopup,0.1,{
            "onComplete":Singleton.dynamicData.SaveAllData,
            "onCompleteParams":[Singleton.dynamicData.m_saveSlot]
         }));
         _loc2_.append(new TweenLite(this.m_savingPopup,0.1,{"onComplete":this.GotoBackToTopdownScreen}));
      }
      
      private function GotoBackToTopdownScreen() : void
      {
         this.ExitOut();
         Singleton.utility.m_screenControllers.m_topDownScreen.CloseMenus();
      }
      
      private function ReturnToLobbyButtonHasBeenPressed(param1:MouseEvent) : void
      {
         this.m_savingPopup.visible = true;
         this.m_savingPopup.alpha = 0;
         var _loc2_:TimelineLite = new TimelineLite();
         _loc2_.append(new TweenLite(this.m_savingPopup,0.5,{"alpha":1}));
         _loc2_.append(new TweenLite(this.m_savingPopup,0.1,{"onComplete":this.GoToLobby}));
         _loc2_.append(new TweenLite(this.m_savingPopup,0.1,{
            "onComplete":Singleton.dynamicData.SaveAllData,
            "onCompleteParams":[Singleton.dynamicData.m_saveSlot]
         }));
         _loc2_.append(new TweenLite(this.m_savingPopup,0.1,{"onComplete":this.GotoBackToTopdownScreen}));
      }
      
      private function GoToLobby() : void
      {
         Singleton.dynamicData.m_topDownCharPositionX = -99;
         Singleton.dynamicData.m_topDownCharPositionY = -99;
         Singleton.dynamicData.m_currRoomOfTower = Singleton.staticData.GetRoomForTransitionID(SpecialRoom.LOBBY_ELEVATOR);
         Singleton.dynamicData.m_currTransitionID = SpecialRoom.LOBBY_ELEVATOR;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.BringInTheNewRoom();
      }
      
      private function CancelButtonHasBeenPressed(param1:MouseEvent) : void
      {
         this.ExitOut();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_rootTopDownMenu.BringIn();
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMenuScreen.m_menuState = TopDownMenuState.TOP_DOWN_MENU_ROOT;
      }
      
      override public function UpdateFullFrames() : void
      {
         this.m_saveButton.m_isActive = true;
         if(this.m_saveAndGotoLobbyButton.alpha == 1)
         {
            this.m_saveAndGotoLobbyButton.m_isActive = true;
         }
         this.m_cancelButton.m_isActive = true;
      }
   }
}
