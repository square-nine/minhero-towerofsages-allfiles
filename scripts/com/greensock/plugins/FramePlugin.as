package com.greensock.plugins
{
   import com.greensock.TweenLite;
   import flash.display.MovieClip;
   
   public class FramePlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            API = 1;
         }
      }
      
      public var frame:int;
      
      protected var _target:MovieClip;
      
      public function FramePlugin()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               addr26:
               this.propName = "frame";
               if(_loc1_)
               {
                  §§goto(addr31);
               }
               §§goto(addr38);
            }
            addr31:
            this.overwriteProps = ["frame","frameLabel"];
            if(!_loc2_)
            {
               addr38:
               this.round = true;
            }
            return;
         }
         §§goto(addr26);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1 is MovieClip);
         if(_loc4_)
         {
            §§push(!§§pop());
            if(!_loc5_)
            {
               addr21:
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     §§pop();
                     §§push(isNaN(param2));
                     if(_loc5_)
                     {
                     }
                  }
                  §§goto(addr79);
               }
               if(§§pop())
               {
                  §§push(false);
                  if(!_loc5_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  this._target = param1 as MovieClip;
                  if(!(_loc5_ && Boolean(this)))
                  {
                     this.frame = this._target.currentFrame;
                  }
                  addTween(this,"frame",this.frame,param2,"frame");
                  §§push(true);
               }
            }
            addr79:
            return §§pop();
         }
         §§goto(addr21);
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            updateTweens(param1);
            if(!(_loc2_ && _loc2_))
            {
               this._target.gotoAndStop(this.frame);
            }
         }
      }
   }
}
