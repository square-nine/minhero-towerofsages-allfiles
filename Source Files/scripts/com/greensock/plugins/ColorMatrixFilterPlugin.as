package com.greensock.plugins
{
   import com.greensock.*;
   import flash.filters.ColorMatrixFilter;
   
   public class ColorMatrixFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1;
      
      private static var _propNames:Array;
      
      protected static var _idMatrix:Array;
      
      protected static var _lumR:Number = 0.212671;
      
      protected static var _lumG:Number = 0.71516;
      
      protected static var _lumB:Number = 0.072169;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            API = 1;
            if(_loc1_)
            {
               _propNames = [];
               _idMatrix = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0];
               if(!_loc2_)
               {
                  addr67:
                  _lumR = 0.212671;
               }
               _lumG = 0.71516;
               if(_loc1_)
               {
                  _lumB = 0.072169;
               }
               return;
            }
         }
         §§goto(addr67);
      }
      
      protected var _matrix:Array;
      
      protected var _matrixTween:EndArrayPlugin;
      
      public function ColorMatrixFilterPlugin()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               §§goto(addr19);
            }
            §§goto(addr24);
         }
         addr19:
         this.propName = "colorMatrixFilter";
         if(_loc1_)
         {
            addr24:
            this.overwriteProps = ["colorMatrixFilter"];
         }
      }
      
      public static function colorize(param1:Array, param2:Number, param3:Number = 1) : Array
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!(_loc9_ && ColorMatrixFilterPlugin))
         {
            if(isNaN(param2))
            {
               if(_loc10_ || Boolean(param2))
               {
                  return param1;
               }
            }
            if(isNaN(param3))
            {
               if(!_loc9_)
               {
                  §§push(1);
                  if(!(_loc9_ && Boolean(param3)))
                  {
                     §§push(§§pop());
                     if(_loc10_ || Boolean(param3))
                     {
                        param3 = §§pop();
                        addr59:
                        §§push(param2);
                        if(!(_loc9_ && Boolean(param2)))
                        {
                           §§push(§§pop() >> 16);
                           if(_loc10_ || ColorMatrixFilterPlugin)
                           {
                              §§push(255);
                              if(_loc10_)
                              {
                                 addr80:
                                 §§push(§§pop() & §§pop());
                                 §§push(255);
                              }
                              §§push(§§pop() / §§pop());
                              if(!_loc9_)
                              {
                                 addr84:
                                 §§push(§§pop());
                              }
                           }
                           §§goto(addr80);
                        }
                        var _loc4_:* = §§pop();
                        §§push(param2);
                        if(_loc10_)
                        {
                           §§push(§§pop() >> 8);
                           if(_loc10_ || ColorMatrixFilterPlugin)
                           {
                              §§push(255);
                              if(_loc10_)
                              {
                                 addr102:
                                 §§push(§§pop() & §§pop());
                                 §§push(255);
                              }
                              §§push(§§pop() / §§pop());
                              if(_loc10_ || Boolean(param2))
                              {
                                 addr111:
                                 §§push(§§pop());
                              }
                              var _loc5_:* = §§pop();
                              §§push(param2);
                              if(_loc10_)
                              {
                                 §§push((§§pop() & 255) / 255);
                                 if(!(_loc9_ && Boolean(param3)))
                                 {
                                    §§push(§§pop());
                                 }
                              }
                              var _loc6_:* = §§pop();
                              §§push(1 - param3);
                              if(!(_loc9_ && ColorMatrixFilterPlugin))
                              {
                                 §§push(§§pop());
                              }
                              var _loc7_:*;
                              §§push(_loc7_ = §§pop());
                              if(!_loc9_)
                              {
                                 §§push(param3);
                                 if(!(_loc9_ && Boolean(param3)))
                                 {
                                    §§push(§§pop() * _loc4_);
                                    if(!(_loc9_ && ColorMatrixFilterPlugin))
                                    {
                                       §§push(§§pop() * _lumR);
                                       if(_loc10_ || Boolean(param3))
                                       {
                                          addr171:
                                          §§push(§§pop() + §§pop());
                                          §§push(param3);
                                          if(!_loc9_)
                                          {
                                             addr174:
                                             §§push(§§pop() * _loc4_);
                                             if(_loc10_)
                                             {
                                             }
                                             addr180:
                                             §§push(param3);
                                             if(!_loc9_)
                                             {
                                                §§push(_loc4_);
                                                if(_loc10_ || Boolean(param3))
                                                {
                                                   addr203:
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc10_)
                                                   {
                                                      §§push(_lumB);
                                                   }
                                                   §§push(0);
                                                   §§push(0);
                                                   §§push(param3);
                                                   if(_loc10_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(!(_loc9_ && Boolean(param2)))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc9_ && Boolean(param2)))
                                                         {
                                                            §§push(_lumR);
                                                            if(!(_loc9_ && Boolean(param1)))
                                                            {
                                                               addr233:
                                                               §§push(§§pop() * §§pop());
                                                               §§push(_loc7_);
                                                               if(_loc10_)
                                                               {
                                                                  addr236:
                                                                  §§push(param3);
                                                                  if(_loc10_ || Boolean(param1))
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(!(_loc9_ && Boolean(param2)))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(_lumG);
                                                                           if(!(_loc9_ && Boolean(param2)))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr267:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 §§push(param3);
                                                                                 if(!(_loc9_ && Boolean(param3)))
                                                                                 {
                                                                                    addr275:
                                                                                    §§push(_loc5_);
                                                                                    if(_loc10_ || ColorMatrixFilterPlugin)
                                                                                    {
                                                                                       addr283:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc10_ || ColorMatrixFilterPlugin)
                                                                                       {
                                                                                          addr292:
                                                                                          §§push(§§pop() * _lumB);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr292);
                                                                                 }
                                                                                 §§push(0);
                                                                                 §§push(0);
                                                                                 §§push(param3);
                                                                                 if(!(_loc9_ && Boolean(param3)))
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc10_ || Boolean(param2))
                                                                                       {
                                                                                          §§push(_lumR);
                                                                                          if(_loc10_ || ColorMatrixFilterPlugin)
                                                                                          {
                                                                                             addr323:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             §§push(param3);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§push(_lumG);
                                                                                                      if(!(_loc9_ && ColorMatrixFilterPlugin))
                                                                                                      {
                                                                                                         §§goto(addr341);
                                                                                                      }
                                                                                                      §§goto(addr349);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr341);
                                                                                             }
                                                                                          }
                                                                                          addr341:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          §§push(_loc7_);
                                                                                          if(_loc10_ || Boolean(param3))
                                                                                          {
                                                                                             addr349:
                                                                                             §§push(param3);
                                                                                             if(_loc10_ || ColorMatrixFilterPlugin)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§goto(addr372);
                                                                                                }
                                                                                                §§push(§§pop() * §§pop());
                                                                                             }
                                                                                             §§goto(addr372);
                                                                                          }
                                                                                          addr372:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§push(_lumB);
                                                                                          }
                                                                                          var _loc8_:Array = null;
                                                                                          return applyMatrix(_loc8_,param1);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr323);
                                                                              }
                                                                              §§goto(addr275);
                                                                           }
                                                                           §§goto(addr292);
                                                                        }
                                                                        §§goto(addr275);
                                                                     }
                                                                     §§goto(addr283);
                                                                  }
                                                                  §§goto(addr275);
                                                               }
                                                               §§goto(addr267);
                                                            }
                                                            §§goto(addr236);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr233);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                             §§goto(addr203);
                                          }
                                       }
                                       §§goto(addr180);
                                       §§push(§§pop() * _lumG);
                                    }
                                 }
                                 §§goto(addr174);
                              }
                              §§goto(addr171);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr80);
               }
            }
         }
         §§goto(addr59);
      }
      
      public static function setThreshold(param1:Array, param2:Number) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(isNaN(param2))
            {
               if(_loc4_ || ColorMatrixFilterPlugin)
               {
                  §§goto(addr26);
               }
            }
            §§push(_lumR);
            if(_loc4_)
            {
               §§push(§§pop() * 256);
            }
            §§push(_lumG);
            if(_loc4_)
            {
               §§push(§§pop() * 256);
            }
            §§push(_lumB);
            if(!_loc5_)
            {
               §§push(256);
               if(!(_loc5_ && _loc3_))
               {
                  addr50:
                  §§push(§§pop() * §§pop());
                  §§push(0);
               }
               §§push(-256 * param2);
               §§push(_lumR);
               if(!_loc5_)
               {
                  §§push(§§pop() * 256);
               }
               §§push(_lumG);
               if(_loc4_)
               {
                  §§push(§§pop() * 256);
               }
               §§push(_lumB);
               if(!_loc5_)
               {
                  §§push(256);
                  if(!_loc5_)
                  {
                     addr78:
                     §§push(§§pop() * §§pop());
                     §§push(0);
                  }
                  §§push(-256 * param2);
                  §§push(_lumR);
                  if(_loc4_)
                  {
                     §§push(§§pop() * 256);
                  }
                  §§push(_lumG);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§pop() * 256);
                  }
                  §§push(_lumB);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(256);
                     if(!_loc5_)
                     {
                        addr116:
                        §§push(§§pop() * §§pop());
                        §§push(0);
                     }
                     var _loc3_:Array = null;
                     return applyMatrix(_loc3_,param1);
                  }
                  §§goto(addr116);
               }
               §§goto(addr78);
            }
            §§goto(addr50);
         }
         addr26:
         return param1;
      }
      
      public static function setHue(param1:Array, param2:Number) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(isNaN(param2))
            {
               if(!_loc7_)
               {
                  return param1;
               }
            }
         }
         §§push(param2);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() * (Math.PI / 180));
            if(_loc6_ || _loc3_)
            {
               addr45:
               §§push(§§pop());
               if(_loc6_)
               {
                  addr48:
                  param2 = §§pop();
                  §§push(Math.cos(param2));
               }
               var _loc3_:* = §§pop();
               var _loc4_:Number = Math.sin(param2);
               §§push(_lumR);
               if(!_loc7_)
               {
                  §§push(§§pop() + _loc3_ * (1 - _lumR));
                  if(!(_loc7_ && Boolean(param1)))
                  {
                     §§push(_loc4_);
                     §§push(_lumR);
                     if(!(_loc7_ && Boolean(param1)))
                     {
                        §§push(§§pop() * -§§pop());
                        if(!_loc7_)
                        {
                           addr89:
                           §§push(§§pop() + §§pop());
                           §§push(_lumG);
                           §§push(_loc3_);
                           if(_loc6_)
                           {
                              §§push(-_lumG);
                              if(!_loc7_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc6_ || Boolean(param1))
                                    {
                                       addr108:
                                       §§push(_loc4_);
                                       if(_loc6_)
                                       {
                                          §§push(_lumG);
                                          if(!_loc7_)
                                          {
                                             §§push(-§§pop());
                                             if(_loc6_ || Boolean(param2))
                                             {
                                                addr123:
                                                addr124:
                                                §§push(§§pop() + §§pop() * §§pop());
                                                §§push(_lumB);
                                                §§push(_loc3_);
                                                §§push(_lumB);
                                                if(_loc6_ || ColorMatrixFilterPlugin)
                                                {
                                                   §§push(-§§pop());
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc7_)
                                                      {
                                                         addr149:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc6_)
                                                         {
                                                            addr144:
                                                            §§push(_loc4_);
                                                            §§push(1 - _lumB);
                                                         }
                                                         §§push(0);
                                                         §§push(0);
                                                         §§push(_lumR);
                                                         if(_loc6_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!_loc7_)
                                                            {
                                                               §§push(§§pop() + §§pop() * -_lumR);
                                                               if(!_loc7_)
                                                               {
                                                                  addr163:
                                                                  §§push(_loc4_);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(0.143);
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc6_)
                                                                        {
                                                                           addr185:
                                                                           §§push(§§pop() + §§pop());
                                                                           §§push(_lumG);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              §§push(1);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(§§pop() - _lumG);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop() * §§pop());
                                                                                    if(_loc6_ || ColorMatrixFilterPlugin)
                                                                                    {
                                                                                       addr205:
                                                                                       §§push(_loc4_);
                                                                                       if(!(_loc7_ && Boolean(param2)))
                                                                                       {
                                                                                          §§push(0.14);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             addr218:
                                                                                             §§push(§§pop() + §§pop() * §§pop());
                                                                                             §§push(_lumB);
                                                                                             §§push(_loc3_);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr222:
                                                                                                §§push(_lumB);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                   if(_loc6_ || Boolean(param1))
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         addr247:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         §§push(_loc4_);
                                                                                                         if(!(_loc7_ && ColorMatrixFilterPlugin))
                                                                                                         {
                                                                                                            §§push(-0.283);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         §§push(0);
                                                                                                         §§push(0);
                                                                                                         §§push(_lumR);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(_loc3_ * -_lumR);
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               §§goto(addr276);
                                                                                                            }
                                                                                                            §§push(§§pop() * -(1 - _lumR));
                                                                                                            if(_loc6_ || Boolean(param2))
                                                                                                            {
                                                                                                               addr276:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§push(_loc4_);
                                                                                                               }
                                                                                                               §§push(_lumG);
                                                                                                               §§push(_loc3_);
                                                                                                               §§push(_lumG);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * -§§pop());
                                                                                                                  if(!(_loc7_ && Boolean(param1)))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        addr293:
                                                                                                                        §§push(_loc4_);
                                                                                                                        §§push(_lumG);
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           §§goto(addr299);
                                                                                                                        }
                                                                                                                        §§goto(addr319);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr299);
                                                                                                               }
                                                                                                               addr299:
                                                                                                               §§push(§§pop() + §§pop() * §§pop());
                                                                                                               §§push(_lumB);
                                                                                                               §§push(_loc3_);
                                                                                                               §§push(1 - _lumB);
                                                                                                               if(!(_loc7_ && ColorMatrixFilterPlugin))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc7_ && Boolean(param2)))
                                                                                                                  {
                                                                                                                     addr319:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     §§push(_loc4_);
                                                                                                                  }
                                                                                                                  §§push(_lumB);
                                                                                                               }
                                                                                                               var _loc5_:Array = null;
                                                                                                               return applyMatrix(_loc5_,param1);
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                            §§goto(addr293);
                                                                                                         }
                                                                                                         §§goto(addr276);
                                                                                                      }
                                                                                                      §§goto(addr247);
                                                                                                   }
                                                                                                }
                                                                                                §§push(§§pop() * §§pop());
                                                                                             }
                                                                                             §§goto(addr247);
                                                                                          }
                                                                                          §§goto(addr222);
                                                                                       }
                                                                                       §§goto(addr247);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr218);
                                                                              }
                                                                              §§goto(addr247);
                                                                           }
                                                                           §§goto(addr205);
                                                                        }
                                                                     }
                                                                     §§goto(addr218);
                                                                  }
                                                                  §§goto(addr205);
                                                               }
                                                               §§goto(addr185);
                                                            }
                                                            §§goto(addr205);
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                      §§goto(addr144);
                                                   }
                                                }
                                                §§goto(addr149);
                                                §§push(§§pop() + §§pop() * §§pop());
                                             }
                                             §§goto(addr144);
                                          }
                                          §§goto(addr149);
                                       }
                                       §§goto(addr123);
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr123);
                              }
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr123);
                  }
               }
               §§goto(addr89);
            }
            §§goto(addr48);
         }
         §§goto(addr45);
      }
      
      public static function setBrightness(param1:Array, param2:Number) : Array
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(isNaN(param2))
            {
               if(_loc3_ || _loc3_)
               {
                  addr31:
                  §§push(param1);
                  if(!_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr42:
                  §§push(param2);
                  if(!_loc4_)
                  {
                     §§push(100);
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr73);
                     }
                     §§push(§§pop() - §§pop());
                     if(_loc3_ || Boolean(param1))
                     {
                        §§push(§§pop());
                     }
                  }
                  §§goto(addr73);
               }
               addr73:
               §§push(§§pop() * §§pop());
               if(_loc3_)
               {
                  §§push(100);
               }
               param2 = §§pop();
               return applyMatrix([1,0,0,0,param2,0,1,0,0,param2,0,0,1,0,param2,0,0,0,1,0,0,0,0,0,1],param1);
            }
            §§goto(addr42);
         }
         §§goto(addr31);
      }
      
      public static function setSaturation(param1:Array, param2:Number) : Array
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && Boolean(param1)))
         {
            if(isNaN(param2))
            {
               if(!_loc9_)
               {
                  return param1;
               }
            }
         }
         §§push(1 - param2);
         if(_loc8_ || ColorMatrixFilterPlugin)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc9_ && Boolean(param1)))
         {
            §§push(§§pop() * _lumR);
            if(!(_loc9_ && Boolean(param1)))
            {
               addr57:
               §§push(§§pop());
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_);
            if(!_loc9_)
            {
               §§push(§§pop() * _lumG);
               if(!_loc9_)
               {
                  §§push(§§pop());
               }
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_);
            if(!(_loc9_ && _loc3_))
            {
               §§push(§§pop() * _lumB);
               if(_loc8_)
               {
                  addr87:
                  §§push(§§pop());
               }
               var _loc6_:* = §§pop();
               §§push(_loc4_);
               if(_loc8_)
               {
                  §§push(param2);
                  if(_loc8_ || _loc3_)
                  {
                     addr101:
                     §§push(§§pop() + §§pop());
                     §§push(_loc5_);
                  }
                  §§push(_loc6_);
                  §§push(0);
                  §§push(0);
                  §§push(_loc4_);
                  §§push(_loc5_);
                  if(!(_loc9_ && ColorMatrixFilterPlugin))
                  {
                     §§push(param2);
                     if(_loc8_)
                     {
                        addr118:
                        §§push(§§pop() + §§pop());
                        §§push(_loc6_);
                     }
                     §§push(0);
                     §§push(0);
                     §§push(_loc4_);
                     §§push(_loc5_);
                     §§push(_loc6_);
                     if(_loc8_)
                     {
                        §§push(§§pop() + param2);
                     }
                     var _loc7_:Array = null;
                     return applyMatrix(_loc7_,param1);
                  }
                  §§goto(addr118);
               }
               §§goto(addr101);
            }
            §§goto(addr87);
         }
         §§goto(addr57);
      }
      
      public static function setContrast(param1:Array, param2:Number) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(isNaN(param2))
            {
               if(_loc4_)
               {
                  §§goto(addr21);
               }
               else
               {
                  addr53:
                  §§push(param2);
               }
            }
            else
            {
               §§push(param2);
               if(!(_loc5_ && ColorMatrixFilterPlugin))
               {
                  §§push(§§pop() + 0.01);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§pop());
                     if(_loc5_)
                     {
                     }
                     var _loc3_:Array = null;
                     return applyMatrix(_loc3_,param1);
                     addr54:
                  }
                  param2 = §§pop();
                  §§goto(addr53);
               }
            }
            §§goto(addr54);
         }
         addr21:
         return param1;
      }
      
      public static function applyMatrix(param1:Array, param2:Array) : Array
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         if(_loc9_ || Boolean(param2))
         {
            §§push(param1);
            if(_loc9_)
            {
               §§push(§§pop() is Array);
               if(_loc9_ || ColorMatrixFilterPlugin)
               {
                  §§push(!§§pop());
                  if(!(_loc8_ && ColorMatrixFilterPlugin))
                  {
                     if(!§§pop())
                     {
                        if(_loc9_)
                        {
                        }
                        addr75:
                        if(§§pop())
                        {
                           if(!(_loc8_ && _loc3_))
                           {
                              §§goto(addr84);
                           }
                        }
                        addr85:
                        var _loc3_:Array = [];
                        var _loc4_:* = 0;
                        var _loc5_:* = 0;
                        if(!_loc8_)
                        {
                           _loc6_ = 0;
                        }
                        loop0:
                        while(true)
                        {
                           §§push(_loc6_);
                           loop1:
                           while(true)
                           {
                              §§push(4);
                              loop2:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    _loc7_ = 0;
                                    loop3:
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       if(!(_loc8_ && Boolean(param2)))
                                       {
                                          while(true)
                                          {
                                             §§push(5);
                                             if(!_loc8_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      addr236:
                                                      §§push(_loc4_);
                                                      §§push(5);
                                                      if(!(_loc8_ && ColorMatrixFilterPlugin))
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   §§goto(addr295);
                                                }
                                                §§push(_loc7_);
                                                if(_loc8_ && Boolean(_loc3_))
                                                {
                                                   continue loop3;
                                                }
                                                §§push(4);
                                                if(_loc9_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc9_ || ColorMatrixFilterPlugin)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr236);
                                                   }
                                                   else
                                                   {
                                                      §§push(0);
                                                      if(!_loc8_)
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(!_loc8_)
                                                         {
                                                            addr151:
                                                            _loc3_[_loc4_ + _loc7_] = param1[_loc4_] * param2[_loc7_] + param1[_loc4_ + 1] * param2[_loc7_ + 5] + param1[_loc4_ + 2] * param2[_loc7_ + 10] + param1[_loc4_ + 3] * param2[_loc7_ + 15] + _loc5_;
                                                            if(!_loc8_)
                                                            {
                                                               §§push(_loc7_);
                                                               §§push(1);
                                                               if(_loc8_ && Boolean(_loc3_))
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc8_ && ColorMatrixFilterPlugin)
                                                               {
                                                                  addr253:
                                                                  §§push(§§pop());
                                                                  if(!(_loc8_ && Boolean(param1)))
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     if(!(_loc8_ && Boolean(param2)))
                                                                     {
                                                                        §§push(_loc6_);
                                                                        break loop3;
                                                                     }
                                                                     break loop2;
                                                                  }
                                                                  break loop3;
                                                               }
                                                               §§push(§§pop());
                                                               continue loop3;
                                                            }
                                                            §§goto(addr236);
                                                         }
                                                         §§goto(addr295);
                                                      }
                                                   }
                                                   §§goto(addr236);
                                                }
                                                §§goto(addr281);
                                             }
                                             break;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc8_ && Boolean(param2)))
                                          {
                                             §§goto(addr253);
                                          }
                                          §§goto(addr281);
                                       }
                                       break;
                                    }
                                    §§push(1);
                                    if(_loc8_)
                                    {
                                       continue;
                                    }
                                    addr281:
                                    §§push(int(§§pop() + §§pop()));
                                    if(_loc8_ && Boolean(param2))
                                    {
                                       continue loop1;
                                    }
                                    _loc6_ = §§pop();
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    §§goto(addr295);
                                 }
                                 addr295:
                                 return _loc3_;
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr75);
                  }
                  §§pop();
                  if(_loc9_ || Boolean(param1))
                  {
                     addr57:
                     §§push(param2);
                     if(!(_loc8_ && ColorMatrixFilterPlugin))
                     {
                        §§push(§§pop() is Array);
                        if(_loc9_ || Boolean(_loc3_))
                        {
                           §§goto(addr75);
                           §§push(!§§pop());
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr85);
               }
               §§goto(addr75);
            }
            addr84:
            return param2;
         }
         §§goto(addr57);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && Boolean(this)))
         {
            _target = param1;
            if(!_loc6_)
            {
               _type = ColorMatrixFilter;
            }
         }
         var _loc4_:Object = param2;
         if(!(_loc6_ && Boolean(this)))
         {
            initFilter({
               "remove":param2.remove,
               "index":param2.index,
               "addFilter":param2.addFilter
            },new ColorMatrixFilter(_idMatrix.slice()),_propNames);
            if(_loc7_)
            {
               addr58:
               this._matrix = ColorMatrixFilter(_filter).matrix;
            }
            var _loc5_:Array = [];
            if(_loc7_ || Boolean(this))
            {
               §§push(_loc4_.matrix == null);
               if(!(_loc6_ && param2))
               {
                  §§push(!§§pop());
                  if(_loc7_ || param2)
                  {
                     if(§§pop())
                     {
                        if(_loc7_ || Boolean(this))
                        {
                           addr109:
                           §§pop();
                           addr119:
                           if(_loc7_)
                           {
                              §§push(_loc4_.matrix is Array);
                           }
                           _loc5_ = _loc4_.matrix;
                           if(!_loc6_)
                           {
                              §§goto(addr200);
                           }
                           §§goto(addr206);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr119);
                     }
                     else
                     {
                        addr130:
                        §§push(this._matrix);
                        if(!_loc6_)
                        {
                           _loc5_ = §§pop().slice();
                        }
                        else
                        {
                           addr139:
                           _loc5_ = §§pop().slice();
                        }
                        _loc5_ = setBrightness(_loc5_,_loc4_.brightness);
                        _loc5_ = setContrast(_loc5_,_loc4_.contrast);
                        _loc5_ = setHue(_loc5_,_loc4_.hue);
                        _loc5_ = setSaturation(_loc5_,_loc4_.saturation);
                        _loc5_ = setThreshold(_loc5_,_loc4_.threshold);
                        if(_loc7_)
                        {
                           if(isNaN(_loc4_.colorize))
                           {
                           }
                           §§goto(addr200);
                        }
                        _loc5_ = colorize(_loc5_,_loc4_.colorize,_loc4_.amount);
                     }
                     addr200:
                     this._matrixTween = new EndArrayPlugin();
                     if(!_loc6_)
                     {
                        addr206:
                        this._matrixTween.init(this._matrix,_loc5_);
                     }
                     return true;
                  }
                  if(_loc4_.relative == true)
                  {
                     §§goto(addr130);
                  }
                  else
                  {
                     §§push(_idMatrix);
                  }
                  §§goto(addr139);
                  §§goto(addr130);
               }
            }
            §§goto(addr109);
         }
         §§goto(addr58);
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(this))
         {
            this._matrixTween.changeFactor = param1;
            if(_loc2_ || _loc2_)
            {
               §§goto(addr38);
            }
            §§goto(addr46);
         }
         addr38:
         ColorMatrixFilter(_filter).matrix = this._matrix;
         if(_loc2_)
         {
            addr46:
            super.changeFactor = param1;
         }
      }
   }
}
