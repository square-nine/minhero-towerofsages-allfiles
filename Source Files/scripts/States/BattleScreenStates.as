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
       
      
      public function BattleScreenStates()
      {
         super();
      }
   }
}
