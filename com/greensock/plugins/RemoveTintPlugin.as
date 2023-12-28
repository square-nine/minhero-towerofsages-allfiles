package com.greensock.plugins
{
   public class RemoveTintPlugin extends TintPlugin
   {
      
      public static const API:Number = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            API = 1;
         }
      }
      
      public function RemoveTintPlugin()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               addr24:
               this.propName = "removeTint";
            }
            return;
         }
         §§goto(addr24);
      }
   }
}
