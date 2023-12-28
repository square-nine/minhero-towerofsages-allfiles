package States
{
   public class TutorialTypes
   {
      
      public static const TUTORIAL_MOVEMENT:int = 0;
      
      public static const TUTORIAL_KEY_KEEPERS:int = 1;
      
      public static const TUTORIAL_BATTLE_BASICS:int = 2;
      
      public static const TUTORIAL_MOVE_SELECT:int = 3;
      
      public static const TUTORIAL_ENEMY_SELECT:int = 4;
      
      public static const TUTORIAL_SELECT_YOUR_MINION:int = 5;
      
      public static const TUTORIAL_DESELECT_WRONG_MINION:int = 6;
      
      public static const TUTORIAL_ENERGY:int = 7;
      
      public static const TUTORIAL_TYPE_EFFECTIVENESS:int = 8;
      
      public static const TUTORIAL_FOCUS_TARGETS:int = 9;
      
      public static const TUTORIAL_TANKS:int = 10;
      
      public static const TUTORIAL_HEALERS:int = 11;
      
      public static const TUTORIAL_GEMS:int = 12;
      
      public static const TUTORIAL_GEM_MENU:int = 13;
      
      public static const TUTORIAL_REPLAY_FLOORS:int = 14;
      
      public static const TUTORIAL_DEATH:int = 15;
      
      public static const TUTORIAL_DEATH_EXP:int = 16;
      
      public static const TUTORIAL_SWAP_MINIONS:int = 17;
      
      public static const TUTORIAL_BOSS_ROOM:int = 18;
      
      public static const TUTORIAL_DEATH_2:int = 19;
      
      public static const TUTORIAL_DONT_HAVE_TO_BEAT_HARD_AND_EXPERT_TRAINERS:int = 20;
      
      public static const TUTORIAL_BONUS_LEVEL:int = 21;
      
      public static const TUTORIAL_SHIELD_BATTLE_MOD:int = 22;
      
      public static const TUTORIAL_EXTRA_MOVES_BATTLE_MOD:int = 23;
      
      public static const TUTORIAL_EXTRA_MINIONS_BATTLE_MOD:int = 24;
      
      public static const TUTORIAL_RESURECTION_BATTLE_MOD:int = 25;
      
      public static const NUM_OF_TUTORIALS:int = 26;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            TUTORIAL_MOVEMENT = 0;
            TUTORIAL_KEY_KEEPERS = 1;
            TUTORIAL_BATTLE_BASICS = 2;
            TUTORIAL_MOVE_SELECT = 3;
            TUTORIAL_ENEMY_SELECT = 4;
            if(!(_loc2_ && _loc1_))
            {
               TUTORIAL_SELECT_YOUR_MINION = 5;
               if(_loc1_ || _loc2_)
               {
                  TUTORIAL_DESELECT_WRONG_MINION = 6;
                  TUTORIAL_ENERGY = 7;
                  TUTORIAL_TYPE_EFFECTIVENESS = 8;
                  TUTORIAL_FOCUS_TARGETS = 9;
                  if(_loc1_)
                  {
                     TUTORIAL_TANKS = 10;
                     TUTORIAL_HEALERS = 11;
                     TUTORIAL_GEMS = 12;
                     TUTORIAL_GEM_MENU = 13;
                  }
                  §§goto(addr114);
               }
               TUTORIAL_REPLAY_FLOORS = 14;
               if(_loc1_ || TutorialTypes)
               {
                  TUTORIAL_DEATH = 15;
                  TUTORIAL_DEATH_EXP = 16;
                  if(!(_loc2_ && TutorialTypes))
                  {
                     §§goto(addr103);
                  }
                  §§goto(addr149);
               }
               addr103:
               TUTORIAL_SWAP_MINIONS = 17;
               if(_loc1_)
               {
                  TUTORIAL_BOSS_ROOM = 18;
               }
               TUTORIAL_DEATH_2 = 19;
               §§goto(addr114);
            }
            addr114:
            TUTORIAL_DONT_HAVE_TO_BEAT_HARD_AND_EXPERT_TRAINERS = 20;
            if(!_loc2_)
            {
               addr119:
               TUTORIAL_BONUS_LEVEL = 21;
            }
            TUTORIAL_SHIELD_BATTLE_MOD = 22;
            if(!(_loc2_ && _loc2_))
            {
               TUTORIAL_EXTRA_MOVES_BATTLE_MOD = 23;
               if(!(_loc2_ && _loc1_))
               {
                  addr149:
                  TUTORIAL_EXTRA_MINIONS_BATTLE_MOD = 24;
                  if(_loc1_ || _loc1_)
                  {
                     addr159:
                     TUTORIAL_RESURECTION_BATTLE_MOD = 25;
                  }
                  NUM_OF_TUTORIALS = 26;
                  §§goto(addr165);
               }
               §§goto(addr159);
            }
            addr165:
            return;
         }
         §§goto(addr119);
      }
      
      public function TutorialTypes()
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
