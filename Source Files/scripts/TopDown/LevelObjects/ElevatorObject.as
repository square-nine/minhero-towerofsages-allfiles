package TopDown.LevelObjects
{
   import States.GameState;
   import States.SpecialRoom;
   import Utilities.Singleton;
   
   public class ElevatorObject extends WallCollObject
   {
       
      
      public function ElevatorObject()
      {
         super();
      }
      
      override public function OnColl() : void
      {
         super.OnColl();
         Singleton.dynamicData.m_currTransitionID = SpecialRoom.TOWER_FLOOR_SELECT;
         Singleton.utility.m_screenControllers.SetSceneTo(GameState.LEVEL_SELECT_SCREEN);
      }
   }
}
