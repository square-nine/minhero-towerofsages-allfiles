package States
{
   public class TopDownMenuState
   {
      
      public static const TOP_DOWN_MENU_ROOT:int = 0;
      
      public static const TOP_DOWN_MENU_MINION_OVERVIEW:int = 1;
      
      public static const TOP_DOWN_MENU_MINION_OVERVIEW_POPUP_MENU:int = 2;
      
      public static const TOP_DOWN_MENU_MINION_STATS:int = 3;
      
      public static const TOP_DOWN_MENU_MINION_MOVES:int = 4;
      
      public static const TOP_DOWN_MENU_MINION_GEMS:int = 5;
      
      public static const TOP_DOWN_MENU_MINION_TALENT_TREE:int = 6;
      
      public static const TOP_DOWN_MENU_MINION_GEM_SELECT:int = 7;
      
      public static const TOP_DOWN_MENU_MINION_GEM_SELECT_FROM_MINION_DETAILS:int = 8;
      
      public static const TOP_DOWN_MENU_MINION_GEM_SELECT_FROM_MINION_STORAGE:int = 9;
      
      public static const TOP_DOWN_MENU_YOU_MENU:int = 10;
      
      public static const TOP_DOWN_MENU_MINION_PEDIA_MENU:int = 11;
      
      public static const TOP_DOWN_MENU_SETTINGS_MENU:int = 12;
      
      public static const TOP_DOWN_MENU_SAVE_MENU:int = 13;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            TOP_DOWN_MENU_MINION_STATS = 3;
            if(!(_loc1_ && _loc1_))
            {
               TOP_DOWN_MENU_MINION_MOVES = 4;
               TOP_DOWN_MENU_MINION_GEMS = 5;
               TOP_DOWN_MENU_MINION_TALENT_TREE = 6;
               if(_loc2_)
               {
                  TOP_DOWN_MENU_MINION_GEM_SELECT = 7;
                  if(!(_loc1_ && _loc1_))
                  {
                     TOP_DOWN_MENU_MINION_GEM_SELECT_FROM_MINION_DETAILS = 8;
                     if(_loc2_ || _loc1_)
                     {
                        TOP_DOWN_MENU_MINION_GEM_SELECT_FROM_MINION_STORAGE = 9;
                        if(_loc2_ || TopDownMenuState)
                        {
                           TOP_DOWN_MENU_YOU_MENU = 10;
                        }
                        TOP_DOWN_MENU_MINION_PEDIA_MENU = 11;
                        if(_loc1_ && _loc1_)
                        {
                        }
                        addr111:
                        TOP_DOWN_MENU_SAVE_MENU = 13;
                        §§goto(addr114);
                     }
                  }
                  TOP_DOWN_MENU_SETTINGS_MENU = 12;
               }
               addr114:
               return;
            }
         }
         §§goto(addr111);
      }
      
      public function TopDownMenuState()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
   }
}
