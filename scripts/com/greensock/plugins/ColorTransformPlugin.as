package com.greensock.plugins
{
   import com.greensock.*;
   import flash.display.*;
   import flash.geom.ColorTransform;
   
   public class ColorTransformPlugin extends TintPlugin
   {
      
      public static const API:Number = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            API = 1;
         }
      }
      
      public function ColorTransformPlugin()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_ || _loc1_)
            {
               this.propName = "colorTransform";
            }
         }
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:ColorTransform = null;
         var _loc6_:* = null;
         var _loc7_:* = NaN;
         var _loc5_:ColorTransform = new ColorTransform();
         if(_loc11_ || Boolean(param3))
         {
            §§push(param1 is DisplayObject);
            if(!(_loc10_ && Boolean(param3)))
            {
               if(!§§pop())
               {
                  §§push(param1 is ColorTransform);
                  if(!_loc10_)
                  {
                     addr71:
                     if(§§pop())
                     {
                        if(_loc11_ || Boolean(param1))
                        {
                           §§goto(addr79);
                        }
                        §§goto(addr87);
                     }
                     else
                     {
                        return false;
                     }
                  }
                  return §§pop();
               }
               if(!_loc10_)
               {
                  _transform = DisplayObject(param1).transform;
                  if(_loc11_ || param2)
                  {
                     addr59:
                     _loc4_ = _transform.colorTransform;
                     if(!_loc10_)
                     {
                        addr87:
                        _loc5_.concat(_loc4_);
                     }
                     var _loc8_:* = 0;
                     var _loc9_:* = param2;
                     for(_loc8_ in _loc9_)
                     {
                        §§push(_loc8_);
                        if(_loc11_ || Boolean(param1))
                        {
                           §§push(_loc6_ = §§pop());
                           if(!(_loc10_ && Boolean(param1)))
                           {
                              addr117:
                              §§push("tint");
                              if(_loc11_)
                              {
                                 §§push(§§pop() == §§pop());
                                 §§push(§§pop() == §§pop());
                                 if(!(_loc10_ && Boolean(param1)))
                                 {
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       §§push(_loc6_);
                                       if(!_loc10_)
                                       {
                                          §§push("color");
                                          if(_loc11_ || Boolean(param1))
                                          {
                                             addr143:
                                             if(§§pop() == §§pop())
                                             {
                                                if(param2[_loc6_] != null)
                                                {
                                                   _loc5_.color = int(param2[_loc6_]);
                                                   if(!_loc11_)
                                                   {
                                                      addr215:
                                                      continue;
                                                   }
                                                }
                                                continue;
                                             }
                                             §§push(_loc6_);
                                             if(_loc11_)
                                             {
                                                addr162:
                                                §§push("tintAmount");
                                                if(!(_loc10_ && Boolean(param3)))
                                                {
                                                   addr170:
                                                   §§push(§§pop() == §§pop());
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc11_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            §§pop();
                                                            §§push(_loc6_);
                                                            if(!_loc10_)
                                                            {
                                                               addr206:
                                                               §§push("exposure");
                                                               if(_loc11_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc11_ || Boolean(param3))
                                                                  {
                                                                     addr192:
                                                                     if(!§§pop())
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                        }
                                                                        addr207:
                                                                        if(!§§pop())
                                                                        {
                                                                           _loc5_[_loc6_] = param2[_loc6_];
                                                                           continue;
                                                                        }
                                                                        if(!(_loc11_ || Boolean(param1)))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr215);
                                                                     }
                                                                     §§goto(addr207);
                                                                  }
                                                                  §§pop();
                                                                  §§push(_loc6_);
                                                               }
                                                               §§goto(addr207);
                                                               §§push(§§pop() == §§pop());
                                                            }
                                                            §§goto(addr206);
                                                            §§push("brightness");
                                                         }
                                                         §§goto(addr207);
                                                      }
                                                   }
                                                   §§goto(addr192);
                                                }
                                             }
                                             §§goto(addr206);
                                             §§goto(addr215);
                                          }
                                          §§goto(addr170);
                                       }
                                       §§goto(addr206);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr117);
                     }
                     if(!isNaN(param2.tintAmount))
                     {
                        §§push(param2.tintAmount / (1 - (_loc5_.redMultiplier + _loc5_.greenMultiplier + _loc5_.blueMultiplier) / 3));
                        if(!_loc10_)
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        _loc5_.redOffset *= _loc7_;
                        if(!_loc10_)
                        {
                           _loc5_.greenOffset *= _loc7_;
                           _loc5_.blueOffset *= _loc7_;
                           if(_loc11_)
                           {
                              _loc5_.redMultiplier = _loc5_.greenMultiplier = _loc5_.blueMultiplier = 1 - param2.tintAmount;
                              addr406:
                              init(_loc4_,_loc5_);
                           }
                           else
                           {
                              addr298:
                              _loc5_.redOffset = _loc5_.greenOffset = _loc5_.blueOffset = 255 * (param2.exposure - 1);
                              if(!(_loc10_ && param2))
                              {
                                 _loc5_.redMultiplier = _loc5_.greenMultiplier = _loc5_.blueMultiplier = 1;
                                 if(!_loc10_)
                                 {
                                    §§goto(addr406);
                                 }
                                 else
                                 {
                                    addr347:
                                    _loc5_.redOffset = _loc5_.greenOffset = _loc5_.blueOffset = Math.max(0,(param2.brightness - 1) * 255);
                                    if(!_loc10_)
                                    {
                                       _loc5_.redMultiplier = _loc5_.greenMultiplier = _loc5_.blueMultiplier = 1 - Math.abs(param2.brightness - 1);
                                       addr371:
                                       if(!(_loc10_ && param2))
                                       {
                                          §§goto(addr406);
                                       }
                                    }
                                 }
                              }
                           }
                           return true;
                        }
                        §§goto(addr371);
                     }
                     else if(!isNaN(param2.exposure))
                     {
                        if(_loc11_)
                        {
                           §§goto(addr298);
                        }
                        §§goto(addr347);
                     }
                     else if(!isNaN(param2.brightness))
                     {
                        §§goto(addr347);
                     }
                     §§goto(addr406);
                  }
                  else
                  {
                     addr79:
                     _loc4_ = param1 as ColorTransform;
                  }
               }
               §§goto(addr59);
               §§goto(addr87);
            }
            §§goto(addr71);
         }
         §§goto(addr59);
      }
   }
}
