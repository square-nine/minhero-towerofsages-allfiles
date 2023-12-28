package com.greensock.plugins
{
   import com.greensock.*;
   import flash.filters.DropShadowFilter;
   
   public class DropShadowFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1;
      
      private static var _propNames:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            API = 1;
            if(!_loc2_)
            {
               addr27:
               _propNames = ["distance","angle","color","alpha","blurX","blurY","strength","quality","inner","knockout","hideObject"];
            }
            return;
         }
         §§goto(addr27);
      }
      
      public function DropShadowFilterPlugin()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(_loc2_)
            {
               addr32:
               this.propName = "dropShadowFilter";
               if(!_loc1_)
               {
                  this.overwriteProps = ["dropShadowFilter"];
               }
            }
            return;
         }
         §§goto(addr32);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && Boolean(this)))
         {
            _target = param1;
            if(_loc4_ || Boolean(this))
            {
               _type = DropShadowFilter;
               if(_loc4_ || Boolean(this))
               {
                  initFilter(param2,new DropShadowFilter(0,45,0,0,0,0,1,int(param2.quality) || 2,param2.inner,param2.knockout,param2.hideObject),_propNames);
                  addr47:
               }
            }
            return true;
         }
         §§goto(addr47);
      }
   }
}
