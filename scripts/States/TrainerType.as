package States
{
   public class TrainerType
   {
      
      public static const NO_TRAINER:int = 0;
      
      public static const NORMAL_TRAINER:int = 1;
      
      public static const BOSS_TRAINER:int = 2;
      
      public static const HARD_TRAINER:int = 3;
      
      public static const EXPERT_TRAINER:int = 4;
      
      public static const TRAINER_GYM_1:int = 5;
      
      public static const TRAINER_GYM_2:int = 6;
      
      public static const TRAINER_GYM_3:int = 7;
      
      public static const TRAINER_GYM_4:int = 8;
      
      public static const TRAINER_GYM_5:int = 9;
      
      public static const TRAINER_GYM_6:int = 10;
      
      public static const TRAINER_GRAND_SAGE:int = 11;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || TrainerType)
         {
            NO_TRAINER = 0;
            NORMAL_TRAINER = 1;
            BOSS_TRAINER = 2;
            HARD_TRAINER = 3;
            EXPERT_TRAINER = 4;
            if(_loc2_ || _loc1_)
            {
               TRAINER_GYM_1 = 5;
               TRAINER_GYM_2 = 6;
               addr53:
            }
            TRAINER_GYM_3 = 7;
            TRAINER_GYM_4 = 8;
            TRAINER_GYM_5 = 9;
            if(!(_loc1_ && _loc1_))
            {
               TRAINER_GYM_6 = 10;
               TRAINER_GRAND_SAGE = 11;
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function TrainerType()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
   }
}
