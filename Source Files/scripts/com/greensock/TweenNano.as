package com.greensock
{
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   
   public class TweenNano
   {
      
      protected static var _time:Number;
      
      protected static var _frame:uint;
      
      protected static var _masterList:Dictionary;
      
      protected static var _shape:Shape;
      
      protected static var _tnInitted:Boolean;
      
      protected static var _reservedProps:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            _masterList = new Dictionary(false);
            if(_loc2_ || _loc1_)
            {
               addr40:
               _shape = new Shape();
               if(!(_loc1_ && _loc1_))
               {
                  _reservedProps = {
                     "ease":1,
                     "delay":1,
                     "useFrames":1,
                     "overwrite":1,
                     "onComplete":1,
                     "onCompleteParams":1,
                     "runBackwards":1,
                     "immediateRender":1,
                     "onUpdate":1,
                     "onUpdateParams":1
                  };
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public var duration:Number;
      
      public var vars:Object;
      
      public var startTime:Number;
      
      public var target:Object;
      
      public var active:Boolean;
      
      public var gc:Boolean;
      
      public var useFrames:Boolean;
      
      public var ratio:Number = 0;
      
      protected var _ease:Function;
      
      protected var _initted:Boolean;
      
      protected var _propTweens:Array;
      
      public function TweenNano(param1:Object, param2:Number, param3:Object)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super();
            if(!(_loc6_ && Boolean(param1)))
            {
               §§push(_tnInitted);
               if(_loc7_ || Boolean(param1))
               {
                  if(!§§pop())
                  {
                     if(_loc7_ || Boolean(param3))
                     {
                        _time = getTimer() * 0.001;
                        _frame = 0;
                        addr50:
                        _shape.addEventListener(Event.ENTER_FRAME,updateAll,false,0,true);
                        if(_loc7_ || Boolean(this))
                        {
                           _tnInitted = true;
                           addr68:
                           this.vars = param3;
                           this.duration = param2;
                           this.active = Boolean(param2 == 0 && this.vars.delay == 0 && this.vars.immediateRender != false);
                           addr101:
                           this.target = param1;
                           addr144:
                           addr104:
                           §§push(typeof this.vars.ease);
                           if(!_loc6_)
                           {
                              if(§§pop() != "function")
                              {
                                 this._ease = TweenNano.easeOut;
                                 addr129:
                                 this._propTweens = [];
                              }
                              else
                              {
                                 this._ease = this.vars.ease;
                                 if(!(_loc6_ && Boolean(this)))
                                 {
                                    §§goto(addr129);
                                 }
                              }
                              this.useFrames = Boolean(param3.useFrames == true);
                              §§push("delay");
                           }
                           if(§§pop() in this.vars)
                           {
                              addr152:
                              §§push(Number(this.vars.delay));
                              if(_loc7_ || Boolean(param2))
                              {
                              }
                              addr170:
                              §§push(§§pop());
                           }
                           else
                           {
                              §§push(0);
                              if(!_loc6_)
                              {
                                 §§goto(addr170);
                              }
                           }
                           var _loc4_:* = §§pop();
                           if(_loc7_ || Boolean(param2))
                           {
                              §§push(this);
                              if(_loc7_)
                              {
                                 if(this.useFrames)
                                 {
                                    addr185:
                                    §§push(_frame + _loc4_);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_ && Boolean(param3))
                                       {
                                          addr207:
                                          §§pop().startTime = §§pop();
                                          var _loc5_:Array;
                                          §§push((_loc5_ = _masterList[param1]) == null);
                                          if(_loc7_ || Boolean(this))
                                          {
                                             §§push(§§pop());
                                             if(!_loc6_)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§pop();
                                                   §§push(int(this.vars.overwrite) == 1);
                                                }
                                                §§push(§§pop());
                                                if(!(_loc6_ && Boolean(param2)))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§pop();
                                                      §§push(this.vars.overwrite == null);
                                                      if(_loc7_)
                                                      {
                                                      }
                                                      §§goto(addr304);
                                                   }
                                                   if(§§pop())
                                                   {
                                                      _masterList[param1] = [this];
                                                      if(_loc7_)
                                                      {
                                                         addr268:
                                                         §§push(this.vars.immediateRender == true);
                                                         if(!_loc6_)
                                                         {
                                                            addr276:
                                                            if(!§§pop())
                                                            {
                                                               if(_loc6_ && Boolean(param3))
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr304);
                                                         }
                                                         §§pop();
                                                         if(_loc6_)
                                                         {
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                      §§push(this.active);
                                                      if(_loc7_ || Boolean(param3))
                                                      {
                                                         addr304:
                                                         if(§§pop())
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               addr307:
                                                               this.renderTime(0);
                                                            }
                                                         }
                                                         return;
                                                         §§push(§§pop());
                                                      }
                                                      §§goto(addr304);
                                                   }
                                                   else
                                                   {
                                                      _loc5_[_loc5_.length] = this;
                                                      if(_loc7_)
                                                      {
                                                         §§goto(addr268);
                                                      }
                                                   }
                                                   §§goto(addr307);
                                                }
                                             }
                                             §§goto(addr276);
                                          }
                                          §§goto(addr304);
                                          addr206:
                                       }
                                       §§goto(addr207);
                                    }
                                 }
                                 else
                                 {
                                    §§push(_time);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() + _loc4_);
                                       if(!_loc6_)
                                       {
                                          §§goto(addr206);
                                       }
                                    }
                                 }
                                 §§goto(addr207);
                              }
                              §§goto(addr185);
                           }
                           §§goto(addr207);
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr68);
               }
               §§goto(addr144);
            }
            §§goto(addr50);
         }
         §§goto(addr104);
      }
      
      public static function to(param1:Object, param2:Number, param3:Object) : TweenNano
      {
         return new TweenNano(param1,param2,param3);
      }
      
      public static function from(param1:Object, param2:Number, param3:Object) : TweenNano
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            param3.runBackwards = true;
            if(_loc4_ || Boolean(param3))
            {
               if(!("immediateRender" in param3))
               {
                  if(!_loc5_)
                  {
                     param3.immediateRender = true;
                  }
               }
            }
         }
         return new TweenNano(param1,param2,param3);
      }
      
      public static function delayedCall(param1:Number, param2:Function, param3:Array = null, param4:Boolean = false) : TweenNano
      {
         return new TweenNano(param2,0,{
            "delay":param1,
            "onComplete":param2,
            "onCompleteParams":param3,
            "useFrames":param4,
            "overwrite":0
         });
      }
      
      public static function updateAll(param1:Event = null) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:Array = null;
         var _loc4_:Object = null;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:TweenNano = null;
         if(!(_loc10_ && Boolean(param1)))
         {
            _frame += 1;
            if(!(_loc10_ && Boolean(param1)))
            {
               _time = getTimer() * 0.001;
            }
         }
         var _loc2_:Dictionary = _masterList;
         for(_loc4_ in _loc2_)
         {
            _loc3_ = _loc2_[_loc4_];
            if(!_loc10_)
            {
               §§push(int(_loc3_.length));
               if(!_loc10_)
               {
                  _loc5_ = §§pop();
                  if(_loc11_ || Boolean(_loc3_))
                  {
                     loop1:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(_loc11_)
                        {
                           §§push(§§pop() - 1);
                           if(!(_loc10_ && TweenNano))
                           {
                              §§push(§§pop());
                              if(_loc11_ || TweenNano)
                              {
                                 §§push(§§pop());
                                 if(!_loc10_)
                                 {
                                    addr204:
                                    _loc5_ = §§pop();
                                    while(true)
                                    {
                                       §§push(-1);
                                    }
                                    addr205:
                                 }
                                 while(true)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       break loop1;
                                    }
                                    if((_loc7_ = _loc3_[_loc5_]).useFrames)
                                    {
                                       if(!_loc10_)
                                       {
                                          §§push(_frame);
                                          if(_loc11_)
                                          {
                                             addr122:
                                             §§push(§§pop());
                                             if(_loc11_)
                                             {
                                                addr125:
                                                _loc6_ = §§pop();
                                                §§push(_loc7_.active);
                                                §§push(_loc7_.active);
                                                if(!(_loc10_ && Boolean(_loc3_)))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      addr150:
                                                      if(_loc11_ || Boolean(_loc2_))
                                                      {
                                                         §§pop();
                                                         §§push(_loc7_.gc);
                                                      }
                                                      §§push(!§§pop());
                                                      if(!§§pop())
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            §§pop();
                                                            addr155:
                                                            §§push(_loc6_ >= _loc7_.startTime);
                                                         }
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      §§push(_loc7_);
                                                      §§push(_loc6_);
                                                      if(!_loc10_)
                                                      {
                                                         §§push(§§pop() - _loc7_.startTime);
                                                      }
                                                      §§pop().renderTime(§§pop());
                                                      addr167:
                                                   }
                                                   else if(_loc7_.gc)
                                                   {
                                                      _loc3_.splice(_loc5_,1);
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr150);
                                             }
                                             §§goto(addr155);
                                          }
                                          §§goto(addr122);
                                       }
                                       §§goto(addr167);
                                    }
                                    else
                                    {
                                       §§push(_time);
                                       if(_loc11_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc10_ && Boolean(param1)))
                                          {
                                             §§goto(addr122);
                                          }
                                          §§goto(addr125);
                                       }
                                    }
                                    §§goto(addr122);
                                 }
                              }
                              §§goto(addr204);
                           }
                           §§goto(addr205);
                        }
                        §§goto(addr204);
                     }
                     if(_loc10_)
                     {
                        continue;
                     }
                  }
                  if(_loc3_.length == 0)
                  {
                     if(!_loc10_)
                     {
                        addr215:
                        delete _loc2_[_loc4_];
                     }
                  }
                  continue;
               }
               §§goto(addr204);
            }
            §§goto(addr215);
         }
      }
      
      public static function killTweensOf(param1:Object, param2:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         if(!_loc6_)
         {
            §§push(param1 in _masterList);
            if(!(_loc6_ && Boolean(param1)))
            {
               if(§§pop())
               {
                  if(!(_loc6_ && TweenNano))
                  {
                     addr39:
                     addr38:
                     if(param2)
                     {
                        addr40:
                        _loc3_ = _masterList[param1];
                        if(_loc5_)
                        {
                           _loc4_ = int(_loc3_.length);
                        }
                        while(true)
                        {
                           §§push(_loc4_);
                           if(_loc5_ || param2)
                           {
                              §§push(§§pop() - 1);
                              if(!(_loc6_ && TweenNano))
                              {
                                 addr108:
                                 §§push(§§pop());
                                 if(_loc5_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc6_)
                                    {
                                       addr114:
                                       _loc4_ = §§pop();
                                       §§push(-1);
                                    }
                                    if(§§pop() <= §§pop())
                                    {
                                       break;
                                    }
                                    if(!TweenNano(_loc3_[_loc4_]).gc)
                                    {
                                       if(_loc6_ && param2)
                                       {
                                          break;
                                       }
                                       TweenNano(_loc3_[_loc4_]).complete(false);
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                    }
                                    continue;
                                 }
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr108);
                        }
                     }
                     delete _masterList[param1];
                     §§goto(addr121);
                  }
                  §§goto(addr40);
               }
               addr121:
               return;
            }
            §§goto(addr39);
         }
         §§goto(addr38);
      }
      
      private static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(-1);
         §§push(param1);
         if(!(_loc7_ && TweenNano))
         {
            §§push(param4);
            if(!_loc7_)
            {
               §§goto(addr52);
            }
            var _loc5_:* = §§pop();
            if(_loc6_)
            {
               §§push(§§pop());
               if(_loc6_)
               {
                  param1 = §§pop();
                  §§push(_loc5_);
               }
            }
         }
         addr52:
         §§push(§§pop() / §§pop());
         if(_loc6_)
         {
            §§push(§§pop());
         }
         §§push(§§pop() * §§pop());
         if(_loc6_ || TweenNano)
         {
            §§push(param1);
            if(!(_loc7_ && TweenNano))
            {
               §§push(§§pop() - 2);
            }
            §§push(§§pop() * §§pop());
         }
         return §§pop();
      }
      
      public function init() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:* = null;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = this.vars;
         for(_loc4_ in _loc5_)
         {
            §§push(_loc4_);
            if(_loc7_)
            {
               _loc1_ = §§pop();
               if(_loc6_)
               {
                  continue;
               }
               §§push(_loc1_);
            }
            if(!(§§pop() in _reservedProps))
            {
               if(_loc7_)
               {
                  this._propTweens[this._propTweens.length] = [_loc1_,this.target[_loc1_],typeof this.vars[_loc1_] == "number" ? this.vars[_loc1_] - this.target[_loc1_] : Number(this.vars[_loc1_])];
               }
            }
         }
         if(_loc7_)
         {
            if(this.vars.runBackwards)
            {
               if(!(_loc6_ && Boolean(this)))
               {
                  §§push(this._propTweens);
                  if(_loc7_ || Boolean(_loc1_))
                  {
                     §§push(int(§§pop().length));
                     if(_loc7_)
                     {
                        _loc3_ = §§pop();
                        if(_loc7_)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc7_)
                              {
                                 §§push(§§pop() - 1);
                                 if(_loc7_ || Boolean(_loc2_))
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc7_ || Boolean(this))
                                       {
                                          §§push(§§pop());
                                          if(!_loc6_)
                                          {
                                             addr180:
                                             _loc3_ = §§pop();
                                             while(true)
                                             {
                                                §§push(-1);
                                             }
                                             addr181:
                                          }
                                          while(true)
                                          {
                                             if(§§pop() <= §§pop())
                                             {
                                                break loop1;
                                             }
                                             addr126:
                                             §§push(this._propTweens);
                                             while(true)
                                             {
                                                _loc2_ = §§pop()[_loc3_];
                                                if(_loc7_)
                                                {
                                                   _loc2_[1] += _loc2_[2];
                                                   if(_loc6_)
                                                   {
                                                      continue loop1;
                                                   }
                                                }
                                                _loc2_[2] = -_loc2_[2];
                                                continue loop1;
                                             }
                                          }
                                       }
                                       §§goto(addr180);
                                    }
                                    addr162:
                                 }
                                 §§goto(addr181);
                              }
                           }
                           if(!(_loc6_ && Boolean(_loc3_)))
                           {
                              addr190:
                              this._initted = true;
                           }
                        }
                        §§goto(addr193);
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr126);
               }
               addr193:
               return;
            }
         }
         §§goto(addr190);
      }
      
      public function renderTime(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Array = null;
         if(_loc5_ || Boolean(this))
         {
            if(!this._initted)
            {
               if(_loc5_ || _loc3_)
               {
                  this.init();
               }
            }
         }
         var _loc3_:* = int(this._propTweens.length);
         §§push(param1);
         if(!(_loc4_ && Boolean(_loc3_)))
         {
            if(§§pop() >= this.duration)
            {
               if(!_loc4_)
               {
                  §§push(this.duration);
                  if(_loc5_)
                  {
                     §§push(§§pop());
                     if(_loc5_)
                     {
                        addr61:
                        param1 = §§pop();
                        this.ratio = 1;
                     }
                     else
                     {
                        addr67:
                        if(§§pop() <= 0)
                        {
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              this.ratio = 0;
                           }
                        }
                        else
                        {
                           this.ratio = this._ease(param1,0,1,this.duration);
                        }
                     }
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc5_ || Boolean(this))
                        {
                           §§push(§§pop() - 1);
                           if(_loc5_)
                           {
                              §§push(§§pop());
                              if(!(_loc4_ && Boolean(_loc2_)))
                              {
                                 §§push(§§pop());
                                 if(_loc5_ || Boolean(param1))
                                 {
                                    addr154:
                                    _loc3_ = §§pop();
                                    §§push(-1);
                                 }
                                 if(§§pop() <= §§pop())
                                 {
                                    break;
                                 }
                                 _loc2_ = this._propTweens[_loc3_];
                                 if(_loc5_ || Boolean(this))
                                 {
                                    this.target[_loc2_[0]] = _loc2_[1] + this.ratio * _loc2_[2];
                                 }
                                 continue;
                              }
                              §§goto(addr154);
                           }
                        }
                        §§goto(addr154);
                     }
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        if(this.vars.onUpdate)
                        {
                           if(_loc5_)
                           {
                              this.vars.onUpdate.apply(null,this.vars.onUpdateParams);
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 addr192:
                                 if(param1 == this.duration)
                                 {
                                    if(_loc5_)
                                    {
                                       addr198:
                                       this.complete(true);
                                    }
                                 }
                              }
                           }
                           return;
                        }
                        §§goto(addr192);
                     }
                     §§goto(addr198);
                  }
               }
               §§goto(addr61);
            }
            else
            {
               §§push(param1);
            }
            §§goto(addr67);
         }
         §§goto(addr61);
      }
      
      public function complete(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr32);
               }
               else
               {
                  addr59:
                  this.vars.onComplete.apply(null,this.vars.onCompleteParams);
               }
            }
            else
            {
               this.kill();
               if(_loc3_ || _loc2_)
               {
                  if(this.vars.onComplete)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr59);
                     }
                  }
               }
            }
            return;
         }
         addr32:
         this.renderTime(this.duration);
      }
      
      public function kill() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.gc = true;
            if(!(_loc1_ && _loc2_))
            {
               addr26:
               this.active = false;
            }
            return;
         }
         §§goto(addr26);
      }
   }
}
