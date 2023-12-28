package States
{
   public class MainMenuStates
   {
      
      public static const MAIN_MENU_ANIMATING:int = 0;
      
      public static const MAIN_MENU_SPONSOR_SCREENS:int = 1;
      
      public static const MAIN_MENU_TITLE_SCREEN:int = 2;
      
      public static const MAIN_MENU_CHAR_CREATION:int = 3;
      
      public static const MAIN_MENU_CREDITS:int = 4;
      
      public static const MAIN_MENU_BRINGING_IN:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            MAIN_MENU_ANIMATING = 0;
            if(_loc1_)
            {
               MAIN_MENU_SPONSOR_SCREENS = 1;
               MAIN_MENU_TITLE_SCREEN = 2;
               MAIN_MENU_CHAR_CREATION = 3;
               addr36:
               MAIN_MENU_CREDITS = 4;
               if(_loc1_ || MainMenuStates)
               {
                  MAIN_MENU_BRINGING_IN = 5;
               }
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function MainMenuStates()
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
