package com.greensock.plugins
{
   import com.greensock.*;
   import flash.filters.BlurFilter;
   
   public class BlurFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1;
      
      private static var _propNames:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            API = 1;
            if(!(_loc1_ && _loc2_))
            {
               addr33:
               _propNames = ["blurX","blurY","quality"];
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function BlurFilterPlugin()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_ || _loc1_)
            {
               this.propName = "blurFilter";
               if(_loc1_)
               {
               }
               §§goto(addr41);
            }
            this.overwriteProps = ["blurFilter"];
         }
         addr41:
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && Boolean(param1)))
         {
            _target = param1;
            if(!_loc4_)
            {
               §§goto(addr40);
            }
            §§goto(addr45);
         }
         addr40:
         _type = BlurFilter;
         if(_loc5_)
         {
            initFilter(param2,new BlurFilter(0,0,int(param2.quality) || 2),_propNames);
            addr45:
         }
         return true;
      }
   }
}
