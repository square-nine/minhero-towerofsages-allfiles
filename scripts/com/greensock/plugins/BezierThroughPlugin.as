package com.greensock.plugins
{
   import com.greensock.TweenLite;
   
   public class BezierThroughPlugin extends BezierPlugin
   {
      
      public static const API:Number = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            API = 1;
         }
      }
      
      public function BezierThroughPlugin()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               addr19:
               this.propName = "bezierThrough";
            }
            return;
         }
         §§goto(addr19);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && Boolean(param3)))
         {
            §§push(param2 is Array);
            if(!_loc5_)
            {
               if(!§§pop())
               {
                  if(!_loc5_)
                  {
                     §§push(false);
                     if(!(_loc5_ && Boolean(this)))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr60:
                     §§push(true);
                  }
               }
               else
               {
                  init(param3,param2 as Array,true);
                  §§goto(addr60);
               }
               §§goto(addr60);
            }
            return §§pop();
         }
         §§goto(addr60);
      }
   }
}
