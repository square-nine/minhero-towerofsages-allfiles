package TopDown.LevelObjects
{
   import States.GameState;
   import States.SpecialRoom;
   import Utilities.Singleton;
   import com.greensock.TweenLite;
   
   public class RoomTransitionObject extends BaseLevelCollObject
   {
       
      
      public var m_transitionID:int;
      
      public var m_isTeleportTransitionObject:Boolean;
      
      public function RoomTransitionObject()
      {
         super();
         this.m_isTeleportTransitionObject = false;
      }
      
      override public function OnColl() : void
      {
         var _loc3_:MainChar = null;
         super.OnColl();
         var _loc1_:int = Singleton.dynamicData.m_currFloorOfTower;
         var _loc2_:Boolean = _loc1_ == 4 || _loc1_ == 9 || _loc1_ == 14 || _loc1_ == 19 || _loc1_ == 24 || _loc1_ == 29 || _loc1_ == 30 || _loc1_ == 35 || _loc1_ == 40 || _loc1_ == 45 || _loc1_ == 50 || _loc1_ == 55 || _loc1_ == 60 || _loc1_ == 61;
         if(_loc2_)
         {
            Singleton.utility.m_screenControllers.SetSceneTo(GameState.LEVEL_SELECT_SCREEN);
            return;
         }
         if(this.m_transitionID == SpecialRoom.LOBBY_ELEVATOR)
         {
            _loc3_ = Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_mainChar;
            _loc3_.BringInCharChatBoxWithText("Are you sure you want to return to the lobby?",null,this.DoOnCollCode);
            return;
         }
         TweenLite.to(this,0.01,{"onComplete":this.DoOnCollCode});
      }
      
      private function DoOnCollCode() : void
      {
         Singleton.dynamicData.m_topDownCharPositionX = -99;
         Singleton.dynamicData.m_topDownCharPositionY = -99;
         Singleton.dynamicData.m_currRoomOfTower = Singleton.staticData.GetRoomForTransitionID(this.m_transitionID);
         Singleton.dynamicData.m_currTransitionID = this.m_transitionID;
         Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.BringInTheNewRoom();
         if(this.m_isTeleportTransitionObject)
         {
            Singleton.utility.m_soundController.PlaySound("tower_teleport");
         }
      }
   }
}
