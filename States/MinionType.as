package States
{
   public class MinionType
   {
      
      public static const TYPE_NONE:int = 0;
      
      public static const TYPE_ENERGY:int = 1;
      
      public static const TYPE_UNDEAD:int = 2;
      
      public static const TYPE_ROBOT:int = 3;
      
      public static const TYPE_FIRE:int = 4;
      
      public static const TYPE_WATER:int = 5;
      
      public static const TYPE_ICE:int = 6;
      
      public static const TYPE_DEMONIC:int = 7;
      
      public static const TYPE_HOLY:int = 8;
      
      public static const TYPE_EARTH:int = 9;
      
      public static const TYPE_PLANT:int = 10;
      
      public static const TYPE_FLYING:int = 11;
      
      public static const TYPE_TITAN:int = 12;
      
      public static const TYPE_NORMAL:int = 13;
      
      public static const TYPE_DINO:int = 14;
      
      public static const NUM_OF_MINION_TYPES:int = 15;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && MinionType))
         {
            TYPE_ENERGY = 1;
            TYPE_UNDEAD = 2;
            if(!_loc1_)
            {
               TYPE_ROBOT = 3;
               addr35:
               TYPE_FIRE = 4;
               if(_loc2_ || MinionType)
               {
                  TYPE_WATER = 5;
                  if(!_loc1_)
                  {
                     TYPE_ICE = 6;
                     TYPE_DEMONIC = 7;
                     TYPE_HOLY = 8;
                     TYPE_EARTH = 9;
                     TYPE_PLANT = 10;
                     TYPE_FLYING = 11;
                     §§goto(addr82);
                  }
                  §§goto(addr92);
               }
               §§goto(addr100);
            }
            addr82:
            TYPE_TITAN = 12;
            if(_loc2_ || _loc2_)
            {
               addr92:
               TYPE_NORMAL = 13;
               TYPE_DINO = 14;
               if(!_loc1_)
               {
                  addr100:
                  NUM_OF_MINION_TYPES = 15;
               }
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function MinionType()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
   }
}
