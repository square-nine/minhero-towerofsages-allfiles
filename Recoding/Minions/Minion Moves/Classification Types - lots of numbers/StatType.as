package States
{
   public class StatType
   {
      
      public static const STAT_HEALTH:int = 0;
      
      public static const STAT_ENERGY:int = 1;
      
      public static const STAT_ATTACK:int = 2;
      
      public static const STAT_HEALING:int = 3;
      
      public static const STAT_SPEED:int = 4;
      
      public static const STAT_NONE:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            STAT_HEALTH = 0;
            if(_loc2_ || _loc2_)
            {
               STAT_ENERGY = 1;
               STAT_ATTACK = 2;
               STAT_HEALING = 3;
            }
            STAT_SPEED = 4;
            if(_loc2_ || _loc2_)
            {
               addr59:
               STAT_NONE = 5;
            }
            return;
         }
         §§goto(addr59);
      }
      
      public function StatType()
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
