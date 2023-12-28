package com.greensock.plugins
{
   import com.greensock.*;
   
   public class BezierPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      protected static const _RAD2DEG:Number = 57.29577951308232;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            API = 1;
            if(_loc1_ || _loc1_)
            {
               _RAD2DEG = 180 / Math.PI;
            }
         }
      }
      
      protected var _target:Object;
      
      protected var _orientData:Array;
      
      protected var _orient:Boolean;
      
      protected var _future:Object;
      
      protected var _beziers:Object;
      
      public function BezierPlugin()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this._future = {};
            if(!_loc2_)
            {
               super();
               if(!_loc2_)
               {
                  addr36:
                  this.propName = "bezier";
                  if(!(_loc2_ && _loc2_))
                  {
                     this.overwriteProps = [];
                  }
               }
               return;
            }
         }
         §§goto(addr36);
      }
      
      public static function parseBeziers(param1:Object, param2:Boolean = false) : Object
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:Array = null;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:Object = {};
         if(!_loc11_)
         {
            if(param2)
            {
               addr32:
               var _loc8_:int = 0;
               var _loc9_:* = param1;
               loop5:
               while(true)
               {
                  §§push(§§hasnext(_loc9_,_loc8_));
                  if(!(_loc11_ && Boolean(param1)))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc11_ && Boolean(_loc3_)))
                        {
                           if(_loc12_)
                           {
                              if(_loc11_ && Boolean(_loc3_))
                              {
                              }
                           }
                           else
                           {
                              addr215:
                              _loc9_ = param1;
                              if(!_loc11_)
                              {
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc9_,_loc8_));
                                    break loop5;
                                 }
                                 addr414:
                                 return _loc7_;
                                 addr410:
                                 addr412:
                                 addr413:
                              }
                              while(true)
                              {
                                 _loc4_ = param1[_loc6_];
                                 _loc7_[_loc6_] = _loc5_ = [];
                                 if(_loc4_.length > 3)
                                 {
                                    _loc5_[_loc5_.length] = [_loc4_[0],_loc4_[1],(_loc4_[1] + _loc4_[2]) / 2];
                                    if(_loc12_)
                                    {
                                       §§push(2);
                                       if(_loc12_ || BezierPlugin)
                                       {
                                          _loc3_ = §§pop();
                                          if(!_loc11_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                addr322:
                                                while(§§pop() < _loc4_.length - 2)
                                                {
                                                   _loc5_[_loc5_.length] = [_loc5_[_loc3_ - 2][2],_loc4_[_loc3_],(_loc4_[_loc3_] + _loc4_[_loc3_ + 1]) / 2];
                                                   §§push(_loc3_);
                                                   if(_loc11_ && Boolean(_loc3_))
                                                   {
                                                      continue;
                                                   }
                                                }
                                                _loc5_[_loc5_.length] = [_loc5_[_loc5_.length - 1][2],_loc4_[_loc4_.length - 2],_loc4_[_loc4_.length - 1]];
                                                if(!_loc12_)
                                                {
                                                   addr378:
                                                }
                                                §§goto(addr410);
                                                _loc3_ = §§pop();
                                             }
                                          }
                                          else
                                          {
                                             _loc5_[_loc5_.length] = [_loc4_[0],(_loc4_[0] + _loc4_[1]) / 2,_loc4_[1]];
                                             addr383:
                                             §§goto(addr410);
                                          }
                                          §§goto(addr410);
                                       }
                                       while(true)
                                       {
                                          §§push(int(§§pop() + 1));
                                          if(!_loc11_)
                                          {
                                             §§goto(addr320);
                                          }
                                          §§goto(addr322);
                                       }
                                    }
                                    §§goto(addr383);
                                 }
                                 else if(_loc4_.length == 3)
                                 {
                                    if(!(_loc11_ && BezierPlugin))
                                    {
                                       _loc5_[_loc5_.length] = [_loc4_[0],_loc4_[1],_loc4_[2]];
                                       §§goto(addr378);
                                    }
                                 }
                                 else if(_loc4_.length == 2)
                                 {
                                    §§goto(addr383);
                                 }
                                 §§goto(addr410);
                              }
                              addr227:
                           }
                           §§goto(addr414);
                        }
                        §§goto(addr412);
                     }
                     else
                     {
                        _loc6_ = §§nextname(_loc8_,_loc9_);
                        _loc4_ = param1[_loc6_];
                        _loc7_[_loc6_] = _loc5_ = [];
                        if(_loc4_.length <= 2)
                        {
                           _loc5_[_loc5_.length] = [_loc4_[0],(_loc4_[0] + _loc4_[1]) / 2,_loc4_[1]];
                           continue;
                        }
                        if(_loc12_)
                        {
                           _loc5_[_loc5_.length] = [_loc4_[0],_loc4_[1] - (_loc4_[2] - _loc4_[0]) / 4,_loc4_[1]];
                           §§push(1);
                           if(!_loc11_)
                           {
                              _loc3_ = §§pop();
                              while(true)
                              {
                                 §§push(_loc3_);
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop() >= _loc4_.length - 1)
                                    {
                                       continue loop5;
                                    }
                                    _loc5_[_loc5_.length] = [_loc4_[_loc3_],_loc4_[_loc3_] + (_loc4_[_loc3_] - _loc5_[_loc3_ - 1][1]),_loc4_[_loc3_ + 1]];
                                    if(_loc11_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(_loc12_ || Boolean(_loc3_))
                                       {
                                          §§push(int(§§pop() + 1));
                                          if(_loc11_)
                                          {
                                             continue loop7;
                                          }
                                       }
                                    }
                                 }
                              }
                              addr145:
                           }
                           while(true)
                           {
                              _loc3_ = §§pop();
                              if(!(_loc12_ || param2))
                              {
                                 break;
                              }
                              §§goto(addr145);
                           }
                           continue;
                        }
                        §§goto(addr124);
                     }
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc6_ = §§nextname(_loc8_,_loc9_);
                     §§goto(addr227);
                  }
                  §§goto(addr414);
               }
            }
            else
            {
               _loc8_ = 0;
               if(!(_loc11_ && Boolean(_loc3_)))
               {
                  §§goto(addr215);
               }
            }
            §§goto(addr413);
         }
         §§goto(addr32);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param2 is Array);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     §§push(false);
                     if(_loc5_ || Boolean(this))
                     {
                        §§goto(addr39);
                     }
                  }
                  else
                  {
                     addr42:
                     this.init(param3,param2 as Array,false);
                     §§push(true);
                  }
                  return §§pop();
               }
               §§goto(addr42);
            }
            addr39:
            return §§pop();
         }
         §§goto(addr42);
      }
      
      protected function init(param1:TweenLite, param2:Array, param3:Boolean) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         if(!(_loc12_ && Boolean(this)))
         {
            this._target = param1.target;
            if(_loc11_ || Boolean(param1))
            {
               var _loc4_:Object;
               if((_loc4_ = param1.vars.isTV == true ? param1.vars.exposedVars : param1.vars).orientToBezier == true)
               {
                  if(!_loc12_)
                  {
                     §§push(this);
                     §§push(["x","y","rotation",0,0.01]);
                     if(!(_loc12_ && Boolean(param1)))
                     {
                        §§push(null);
                     }
                     §§pop()._orientData = §§pop();
                     if(_loc11_ || Boolean(param2))
                     {
                        this._orient = true;
                        if(_loc12_ && Boolean(this))
                        {
                        }
                     }
                     else
                     {
                        addr107:
                        this._orient = true;
                     }
                  }
                  else
                  {
                     addr101:
                     this._orientData = _loc4_.orientToBezier;
                     if(!_loc12_)
                     {
                        §§goto(addr107);
                     }
                  }
               }
               else if(_loc4_.orientToBezier is Array)
               {
                  if(!_loc12_)
                  {
                     §§goto(addr101);
                  }
                  §§goto(addr107);
               }
               var _loc5_:Object = {};
               if(_loc11_)
               {
                  _loc6_ = 0;
               }
               loop0:
               while(true)
               {
                  §§push(_loc6_);
                  if(!_loc12_)
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop() < param2.length)
                        {
                           §§push(0);
                           if(_loc11_ || Boolean(param2))
                           {
                              var _loc9_:* = §§pop();
                              if(!(_loc12_ && Boolean(this)))
                              {
                                 var _loc10_:* = param2[_loc6_];
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc10_,_loc9_));
                                    if(!_loc12_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc12_ && Boolean(this))
                                          {
                                             break;
                                          }
                                          if(!_loc11_)
                                          {
                                             break loop1;
                                          }
                                          if(!_loc12_)
                                          {
                                             §§push(_loc6_);
                                             if(_loc11_)
                                             {
                                                §§push(int(§§pop() + 1));
                                                if(!(_loc11_ || Boolean(param2)))
                                                {
                                                   continue loop1;
                                                }
                                             }
                                             _loc6_ = §§pop();
                                             if(!_loc11_)
                                             {
                                                §§goto(addr372);
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr372);
                                       }
                                       else
                                       {
                                          _loc7_ = §§nextname(_loc9_,_loc10_);
                                          if(_loc11_)
                                          {
                                             if(_loc5_[_loc7_] == undefined)
                                             {
                                                _loc5_[_loc7_] = [param1.target[_loc7_]];
                                                if(_loc11_)
                                                {
                                                   addr164:
                                                   if(typeof param2[_loc6_][_loc7_] != "number")
                                                   {
                                                      _loc5_[_loc7_].push(param1.target[_loc7_] + Number(param2[_loc6_][_loc7_]));
                                                      continue;
                                                   }
                                                   if(!_loc11_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                _loc5_[_loc7_].push(param2[_loc6_][_loc7_]);
                                                continue;
                                             }
                                          }
                                          §§goto(addr164);
                                       }
                                    }
                                    else
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             break loop2;
                                          }
                                          _loc7_ = §§nextname(_loc9_,_loc10_);
                                          if(!_loc12_)
                                          {
                                             this.overwriteProps[this.overwriteProps.length] = _loc7_;
                                             if(!(_loc12_ && Boolean(this)))
                                             {
                                                if(_loc4_[_loc7_] == undefined)
                                                {
                                                   continue;
                                                }
                                                if(_loc11_)
                                                {
                                                   if(typeof _loc4_[_loc7_] == "number")
                                                   {
                                                      addr308:
                                                      while(true)
                                                      {
                                                         _loc5_[_loc7_].push(_loc4_[_loc7_]);
                                                         addr315:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr308:
                                                   }
                                                   else
                                                   {
                                                      _loc5_[_loc7_].push(param1.target[_loc7_] + Number(_loc4_[_loc7_]));
                                                   }
                                                   while(true)
                                                   {
                                                      (_loc8_ = {})[_loc7_] = true;
                                                      if(_loc11_ || param3)
                                                      {
                                                         param1.killVars(_loc8_,false);
                                                         if(_loc12_ && Boolean(param1))
                                                         {
                                                            continue loop3;
                                                         }
                                                      }
                                                      delete _loc4_[_loc7_];
                                                      continue loop3;
                                                   }
                                                }
                                                §§goto(addr315);
                                             }
                                             §§goto(addr308);
                                          }
                                          §§goto(addr315);
                                       }
                                    }
                                 }
                                 break;
                              }
                              break;
                           }
                           continue;
                        }
                        if(_loc11_ || Boolean(param2))
                        {
                           break loop0;
                        }
                        §§goto(addr372);
                     }
                     §§goto(addr369);
                  }
                  break;
               }
               _loc9_ = §§pop();
               if(_loc11_ || Boolean(this))
               {
                  _loc10_ = _loc5_;
                  if(!(_loc12_ && Boolean(param2)))
                  {
                     §§goto(addr366);
                  }
                  §§goto(addr308);
               }
               addr369:
               if(_loc11_)
               {
                  §§goto(addr372);
               }
               addr372:
               this._beziers = parseBeziers(_loc5_,param3);
               return;
            }
         }
         §§goto(addr44);
      }
      
      override public function killProps(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:* = 0;
         var _loc4_:* = this._beziers;
         for(_loc3_ in _loc4_)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               _loc2_ = §§pop();
               if(_loc5_ && Boolean(this))
               {
                  continue;
               }
               §§push(_loc2_);
            }
            §§push(§§pop() in param1);
            if(_loc6_ || Boolean(this))
            {
               if(!§§pop())
               {
                  continue;
               }
               if(!_loc6_)
               {
                  continue;
               }
               §§push(delete this._beziers[_loc2_]);
            }
            §§pop();
         }
         if(_loc6_ || Boolean(param1))
         {
            super.killProps(param1);
         }
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:Object = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Array = null;
         var _loc12_:* = NaN;
         var _loc13_:Object = null;
         var _loc14_:Boolean = false;
         if(!(_loc17_ && Boolean(param1)))
         {
            _changeFactor = param1;
            if(_loc18_)
            {
               if(param1 == 1)
               {
                  addr60:
                  var _loc15_:* = 0;
                  var _loc16_:* = this._beziers;
                  loop7:
                  while(true)
                  {
                     §§push(§§hasnext(_loc16_,_loc15_));
                     if(_loc18_ || Boolean(_loc3_))
                     {
                        if(§§pop())
                        {
                           _loc3_ = §§nextname(_loc15_,_loc16_);
                           if(_loc18_)
                           {
                              _loc2_ = this._beziers[_loc3_].length - 1;
                              if(!(_loc17_ && Boolean(this)))
                              {
                                 this._target[_loc3_] = this._beziers[_loc3_][_loc2_][2];
                              }
                           }
                           continue;
                        }
                        if(!_loc17_)
                        {
                           if(!(_loc17_ && Boolean(param1)))
                           {
                              if(_loc18_ || Boolean(_loc2_))
                              {
                              }
                              §§goto(addr378);
                           }
                           else
                           {
                              addr136:
                              _loc16_ = this._beziers;
                              addr245:
                              if(_loc18_)
                              {
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc16_,_loc15_));
                                    break loop7;
                                 }
                                 addr372:
                                 if(_loc18_)
                                 {
                                    addr378:
                                    if(this._orient)
                                    {
                                       if(_loc18_ || Boolean(param1))
                                       {
                                          addr392:
                                          _loc2_ = int(this._orientData.length);
                                          addr393:
                                          _loc8_ = {};
                                          if(!_loc17_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(!_loc17_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc18_ || Boolean(_loc3_))
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   _loc2_ = §§pop();
                                                }
                                                if(!§§pop())
                                                {
                                                   break;
                                                }
                                                _loc11_ = this._orientData[_loc2_];
                                                if(_loc18_)
                                                {
                                                   _loc8_[_loc11_[0]] = this._target[_loc11_[0]];
                                                   if(_loc17_ && Boolean(param1))
                                                   {
                                                      continue;
                                                   }
                                                }
                                                _loc8_[_loc11_[1]] = this._target[_loc11_[1]];
                                             }
                                          }
                                          _loc13_ = this._target;
                                          _loc14_ = this.round;
                                          this._target = this._future;
                                          if(!_loc17_)
                                          {
                                             this.round = false;
                                             this._orient = false;
                                             §§push(this._orientData);
                                             if(_loc18_)
                                             {
                                                §§push(int(§§pop().length));
                                                if(!_loc17_)
                                                {
                                                   _loc2_ = §§pop();
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!(_loc17_ && Boolean(_loc2_)))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc17_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc2_ = §§pop();
                                                         }
                                                         addr593:
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            break loop3;
                                                         }
                                                         addr484:
                                                         §§push(this._orientData);
                                                         while(true)
                                                         {
                                                            _loc11_ = §§pop()[_loc2_];
                                                            §§push(this);
                                                            §§push(param1);
                                                            if(!_loc17_)
                                                            {
                                                               §§pop().changeFactor = §§pop() + (_loc11_[4] || 0.01);
                                                               §§push(Number(_loc11_[3]));
                                                               if(!Number(_loc11_[3]))
                                                               {
                                                                  §§pop();
                                                                  if(!(_loc17_ && Boolean(this)))
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc18_ || Boolean(param1))
                                                                     {
                                                                        addr526:
                                                                        §§push(§§pop());
                                                                     }
                                                                     _loc12_ = §§pop();
                                                                     §§push(this._future[_loc11_[0]] - _loc8_[_loc11_[0]]);
                                                                     if(!_loc17_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc17_ && Boolean(_loc2_)))
                                                                        {
                                                                           _loc9_ = §§pop();
                                                                           §§push(this._future[_loc11_[1]] - _loc8_[_loc11_[1]]);
                                                                        }
                                                                     }
                                                                     _loc10_ = §§pop();
                                                                     _loc13_[_loc11_[2]] = Math.atan2(_loc10_,_loc9_) * _RAD2DEG + _loc12_;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               §§goto(addr526);
                                                            }
                                                            §§goto(addr499);
                                                         }
                                                      }
                                                   }
                                                   if(!_loc17_)
                                                   {
                                                      this._target = _loc13_;
                                                      if(_loc18_)
                                                      {
                                                         this.round = _loc14_;
                                                      }
                                                      §§goto(addr612);
                                                   }
                                                   this._orient = true;
                                                   §§goto(addr612);
                                                }
                                                §§goto(addr593);
                                             }
                                             §§goto(addr484);
                                          }
                                       }
                                       §§goto(addr393);
                                    }
                                    addr612:
                                    return;
                                 }
                                 §§goto(addr393);
                                 addr372:
                                 addr374:
                              }
                              while(true)
                              {
                                 _loc4_ = this._beziers[_loc3_][_loc2_];
                                 if(!(_loc17_ && Boolean(this)))
                                 {
                                    if(this.round)
                                    {
                                       if(_loc18_)
                                       {
                                          §§push(_loc4_[0] + _loc5_ * (2 * (1 - _loc5_) * (_loc4_[1] - _loc4_[0]) + _loc5_ * (_loc4_[2] - _loc4_[0])));
                                          if(_loc18_)
                                          {
                                             §§push(_loc7_ = §§pop());
                                          }
                                          if(§§pop() > 0)
                                          {
                                             if(!_loc17_)
                                             {
                                                this._target[_loc3_] = _loc7_ + 0.5 >> 0;
                                                if(_loc18_ || Boolean(this))
                                                {
                                                   addr326:
                                                }
                                             }
                                          }
                                          else
                                          {
                                             this._target[_loc3_] = _loc7_ - 0.5 >> 0;
                                             if(_loc17_)
                                             {
                                             }
                                             §§goto(addr372);
                                          }
                                          §§goto(addr372);
                                       }
                                    }
                                    else
                                    {
                                       this._target[_loc3_] = _loc4_[0] + _loc5_ * (2 * (1 - _loc5_) * (_loc4_[1] - _loc4_[0]) + _loc5_ * (_loc4_[2] - _loc4_[0]));
                                    }
                                    §§goto(addr372);
                                 }
                                 §§goto(addr326);
                              }
                              addr245:
                           }
                           §§goto(addr393);
                        }
                        §§goto(addr374);
                     }
                     break;
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        _loc3_ = §§nextname(_loc15_,_loc16_);
                        §§push(int(this._beziers[_loc3_].length));
                        if(_loc18_)
                        {
                           _loc6_ = §§pop();
                           if(!(_loc17_ && Boolean(param1)))
                           {
                              §§push(param1);
                              §§push(0);
                              if(!(_loc17_ && Boolean(_loc2_)))
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    §§push(0);
                                    if(!_loc17_)
                                    {
                                       _loc2_ = §§pop();
                                       if(!(_loc17_ && Boolean(param1)))
                                       {
                                          addr186:
                                       }
                                       else
                                       {
                                          addr207:
                                       }
                                       addr225:
                                       §§push(param1);
                                       §§push(_loc2_);
                                       if(!_loc17_)
                                       {
                                          addr229:
                                          §§push(§§pop() - §§pop() * (1 / _loc6_));
                                          if(_loc18_ || Boolean(param1))
                                          {
                                             addr242:
                                             §§push(§§pop() * _loc6_);
                                          }
                                          _loc5_ = §§pop();
                                          §§goto(addr245);
                                       }
                                       §§goto(addr242);
                                    }
                                    else
                                    {
                                       addr211:
                                       §§push(§§pop() * param1);
                                       §§push(0);
                                       if(!(_loc17_ && Boolean(_loc2_)))
                                       {
                                          addr222:
                                          _loc2_ = §§pop() >> §§pop();
                                          if(_loc18_)
                                          {
                                             §§goto(addr225);
                                          }
                                          §§goto(addr245);
                                       }
                                    }
                                    §§goto(addr229);
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    if(_loc18_)
                                    {
                                       §§push(1);
                                       if(!(_loc17_ && Boolean(_loc3_)))
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             §§push(_loc6_);
                                             if(_loc18_)
                                             {
                                                §§push(int(§§pop() - 1));
                                                if(!_loc17_)
                                                {
                                                   _loc2_ = §§pop();
                                                   §§goto(addr207);
                                                }
                                                else
                                                {
                                                   §§goto(addr222);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc6_);
                                             if(_loc18_)
                                             {
                                                §§goto(addr211);
                                             }
                                          }
                                       }
                                       §§goto(addr222);
                                    }
                                 }
                                 §§goto(addr242);
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr222);
                     }
                     §§goto(addr372);
                  }
               }
               else
               {
                  §§push(0);
                  if(_loc18_)
                  {
                     _loc15_ = §§pop();
                     if(_loc18_)
                     {
                        §§goto(addr136);
                     }
                     §§goto(addr372);
                  }
               }
               §§goto(addr392);
            }
         }
         §§goto(addr60);
      }
   }
}
