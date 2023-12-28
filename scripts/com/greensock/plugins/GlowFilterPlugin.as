package com.greensock.plugins
{
   import com.greensock.*;
   import flash.filters.GlowFilter;
   
   public class GlowFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1;
      
      private static var _propNames:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && GlowFilterPlugin))
         {
            API = 1;
            if(_loc1_ || GlowFilterPlugin)
            {
               addr37:
               _propNames = ["color","alpha","blurX","blurY","strength","quality","inner","knockout"];
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function GlowFilterPlugin()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_ || _loc2_)
            {
               addr31:
               this.propName = "glowFilter";
               if(!_loc2_)
               {
                  this.overwriteProps = ["glowFilter"];
               }
            }
            return;
         }
         §§goto(addr31);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || Boolean(this))
         {
            _target = param1;
            if(_loc5_)
            {
               _type = GlowFilter;
               addr26:
               if(_loc5_)
               {
                  initFilter(param2,new GlowFilter(16777215,0,0,0,Number(param2.strength) || 1,int(param2.quality) || 2,param2.inner,param2.knockout),_propNames);
               }
            }
            return true;
         }
         §§goto(addr26);
      }
   }
}
