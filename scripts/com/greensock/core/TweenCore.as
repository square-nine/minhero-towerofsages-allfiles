package com.greensock.core
{
   import com.greensock.*;
   
   public class TweenCore
   {
      
      public static const version:Number = 1.693;
      
      protected static var _classInitted:Boolean;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            version = 1.693;
         }
      }
      
      protected var _delay:Number;
      
      protected var _hasUpdate:Boolean;
      
      protected var _rawPrevTime:Number = -1;
      
      public var vars:Object;
      
      public var active:Boolean;
      
      public var gc:Boolean;
      
      public var initted:Boolean;
      
      public var timeline:SimpleTimeline;
      
      public var cachedStartTime:Number;
      
      public var cachedTime:Number;
      
      public var cachedTotalTime:Number;
      
      public var cachedDuration:Number;
      
      public var cachedTotalDuration:Number;
      
      public var cachedTimeScale:Number;
      
      public var cachedPauseTime:Number;
      
      public var cachedReversed:Boolean;
      
      public var nextNode:TweenCore;
      
      public var prevNode:TweenCore;
      
      public var cachedOrphan:Boolean;
      
      public var cacheIsDirty:Boolean;
      
      public var cachedPaused:Boolean;
      
      public var data:*;
      
      public function TweenCore(param1:Number = 0, param2:Object = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super();
            §§push(this);
            if(_loc5_)
            {
               §§pop().vars = param2 != null ? param2 : {};
               if(!_loc6_)
               {
                  if(this.vars.isGSVars)
                  {
                     this.vars = this.vars.vars;
                  }
                  this.cachedDuration = this.cachedTotalDuration = param1;
                  §§push(this);
                  if(!(_loc6_ && _loc3_))
                  {
                     if(this.vars.delay)
                     {
                        addr61:
                        §§push(Number(this.vars.delay));
                        if(_loc6_ && Boolean(param1))
                        {
                        }
                     }
                     else
                     {
                        §§push(0);
                     }
                     §§pop()._delay = §§pop();
                     §§push(this);
                     if(!_loc6_)
                     {
                        if(this.vars.timeScale)
                        {
                           addr85:
                           §§push(Number(this.vars.timeScale));
                           if(_loc6_)
                           {
                           }
                        }
                        else
                        {
                           §§push(1);
                        }
                        §§pop().cachedTimeScale = §§pop();
                        this.active = Boolean(param1 == 0 && this._delay == 0 && this.vars.immediateRender != false);
                        addr97:
                        if(_loc5_)
                        {
                           this.cachedTotalTime = this.cachedTime = 0;
                           this.data = this.vars.data;
                           if(!(_loc6_ && Boolean(this)))
                           {
                              §§push(_classInitted);
                              if(!_loc6_)
                              {
                                 if(!§§pop())
                                 {
                                    addr157:
                                    if(!isNaN(TweenLite.rootFrame))
                                    {
                                       return;
                                    }
                                    addr162:
                                    TweenLite.initClass();
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       _classInitted = true;
                                       if(_loc5_)
                                       {
                                       }
                                    }
                                    addr204:
                                    var _loc3_:SimpleTimeline = TweenLite.rootFramesTimeline;
                                    addr197:
                                    if(!(_loc6_ && Boolean(param1)))
                                    {
                                       _loc3_.insert(this,_loc3_.cachedTotalTime);
                                       if(_loc5_)
                                       {
                                          if(this.vars.reversed)
                                          {
                                             if(_loc5_ || Boolean(param2))
                                             {
                                                this.cachedReversed = true;
                                                if(_loc5_ || Boolean(this))
                                                {
                                                   addr248:
                                                   if(this.vars.paused)
                                                   {
                                                      if(_loc5_ || Boolean(this))
                                                      {
                                                         this.paused = true;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr248);
                                       }
                                       return;
                                    }
                                    §§goto(addr248);
                                 }
                                 §§push(this.vars.timeline is SimpleTimeline);
                              }
                              if(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(this.vars.timeline);
                                 }
                                 else
                                 {
                                    §§goto(addr197);
                                 }
                              }
                              else if(this.vars.useFrames)
                              {
                                 §§goto(addr204);
                              }
                              else
                              {
                                 §§push(TweenLite.rootTimeline);
                              }
                              §§goto(addr204);
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr162);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr61);
               }
               §§goto(addr162);
            }
            §§goto(addr23);
         }
         §§goto(addr97);
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.reversed = false;
            if(_loc2_)
            {
               this.paused = false;
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.paused = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.paused = false;
         }
      }
      
      public function restart(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.reversed = false;
            if(_loc3_ || param2)
            {
               this.paused = false;
               addr25:
               if(_loc3_)
               {
                  §§push(this);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(param1)
                     {
                        addr54:
                        §§push(this._delay);
                        if(_loc3_)
                        {
                           §§push(-§§pop());
                           if(_loc3_)
                           {
                              §§push(§§pop());
                              if(_loc4_ && _loc3_)
                              {
                              }
                           }
                           §§goto(addr72);
                        }
                     }
                     else
                     {
                        §§push(0);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr54);
               }
            }
            addr72:
            §§pop().setTotalTime(§§pop(),param2);
            return;
         }
         §§goto(addr25);
      }
      
      public function reverse(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(this)))
         {
            this.reversed = true;
            if(!(_loc2_ && param1))
            {
               §§push(param1);
               if(_loc3_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        this.paused = false;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr81:
                           return;
                           addr71:
                        }
                     }
                     §§goto(addr81);
                  }
                  else
                  {
                     §§push(this.gc);
                  }
                  §§goto(addr81);
               }
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     this.setEnabled(true,false);
                  }
               }
            }
            §§goto(addr81);
         }
         §§goto(addr71);
      }
      
      public function renderTime(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function complete(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!param1)
            {
               this.renderTime(this.totalDuration,param2,false);
               return;
            }
            if(this.timeline.autoRemoveChildren)
            {
               this.setEnabled(false,false);
            }
            else
            {
               this.active = false;
            }
            §§push(param2);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  §§push(this.vars.onComplete);
                  §§push(this.vars.onComplete);
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && param2))
                        {
                           §§pop();
                           §§push(this.cachedTotalTime);
                           if(_loc3_ || _loc3_)
                           {
                              addr78:
                              §§push(§§pop() >= this.cachedTotalDuration);
                              §§push(§§pop() >= this.cachedTotalDuration);
                              if(_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    §§push(!this.cachedReversed);
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       this.vars.onComplete.apply(null,this.vars.onCompleteParams);
                                       if(_loc3_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.cachedReversed);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop());
                                       §§push(§§pop());
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr113:
                                          if(§§pop())
                                          {
                                             §§goto(addr114);
                                          }
                                       }
                                       §§goto(addr133);
                                    }
                                    addr114:
                                    §§pop();
                                    §§push(this.cachedTotalTime == 0);
                                    if(!(_loc4_ && param1))
                                    {
                                       addr133:
                                       §§push(§§pop() && Boolean(this.vars.onReverseComplete));
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          addr143:
                                          this.vars.onReverseComplete.apply(null,this.vars.onReverseCompleteParams);
                                       }
                                    }
                                 }
                                 §§goto(addr151);
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr114);
                        }
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr133);
               }
               addr151:
               return;
            }
            §§goto(addr78);
         }
         §§goto(addr143);
      }
      
      public function invalidate() : void
      {
      }
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this);
         §§push(param1);
         if(_loc3_)
         {
            §§push(!§§pop());
         }
         §§pop().gc = §§pop();
         if(param1)
         {
            this.active = Boolean(!this.cachedPaused && this.cachedTotalTime > 0 && this.cachedTotalTime < this.cachedTotalDuration);
            §§push(param2);
            if(!_loc4_)
            {
               §§push(!§§pop());
            }
            §§push(§§pop());
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_ || param2)
                  {
                     §§pop();
                     §§push(this.cachedOrphan);
                  }
                  else
                  {
                     addr123:
                     if(§§pop())
                     {
                        if(_loc3_ || param2)
                        {
                           addr133:
                           this.timeline.remove(this,true);
                           return false;
                           addr136:
                           addr131:
                        }
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr136);
               }
               if(§§pop())
               {
                  §§push(this.timeline);
                  if(_loc3_ || Boolean(this))
                  {
                     §§push(this);
                     §§push(this.cachedStartTime);
                     if(!(_loc4_ && param2))
                     {
                        §§push(§§pop() - this._delay);
                     }
                     §§pop().insert(§§pop(),§§pop());
                     if(!_loc4_)
                     {
                        addr98:
                        §§goto(addr136);
                     }
                     else
                     {
                        §§goto(addr131);
                     }
                  }
                  §§goto(addr133);
               }
               §§goto(addr98);
            }
            else
            {
               addr116:
               if(§§pop())
               {
                  §§pop();
                  §§push(!this.cachedOrphan);
                  if(!_loc4_)
                  {
                     §§goto(addr123);
                  }
                  §§goto(addr133);
               }
            }
            §§goto(addr123);
         }
         else
         {
            this.active = false;
            if(_loc3_)
            {
               §§push(param2);
               if(_loc3_)
               {
                  §§goto(addr116);
                  §§push(!§§pop());
                  §§push(!§§pop());
               }
               §§goto(addr123);
            }
         }
         §§goto(addr133);
      }
      
      public function kill() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.setEnabled(false,false);
         }
      }
      
      protected function setDirtyCache(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            var _loc2_:TweenCore = param1 ? this : this.timeline;
            while(_loc2_)
            {
               _loc2_.cacheIsDirty = true;
               if(!(_loc4_ || Boolean(this)))
               {
                  break;
               }
               _loc2_ = _loc2_.timeline;
            }
            return;
         }
         §§goto(addr18);
      }
      
      protected function setTotalTime(param1:Number, param2:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         §§push(this.timeline);
         if(!_loc6_)
         {
            if(§§pop())
            {
               if(_loc5_)
               {
                  §§push(this.cachedPaused);
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           §§push(this.cachedPauseTime);
                           if(_loc5_)
                           {
                              addr50:
                              _loc3_ = §§pop();
                              §§push(this.cachedReversed);
                              if(_loc5_ || Boolean(this))
                              {
                                 addr61:
                                 if(§§pop())
                                 {
                                    addr64:
                                    if(this.cacheIsDirty)
                                    {
                                       addr74:
                                       §§push(this.totalDuration);
                                       if(!_loc6_)
                                       {
                                          addr81:
                                          §§push(§§pop());
                                       }
                                       _loc4_ = §§pop();
                                       §§push(this);
                                       §§push(_loc3_);
                                       if(_loc5_)
                                       {
                                          §§push(_loc4_);
                                          if(!_loc6_)
                                          {
                                             §§push(param1);
                                             if(_loc5_ || Boolean(param1))
                                             {
                                                §§goto(addr109);
                                             }
                                             §§push(§§pop() / §§pop());
                                          }
                                          addr109:
                                          §§goto(addr110);
                                       }
                                       addr110:
                                       §§push(§§pop() - §§pop());
                                       if(_loc5_ || param2)
                                       {
                                          §§push(this.cachedTimeScale);
                                       }
                                       §§pop().cachedStartTime = §§pop() - §§pop();
                                       §§goto(addr138);
                                    }
                                    else
                                    {
                                       §§push(this.cachedTotalDuration);
                                    }
                                    §§goto(addr81);
                                 }
                                 else
                                 {
                                    §§push(this);
                                    §§push(_loc3_);
                                    if(!(_loc6_ && Boolean(param1)))
                                    {
                                       §§push(param1);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() / this.cachedTimeScale);
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§pop().cachedStartTime = §§pop();
                                    if(!_loc6_)
                                    {
                                       addr138:
                                       §§goto(addr140);
                                    }
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr64);
                           }
                           §§goto(addr74);
                        }
                        §§goto(addr149);
                     }
                     else
                     {
                        §§push(this.timeline);
                        if(_loc5_)
                        {
                           §§push(Number(§§pop().cachedTotalTime));
                           if(_loc5_ || Boolean(param1))
                           {
                              §§goto(addr50);
                           }
                           §§goto(addr74);
                        }
                        addr140:
                        if(!this.timeline.cacheIsDirty)
                        {
                           this.setDirtyCache(false);
                        }
                        if(this.cachedTotalTime != param1)
                        {
                           addr149:
                           this.renderTime(param1,param2,false);
                           §§goto(addr154);
                        }
                        addr154:
                        return;
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr61);
               }
               §§goto(addr109);
            }
            §§goto(addr149);
         }
         §§goto(addr109);
      }
      
      public function get delay() : Number
      {
         return this._delay;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this);
            §§push(this.startTime);
            if(_loc3_ || _loc2_)
            {
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() - this._delay);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().startTime = §§pop();
            if(!_loc2_)
            {
               this._delay = param1;
            }
         }
      }
      
      public function get duration() : Number
      {
         return this.cachedDuration;
      }
      
      public function set duration(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() / this.cachedDuration);
            if(_loc4_)
            {
               addr21:
               §§push(§§pop());
            }
            var _loc2_:* = §§pop();
            if(!(_loc5_ && Boolean(param1)))
            {
               this.cachedDuration = this.cachedTotalDuration = param1;
               if(_loc4_)
               {
                  this.setDirtyCache(true);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(this.active);
                     §§push(this.active);
                     if(_loc4_ || Boolean(this))
                     {
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              §§pop();
                              addr73:
                              §§push(this.cachedPaused);
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(!§§pop());
                                 if(!_loc5_)
                                 {
                                    addr92:
                                    if(§§pop())
                                    {
                                       §§pop();
                                       if(_loc4_)
                                       {
                                          addr97:
                                          §§push(param1 == 0);
                                          if(!_loc5_)
                                          {
                                             addr103:
                                             if(!§§pop())
                                             {
                                                addr104:
                                                §§push(this);
                                                §§push(this.cachedTotalTime);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() * _loc2_);
                                                }
                                                §§pop().setTotalTime(§§pop(),true);
                                             }
                                          }
                                          §§goto(addr103);
                                       }
                                       return;
                                    }
                                 }
                                 §§goto(addr103);
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr103);
                        }
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr104);
               }
               §§goto(addr73);
            }
            §§goto(addr97);
         }
         §§goto(addr21);
      }
      
      public function get totalDuration() : Number
      {
         return this.cachedTotalDuration;
      }
      
      public function set totalDuration(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(param1))
         {
            this.duration = param1;
         }
      }
      
      public function get currentTime() : Number
      {
         return this.cachedTime;
      }
      
      public function set currentTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(param1))
         {
            this.setTotalTime(param1,false);
         }
      }
      
      public function get totalTime() : Number
      {
         return this.cachedTotalTime;
      }
      
      public function set totalTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.setTotalTime(param1,false);
         }
      }
      
      public function get startTime() : Number
      {
         return this.cachedStartTime;
      }
      
      public function set startTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(this))
         {
            §§push(this.timeline);
            if(!_loc3_)
            {
               §§push(§§pop() != null);
               if(_loc2_ || Boolean(this))
               {
                  §§push(§§pop());
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || Boolean(param1))
                        {
                           §§pop();
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr68:
                              §§push(param1 == this.cachedStartTime);
                              if(!_loc3_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§pop();
                                    if(_loc2_)
                                    {
                                       §§push(this.gc);
                                       if(!_loc3_)
                                       {
                                          addr79:
                                          if(§§pop())
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                addr89:
                                                §§push(this.timeline);
                                                §§push(this);
                                                §§push(param1);
                                                if(_loc2_ || _loc3_)
                                                {
                                                   §§push(§§pop() - this._delay);
                                                }
                                                §§pop().insert(§§pop(),§§pop());
                                                if(!(_loc3_ && Boolean(param1)))
                                                {
                                                   addr116:
                                                }
                                             }
                                          }
                                          else
                                          {
                                             this.cachedStartTime = param1;
                                          }
                                       }
                                       §§goto(addr79);
                                    }
                                    §§goto(addr116);
                                 }
                              }
                              §§goto(addr79);
                           }
                           return;
                        }
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr68);
               }
               §§goto(addr79);
            }
            §§goto(addr89);
         }
         §§goto(addr116);
      }
      
      public function get reversed() : Boolean
      {
         return this.cachedReversed;
      }
      
      public function set reversed(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1 != this.cachedReversed)
            {
               if(_loc3_)
               {
                  this.cachedReversed = param1;
                  if(_loc3_)
                  {
                     addr34:
                     this.setTotalTime(this.cachedTotalTime,true);
                  }
               }
               §§goto(addr34);
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function get paused() : Boolean
      {
         return this.cachedPaused;
      }
      
      public function set paused(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.cachedPaused);
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§pop() == §§pop());
               if(!_loc2_)
               {
                  §§push(!§§pop());
                  §§push(!§§pop());
                  if(!(_loc2_ && param1))
                  {
                     addr38:
                     if(§§pop())
                     {
                        §§pop();
                        §§push(Boolean(this.timeline));
                        if(!_loc2_)
                        {
                           addr45:
                           if(§§pop())
                           {
                              §§push(param1);
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(§§pop())
                                 {
                                    this.cachedPauseTime = this.timeline.rawTime;
                                    if(_loc3_ || param1)
                                    {
                                       addr101:
                                       this.cachedPaused = param1;
                                       if(!_loc2_)
                                       {
                                          this.active = Boolean(!this.cachedPaused && this.cachedTotalTime > 0 && this.cachedTotalTime < this.cachedTotalDuration);
                                          if(!_loc2_)
                                          {
                                             addr133:
                                             §§push(param1);
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                addr150:
                                                addr148:
                                                addr149:
                                                §§push(!§§pop());
                                                if(!§§pop())
                                                {
                                                   §§pop();
                                                   §§goto(addr169);
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      this.setEnabled(true,false);
                                                   }
                                                }
                                             }
                                             §§goto(addr161);
                                          }
                                       }
                                       §§goto(addr133);
                                    }
                                    addr169:
                                    if(!(_loc2_ && param1))
                                    {
                                       addr161:
                                       §§push(this.gc);
                                    }
                                    return;
                                 }
                                 §§push(this);
                                 §§push(this.cachedStartTime);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§push(this.timeline.rawTime);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() - this.cachedPauseTime);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().cachedStartTime = §§pop();
                                 this.cachedPauseTime = NaN;
                                 this.setDirtyCache(false);
                                 §§goto(addr101);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr45);
                  }
                  §§goto(addr150);
               }
               §§goto(addr148);
            }
            §§goto(addr38);
         }
         §§goto(addr149);
      }
   }
}
