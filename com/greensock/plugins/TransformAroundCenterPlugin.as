package com.greensock.plugins
{
   import com.greensock.*;
   import flash.display.*;
   import flash.geom.*;
   
   public class TransformAroundCenterPlugin extends TransformAroundPointPlugin
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
      
      public function TransformAroundCenterPlugin()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
            if(_loc2_)
            {
               this.propName = "transformAroundCenter";
            }
         }
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Rectangle = param1.getBounds(param1);
         if(!_loc5_)
         {
            param2.point = new Point(_loc4_.x + _loc4_.width / 2,_loc4_.y + _loc4_.height / 2);
            if(!_loc5_)
            {
               addr55:
               param2.pointIsLocal = true;
            }
            return super.onInitTween(param1,param2,param3);
         }
         §§goto(addr55);
      }
   }
}
