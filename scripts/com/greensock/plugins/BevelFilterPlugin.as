package com.greensock.plugins
{
   import com.greensock.*;
   import flash.filters.BevelFilter;
   
   public class BevelFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1;
      
      private static var _propNames:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            API = 1;
            if(!_loc1_)
            {
               _propNames = ["distance","angle","highlightColor","highlightAlpha","shadowColor","shadowAlpha","blurX","blurY","strength","quality"];
            }
         }
      }
      
      public function BevelFilterPlugin()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_ || _loc1_)
            {
               this.propName = "bevelFilter";
               if(_loc2_)
               {
               }
               §§goto(addr40);
            }
            this.overwriteProps = ["bevelFilter"];
         }
         addr40:
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || Boolean(param3))
         {
            _target = param1;
            if(!_loc4_)
            {
               _type = BevelFilter;
               if(!(_loc4_ && Boolean(param1)))
               {
                  initFilter(param2,new BevelFilter(0,0,16777215,0.5,0,0.5,2,2,0,int(param2.quality) || 2),_propNames);
                  addr50:
               }
            }
            return true;
         }
         §§goto(addr50);
      }
   }
}
