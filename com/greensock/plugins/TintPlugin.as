package com.greensock.plugins
{
   import com.greensock.*;
   import com.greensock.core.*;
   import flash.display.*;
   import flash.geom.ColorTransform;
   import flash.geom.Transform;
   
   public class TintPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      protected static var _props:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            API = 1;
            if(!_loc1_)
            {
               addr33:
               _props = ["redMultiplier","greenMultiplier","blueMultiplier","alphaMultiplier","redOffset","greenOffset","blueOffset","alphaOffset"];
            }
            return;
         }
         §§goto(addr33);
      }
      
      protected var _transform:Transform;
      
      public function TintPlugin()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               addr27:
               this.propName = "tint";
               if(_loc2_ || _loc2_)
               {
                  this.overwriteProps = ["tint"];
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            §§push(param1 is DisplayObject);
            if(!(_loc7_ && Boolean(this)))
            {
               if(!§§pop())
               {
                  if(_loc6_)
                  {
                     §§goto(addr29);
                  }
               }
               var _loc4_:ColorTransform = new ColorTransform();
               if(_loc6_)
               {
                  §§push(param2 == null);
                  if(_loc6_)
                  {
                     §§push(!§§pop());
                     if(_loc6_ || Boolean(param3))
                     {
                        if(§§pop())
                        {
                           if(_loc6_ || param2)
                           {
                              addr65:
                              §§pop();
                              if(!_loc7_)
                              {
                                 addr68:
                                 §§push(param3.vars.removeTint == true);
                                 if(!_loc7_)
                                 {
                                    addr76:
                                    if(!§§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          _loc4_.color = uint(param2);
                                          if(_loc7_)
                                          {
                                          }
                                          addr92:
                                          var _loc5_:ColorTransform = this._transform.colorTransform;
                                          if(!(_loc7_ && Boolean(param3)))
                                          {
                                             _loc4_.alphaMultiplier = _loc5_.alphaMultiplier;
                                             if(_loc6_)
                                             {
                                                addr117:
                                                _loc4_.alphaOffset = _loc5_.alphaOffset;
                                                if(!(_loc7_ && Boolean(param3)))
                                                {
                                                   this.init(_loc5_,_loc4_);
                                                }
                                             }
                                             return true;
                                          }
                                          §§goto(addr117);
                                       }
                                       §§goto(addr92);
                                    }
                                    this._transform = DisplayObject(param1).transform;
                                 }
                                 §§goto(addr76);
                              }
                              §§goto(addr92);
                           }
                        }
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr65);
               }
               §§goto(addr68);
            }
            §§goto(addr29);
         }
         addr29:
         return false;
      }
      
      public function init(param1:ColorTransform, param2:ColorTransform) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:String = null;
         var _loc3_:* = int(_props.length);
         var _loc5_:int = int(_tweens.length);
         while(true)
         {
            §§push(_loc3_);
            if(_loc8_ || Boolean(_loc3_))
            {
               §§push(§§pop());
               if(!_loc7_)
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
            if(!§§pop())
            {
               break;
            }
            _loc4_ = String(_props[_loc3_]);
            if(!(_loc7_ && Boolean(this)))
            {
               if(param1[_loc4_] != param2[_loc4_])
               {
                  if(!(_loc8_ || Boolean(this)))
                  {
                     break;
                  }
                  var _loc6_:*;
                  _tweens[_loc6_ = _loc5_++] = new PropTween(param1,_loc4_,param1[_loc4_],param2[_loc4_] - param1[_loc4_],"tint",false);
                  if(_loc7_)
                  {
                     break;
                  }
               }
            }
         }
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:ColorTransform = null;
         var _loc3_:PropTween = null;
         var _loc4_:* = 0;
         if(_loc5_)
         {
            if(this._transform)
            {
               addr26:
               _loc2_ = this._transform.colorTransform;
               if(!(_loc6_ && Boolean(this)))
               {
                  _loc4_ = int(_tweens.length);
               }
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc5_ || Boolean(param1))
                  {
                     §§push(§§pop() - 1);
                     if(_loc5_ || Boolean(this))
                     {
                        §§push(§§pop());
                        if(!(_loc6_ && Boolean(param1)))
                        {
                           §§push(§§pop());
                           if(_loc5_)
                           {
                              _loc4_ = §§pop();
                              addr104:
                              §§push(-1);
                           }
                        }
                        if(§§pop() <= §§pop())
                        {
                           break;
                        }
                        _loc3_ = _tweens[_loc4_];
                        if(_loc5_)
                        {
                           _loc2_[_loc3_.property] = _loc3_.start + _loc3_.change * param1;
                        }
                        continue;
                     }
                  }
                  §§goto(addr104);
               }
               if(!(_loc6_ && Boolean(param1)))
               {
                  this._transform.colorTransform = _loc2_;
               }
            }
            return;
         }
         §§goto(addr26);
      }
   }
}
