package com.greensock.plugins
{
   import com.greensock.*;
   
   public class EndArrayPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            API = 1;
         }
      }
      
      protected var _a:Array;
      
      protected var _info:Array;
      
      public function EndArrayPlugin()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this._info = [];
            if(!_loc1_)
            {
               super();
               if(_loc2_ || _loc2_)
               {
               }
               §§goto(addr51);
            }
            this.propName = "endArray";
            if(_loc2_ || _loc1_)
            {
               this.overwriteProps = ["endArray"];
            }
         }
         addr51:
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1 is Array);
            if(_loc4_ || Boolean(this))
            {
               §§push(!§§pop());
               if(!!§§pop())
               {
                  §§pop();
                  if(_loc4_)
                  {
                     addr49:
                     if(!(param2 is Array))
                     {
                        if(_loc4_)
                        {
                           addr52:
                           §§push(false);
                           if(_loc4_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr69:
                           §§push(true);
                        }
                        return §§pop();
                     }
                     this.init(param1 as Array,param2);
                     §§goto(addr69);
                  }
                  §§goto(addr52);
               }
            }
         }
         §§goto(addr49);
      }
      
      public function init(param1:Array, param2:Array) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this._a = param1;
         }
         var _loc3_:* = int(param2.length);
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || Boolean(this))
            {
               §§push(§§pop());
               if(_loc5_ || Boolean(this))
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
            if(§§pop())
            {
               §§push(param1);
               if(_loc5_)
               {
                  §§push(_loc3_);
                  if(_loc5_ || Boolean(_loc3_))
                  {
                     §§push(§§pop()[§§pop()] == param2[_loc3_]);
                     if(_loc5_)
                     {
                        §§push(!§§pop());
                        if(!(_loc4_ && Boolean(_loc3_)))
                        {
                           if(§§pop())
                           {
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 §§pop();
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    §§push(param1);
                                    if(!_loc4_)
                                    {
                                       addr79:
                                       §§push(§§pop()[_loc3_] == null);
                                       if(_loc5_ || Boolean(this))
                                       {
                                          addr90:
                                          if(§§pop())
                                          {
                                             continue;
                                          }
                                          if(_loc4_ && Boolean(this))
                                          {
                                             continue;
                                          }
                                          addr98:
                                          §§push(this._info);
                                       }
                                       §§goto(addr90);
                                    }
                                    §§pop()[this._info.length] = new ArrayTweenInfo(_loc3_,this._a[_loc3_],param2[_loc3_] - this._a[_loc3_]);
                                    if(!(_loc5_ || Boolean(param2)))
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 §§goto(addr98);
                              }
                           }
                        }
                     }
                     §§goto(addr90);
                  }
               }
               §§goto(addr79);
            }
            break;
         }
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:ArrayTweenInfo = null;
         var _loc4_:* = NaN;
         var _loc2_:* = int(this._info.length);
         if(_loc5_)
         {
            if(this.round)
            {
               addr28:
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                     if(_loc5_)
                     {
                        §§push(§§pop() - 1);
                        if(!_loc6_)
                        {
                           _loc2_ = §§pop();
                           if(!(_loc6_ && Boolean(param1)))
                           {
                              addr174:
                              if(!§§pop())
                              {
                                 if(_loc6_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(this._info);
                                 if(_loc5_)
                                 {
                                    §§push(_loc2_);
                                    if(_loc5_)
                                    {
                                       _loc3_ = §§pop()[§§pop()];
                                       if(_loc6_ && Boolean(this))
                                       {
                                          continue;
                                       }
                                       §§push(_loc3_.start);
                                       if(!_loc6_)
                                       {
                                          §§push(_loc3_.change);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() * param1);
                                             if(!(_loc6_ && Boolean(param1)))
                                             {
                                                addr64:
                                                §§push(§§pop() + §§pop());
                                                if(!_loc6_)
                                                {
                                                   addr67:
                                                   §§push(§§pop());
                                                   if(!_loc6_)
                                                   {
                                                      addr70:
                                                      §§push(_loc4_ = §§pop());
                                                   }
                                                   if(§§pop() > 0)
                                                   {
                                                      if(!(_loc5_ || Boolean(param1)))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(this._a);
                                                      if(_loc5_ || Boolean(this))
                                                      {
                                                         §§push(_loc3_.index);
                                                         if(!(_loc6_ && Boolean(_loc3_)))
                                                         {
                                                            §§push(_loc4_);
                                                            if(!(_loc6_ && Boolean(param1)))
                                                            {
                                                               §§push(0.5);
                                                               if(_loc5_ || Boolean(_loc2_))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc5_ || Boolean(param1))
                                                                  {
                                                                     addr130:
                                                                     §§push(0);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§§pop() >> §§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§pop()[§§pop()] = §§pop();
                                                                           if(_loc5_ || Boolean(_loc2_))
                                                                           {
                                                                           }
                                                                           continue;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr155:
                                                                        §§push(§§pop() >> §§pop());
                                                                     }
                                                                     §§pop()[§§pop()] = §§pop();
                                                                     continue;
                                                                  }
                                                                  addr153:
                                                                  §§push(§§pop() - 0.5);
                                                                  §§push(0);
                                                                  §§goto(addr155);
                                                               }
                                                               §§goto(addr153);
                                                            }
                                                            §§goto(addr130);
                                                         }
                                                         else
                                                         {
                                                            addr149:
                                                            §§push(_loc4_);
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr153);
                                                            }
                                                         }
                                                         §§goto(addr153);
                                                      }
                                                      else
                                                      {
                                                         addr147:
                                                         §§push(_loc3_.index);
                                                      }
                                                      §§goto(addr149);
                                                   }
                                                   else
                                                   {
                                                      §§push(this._a);
                                                   }
                                                   §§goto(addr147);
                                                }
                                             }
                                             §§goto(addr70);
                                          }
                                          §§goto(addr64);
                                       }
                                       §§goto(addr67);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          _loc3_ = §§pop()[§§pop()];
                                          if(!_loc6_)
                                          {
                                             §§push(this._a);
                                             §§push(_loc3_.index);
                                             §§push(_loc3_.start);
                                             if(_loc5_ || Boolean(this))
                                             {
                                                §§push(_loc3_.change);
                                                if(_loc5_ || Boolean(_loc2_))
                                                {
                                                   §§push(§§pop() * param1);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop()[§§pop()] = §§pop();
                                             loop0:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(_loc5_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc5_ || Boolean(param1))
                                                      {
                                                         addr233:
                                                         §§push(§§pop() - 1);
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                         }
                                                         addr233:
                                                      }
                                                      §§goto(addr233);
                                                   }
                                                   addr224:
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      break loop0;
                                                   }
                                                   §§push(this._info);
                                                }
                                             }
                                             addr235:
                                             return;
                                             addr221:
                                          }
                                          §§goto(addr221);
                                       }
                                       addr183:
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr183);
                                 }
                              }
                              §§goto(addr235);
                           }
                           §§goto(addr224);
                        }
                     }
                     §§goto(addr233);
                  }
                  §§goto(addr174);
               }
            }
            §§goto(addr235);
         }
         §§goto(addr28);
      }
   }
}

class ArrayTweenInfo
{
    
   
   public var index:uint;
   
   public var start:Number;
   
   public var change:Number;
   
   public function ArrayTweenInfo(param1:uint, param2:Number, param3:Number)
   {
      super();
      this.index = param1;
      this.start = param2;
      this.change = param3;
   }
}
