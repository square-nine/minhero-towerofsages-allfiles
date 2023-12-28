package States
{
   public class BackgroundMusicTracks
   {
      
      public static const MUSIC_GRASS_LEVEL:int = 0;
      
      public static const MUSIC_FIRE_LEVEL:int = 1;
      
      public static const MUSIC_ELECTRIC_LEVEL:int = 2;
      
      public static const MUSIC_UNDEAD_LEVEL:int = 3;
      
      public static const MUSIC_BATTLE:int = 4;
      
      public static const MUSIC_TITLE:int = 5;
      
      public static const MUSIC_RIVER:int = 6;
      
      public static const MUSIC_FIREPLACE:int = 7;
      
      public static const MUSIC_RIVER_FULL:int = 8;
      
      public static const MUSIC_NONE:int = 9;
      
      public static const MUSIC_HALLWAY:int = 10;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            MUSIC_RIVER = 6;
            MUSIC_FIREPLACE = 7;
            MUSIC_RIVER_FULL = 8;
            MUSIC_NONE = 9;
            if(_loc1_ || _loc1_)
            {
               addr66:
               MUSIC_HALLWAY = 10;
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function BackgroundMusicTracks()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
   }
}
