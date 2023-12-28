package com.greensock.plugins
{
   import com.greensock.*;
   
   public class AutoAlphaPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            API = 1;
         }
      }
      
      protected var _target:Object;
      
      protected var _ignoreVisible:Boolean;
      
      public function AutoAlphaPlugin()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(_loc1_ || _loc2_)
            {
               this.propName = "autoAlpha";
               if(_loc1_)
               {
               }
               §§goto(addr46);
            }
            this.overwriteProps = ["alpha","visible"];
         }
         addr46:
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this._target = param1;
            if(!(_loc4_ && Boolean(this)))
            {
               addTween(param1,"alpha",param1.alpha,param2,"alpha");
            }
         }
         return true;
      }
      
      override public function killProps(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(param1))
         {
            super.killProps(param1);
            if(_loc2_ || _loc2_)
            {
               addr37:
               this._ignoreVisible = Boolean("visible" in param1);
            }
            return;
         }
         §§goto(addr37);
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            updateTweens(param1);
            if(!_loc2_)
            {
               addr28:
               if(!this._ignoreVisible)
               {
                  if(!_loc2_)
                  {
                     this._target.visible = Boolean(this._target.alpha != 0);
                  }
               }
            }
            return;
         }
         §§goto(addr28);
      }
   }
}
