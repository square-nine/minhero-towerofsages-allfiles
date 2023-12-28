package States
{
   public class StarUpgradeTypes
   {
      
      public static const STAR_UPGRADE_HEALTH:int = 0;
      
      public static const STAR_UPGRADE_ENERGY:int = 1;
      
      public static const STAR_UPGRADE_ATTACK:int = 2;
      
      public static const STAR_UPGRADE_HEALING:int = 3;
      
      public static const STAR_UPGRADE_SPEED:int = 4;
      
      public static const STAR_UPGRADE_MOVESPEED:int = 5;
      
      public static const STAR_UPGRADE_EXP:int = 6;
      
      public static const STAR_UPGRADE_MONEY:int = 7;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            STAR_UPGRADE_ENERGY = 1;
            STAR_UPGRADE_ATTACK = 2;
            if(_loc1_)
            {
               STAR_UPGRADE_HEALING = 3;
               STAR_UPGRADE_SPEED = 4;
               addr39:
               STAR_UPGRADE_MOVESPEED = 5;
            }
            STAR_UPGRADE_EXP = 6;
            if(_loc1_)
            {
               STAR_UPGRADE_MONEY = 7;
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function StarUpgradeTypes()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
   }
}
