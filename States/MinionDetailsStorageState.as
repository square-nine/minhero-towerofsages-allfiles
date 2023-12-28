package States
{
   public class MinionDetailsStorageState
   {
      
      public static const MDSS_MINION_STATS:int = 1;
      
      public static const MDSS_MINION_MOVES:int = 2;
      
      public static const MDSS_MINION_GEMS:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            MDSS_MINION_STATS = 1;
            if(!_loc2_)
            {
               addr27:
               MDSS_MINION_MOVES = 2;
               if(_loc1_ || _loc2_)
               {
                  MDSS_MINION_GEMS = 3;
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      public function MinionDetailsStorageState()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
   }
}
