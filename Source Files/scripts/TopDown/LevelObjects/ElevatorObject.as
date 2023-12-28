package TopDown.LevelObjects
{
   import States.GameState;
   import States.SpecialRoom;
   import Utilities.Singleton;
   
   public class ElevatorObject extends WallCollObject
   {
       
      
      public function ElevatorObject()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function OnColl() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.OnColl();
            if(_loc1_)
            {
               Singleton.dynamicData.m_currTransitionID = SpecialRoom.TOWER_FLOOR_SELECT;
               if(_loc1_ || Boolean(this))
               {
                  addr38:
                  Singleton.utility.m_screenControllers.SetSceneTo(GameState.LEVEL_SELECT_SCREEN);
               }
               return;
            }
         }
         §§goto(addr38);
      }
   }
}
