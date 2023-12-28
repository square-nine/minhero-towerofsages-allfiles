package com.greensock.plugins
{
   import com.greensock.*;
   import flash.media.SoundTransform;
   
   public class VolumePlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            API = 1;
         }
      }
      
      protected var _target:Object;
      
      protected var _st:SoundTransform;
      
      public function VolumePlugin()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               this.propName = "volume";
               if(!(_loc2_ && _loc1_))
               {
                  this.overwriteProps = ["volume"];
               }
            }
         }
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(isNaN(param2));
         §§push(isNaN(param2));
         if(!(_loc5_ && param2))
         {
            if(!§§pop())
            {
               if(!(_loc5_ && Boolean(param3)))
               {
                  §§pop();
                  if(!(_loc5_ && Boolean(this)))
                  {
                     addr52:
                     §§push(param1.hasOwnProperty("volume"));
                     if(!param1.hasOwnProperty("volume"))
                     {
                        if(!_loc5_)
                        {
                           §§pop();
                           §§goto(addr61);
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr61);
                  }
                  addr61:
                  if(!param1.hasOwnProperty("soundTransform"))
                  {
                     if(!_loc5_)
                     {
                        addr72:
                        return false;
                     }
                  }
                  else
                  {
                     this._target = param1;
                     this._st = this._target.soundTransform;
                  }
                  addTween(this._st,"volume",this._st.volume,param2,"volume");
                  return true;
               }
            }
         }
         §§goto(addr52);
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            updateTweens(param1);
            if(!_loc2_)
            {
               addr21:
               this._target.soundTransform = this._st;
            }
            return;
         }
         §§goto(addr21);
      }
   }
}
