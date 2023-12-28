package com.greensock.plugins
{
   import com.greensock.*;
   
   public class VisiblePlugin extends TweenPlugin
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
      
      protected var _tween:TweenLite;
      
      protected var _visible:Boolean;
      
      protected var _initVal:Boolean;
      
      public function VisiblePlugin()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(!_loc2_)
            {
               this.propName = "visible";
               if(_loc1_)
               {
                  addr36:
                  this.overwriteProps = ["visible"];
               }
               return;
            }
         }
         §§goto(addr36);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && Boolean(param1)))
         {
            this._target = param1;
            if(_loc4_ || Boolean(this))
            {
               this._tween = param3;
               if(_loc4_ || Boolean(this))
               {
                  addr54:
                  this._initVal = this._target.visible;
                  if(!(_loc5_ && Boolean(this)))
                  {
                     addr66:
                     this._visible = Boolean(param2);
                  }
               }
               return true;
            }
            §§goto(addr54);
         }
         §§goto(addr66);
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(param1 == 1);
            if(_loc2_ || Boolean(param1))
            {
               §§push(§§pop());
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        if(_loc2_)
                        {
                           §§push(this._tween);
                           if(_loc2_ || Boolean(param1))
                           {
                              §§push(§§pop().cachedDuration == this._tween.cachedTime);
                              if(_loc2_)
                              {
                                 addr62:
                                 if(!§§pop())
                                 {
                                    if(_loc2_ || Boolean(this))
                                    {
                                       §§pop();
                                       if(_loc2_)
                                       {
                                          addr79:
                                          if(this._tween.cachedTime == 0)
                                          {
                                             if(!(_loc3_ && Boolean(param1)))
                                             {
                                                addr94:
                                                this._target.visible = this._visible;
                                                if(_loc3_ && Boolean(this))
                                                {
                                                }
                                                §§goto(addr112);
                                             }
                                          }
                                          else
                                          {
                                             this._target.visible = this._initVal;
                                          }
                                       }
                                       addr112:
                                       return;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr79);
               }
               §§goto(addr62);
            }
            §§goto(addr79);
         }
         §§goto(addr94);
      }
   }
}
