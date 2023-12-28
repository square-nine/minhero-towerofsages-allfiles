package States
{
   public class ExpGainRates
   {
      
      public static const EXP_GAIN_RATE_VERY_EASY:int = 0;
      
      public static const EXP_GAIN_RATE_EASY:int = 1;
      
      public static const EXP_GAIN_RATE_NORMAL:int = 2;
      
      public static const EXP_GAIN_RATE_HARD:int = 3;
      
      public static const EXP_GAIN_RATE_VERY_HARD:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && ExpGainRates))
         {
            EXP_GAIN_RATE_VERY_EASY = 0;
            if(_loc2_)
            {
               addr40:
               EXP_GAIN_RATE_EASY = 1;
               if(_loc2_)
               {
                  EXP_GAIN_RATE_NORMAL = 2;
                  if(!_loc1_)
                  {
                     §§goto(addr50);
                  }
               }
               §§goto(addr60);
            }
            addr50:
            EXP_GAIN_RATE_HARD = 3;
            if(!(_loc1_ && ExpGainRates))
            {
               addr60:
               EXP_GAIN_RATE_VERY_HARD = 4;
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function ExpGainRates()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
   }
}
