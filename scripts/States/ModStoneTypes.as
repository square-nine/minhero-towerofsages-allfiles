package States
{
   public class ModStoneTypes
   {
      
      public static const MOD_STONE_SHIELD:int = 0;
      
      public static const MOD_STONE_MOVE_TIMER:int = 1;
      
      public static const MOD_STONE_EXTRA_MINIONS:int = 2;
      
      public static const MOD_STONE_RESURECTION:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            MOD_STONE_SHIELD = 0;
            if(!_loc1_)
            {
               MOD_STONE_MOVE_TIMER = 1;
               if(_loc2_ || ModStoneTypes)
               {
                  addr43:
                  MOD_STONE_EXTRA_MINIONS = 2;
                  if(!_loc1_)
                  {
                     addr48:
                     MOD_STONE_RESURECTION = 3;
                  }
               }
               return;
            }
            §§goto(addr48);
         }
         §§goto(addr43);
      }
      
      public function ModStoneTypes()
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
