package States
{
   public class BattleScreenStates
   {
      
      public static const BSS_PLAY_STARTING_ANIMATION:int = 8;
      
      public static const BSS_START_ROUND:int = 0;
      
      public static const BSS_CHECK_FOR_WIN_LOSE:int = 1;
      
      public static const BSS_CALCULATE_NEW_STATS:int = 2;
      
      public static const BSS_GET_A_PLAYERS_MOVE:int = 3;
      
      public static const BSS_RUN_QUEUED_MOVES:int = 4;
      
      public static const BSS_RUN_TICK_MOVES:int = 5;
      
      public static const BSS_VICTORY_MENUS:int = 6;
      
      public static const BSS_LOST_MENUS:int = 7;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            BSS_PLAY_STARTING_ANIMATION = 8;
            if(!(_loc2_ && BattleScreenStates))
            {
               addr37:
               BSS_START_ROUND = 0;
               BSS_CHECK_FOR_WIN_LOSE = 1;
               BSS_CALCULATE_NEW_STATS = 2;
            }
            BSS_GET_A_PLAYERS_MOVE = 3;
            BSS_RUN_QUEUED_MOVES = 4;
            BSS_RUN_TICK_MOVES = 5;
            if(!_loc2_)
            {
               BSS_VICTORY_MENUS = 6;
            }
            BSS_LOST_MENUS = 7;
            return;
         }
         §§goto(addr37);
      }
      
      public function BattleScreenStates()
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
