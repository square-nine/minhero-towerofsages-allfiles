package States
{
   public class SpecialRoom
   {
      
      public static const EXPERT_ROOM:int = 99;
      
      public static const LOBBY_START:int = 100;
      
      public static const LOBBY_ELEVATOR:int = 101;
      
      public static const TOWER_FLOOR_SELECT:int = 102;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            EXPERT_ROOM = 99;
            if(!_loc1_)
            {
               LOBBY_START = 100;
               if(!(_loc1_ && _loc1_))
               {
                  LOBBY_ELEVATOR = 101;
                  if(!_loc1_)
                  {
                     addr48:
                     TOWER_FLOOR_SELECT = 102;
                  }
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function SpecialRoom()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
   }
}
