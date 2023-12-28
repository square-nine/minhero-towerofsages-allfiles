package States
{
   public class GemSelectorState
   {
      
      public static const GSS_NO_SELECTION:int = 0;
      
      public static const GSS_GEM_SELECTED:int = 1;
      
      public static const GSS_GEM_SWAPPING:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            GSS_NO_SELECTION = 0;
            if(_loc2_ || _loc2_)
            {
               GSS_GEM_SELECTED = 1;
               if(!(_loc1_ && _loc2_))
               {
                  addr43:
                  GSS_GEM_SWAPPING = 2;
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function GemSelectorState()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
   }
}
