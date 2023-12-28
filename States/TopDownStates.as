package States
{
   public class TopDownStates
   {
      
      public static const MOVEMENT:int = 0;
      
      public static const MENUS:int = 1;
      
      public static const LOADING:int = 2;
      
      public static const IN_CHAT:int = 3;
      
      public static const IN_GEM_COMBINER:int = 4;
      
      public static const IN_GEM_STORE:int = 5;
      
      public static const IN_MINION_STORAGE:int = 6;
      
      public static const IN_FLOOR_SELECT_MENU:int = 7;
      
      public static const IN_EGGERY_PARTY_SWAP_SCREEN:int = 8;
      
      public static const IN_MINION_STAT_SELECTION:int = 9;
      
      public static const IN_PLAYING_SAGE_SEAL_ANIMATION:int = 10;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            LOADING = 2;
            IN_CHAT = 3;
            if(_loc1_ || _loc2_)
            {
               IN_GEM_COMBINER = 4;
               if(_loc1_ || _loc2_)
               {
                  IN_GEM_STORE = 5;
                  IN_MINION_STORAGE = 6;
                  if(_loc1_ || _loc1_)
                  {
                     IN_FLOOR_SELECT_MENU = 7;
                     addr74:
                     IN_EGGERY_PARTY_SWAP_SCREEN = 8;
                     if(_loc1_ || TopDownStates)
                     {
                        IN_MINION_STAT_SELECTION = 9;
                        IN_PLAYING_SAGE_SEAL_ANIMATION = 10;
                     }
                  }
               }
               §§goto(addr74);
            }
            return;
         }
         §§goto(addr74);
      }
      
      public function TopDownStates()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
   }
}
