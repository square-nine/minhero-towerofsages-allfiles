package States
{
   public class GameState
   {
      
      public static const NONE:int = 0;
      
      public static const MAIN_MENU:int = 1;
      
      public static const BATTLE_SCREEN:int = 2;
      
      public static const TOP_DOWN_SCREEN:int = 3;
      
      public static const TRANSITIONING:int = 4;
      
      public static const SPONSOR_SCREEN:int = 5;
      
      public static const LEVEL_SELECT_SCREEN:int = 6;
      
      public static const SITE_LOCKED_SCREEN:int = 7;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            MAIN_MENU = 1;
            if(!(_loc1_ && GameState))
            {
               §§goto(addr41);
            }
            §§goto(addr51);
         }
         addr41:
         if(_loc2_ || _loc1_)
         {
            TOP_DOWN_SCREEN = 3;
            addr51:
            if(_loc2_)
            {
               TRANSITIONING = 4;
            }
         }
         if(_loc2_ || _loc1_)
         {
            LEVEL_SELECT_SCREEN = 6;
         }
      }
      
      public function GameState()
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
