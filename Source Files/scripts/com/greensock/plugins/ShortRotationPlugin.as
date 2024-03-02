package com.greensock.plugins
{
   import com.greensock.*;
   
   public class ShortRotationPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
       
      
      public function ShortRotationPlugin()
      {
         super();
         this.propName = "shortRotation";
         this.overwriteProps = [];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc5_:String = null;
         if(typeof param2 == "number")
         {
            return false;
         }
         var _loc4_:Boolean = Boolean(param2.useRadians == true);
         for(_loc5_ in param2)
         {
            if(_loc5_ != "useRadians")
            {
               this.initRotation(param1,_loc5_,param1[_loc5_],typeof param2[_loc5_] == "number" ? Number(param2[_loc5_]) : param1[_loc5_] + Number(param2[_loc5_]),_loc4_);
            }
         }
         return true;
      }
      
      public function initRotation(param1:Object, param2:String, param3:Number, param4:Number, param5:Boolean = false) : void
      {
         var _loc6_:Number = param5 ? Math.PI * 2 : 360;
         var _loc7_:Number = (param4 - param3) % _loc6_;
         if(_loc7_ != _loc7_ % (_loc6_ / 2))
         {
            _loc7_ = _loc7_ < 0 ? _loc7_ + _loc6_ : _loc7_ - _loc6_;
         }
         addTween(param1,param2,param3,param3 + _loc7_,param2);
         this.overwriteProps[this.overwriteProps.length] = param2;
      }
   }
}
