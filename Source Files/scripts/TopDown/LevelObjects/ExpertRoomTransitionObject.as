package TopDown.LevelObjects
{
   import Utilities.Singleton;
   
   public class ExpertRoomTransitionObject extends RoomTransitionObject
   {
       
      
      public function ExpertRoomTransitionObject()
      {
         super();
      }
      
      override public function OnColl() : void
      {
         if(Singleton.dynamicData.m_currFloorOfTower >= Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
         {
            Singleton.utility.m_soundController.PlaySound("tower_teleport");
            Singleton.dynamicData.m_topDownCharPositionX = -99;
            Singleton.dynamicData.m_topDownCharPositionY = -99;
            Singleton.dynamicData.m_currRoomOfTower = Singleton.staticData.GetRoomForTransitionID(m_transitionID);
            Singleton.dynamicData.m_currTransitionID = m_transitionID;
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.BringInTheNewRoom();
         }
      }
   }
}
