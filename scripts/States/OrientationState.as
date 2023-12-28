package States
{
   public class OrientationState
   {
      
      public static const ORIENTATION_UP:int = 0;
      
      public static const ORIENTATION_LEFT:int = 1;
      
      public static const ORIENTATION_DOWN:int = 2;
      
      public static const ORIENTATION_RIGHT:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            ORIENTATION_UP = 0;
            if(_loc2_ || _loc2_)
            {
               addr45:
               ORIENTATION_LEFT = 1;
               if(!_loc1_)
               {
                  ORIENTATION_DOWN = 2;
                  if(_loc1_ && _loc2_)
                  {
                  }
                  §§goto(addr63);
               }
               ORIENTATION_RIGHT = 3;
            }
            addr63:
            return;
         }
         §§goto(addr45);
      }
      
      public function OrientationState()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
   }
}
