package States
{
   public class BattleScreenViualControllerStates
   {
      
      public static const BSVCS_NOT_ACTIVE:int = 0;
      
      public static const BSVCS_GETTING_MOVE:int = 1;
      
      public static const BSVCS_SELECTING_ENEMIES_FOR_MOVE:int = 2;
      
      public static const BSVCS_SELECTING_ALLIES_FOR_MOVE:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || BattleScreenViualControllerStates)
         {
            BSVCS_NOT_ACTIVE = 0;
            if(_loc1_ || BattleScreenViualControllerStates)
            {
               BSVCS_GETTING_MOVE = 1;
               if(_loc2_ && _loc1_)
               {
               }
               §§goto(addr67);
            }
            BSVCS_SELECTING_ENEMIES_FOR_MOVE = 2;
            if(!(_loc2_ && _loc2_))
            {
               BSVCS_SELECTING_ALLIES_FOR_MOVE = 3;
            }
         }
         addr67:
      }
      
      public function BattleScreenViualControllerStates()
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
