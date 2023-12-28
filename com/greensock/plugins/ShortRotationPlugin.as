package com.greensock.plugins
{
   import com.greensock.*;
   
   public class ShortRotationPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            API = 1;
         }
      }
      
      public function ShortRotationPlugin()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               §§goto(addr19);
            }
            §§goto(addr24);
         }
         addr19:
         this.propName = "shortRotation";
         if(_loc1_)
         {
            addr24:
            this.overwriteProps = [];
         }
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = null;
         if(!_loc8_)
         {
            if(typeof param2 == "number")
            {
               if(_loc9_ || Boolean(this))
               {
                  §§push(false);
                  if(_loc9_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr34:
                  §§push(Boolean(param2.useRadians == true));
               }
               var _loc4_:* = §§pop();
               var _loc6_:* = 0;
               var _loc7_:* = param2;
               for(_loc6_ in _loc7_)
               {
                  §§push(_loc6_);
                  if(!_loc8_)
                  {
                     §§push(_loc5_ = §§pop());
                  }
                  if(§§pop() != "useRadians")
                  {
                     if(_loc9_ || param2)
                     {
                        this.initRotation(param1,_loc5_,param1[_loc5_],typeof param2[_loc5_] == "number" ? Number(param2[_loc5_]) : param1[_loc5_] + Number(param2[_loc5_]),_loc4_);
                     }
                  }
               }
               return true;
            }
         }
         §§goto(addr34);
      }
      
      public function initRotation(param1:Object, param2:String, param3:Number, param4:Number, param5:Boolean = false) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && Boolean(param3)))
         {
            if(param5)
            {
               addr22:
               §§push(Math.PI * 2);
               if(!_loc9_)
               {
                  §§push(§§pop());
                  if(!(_loc9_ && Boolean(this)))
                  {
                     addr41:
                     §§push(§§pop());
                  }
               }
            }
            else
            {
               §§push(360);
               if(!_loc9_)
               {
                  §§goto(addr41);
               }
            }
            var _loc6_:* = §§pop();
            §§push(param4);
            if(_loc8_ || Boolean(param3))
            {
               §§push(param3);
               if(_loc8_ || Boolean(param3))
               {
                  §§push(§§pop() - §§pop());
                  if(_loc8_ || Boolean(param1))
                  {
                     §§push(_loc6_);
                     if(!_loc9_)
                     {
                        §§push(§§pop() % §§pop());
                        if(!_loc9_)
                        {
                           addr73:
                           §§push(§§pop());
                        }
                        §§push(§§pop());
                     }
                  }
                  §§goto(addr73);
               }
               var _loc7_:*;
               §§push(_loc7_ = §§pop());
               if(!_loc9_)
               {
                  §§push(_loc6_);
                  if(!_loc9_)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§push(§§pop() % §§pop());
                  if(!_loc9_)
                  {
                     if(§§pop() != §§pop())
                     {
                        if(_loc8_ || Boolean(param1))
                        {
                           §§push(_loc7_);
                           if(!_loc9_)
                           {
                              if(§§pop() < 0)
                              {
                                 if(!(_loc9_ && Boolean(param3)))
                                 {
                                    addr114:
                                    §§push(_loc7_);
                                    §§push(_loc6_);
                                    if(_loc8_ || Boolean(param2))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc8_ || Boolean(param3))
                                       {
                                          addr132:
                                          §§push(§§pop());
                                       }
                                       §§goto(addr132);
                                    }
                                    else
                                    {
                                       addr135:
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc9_ && Boolean(this)))
                                       {
                                          §§push(§§pop());
                                          if(!_loc9_)
                                          {
                                             addr146:
                                             §§push(§§pop());
                                          }
                                          _loc7_ = §§pop();
                                          if(!_loc9_)
                                          {
                                             §§goto(addr157);
                                          }
                                          §§goto(addr173);
                                       }
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr157);
                              }
                              else
                              {
                                 §§goto(addr135);
                                 §§push(_loc7_);
                                 §§push(_loc6_);
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr114);
                     }
                     addr157:
                     addTween(param1,param2,param3,param3 + _loc7_,param2);
                     if(!(_loc9_ && Boolean(this)))
                     {
                        addr173:
                        this.overwriteProps[this.overwriteProps.length] = param2;
                     }
                     return;
                  }
               }
               §§goto(addr135);
            }
            §§goto(addr73);
         }
         §§goto(addr22);
      }
   }
}
