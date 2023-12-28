package com.greensock
{
   import com.greensock.core.*;
   
   public class TimelineLite extends SimpleTimeline
   {
      
      public static const version:Number = 1.699;
      
      private static var _overwriteMode:int;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            version = 1.699;
            if(!(_loc1_ && TimelineLite))
            {
               addr33:
               §§push(§§findproperty(_overwriteMode));
               if(_loc2_ || _loc2_)
               {
                  if(OverwriteManager.enabled)
                  {
                     addr51:
                     §§push(OverwriteManager.mode);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                        if(_loc1_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(OverwriteManager.init(2));
                     if(_loc2_)
                     {
                        §§push(§§pop());
                     }
                  }
                  §§pop()._overwriteMode = §§pop();
                  §§goto(addr66);
               }
               §§goto(addr51);
            }
            addr66:
            return;
         }
         §§goto(addr33);
      }
      
      protected var _labels:Object;
      
      protected var _endCaps:Array;
      
      public function TimelineLite(param1:Object = null)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super(param1);
         this._endCaps = [null,null];
         if(_loc2_)
         {
            this._labels = {};
            if(_loc2_)
            {
               this.autoRemoveChildren = Boolean(this.vars.autoRemoveChildren == true);
               if(!_loc3_)
               {
                  _hasUpdate = Boolean(typeof this.vars.onUpdate == "function");
                  if(_loc3_ && Boolean(param1))
                  {
                  }
                  this.insertMultiple(this.vars.tweens,0,this.vars.align != null ? String(this.vars.align) : "normal",!!this.vars.stagger ? Number(this.vars.stagger) : 0);
                  addr108:
                  return;
                  addr71:
               }
               §§goto(addr71);
            }
            if(this.vars.tweens is Array)
            {
               if(_loc2_)
               {
                  §§goto(addr71);
               }
            }
         }
         §§goto(addr108);
      }
      
      override public function remove(param1:TweenCore, param2:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param1.cachedOrphan);
            if(_loc5_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  addr36:
                  if(!param2)
                  {
                     if(_loc5_)
                     {
                        param1.setEnabled(false,true);
                        if(_loc5_ || param2)
                        {
                        }
                        addr61:
                        var _loc3_:TweenCore = this._endCaps[0];
                        addr53:
                        if(_loc5_)
                        {
                           var _loc4_:TweenCore = this.gc ? this._endCaps[1] : _lastChild;
                           §§push(param1.nextNode);
                           if(_loc5_)
                           {
                              if(§§pop())
                              {
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                    §§push(param1.nextNode);
                                    if(_loc5_)
                                    {
                                       §§pop().prevNode = param1.prevNode;
                                       addr116:
                                       §§push(param1.prevNode);
                                       if(!_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             addr123:
                                             param1.prevNode.nextNode = param1.nextNode;
                                          }
                                          else if(_loc3_ == param1)
                                          {
                                             if(!_loc6_)
                                             {
                                                addr134:
                                                _loc3_ = param1.nextNode;
                                                addr136:
                                                if(this.gc)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr141);
                                                   }
                                                }
                                                else
                                                {
                                                   _firstChild = _loc3_;
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr182);
                                                   }
                                                }
                                             }
                                             §§goto(addr192);
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr123);
                                    }
                                    §§goto(addr134);
                                 }
                                 addr141:
                                 §§push(this._endCaps);
                                 if(!(_loc6_ && Boolean(_loc3_)))
                                 {
                                    §§push(0);
                                    if(!_loc6_)
                                    {
                                       §§pop()[§§pop()] = _loc3_;
                                       if(!_loc6_)
                                       {
                                          §§goto(addr160);
                                       }
                                       §§goto(addr182);
                                    }
                                    addr160:
                                    this._endCaps[1] = _loc4_;
                                    §§goto(addr159);
                                 }
                                 addr159:
                                 if(!(_loc6_ && Boolean(this)))
                                 {
                                    addr192:
                                    param1.cachedOrphan = true;
                                    if(_loc5_)
                                    {
                                       setDirtyCache(true);
                                    }
                                 }
                                 else
                                 {
                                    addr182:
                                    _lastChild = _loc4_;
                                    if(_loc5_ || Boolean(_loc3_))
                                    {
                                       §§goto(addr192);
                                    }
                                 }
                                 return;
                              }
                              if(_loc4_ == param1)
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(param1.prevNode);
                                    if(!_loc6_)
                                    {
                                       _loc4_ = §§pop();
                                       §§goto(addr116);
                                    }
                                    §§goto(addr123);
                                 }
                                 §§goto(addr182);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr53);
                  }
               }
               if(this.gc)
               {
                  §§goto(addr53);
               }
               else
               {
                  §§push(_firstChild);
               }
               §§goto(addr61);
            }
            §§goto(addr36);
         }
         §§goto(addr61);
      }
      
      override public function insert(param1:TweenCore, param2:* = 0) : TweenCore
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:TweenCore = null;
         var _loc7_:* = NaN;
         var _loc8_:SimpleTimeline = null;
         if(!_loc10_)
         {
            if(typeof param2 == "string")
            {
               if(!(_loc10_ && _loc3_))
               {
                  addr35:
                  if(!(param2 in this._labels))
                  {
                     if(_loc11_ || Boolean(param1))
                     {
                        addr47:
                        this.addLabel(param2,this.duration);
                     }
                  }
                  param2 = Number(this._labels[param2]);
                  addr60:
                  var _loc3_:SimpleTimeline = param1.timeline;
                  §§push(param1.cachedOrphan);
                  if(_loc11_)
                  {
                     §§push(!§§pop());
                     §§push(!§§pop());
                     if(!(_loc10_ && Boolean(param1)))
                     {
                        if(§§pop())
                        {
                           §§pop();
                           if(_loc11_)
                           {
                              addr83:
                              if(Boolean(_loc3_))
                              {
                                 if(!(_loc10_ && Boolean(this)))
                                 {
                                    _loc3_.remove(param1,true);
                                    if(!(_loc10_ && Boolean(param1)))
                                    {
                                       addr102:
                                       param1.timeline = this;
                                       param1.cachedStartTime = Number(param2) + param1.delay;
                                       if(!_loc10_)
                                       {
                                          §§push(param1.cachedPaused);
                                          if(_loc11_)
                                          {
                                             addr120:
                                             §§push(§§pop());
                                             if(§§pop())
                                             {
                                                if(!(_loc10_ && Boolean(this)))
                                                {
                                                   §§pop();
                                                   §§push(_loc3_ != this);
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                addr135:
                                                §§push(param1);
                                                §§push(param1.cachedStartTime);
                                                if(!(_loc10_ && param2))
                                                {
                                                   §§push(this.rawTime);
                                                   if(_loc11_)
                                                   {
                                                      §§push(param1.cachedStartTime);
                                                      if(!_loc10_)
                                                      {
                                                         addr160:
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc11_)
                                                         {
                                                            addr158:
                                                            §§push(§§pop() / param1.cachedTimeScale);
                                                         }
                                                         §§pop().cachedPauseTime = §§pop() + §§pop();
                                                         addr161:
                                                         if(param1.gc)
                                                         {
                                                            addr164:
                                                            param1.setEnabled(true,true);
                                                         }
                                                         setDirtyCache(true);
                                                         if(!_loc10_)
                                                         {
                                                            var _loc4_:TweenCore = this.gc ? this._endCaps[0] : _firstChild;
                                                            addr173:
                                                            if(!(_loc10_ && Boolean(this)))
                                                            {
                                                               var _loc5_:TweenCore;
                                                               if((_loc5_ = this.gc ? this._endCaps[1] : _lastChild) == null)
                                                               {
                                                                  _loc4_ = _loc5_ = param1;
                                                                  if(_loc11_)
                                                                  {
                                                                     param1.nextNode = param1.prevNode = null;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  _loc6_ = _loc5_;
                                                                  if(_loc11_ || param2)
                                                                  {
                                                                     §§push(param1.cachedStartTime);
                                                                     if(_loc11_ || Boolean(_loc3_))
                                                                     {
                                                                        §§push(§§pop());
                                                                     }
                                                                     _loc7_ = §§pop();
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_ == null);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(!(_loc10_ && Boolean(_loc3_)))
                                                                        {
                                                                           addr277:
                                                                           if(!§§pop())
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!(_loc11_ || param2))
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        §§pop();
                                                                        §§push(_loc7_ < _loc6_.cachedStartTime);
                                                                        continue;
                                                                     }
                                                                     §§goto(addr277);
                                                                  }
                                                                  if(_loc11_)
                                                                  {
                                                                     if(_loc6_ != null)
                                                                     {
                                                                        §§push(_loc6_.nextNode);
                                                                        if(_loc11_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr317:
                                                                              _loc6_.nextNode.prevNode = param1;
                                                                              if(_loc11_ || Boolean(_loc3_))
                                                                              {
                                                                              }
                                                                              addr345:
                                                                              param1.cachedOrphan = false;
                                                                              if(this.gc)
                                                                              {
                                                                                 if(_loc11_ || Boolean(this))
                                                                                 {
                                                                                    §§push(this._endCaps);
                                                                                    if(!(_loc10_ && param2))
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§pop()[§§pop()] = _loc4_;
                                                                                          addr374:
                                                                                          §§push(this._endCaps);
                                                                                          §§push(1);
                                                                                       }
                                                                                       §§pop()[§§pop()] = _loc5_;
                                                                                       addr386:
                                                                                       §§push(this.gc);
                                                                                       §§push(this.gc);
                                                                                       if(!(_loc10_ && Boolean(this)))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§pop();
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                §§push(!this.cachedPaused);
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   addr406:
                                                                                                   §§push(§§pop());
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr463:
                                                                                                         if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr418:
                                                                                                            §§push(this.cachedTime == this.cachedDuration);
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc11_ || Boolean(_loc3_))
                                                                                                            {
                                                                                                               addr471:
                                                                                                               this.setTotalTime(this.cachedTotalTime,true);
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  addr478:
                                                                                                                  this.setEnabled(true,false);
                                                                                                               }
                                                                                                            }
                                                                                                            _loc8_ = this.timeline;
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc8_.gc);
                                                                                                                  if(_loc11_ || param2)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           addr535:
                                                                                                                           §§pop();
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(_loc8_.timeline));
                                                                                                                              }
                                                                                                                              addr538:
                                                                                                                           }
                                                                                                                           §§goto(addr542);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc8_.cachedStartTime + _loc8_.totalDuration / _loc8_.cachedTimeScale <= _loc8_.timeline.cachedTime)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           _loc8_.setEnabled(true,false);
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr542);
                                                                                                                        }
                                                                                                                        addr542:
                                                                                                                        return param1;
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§goto(addr535);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr535);
                                                                                                         }
                                                                                                         §§goto(addr478);
                                                                                                      }
                                                                                                      §§push(§§pop());
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         addr426:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc11_ || param2)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  addr442:
                                                                                                                  if(this.cachedTime < this.duration)
                                                                                                                  {
                                                                                                                     addr443:
                                                                                                                     §§push(this.timeline == TweenLite.rootTimeline);
                                                                                                                     if(_loc11_ || Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        addr456:
                                                                                                                        §§goto(addr463);
                                                                                                                        §§push(§§pop() || this.timeline == TweenLite.rootFramesTimeline);
                                                                                                                     }
                                                                                                                     §§goto(addr457);
                                                                                                                  }
                                                                                                                  §§goto(addr535);
                                                                                                               }
                                                                                                               §§goto(addr443);
                                                                                                            }
                                                                                                            §§goto(addr457);
                                                                                                         }
                                                                                                         §§goto(addr442);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr456);
                                                                                                }
                                                                                                §§goto(addr463);
                                                                                             }
                                                                                             §§goto(addr457);
                                                                                          }
                                                                                          §§goto(addr406);
                                                                                       }
                                                                                       §§goto(addr426);
                                                                                    }
                                                                                    §§goto(addr374);
                                                                                 }
                                                                                 §§goto(addr418);
                                                                              }
                                                                              else
                                                                              {
                                                                                 _firstChild = _loc4_;
                                                                                 _lastChild = _loc5_;
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§goto(addr386);
                                                                                 }
                                                                              }
                                                                              §§goto(addr471);
                                                                           }
                                                                           else if(_loc6_ == _loc5_)
                                                                           {
                                                                              _loc5_ = param1;
                                                                           }
                                                                           param1.prevNode = _loc6_;
                                                                           param1.nextNode = _loc6_.nextNode;
                                                                           if(!_loc10_)
                                                                           {
                                                                              _loc6_.nextNode = param1;
                                                                           }
                                                                           §§goto(addr345);
                                                                        }
                                                                     }
                                                                     §§goto(addr317);
                                                                  }
                                                                  _loc4_.prevNode = param1;
                                                                  param1.nextNode = _loc4_;
                                                                  param1.prevNode = null;
                                                                  _loc4_ = param1;
                                                               }
                                                               §§goto(addr317);
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                         §§goto(addr176);
                                                      }
                                                   }
                                                   §§goto(addr158);
                                                }
                                                §§goto(addr160);
                                             }
                                             §§goto(addr161);
                                          }
                                          §§goto(addr120);
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr83);
                     }
                  }
                  §§goto(addr120);
               }
               §§goto(addr47);
            }
            §§goto(addr60);
         }
         §§goto(addr35);
      }
      
      public function append(param1:TweenCore, param2:Number = 0) : TweenCore
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this);
         §§push(param1);
         §§push(this.duration);
         if(_loc4_ || Boolean(param1))
         {
            §§push(§§pop() + param2);
         }
         return §§pop().insert(§§pop(),§§pop());
      }
      
      public function prepend(param1:TweenCore, param2:Boolean = false) : TweenCore
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && Boolean(param1)))
         {
            §§push(this);
            §§push(param1.totalDuration);
            if(!(_loc4_ && param2))
            {
               §§push(param1.cachedTimeScale);
               if(!(_loc4_ && Boolean(param1)))
               {
                  §§push(§§pop() / §§pop());
                  if(_loc3_ || Boolean(param1))
                  {
                     addr63:
                     §§push(§§pop() + param1.delay);
                  }
                  §§pop().shiftChildren(§§pop(),param2,0);
                  §§goto(addr67);
               }
            }
            §§goto(addr63);
         }
         addr67:
         return this.insert(param1,0);
      }
      
      public function insertMultiple(param1:Array, param2:* = 0, param3:String = "normal", param4:Number = 0) : Array
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:TweenCore = null;
         if(_loc9_)
         {
            §§push(Number(param2));
            if(_loc9_ || param2)
            {
               if(!§§pop())
               {
                  if(_loc9_)
                  {
                     §§pop();
                     addr36:
                     §§push(0);
                     if(!_loc10_)
                     {
                        addr40:
                        §§push(§§pop());
                     }
                  }
                  var _loc7_:* = §§pop();
                  var _loc8_:int = int(param1.length);
                  if(!(_loc10_ && Boolean(this)))
                  {
                     if(typeof param2 == "string")
                     {
                        if(_loc9_)
                        {
                           if(!(param2 in this._labels))
                           {
                              if(_loc9_ || Boolean(this))
                              {
                                 addr71:
                                 this.addLabel(param2,this.duration);
                                 if(_loc9_ || Boolean(param1))
                                 {
                                 }
                              }
                              §§goto(addr91);
                           }
                           _loc7_ = Number(this._labels[param2]);
                           if(!_loc10_)
                           {
                              addr91:
                              _loc5_ = 0;
                              §§goto(addr93);
                           }
                           addr93:
                           while(true)
                           {
                              if(_loc5_ >= _loc8_)
                              {
                                 §§push(param1);
                                 break;
                              }
                              §§push(param1);
                              if(!_loc9_)
                              {
                                 break;
                              }
                              _loc6_ = §§pop()[_loc5_] as TweenCore;
                              if(!(_loc10_ && Boolean(param3)))
                              {
                                 this.insert(_loc6_,_loc7_);
                                 if(!_loc10_)
                                 {
                                    §§push(param3);
                                    if(!_loc10_)
                                    {
                                       §§push("sequence");
                                       if(_loc9_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(!(_loc10_ && Boolean(param3)))
                                             {
                                                §§push(_loc6_.cachedStartTime);
                                                §§push(_loc6_.totalDuration);
                                                if(_loc9_ || Boolean(param1))
                                                {
                                                   §§push(§§pop() / _loc6_.cachedTimeScale);
                                                   if(_loc9_ || Boolean(this))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc9_)
                                                      {
                                                         _loc7_ = §§pop();
                                                         if(_loc9_)
                                                         {
                                                            addr184:
                                                            §§push(_loc7_);
                                                            if(!(_loc10_ && Boolean(param1)))
                                                            {
                                                               addr199:
                                                               addr200:
                                                               §§push(§§pop() + param4);
                                                               if(!(_loc10_ && Boolean(this)))
                                                               {
                                                                  addr208:
                                                                  _loc7_ = §§pop();
                                                                  §§push(_loc5_);
                                                                  if(!_loc9_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(§§pop() + 1);
                                                               }
                                                               §§push(§§pop());
                                                               continue;
                                                            }
                                                            §§goto(addr208);
                                                         }
                                                         else
                                                         {
                                                            addr170:
                                                            §§push(_loc6_);
                                                            §§push(_loc6_.cachedStartTime);
                                                            if(_loc9_ || Boolean(param1))
                                                            {
                                                               §§push(§§pop() - _loc6_.delay);
                                                            }
                                                            §§pop().cachedStartTime = §§pop();
                                                            §§goto(addr184);
                                                         }
                                                      }
                                                      §§goto(addr199);
                                                   }
                                                }
                                                §§goto(addr200);
                                             }
                                             §§goto(addr184);
                                          }
                                          else
                                          {
                                             addr168:
                                             §§push(param3);
                                             §§push("start");
                                          }
                                          §§goto(addr184);
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          §§goto(addr170);
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr168);
                                 }
                                 §§goto(addr208);
                              }
                              §§goto(addr184);
                           }
                           return §§pop();
                        }
                     }
                  }
                  §§goto(addr71);
               }
            }
            §§goto(addr40);
         }
         §§goto(addr36);
      }
      
      public function appendMultiple(param1:Array, param2:Number = 0, param3:String = "normal", param4:Number = 0) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this);
         §§push(param1);
         §§push(this.duration);
         if(_loc5_)
         {
            §§push(§§pop() + param2);
         }
         return §§pop().insertMultiple(§§pop(),§§pop(),param3,param4);
      }
      
      public function prependMultiple(param1:Array, param2:String = "normal", param3:Number = 0, param4:Boolean = false) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:TimelineLite = new TimelineLite({
            "tweens":param1,
            "align":param2,
            "stagger":param3
         });
         if(!(_loc6_ && Boolean(param2)))
         {
            this.shiftChildren(_loc5_.duration,param4,0);
            if(_loc7_)
            {
               this.insertMultiple(param1,0,param2,param3);
               if(_loc7_ || Boolean(param2))
               {
                  addr67:
                  _loc5_.kill();
               }
               return param1;
            }
         }
         §§goto(addr67);
      }
      
      public function addLabel(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && Boolean(param1)))
         {
            this._labels[param1] = param2;
         }
      }
      
      public function removeLabel(param1:String) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Number = Number(this._labels[param1]);
         if(_loc4_ || Boolean(_loc2_))
         {
            delete this._labels[param1];
         }
         return _loc2_;
      }
      
      public function getLabelTime(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(param1 in this._labels)
            {
               addr33:
               §§push(Number(this._labels[param1]));
               if(_loc3_ || _loc3_)
               {
               }
            }
            else
            {
               §§push(-1);
            }
            return §§pop();
         }
         §§goto(addr33);
      }
      
      protected function parseTimeOrLabel(param1:*) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(typeof param1 == "string")
            {
               if(_loc2_ || Boolean(this))
               {
                  if(!(param1 in this._labels))
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr62);
                     }
                  }
                  §§goto(addr62);
               }
               throw new Error("TimelineLite error: the " + param1 + " label was not found.");
            }
            return Number(param1);
         }
         addr62:
         return this.getLabelTime(String(param1));
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.paused = true;
         }
      }
      
      public function gotoAndPlay(param1:*, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            setTotalTime(this.parseTimeOrLabel(param1),param2);
            if(_loc4_ || _loc3_)
            {
               addr41:
               play();
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function gotoAndStop(param1:*, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            setTotalTime(this.parseTimeOrLabel(param1),param2);
            if(!(_loc3_ && param2))
            {
               this.paused = true;
            }
         }
      }
      
      public function goto(param1:*, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            setTotalTime(this.parseTimeOrLabel(param1),param2);
         }
      }
      
      override public function renderTime(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc8_:TweenCore = null;
         var _loc9_:* = false;
         var _loc10_:* = false;
         var _loc11_:TweenCore = null;
         var _loc12_:* = NaN;
         if(this.gc)
         {
            this.setEnabled(true,false);
            if(!_loc15_)
            {
               addr54:
               this.active = true;
            }
         }
         else
         {
            §§push(!this.active);
            if(!(_loc16_ && Boolean(param1)))
            {
               if(§§pop())
               {
                  if(_loc15_)
                  {
                     addr49:
                     §§pop();
                     §§push(!this.cachedPaused);
                  }
               }
               if(§§pop())
               {
                  §§goto(addr54);
               }
               addr57:
               if(this.cacheIsDirty)
               {
                  §§push(this.totalDuration);
                  if(_loc15_)
                  {
                     §§push(§§pop());
                     if(_loc15_)
                     {
                     }
                     addr74:
                     var _loc4_:* = §§pop();
                     var _loc5_:Number = this.cachedTime;
                     var _loc6_:Number = this.cachedStartTime;
                     var _loc7_:Number = this.cachedTimeScale;
                     var _loc13_:Boolean = this.cachedPaused;
                     §§push(param1);
                     §§push(_loc4_);
                     if(_loc15_ || param3)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc15_)
                           {
                              addr105:
                              §§push(_loc5_ != _loc4_);
                              §§push(_loc5_ != _loc4_);
                              if(_loc15_)
                              {
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    if(!(_loc16_ && param3))
                                    {
                                       addr123:
                                       §§push(this.cachedDuration == 0);
                                       if(this.cachedDuration == 0)
                                       {
                                          if(_loc15_ || param2)
                                          {
                                             §§pop();
                                             if(_loc15_ || Boolean(this))
                                             {
                                                §§push(_rawPrevTime == param1);
                                                if(!_loc16_)
                                                {
                                                   addr146:
                                                   if(!§§pop())
                                                   {
                                                      this.cachedTotalTime = this.cachedTime = _loc4_;
                                                      this.forceChildrenToEnd(_loc4_,param2);
                                                      if(_loc15_ || Boolean(param1))
                                                      {
                                                         §§push(this.hasPausedChild());
                                                         if(_loc15_ || Boolean(this))
                                                         {
                                                            §§push(!§§pop());
                                                            if(!§§pop())
                                                            {
                                                               §§pop();
                                                               §§push(!this.cachedReversed);
                                                               if(!_loc16_)
                                                               {
                                                                  addr185:
                                                                  §§push(§§pop());
                                                                  if(!(_loc16_ && Boolean(this)))
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     _loc10_ = true;
                                                                     §§push(this.cachedDuration == 0);
                                                                     if(_loc15_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc15_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§pop();
                                                                              §§push(_loc9_);
                                                                              if(!_loc16_)
                                                                              {
                                                                                 addr211:
                                                                                 §§push(§§pop());
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc15_ || param3)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             §§push(0);
                                                                                             if(_loc15_ || param2)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                if(_loc15_ || param3)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc15_ || Boolean(this))
                                                                                                         {
                                                                                                            addr254:
                                                                                                            §§push(_rawPrevTime < 0);
                                                                                                            if(_loc15_ || Boolean(param1))
                                                                                                            {
                                                                                                               addr264:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  §§push(true);
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     addr268:
                                                                                                                     param3 = §§pop();
                                                                                                                     if(!_loc16_)
                                                                                                                     {
                                                                                                                        addr433:
                                                                                                                        _rawPrevTime = param1;
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           §§push(this.cachedTime == _loc5_);
                                                                                                                           if(this.cachedTime == _loc5_)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              if(!(_loc16_ && param2))
                                                                                                                              {
                                                                                                                                 addr454:
                                                                                                                                 if(!param3)
                                                                                                                                 {
                                                                                                                                    §§goto(addr455);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    if(!this.initted)
                                                                                                                                    {
                                                                                                                                       this.initted = true;
                                                                                                                                       if(_loc16_ && Boolean(this))
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr940:
                                                                                                                                       §§push(_hasUpdate);
                                                                                                                                       §§push(_hasUpdate);
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             if(_loc15_)
                                                                                                                                             {
                                                                                                                                                §§push(param2);
                                                                                                                                                if(!(_loc16_ && param3))
                                                                                                                                                {
                                                                                                                                                   addr958:
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      this.vars.onUpdate.apply(null,this.vars.onUpdateParams);
                                                                                                                                                      if(_loc15_)
                                                                                                                                                      {
                                                                                                                                                         addr969:
                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                         if(!(_loc16_ && Boolean(this)))
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                               if(_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() == this.cachedStartTime);
                                                                                                                                                                  §§push(§§pop() == this.cachedStartTime);
                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     addr990:
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           if(_loc15_ || Boolean(param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr1001:
                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                              if(!_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1008:
                                                                                                                                                                                 §§push(§§pop() != this.cachedTimeScale);
                                                                                                                                                                                 §§push(§§pop() != this.cachedTimeScale);
                                                                                                                                                                                 if(_loc15_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       if(!_loc16_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1023:
                                                                                                                                                                                          §§push(_loc4_ >= this.totalDuration);
                                                                                                                                                                                          if(_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1029:
                                                                                                                                                                                             addr1028:
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1035);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          addr1035:
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc16_)
                                                                                                                                                                                             {
                                                                                                                                                                                                complete(true,param2);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1042);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1042:
                                                                                                                                                                                          return;
                                                                                                                                                                                          §§push(this.cachedTime == 0);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1042);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1029);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1023);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1029);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1008);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1029);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1023);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1008);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr990);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1023);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr969);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1028);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1001);
                                                                                                                                          }
                                                                                                                                          §§goto(addr958);
                                                                                                                                       }
                                                                                                                                       §§goto(addr990);
                                                                                                                                       addr535:
                                                                                                                                    }
                                                                                                                                    addr471:
                                                                                                                                    §§push(_loc5_ == 0 && this.vars.onStart);
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       addr484:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc16_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             addr493:
                                                                                                                                             §§pop();
                                                                                                                                             addr501:
                                                                                                                                             addr499:
                                                                                                                                             addr498:
                                                                                                                                             addr494:
                                                                                                                                             addr502:
                                                                                                                                             §§push(this.cachedTime != 0);
                                                                                                                                             if(this.cachedTime != 0)
                                                                                                                                             {
                                                                                                                                                addr503:
                                                                                                                                                §§pop();
                                                                                                                                                addr504:
                                                                                                                                                §§push(!param2);
                                                                                                                                                if(_loc15_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                addr532:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc15_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr535);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr542:
                                                                                                                                                      _loc8_ = _firstChild;
                                                                                                                                                      for(; _loc8_; _loc8_ = _loc11_)
                                                                                                                                                      {
                                                                                                                                                         _loc11_ = _loc8_.nextNode;
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.cachedPaused);
                                                                                                                                                            if(_loc15_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc16_ && Boolean(param1)))
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        if(!(_loc16_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           addr578:
                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc8_.active);
                                                                                                                                                                           if(!(_loc16_ && Boolean(this)))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(!_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc15_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    if(_loc15_ || Boolean(param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr606:
                                                                                                                                                                                       §§push(!_loc8_.cachedPaused);
                                                                                                                                                                                       if(_loc15_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          if(_loc15_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                if(_loc15_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc8_.cachedStartTime);
                                                                                                                                                                                                   if(!(_loc16_ && Boolean(this)))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr640:
                                                                                                                                                                                                      §§push(§§pop() <= this.cachedTime);
                                                                                                                                                                                                      if(§§pop() <= this.cachedTime)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc15_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                            if(!_loc16_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr647:
                                                                                                                                                                                                               §§push(_loc8_.gc);
                                                                                                                                                                                                               if(!_loc16_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr652:
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(_loc8_.cachedReversed);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr652);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr713:
                                                                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                                                                            §§push(_loc12_);
                                                                                                                                                                                                            if(!(_loc16_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.cachedTime - _loc8_.cachedStartTime);
                                                                                                                                                                                                               if(!_loc16_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * _loc8_.cachedTimeScale);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().renderTime(§§pop(),param2,false);
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr656:
                                                                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                                                                            §§push(this.cachedTime - _loc8_.cachedStartTime);
                                                                                                                                                                                                            if(_loc15_ || param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * _loc8_.cachedTimeScale);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().renderTime(§§pop(),param2,false);
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc8_.cacheIsDirty)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc16_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc8_.totalDuration);
                                                                                                                                                                                                               if(_loc15_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  if(_loc15_ || param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr703:
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  if(_loc15_ || Boolean(param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr712:
                                                                                                                                                                                                                  _loc12_ = §§pop();
                                                                                                                                                                                                                  §§goto(addr713);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr712);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr713);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc8_.cachedTotalDuration);
                                                                                                                                                                                                            if(_loc15_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr703);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr652);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr703);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr656);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr640);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr652);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr647);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr652);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr640);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr713);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr578);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr640);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr606);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr540:
                                                                                                                                                   if(this.cachedTime - _loc5_ > 0)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr542);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      _loc8_ = _lastChild;
                                                                                                                                                      if(_loc15_ || param2)
                                                                                                                                                      {
                                                                                                                                                         for(; _loc8_; _loc8_ = _loc11_)
                                                                                                                                                         {
                                                                                                                                                            _loc11_ = _loc8_.prevNode;
                                                                                                                                                            if(!(_loc16_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§push(this.cachedPaused);
                                                                                                                                                               §§push(this.cachedPaused);
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     if(_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        addr777:
                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc8_.active);
                                                                                                                                                                        if(!(_loc16_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(_loc15_ || Boolean(this))
                                                                                                                                                                           {
                                                                                                                                                                              addr798:
                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 if(!(_loc16_ && Boolean(param1)))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(!_loc8_.cachedPaused);
                                                                                                                                                                                    §§push(!_loc8_.cachedPaused);
                                                                                                                                                                                    if(_loc15_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr813:
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          if(!_loc16_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc8_.cachedStartTime);
                                                                                                                                                                                             if(_loc15_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr828:
                                                                                                                                                                                                §§push(§§pop() <= _loc5_);
                                                                                                                                                                                                if(§§pop() <= _loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc15_ || Boolean(param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr837:
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      if(_loc15_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr843:
                                                                                                                                                                                                         if(_loc8_.gc)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc16_ && Boolean(param1)))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc8_.cachedReversed);
                                                                                                                                                                                                            if(_loc15_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr858:
                                                                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                                                                     §§push(this.cachedTime - _loc8_.cachedStartTime);
                                                                                                                                                                                                                     if(_loc15_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * _loc8_.cachedTimeScale);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().renderTime(§§pop(),param2,false);
                                                                                                                                                                                                                     if(!(_loc16_ && Boolean(param1)))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr879:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr890:
                                                                                                                                                                                                                  §§push(_loc8_.totalDuration);
                                                                                                                                                                                                                  if(!(_loc16_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     if(_loc15_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr916:
                                                                                                                                                                                                                     _loc12_ = §§pop();
                                                                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                                                                     if(_loc15_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.cachedTime - _loc8_.cachedStartTime);
                                                                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * _loc8_.cachedTimeScale);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().renderTime(§§pop(),param2,false);
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr916);
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr882:
                                                                                                                                                                                                                  if(_loc8_.cacheIsDirty)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc15_ || param3))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr890);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc8_.cachedTotalDuration);
                                                                                                                                                                                                                     if(_loc15_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                        if(!(_loc16_ && param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr890);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr916);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr916);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr882);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr879);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr916);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr882);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr843);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr916);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr879);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr828);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr858);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr843);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr813);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr837);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr890);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr777);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr798);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr777);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr940);
                                                                                                                                             }
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                this.vars.onStart.apply(null,this.vars.onStartParams);
                                                                                                                                                if(_loc16_ && Boolean(param1))
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                §§goto(addr542);
                                                                                                                                             }
                                                                                                                                             §§goto(addr532);
                                                                                                                                             §§push(_loc10_);
                                                                                                                                          }
                                                                                                                                          §§goto(addr503);
                                                                                                                                       }
                                                                                                                                       §§goto(addr501);
                                                                                                                                    }
                                                                                                                                    §§goto(addr499);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr504);
                                                                                                                           }
                                                                                                                           §§goto(addr454);
                                                                                                                        }
                                                                                                                        §§goto(addr940);
                                                                                                                        addr271:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr279:
                                                                                                                        if(param1 < 0)
                                                                                                                        {
                                                                                                                           if(!_loc16_)
                                                                                                                           {
                                                                                                                              this.active = false;
                                                                                                                              if(_loc15_ || param2)
                                                                                                                              {
                                                                                                                                 addr297:
                                                                                                                                 §§push(this.cachedDuration == 0);
                                                                                                                                 if(this.cachedDuration == 0)
                                                                                                                                 {
                                                                                                                                    addr298:
                                                                                                                                    §§pop();
                                                                                                                                    §§push(_rawPrevTime > 0);
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       addr304:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc15_)
                                                                                                                                          {
                                                                                                                                             §§push(true);
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                param3 = §§pop();
                                                                                                                                                if(_loc15_)
                                                                                                                                                {
                                                                                                                                                   _loc9_ = true;
                                                                                                                                                   addr353:
                                                                                                                                                   §§push(_loc5_ == 0);
                                                                                                                                                   if(_loc15_ || param2)
                                                                                                                                                   {
                                                                                                                                                      addr363:
                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         addr366:
                                                                                                                                                         §§pop();
                                                                                                                                                         addr371:
                                                                                                                                                         if(_rawPrevTime != param1)
                                                                                                                                                         {
                                                                                                                                                            this.cachedTotalTime = 0;
                                                                                                                                                            if(_loc15_ || param2)
                                                                                                                                                            {
                                                                                                                                                               this.cachedTime = 0;
                                                                                                                                                               if(!(_loc16_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  this.forceChildrenToBeginning(0,param2);
                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(true);
                                                                                                                                                                     if(_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        addr401:
                                                                                                                                                                        _loc10_ = §§pop();
                                                                                                                                                                        addr402:
                                                                                                                                                                        if(this.cachedReversed)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(true);
                                                                                                                                                                           if(_loc15_ || Boolean(param1))
                                                                                                                                                                           {
                                                                                                                                                                              _loc9_ = §§pop();
                                                                                                                                                                              if(_loc15_ || param3)
                                                                                                                                                                              {
                                                                                                                                                                                 addr421:
                                                                                                                                                                                 §§goto(addr433);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr542);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr503);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr421);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr498);
                                                                                                                                                                  }
                                                                                                                                                                  addr455:
                                                                                                                                                                  return;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr542);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr494);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr421);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr371);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr493);
                                                                                                                                                   addr315:
                                                                                                                                                }
                                                                                                                                                §§goto(addr503);
                                                                                                                                             }
                                                                                                                                             §§goto(addr484);
                                                                                                                                          }
                                                                                                                                          §§goto(addr421);
                                                                                                                                       }
                                                                                                                                       §§goto(addr315);
                                                                                                                                    }
                                                                                                                                    §§goto(addr363);
                                                                                                                                 }
                                                                                                                                 §§goto(addr304);
                                                                                                                              }
                                                                                                                              §§goto(addr402);
                                                                                                                           }
                                                                                                                           §§goto(addr476);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(param1);
                                                                                                                           if(_loc15_ || param3)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              if(_loc15_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    addr336:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       §§push(!this.initted);
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          addr343:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             addr344:
                                                                                                                                             param3 = true;
                                                                                                                                             if(_loc15_ || Boolean(this))
                                                                                                                                             {
                                                                                                                                                §§goto(addr353);
                                                                                                                                             }
                                                                                                                                             §§goto(addr402);
                                                                                                                                          }
                                                                                                                                          §§goto(addr353);
                                                                                                                                       }
                                                                                                                                       §§goto(addr371);
                                                                                                                                    }
                                                                                                                                    §§goto(addr343);
                                                                                                                                 }
                                                                                                                                 §§goto(addr502);
                                                                                                                              }
                                                                                                                              §§goto(addr471);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr353);
                                                                                                                     }
                                                                                                                     §§goto(addr493);
                                                                                                                  }
                                                                                                                  §§goto(addr366);
                                                                                                               }
                                                                                                               §§goto(addr271);
                                                                                                            }
                                                                                                            §§goto(addr484);
                                                                                                         }
                                                                                                         §§goto(addr344);
                                                                                                      }
                                                                                                      §§goto(addr471);
                                                                                                   }
                                                                                                   §§goto(addr264);
                                                                                                }
                                                                                                §§goto(addr268);
                                                                                             }
                                                                                             §§goto(addr279);
                                                                                          }
                                                                                          §§goto(addr542);
                                                                                       }
                                                                                       §§goto(addr493);
                                                                                    }
                                                                                    §§goto(addr264);
                                                                                 }
                                                                                 §§goto(addr297);
                                                                              }
                                                                              §§goto(addr401);
                                                                           }
                                                                           §§goto(addr211);
                                                                        }
                                                                        §§goto(addr336);
                                                                     }
                                                                     §§goto(addr493);
                                                                  }
                                                                  §§goto(addr366);
                                                               }
                                                               §§goto(addr503);
                                                            }
                                                            §§goto(addr185);
                                                         }
                                                         §§goto(addr493);
                                                      }
                                                      §§goto(addr421);
                                                   }
                                                   §§goto(addr433);
                                                }
                                                §§goto(addr298);
                                             }
                                             §§goto(addr254);
                                          }
                                          §§goto(addr366);
                                       }
                                       §§goto(addr146);
                                    }
                                    §§goto(addr433);
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr297);
                           }
                           §§goto(addr454);
                        }
                        else
                        {
                           §§push(param1);
                           if(!_loc16_)
                           {
                              if(§§pop() <= 0)
                              {
                                 §§goto(addr279);
                              }
                              else
                              {
                                 this.cachedTotalTime = this.cachedTime = param1;
                                 if(_loc15_)
                                 {
                                    §§goto(addr433);
                                 }
                              }
                              §§goto(addr454);
                           }
                        }
                        §§goto(addr540);
                     }
                     §§goto(addr105);
                  }
                  addr73:
                  §§push(§§pop());
               }
               else
               {
                  §§push(this.cachedTotalDuration);
                  if(!_loc16_)
                  {
                     §§goto(addr73);
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr49);
         }
         §§goto(addr57);
      }
      
      protected function forceChildrenToBeginning(param1:Number, param2:Boolean = false) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:TweenCore = null;
         var _loc5_:Number = NaN;
         var _loc3_:TweenCore = _lastChild;
         var _loc6_:Boolean = this.cachedPaused;
         for(; _loc3_; _loc3_ = _loc4_)
         {
            _loc4_ = _loc3_.prevNode;
            §§push(this.cachedPaused);
            if(!_loc8_)
            {
               §§push(§§pop());
               if(!(_loc8_ && Boolean(param1)))
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        §§push(_loc6_);
                        if(_loc7_ || Boolean(this))
                        {
                           addr62:
                           if(!§§pop())
                           {
                              break;
                           }
                           addr68:
                           §§push(_loc3_.active);
                           if(!_loc3_.active)
                           {
                              §§pop();
                              §§push(!_loc3_.cachedPaused);
                              if(!_loc8_)
                              {
                                 addr76:
                                 if(§§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       §§pop();
                                       if(!_loc8_)
                                       {
                                          §§push(!_loc3_.gc);
                                          if(!(_loc8_ && Boolean(_loc3_)))
                                          {
                                             addr93:
                                             if(§§pop())
                                             {
                                                if(_loc7_ || Boolean(param1))
                                                {
                                                   addr102:
                                                   §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      addr105:
                                                      §§push(_loc3_.cachedTotalTime);
                                                      if(!(_loc8_ && Boolean(this)))
                                                      {
                                                         §§push(0);
                                                         if(!_loc8_)
                                                         {
                                                            §§push(§§pop() != §§pop());
                                                            if(!_loc8_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc7_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!(_loc8_ && Boolean(param1)))
                                                                     {
                                                                        §§pop();
                                                                        §§push(_loc3_.cachedDuration);
                                                                        if(!(_loc8_ && Boolean(this)))
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc7_ || Boolean(this))
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc7_ || Boolean(this))
                                                                              {
                                                                                 addr158:
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(!(_loc8_ && Boolean(_loc3_)))
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr179:
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             addr182:
                                                                                             §§push(§§pop());
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr186:
                                                                                                   §§pop();
                                                                                                   §§push(_loc3_.cachedDuration);
                                                                                                   §§push(0);
                                                                                                   if(!(_loc8_ && Boolean(this)))
                                                                                                   {
                                                                                                      addr200:
                                                                                                      addr199:
                                                                                                      addr197:
                                                                                                      §§push(§§pop() != §§pop());
                                                                                                      if(!(§§pop() != §§pop()))
                                                                                                      {
                                                                                                         addr201:
                                                                                                         §§pop();
                                                                                                         if(!(_loc7_ || param2))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         addr211:
                                                                                                         §§push(_loc3_.cachedStartTime);
                                                                                                         §§push(0);
                                                                                                      }
                                                                                                      addr213:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         if(_loc7_ || Boolean(this))
                                                                                                         {
                                                                                                            if(_loc3_.cachedReversed)
                                                                                                            {
                                                                                                               addr225:
                                                                                                               §§push(_loc3_.cachedTotalDuration);
                                                                                                               if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc7_ || Boolean(this))
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr245:
                                                                                                                  §§pop().renderTime(§§pop(),param2,false);
                                                                                                                  continue;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                            }
                                                                                                            §§goto(addr245);
                                                                                                         }
                                                                                                         §§goto(addr225);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr251:
                                                                                                         if(!_loc3_.cachedReversed)
                                                                                                         {
                                                                                                            if(!(_loc8_ && Boolean(param1)))
                                                                                                            {
                                                                                                               addr259:
                                                                                                               §§push(_loc3_);
                                                                                                               §§push(param1);
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§push(_loc3_.cachedStartTime);
                                                                                                                  if(_loc7_ || Boolean(this))
                                                                                                                  {
                                                                                                                     addr278:
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.cachedTimeScale);
                                                                                                                     }
                                                                                                                     §§pop().renderTime(§§pop(),param2,false);
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                               }
                                                                                                               §§goto(addr278);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            if(_loc3_.cacheIsDirty)
                                                                                                            {
                                                                                                               §§push(_loc3_.totalDuration);
                                                                                                               if(!(_loc8_ && Boolean(param1)))
                                                                                                               {
                                                                                                                  addr313:
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  §§push(_loc3_);
                                                                                                                  §§push(_loc5_);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     §§push(param1);
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.cachedStartTime);
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           addr340:
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              addr338:
                                                                                                                              §§push(§§pop() * _loc3_.cachedTimeScale);
                                                                                                                           }
                                                                                                                           §§pop().renderTime(§§pop() - §§pop(),param2,false);
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr338);
                                                                                                                  }
                                                                                                                  §§goto(addr340);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr305:
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!(_loc8_ && Boolean(param1)))
                                                                                                                  {
                                                                                                                     §§goto(addr313);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr313);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(_loc3_.cachedTotalDuration);
                                                                                                               if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                               {
                                                                                                                  §§goto(addr305);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr349);
                                                                                                         }
                                                                                                         §§goto(addr313);
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                }
                                                                                                §§goto(addr213);
                                                                                             }
                                                                                             §§goto(addr200);
                                                                                          }
                                                                                          §§goto(addr199);
                                                                                       }
                                                                                       §§goto(addr197);
                                                                                    }
                                                                                    §§goto(addr305);
                                                                                 }
                                                                                 §§goto(addr259);
                                                                              }
                                                                              §§goto(addr186);
                                                                           }
                                                                           §§goto(addr200);
                                                                        }
                                                                        §§goto(addr313);
                                                                     }
                                                                     §§goto(addr201);
                                                                  }
                                                                  §§goto(addr158);
                                                               }
                                                               §§goto(addr200);
                                                            }
                                                            §§goto(addr182);
                                                         }
                                                         §§goto(addr179);
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                   §§goto(addr245);
                                                }
                                                §§goto(addr201);
                                             }
                                             §§goto(addr158);
                                          }
                                          §§goto(addr200);
                                       }
                                       §§goto(addr211);
                                    }
                                    §§goto(addr102);
                                 }
                                 §§goto(addr93);
                              }
                              §§goto(addr251);
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr62);
               }
               §§goto(addr200);
            }
            §§goto(addr68);
         }
         addr349:
         param1;
         return §§pop();
      }
      
      protected function forceChildrenToEnd(param1:Number, param2:Boolean = false) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:TweenCore = null;
         var _loc5_:Number = NaN;
         var _loc3_:TweenCore = _firstChild;
         var _loc6_:Boolean = this.cachedPaused;
         for(; _loc3_; _loc3_ = _loc4_)
         {
            _loc4_ = _loc3_.nextNode;
            §§push(this.cachedPaused);
            §§push(this.cachedPaused);
            if(!_loc8_)
            {
               if(§§pop())
               {
                  §§pop();
                  §§push(!_loc6_);
               }
               if(§§pop())
               {
                  break;
               }
               §§push(_loc3_.active);
               if(!_loc3_.active)
               {
                  §§pop();
                  §§push(_loc3_.cachedPaused);
                  if(!_loc8_)
                  {
                     §§push(!§§pop());
                     §§push(!§§pop());
                     if(!_loc8_)
                     {
                        if(§§pop())
                        {
                           if(_loc7_ || param2)
                           {
                              §§pop();
                              if(!_loc8_)
                              {
                                 addr72:
                                 §§push(!_loc3_.gc);
                                 if(!_loc3_.gc)
                                 {
                                    if(!(_loc8_ && Boolean(_loc3_)))
                                    {
                                       §§pop();
                                       §§push(_loc3_.cachedTotalTime);
                                       if(!(_loc8_ && Boolean(param1)))
                                       {
                                          §§push(§§pop() == _loc3_.cachedTotalDuration);
                                          if(!(_loc8_ && param2))
                                          {
                                             §§push(!§§pop());
                                             if(_loc7_ || Boolean(param1))
                                             {
                                                addr109:
                                                if(!§§pop())
                                                {
                                                   §§pop();
                                                   if(_loc7_)
                                                   {
                                                      §§push(_loc3_.cachedDuration);
                                                      §§push(0);
                                                      if(!_loc8_)
                                                      {
                                                         addr120:
                                                         if(§§pop() != §§pop())
                                                         {
                                                            continue;
                                                         }
                                                         addr121:
                                                         §§push(param1 == this.cachedDuration);
                                                         if(_loc7_ || Boolean(this))
                                                         {
                                                            addr139:
                                                            if(§§pop())
                                                            {
                                                               addr141:
                                                               §§pop();
                                                               addr145:
                                                               addr147:
                                                               addr148:
                                                               §§push(_loc3_.cachedDuration != 0);
                                                               if(_loc3_.cachedDuration != 0)
                                                               {
                                                               }
                                                               addr164:
                                                               if(§§pop())
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(_loc3_.cachedReversed)
                                                                     {
                                                                        addr171:
                                                                        §§push(0);
                                                                        if(!(_loc7_ || Boolean(this)))
                                                                        {
                                                                           addr190:
                                                                           §§push(§§pop());
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(_loc3_.cachedTotalDuration);
                                                                        if(!(_loc8_ && Boolean(param1)))
                                                                        {
                                                                           §§goto(addr190);
                                                                        }
                                                                     }
                                                                     §§pop().renderTime(§§pop(),param2,false);
                                                                     continue;
                                                                  }
                                                                  §§goto(addr171);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc3_.cachedReversed);
                                                                  if(_loc7_)
                                                                  {
                                                                     addr199:
                                                                     if(!§§pop())
                                                                     {
                                                                        §§push(_loc3_);
                                                                        §§push(param1);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(_loc3_.cachedStartTime);
                                                                           if(_loc7_)
                                                                           {
                                                                              addr214:
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§push(_loc3_.cachedTimeScale);
                                                                              }
                                                                              §§pop().renderTime(§§pop(),param2,false);
                                                                              continue;
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                        §§goto(addr214);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(_loc3_.cacheIsDirty);
                                                                     }
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(_loc3_.totalDuration);
                                                                        if(!(_loc8_ && param2))
                                                                        {
                                                                           addr238:
                                                                           _loc5_ = §§pop();
                                                                           addr237:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr236:
                                                                           §§goto(addr237);
                                                                           §§push(§§pop());
                                                                        }
                                                                        §§goto(addr237);
                                                                     }
                                                                     §§push(_loc3_);
                                                                     §§push(_loc5_);
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(param1);
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(_loc3_.cachedStartTime);
                                                                           if(!(_loc8_ && Boolean(_loc3_)))
                                                                           {
                                                                              addr274:
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!(_loc8_ && Boolean(this)))
                                                                              {
                                                                                 addr272:
                                                                                 §§push(§§pop() * _loc3_.cachedTimeScale);
                                                                              }
                                                                              §§pop().renderTime(§§pop() - §§pop(),param2,false);
                                                                              continue;
                                                                           }
                                                                        }
                                                                        §§goto(addr272);
                                                                     }
                                                                     §§goto(addr274);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc3_.cachedTotalDuration);
                                                                  }
                                                                  §§goto(addr236);
                                                               }
                                                            }
                                                            §§goto(addr164);
                                                         }
                                                         §§pop();
                                                         §§push(_loc3_.cachedStartTime);
                                                         if(_loc7_ || Boolean(param1))
                                                         {
                                                            §§push(§§pop() == this.cachedDuration);
                                                            if(_loc7_)
                                                            {
                                                               §§goto(addr164);
                                                            }
                                                            §§goto(addr199);
                                                         }
                                                         §§goto(addr238);
                                                      }
                                                      §§goto(addr145);
                                                   }
                                                   §§goto(addr121);
                                                }
                                                §§goto(addr120);
                                             }
                                             §§goto(addr147);
                                          }
                                          §§goto(addr145);
                                       }
                                       §§goto(addr238);
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr139);
               }
               §§goto(addr120);
            }
            §§goto(addr148);
         }
         return param1;
      }
      
      public function hasPausedChild() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            var _loc1_:TweenCore = this.gc ? this._endCaps[0] : _firstChild;
            for(; _loc1_; _loc1_ = _loc1_.nextNode)
            {
               §§push(_loc1_.cachedPaused);
               §§push(_loc1_.cachedPaused);
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        §§pop();
                        if(!_loc2_)
                        {
                           §§push(_loc1_ is TimelineLite);
                           if(_loc3_ || _loc2_)
                           {
                              addr66:
                              if(§§pop())
                              {
                                 §§pop();
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    §§goto(addr75);
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr113);
                        }
                        addr75:
                        §§push((_loc1_ as TimelineLite).hasPausedChild());
                        if(_loc3_ || _loc2_)
                        {
                           addr94:
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(_loc2_ && _loc3_)
                           {
                              break;
                           }
                           addr102:
                           return true;
                        }
                     }
                  }
                  §§goto(addr94);
               }
               §§goto(addr66);
            }
            addr113:
            return §§pop();
            §§push(false);
         }
         §§goto(addr19);
      }
      
      public function getChildren(param1:Boolean = true, param2:Boolean = true, param3:Boolean = true, param4:Number = -9999999999) : Array
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:Array = [];
         var _loc6_:int = 0;
         if(_loc10_ || param2)
         {
            var _loc7_:TweenCore = this.gc ? this._endCaps[0] : _firstChild;
            for(; _loc7_; _loc7_ = _loc7_.nextNode)
            {
               if(_loc7_.cachedStartTime < param4)
               {
                  continue;
               }
               §§push(_loc7_ is TweenLite);
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     if(!(_loc9_ && param2))
                     {
                        §§push(param2);
                        if(!(_loc9_ && param3))
                        {
                           if(§§pop())
                           {
                              var _loc8_:*;
                              _loc5_[_loc8_ = _loc6_++] = _loc7_;
                              if(!(_loc10_ || param3))
                              {
                                 addr120:
                                 if(param1)
                                 {
                                    addr121:
                                    _loc6_ = int((_loc5_ = _loc5_.concat(TimelineLite(_loc7_).getChildren(true,param2,param3))).length);
                                 }
                                 continue;
                                 addr111:
                              }
                           }
                           continue;
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr121);
                  }
                  else
                  {
                     §§push(param3);
                     if(!(_loc9_ && param1))
                     {
                        if(§§pop())
                        {
                           _loc5_[_loc8_ = _loc6_++] = _loc7_;
                           §§goto(addr111);
                        }
                        §§goto(addr120);
                     }
                  }
               }
               §§goto(addr120);
            }
            return _loc5_;
         }
         §§goto(addr29);
      }
      
      public function getTweensOf(param1:Object, param2:Boolean = true) : Array
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:* = 0;
         var _loc3_:Array = this.getChildren(param2,true,false);
         var _loc4_:Array = [];
         var _loc6_:int = int(_loc3_.length);
         var _loc7_:int = 0;
         if(!(_loc10_ && param2))
         {
            _loc5_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc5_);
            loop1:
            while(true)
            {
               §§push(_loc6_);
               while(§§pop() < §§pop())
               {
                  if(TweenLite(_loc3_[_loc5_]).target == param1)
                  {
                     if(!_loc10_)
                     {
                        var _loc8_:*;
                        _loc4_[_loc8_ = _loc7_++] = _loc3_[_loc5_];
                        if(_loc9_)
                        {
                        }
                        break;
                     }
                     continue loop0;
                  }
                  §§push(_loc5_);
                  if(_loc9_ || Boolean(this))
                  {
                     §§push(1);
                     if(_loc10_ && Boolean(param1))
                     {
                        continue;
                     }
                     §§push(int(§§pop() + §§pop()));
                     if(!(_loc9_ || param2))
                     {
                        continue loop1;
                     }
                  }
                  _loc5_ = §§pop();
                  if(!(_loc9_ || Boolean(_loc3_)))
                  {
                     break;
                  }
                  continue loop0;
               }
               return _loc4_;
            }
         }
      }
      
      public function shiftChildren(param1:Number, param2:Boolean = false, param3:Number = 0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:String = null;
         if(!(_loc8_ && Boolean(param3)))
         {
            var _loc4_:TweenCore = this.gc ? this._endCaps[0] : _firstChild;
            while(true)
            {
               if(_loc4_)
               {
                  if(_loc4_.cachedStartTime >= param3)
                  {
                     if(!_loc8_)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.cachedStartTime);
                        if(!(_loc8_ && Boolean(this)))
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().cachedStartTime = §§pop();
                        if(_loc9_ || Boolean(param3))
                        {
                           continue;
                        }
                        §§goto(addr85);
                     }
                     break;
                  }
                  continue;
               }
               if(_loc9_ || Boolean(this))
               {
                  addr85:
                  if(param2)
                  {
                     if(_loc9_)
                     {
                        break;
                     }
                     §§goto(addr162);
                  }
                  this.setDirtyCache(true);
               }
               addr162:
               return;
               §§goto(addr85);
            }
            var _loc6_:int = 0;
            if(!(_loc8_ && param2))
            {
               var _loc7_:* = this._labels;
               if(!(_loc8_ && param2))
               {
                  loop1:
                  for(_loc5_ in _loc7_)
                  {
                     if(!_loc8_)
                     {
                        while(true)
                        {
                           if(this._labels[_loc5_] < param3)
                           {
                              continue loop1;
                           }
                           if(!(_loc9_ || Boolean(param1)))
                           {
                              continue loop1;
                           }
                        }
                        addr118:
                     }
                     while(true)
                     {
                        this._labels[_loc5_] += param1;
                        continue loop1;
                     }
                  }
                  addr151:
                  if(!(_loc8_ && Boolean(this)))
                  {
                     §§goto(addr85);
                  }
                  §§goto(addr162);
               }
               §§goto(addr118);
            }
            §§goto(addr151);
         }
         §§goto(addr27);
      }
      
      public function killTweensOf(param1:Object, param2:Boolean = true, param3:Object = null) : Boolean
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:TweenLite = null;
         var _loc4_:Array;
         var _loc5_:* = int((_loc4_ = this.getTweensOf(param1,param2)).length);
         while(true)
         {
            §§push(_loc5_);
            if(!_loc8_)
            {
               §§push(§§pop() - 1);
               if(_loc7_ || Boolean(param1))
               {
                  §§push(§§pop());
                  if(!(_loc8_ && Boolean(param3)))
                  {
                     §§push(§§pop());
                     if(_loc7_)
                     {
                        _loc5_ = §§pop();
                        addr123:
                        §§push(-1);
                     }
                  }
                  if(§§pop() <= §§pop())
                  {
                     break;
                  }
                  _loc6_ = _loc4_[_loc5_];
                  if(param3 != null)
                  {
                     if(!_loc8_)
                     {
                        _loc6_.killVars(param3);
                        if(!_loc8_)
                        {
                           addr43:
                           §§push(param3 == null);
                           if(!(_loc8_ && Boolean(this)))
                           {
                              §§push(§§pop());
                              if(!_loc8_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       §§pop();
                                       §§push(_loc6_.cachedPT1 == null);
                                       if(!_loc8_)
                                       {
                                          addr74:
                                          if(§§pop())
                                          {
                                             if(_loc7_ || Boolean(this))
                                             {
                                             }
                                             addr88:
                                             if(§§pop())
                                             {
                                                addr89:
                                                _loc6_.setEnabled(false,false);
                                             }
                                             continue;
                                          }
                                       }
                                       §§goto(addr88);
                                    }
                                    §§pop();
                                    if(_loc7_)
                                    {
                                       addr85:
                                       §§goto(addr88);
                                       §§push(_loc6_.initted);
                                    }
                                    §§goto(addr89);
                                 }
                                 §§goto(addr88);
                              }
                              §§goto(addr74);
                           }
                           §§goto(addr88);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr43);
               }
            }
            §§goto(addr123);
         }
         return Boolean(_loc4_.length > 0);
      }
      
      override public function invalidate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            var _loc1_:TweenCore = this.gc ? this._endCaps[0] : _firstChild;
            while(_loc1_)
            {
               _loc1_.invalidate();
               if(_loc2_)
               {
                  break;
               }
               _loc1_ = _loc1_.nextNode;
            }
            return;
         }
         §§goto(addr26);
      }
      
      public function clear(param1:Array = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && Boolean(param1)))
         {
            §§push(param1);
            if(!_loc4_)
            {
               if(§§pop() == null)
               {
                  §§goto(addr25);
               }
               §§goto(addr41);
            }
            §§goto(addr32);
         }
         addr25:
         §§push(this.getChildren(false,true,true));
         if(_loc3_)
         {
            addr32:
            param1 = §§pop();
            addr41:
            §§push(param1);
         }
         var _loc2_:* = int(§§pop().length);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               §§push(§§pop() - 1);
               if(_loc3_)
               {
                  §§push(§§pop());
                  if(_loc4_ && Boolean(this))
                  {
                     continue;
                  }
                  §§push(§§pop());
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
                  _loc2_ = §§pop();
               }
            }
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:TweenCore = null;
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            §§push(param1);
            if(_loc6_ || param1)
            {
               if(§§pop() == this.gc)
               {
                  if(_loc6_ || Boolean(this))
                  {
                     addr43:
                     if(param1)
                     {
                        _firstChild = _loc3_ = this._endCaps[0];
                        addr44:
                        if(!_loc5_)
                        {
                           _lastChild = this._endCaps[1];
                           if(!_loc5_)
                           {
                              addr73:
                              this._endCaps = [null,null];
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr73);
                     }
                     else
                     {
                        _loc3_ = _firstChild;
                        if(_loc6_ || param1)
                        {
                           this._endCaps = [_firstChild,_lastChild];
                           if(_loc6_)
                           {
                           }
                           §§goto(addr112);
                        }
                        _firstChild = _lastChild = null;
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr44);
               }
               addr112:
               while(_loc3_)
               {
                  _loc3_.setEnabled(param1,true);
                  if(!_loc6_)
                  {
                     break;
                  }
                  _loc3_ = _loc3_.nextNode;
               }
               return super.setEnabled(param1,param2);
            }
            §§goto(addr43);
         }
         §§goto(addr44);
      }
      
      public function get currentProgress() : Number
      {
         return this.cachedTime / this.duration;
      }
      
      public function set currentProgress(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§findproperty(setTotalTime));
            §§push(this.duration);
            if(!_loc2_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().setTotalTime(§§pop(),false);
         }
      }
      
      override public function get duration() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = NaN;
         if(_loc3_ || _loc3_)
         {
            if(this.cacheIsDirty)
            {
               if(_loc3_ || _loc2_)
               {
                  §§push(this.totalDuration);
                  if(_loc3_)
                  {
                     §§push(§§pop());
                  }
                  _loc1_ = §§pop();
               }
            }
         }
         return this.cachedDuration;
      }
      
      override public function set duration(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.duration);
            if(_loc3_ || Boolean(this))
            {
               §§push(0);
               if(_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc2_)
                  {
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && Boolean(param1)))
                           {
                              addr55:
                              §§pop();
                              §§goto(addr79);
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr79);
                           }
                        }
                        addr79:
                        if(_loc3_)
                        {
                           addr67:
                           §§push(param1 == 0);
                           if(_loc3_ || Boolean(param1))
                           {
                              addr75:
                              §§push(!§§pop());
                           }
                        }
                        §§push(this);
                        §§push(this.duration);
                        if(_loc3_)
                        {
                           §§push(§§pop() / param1);
                        }
                        §§pop().timeScale = §§pop();
                        return;
                     }
                     §§goto(addr55);
                  }
                  §§goto(addr75);
               }
            }
            §§goto(addr67);
         }
         §§goto(addr55);
      }
      
      override public function get totalDuration() : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:TweenCore = null;
         var _loc4_:* = NaN;
         var _loc5_:TweenCore = null;
         if(_loc7_ || Boolean(this))
         {
            if(this.cacheIsDirty)
            {
               if(_loc7_ || Boolean(_loc1_))
               {
                  addr42:
                  _loc1_ = 0;
                  if(_loc7_)
                  {
                     _loc3_ = this.gc ? this._endCaps[0] : _firstChild;
                     §§goto(addr47);
                  }
                  §§goto(addr50);
               }
               addr47:
               if(_loc7_)
               {
                  §§push(-Infinity);
                  if(_loc7_ || Boolean(_loc1_))
                  {
                     §§push(§§pop());
                  }
                  _loc4_ = §§pop();
               }
               for(; _loc3_; _loc3_ = _loc5_)
               {
                  _loc5_ = _loc3_.nextNode;
                  §§push(_loc3_.cachedStartTime);
                  if(!_loc8_)
                  {
                     §§push(_loc4_);
                     if(!(_loc8_ && Boolean(this)))
                     {
                        if(§§pop() < §§pop())
                        {
                           §§push(this);
                           §§push(_loc3_);
                           §§push(_loc3_.cachedStartTime);
                           if(!(_loc8_ && Boolean(this)))
                           {
                              §§push(§§pop() - _loc3_.delay);
                           }
                           §§pop().insert(§§pop(),§§pop());
                        }
                        else
                        {
                           _loc4_ = _loc3_.cachedStartTime;
                        }
                        if(_loc3_.cachedStartTime < 0)
                        {
                           §§push(_loc1_);
                           if(_loc7_)
                           {
                              §§push(_loc3_.cachedStartTime);
                              if(_loc7_)
                              {
                                 addr130:
                                 _loc1_ = §§pop() - §§pop();
                                 §§push(this);
                                 §§push(_loc3_.cachedStartTime);
                                 if(_loc7_)
                                 {
                                    §§push(-§§pop());
                                 }
                                 §§pop().shiftChildren(§§pop(),false,-9999999999);
                                 addr142:
                                 §§push(_loc3_.cachedStartTime);
                                 §§push(_loc3_.totalDuration);
                                 if(_loc7_)
                                 {
                                    addr148:
                                    §§push(§§pop() / _loc3_.cachedTimeScale);
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc7_)
                                       {
                                          §§push(§§pop());
                                          if(_loc7_ || Boolean(_loc3_))
                                          {
                                             _loc2_ = §§pop();
                                             addr166:
                                             if(_loc2_ <= _loc1_)
                                             {
                                                continue;
                                             }
                                             addr169:
                                             §§push(_loc2_);
                                          }
                                          _loc1_ = §§pop();
                                          continue;
                                       }
                                       §§goto(addr166);
                                    }
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr148);
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr166);
               }
               if(!(_loc8_ && Boolean(_loc1_)))
               {
                  this.cachedDuration = this.cachedTotalDuration = _loc1_;
                  if(!(_loc8_ && Boolean(_loc2_)))
                  {
                     this.cacheIsDirty = false;
                  }
               }
               §§goto(addr209);
            }
            addr209:
            return this.cachedTotalDuration;
         }
         §§goto(addr42);
      }
      
      override public function set totalDuration(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.totalDuration);
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(0);
               if(!(_loc2_ && Boolean(param1)))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_ || _loc2_)
                  {
                     §§push(!§§pop());
                     if(_loc3_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§pop();
                              if(_loc3_ || _loc2_)
                              {
                                 addr75:
                                 §§push(param1 == 0);
                                 if(_loc3_ || _loc2_)
                                 {
                                 }
                                 §§goto(addr91);
                              }
                              §§goto(addr99);
                           }
                        }
                     }
                  }
                  addr91:
                  if(!§§pop())
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr99:
                        §§push(this);
                        §§push(this.totalDuration);
                        if(_loc3_ || Boolean(param1))
                        {
                           §§push(§§pop() / param1);
                        }
                        §§pop().timeScale = §§pop();
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      public function get timeScale() : Number
      {
         return this.cachedTimeScale;
      }
      
      public function set timeScale(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§push(0.0001);
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§push(§§pop());
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr53:
                           param1 = §§pop();
                           if(!(_loc4_ && _loc2_))
                           {
                              addr61:
                              §§push(Boolean(this.cachedPauseTime));
                              if(_loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§pop();
                                       addr95:
                                       if(_loc3_ || Boolean(this))
                                       {
                                          addr90:
                                          §§push(this.cachedPauseTime == 0);
                                       }
                                       §§push(this.cachedPauseTime);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          addr113:
                                          var _loc2_:Number = §§pop();
                                          if(!_loc4_)
                                          {
                                             §§push(this);
                                             §§push(_loc2_);
                                             if(!(_loc4_ && Boolean(_loc2_)))
                                             {
                                                §§push(_loc2_);
                                                if(!_loc4_)
                                                {
                                                   addr148:
                                                   §§push(§§pop() - this.cachedStartTime);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§pop() * this.cachedTimeScale);
                                                      if(_loc3_)
                                                      {
                                                         addr145:
                                                         §§push(§§pop() / param1);
                                                      }
                                                   }
                                                   §§pop().cachedStartTime = §§pop() - §§pop();
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr151);
                                                   }
                                                   §§goto(addr156);
                                                }
                                                §§goto(addr145);
                                             }
                                             §§goto(addr148);
                                          }
                                          addr151:
                                          this.cachedTimeScale = param1;
                                          if(!_loc4_)
                                          {
                                             addr156:
                                             setDirtyCache(false);
                                          }
                                          return;
                                          addr105:
                                       }
                                       §§goto(addr113);
                                    }
                                 }
                              }
                              if(!§§pop())
                              {
                                 §§push(this.timeline.cachedTotalTime);
                                 if(_loc4_)
                                 {
                                 }
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr53);
                  }
               }
               §§goto(addr61);
            }
            §§goto(addr113);
         }
         §§goto(addr90);
      }
      
      public function get useFrames() : Boolean
      {
         var _loc1_:SimpleTimeline = this.timeline;
         while(_loc1_.timeline)
         {
            _loc1_ = _loc1_.timeline;
         }
         return Boolean(_loc1_ == TweenLite.rootFramesTimeline);
      }
      
      override public function get rawTime() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.cachedPaused);
            if(_loc1_)
            {
               §§push(§§pop());
               if(_loc1_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        §§pop();
                        if(_loc1_)
                        {
                           §§push(this.cachedTotalTime != 0);
                           if(!(_loc2_ && _loc1_))
                           {
                              addr64:
                              if(§§pop())
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                 }
                              }
                              §§goto(addr88);
                           }
                           §§pop();
                           if(!_loc2_)
                           {
                              §§push(this.cachedTotalTime != this.cachedTotalDuration);
                           }
                        }
                        §§goto(addr91);
                     }
                  }
                  addr88:
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        §§goto(addr91);
                     }
                  }
                  §§push(this.timeline.rawTime - this.cachedStartTime);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop() * this.cachedTimeScale);
                  }
                  return §§pop();
               }
            }
            §§goto(addr64);
         }
         addr91:
         return this.cachedTotalTime;
      }
   }
}
