package com.greensock.core
{
   public class SimpleTimeline extends TweenCore
   {
       
      
      protected var _firstChild:TweenCore;
      
      protected var _lastChild:TweenCore;
      
      public var autoRemoveChildren:Boolean;
      
      public function SimpleTimeline(param1:Object = null)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super(0,param1);
         }
      }
      
      public function insert(param1:TweenCore, param2:* = 0) : TweenCore
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:SimpleTimeline = param1.timeline;
         §§push(param1.cachedOrphan);
         if(!(_loc5_ && param2))
         {
            §§push(!§§pop());
            if(!(_loc5_ && Boolean(this)))
            {
               §§push(§§pop());
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(_loc4_ || Boolean(_loc3_))
                     {
                        addr48:
                        if(Boolean(_loc3_))
                        {
                           if(!_loc5_)
                           {
                              _loc3_.remove(param1,true);
                              addr55:
                              param1.timeline = this;
                              if(_loc4_ || Boolean(this))
                              {
                                 param1.cachedStartTime = Number(param2) + param1.delay;
                                 if(!(_loc5_ && param2))
                                 {
                                    if(param1.gc)
                                    {
                                       param1.setEnabled(true,true);
                                       addr87:
                                       §§push(param1.cachedPaused);
                                       if(_loc4_ || Boolean(this))
                                       {
                                          addr105:
                                          if(§§pop())
                                          {
                                             §§pop();
                                             if(!(_loc5_ && Boolean(param1)))
                                             {
                                                §§push(_loc3_ == this);
                                                if(!(_loc5_ && Boolean(_loc3_)))
                                                {
                                                   addr125:
                                                   addr124:
                                                   if(§§pop())
                                                   {
                                                   }
                                                   §§push(this._lastChild);
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr169:
                                                         this._lastChild.nextNode = param1;
                                                         if(_loc4_ || Boolean(_loc3_))
                                                         {
                                                            addr191:
                                                            param1.prevNode = this._lastChild;
                                                            this._lastChild = param1;
                                                            if(!(_loc5_ && Boolean(param1)))
                                                            {
                                                               addr205:
                                                               param1.nextNode = null;
                                                            }
                                                            param1.cachedOrphan = false;
                                                            return param1;
                                                            addr178:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         this._firstChild = param1;
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr191);
                                                         }
                                                      }
                                                      §§goto(addr205);
                                                   }
                                                   §§goto(addr169);
                                                }
                                                §§goto(addr125);
                                             }
                                             §§push(param1);
                                             §§push(param1.cachedStartTime);
                                             if(_loc4_)
                                             {
                                                §§push(this.rawTime);
                                                if(!(_loc5_ && param2))
                                                {
                                                   §§push(param1.cachedStartTime);
                                                   if(_loc4_)
                                                   {
                                                      addr155:
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc5_ && Boolean(_loc3_)))
                                                      {
                                                         §§push(param1.cachedTimeScale);
                                                      }
                                                      §§pop().cachedPauseTime = §§pop() + §§pop();
                                                      §§goto(addr125);
                                                   }
                                                   §§push(§§pop() / §§pop());
                                                }
                                             }
                                             §§goto(addr155);
                                          }
                                          §§goto(addr125);
                                       }
                                       §§goto(addr124);
                                    }
                                 }
                                 §§goto(addr87);
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr55);
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr48);
               }
               §§goto(addr105);
            }
            §§goto(addr125);
         }
         §§goto(addr48);
      }
      
      public function remove(param1:TweenCore, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && Boolean(param1)))
         {
            §§push(param1.cachedOrphan);
            if(_loc3_)
            {
               if(§§pop())
               {
                  return;
               }
               §§push(param2);
            }
            if(!§§pop())
            {
               param1.setEnabled(false,true);
            }
            §§push(param1.nextNode);
            if(_loc3_ || Boolean(param1))
            {
               if(§§pop())
               {
                  §§push(param1.nextNode);
               }
               else
               {
                  if(this._lastChild == param1)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        this._lastChild = param1.prevNode;
                        addr70:
                        §§push(param1.prevNode);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || Boolean(param1))
                              {
                                 addr96:
                                 param1.prevNode.nextNode = param1.nextNode;
                                 if(_loc4_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr106:
                                 this._firstChild = param1.nextNode;
                              }
                           }
                           else if(this._firstChild == param1)
                           {
                              §§goto(addr106);
                           }
                           param1.cachedOrphan = true;
                           return;
                        }
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr70);
               }
               §§goto(addr70);
            }
            §§pop().prevNode = param1.prevNode;
         }
         §§goto(addr70);
      }
      
      override public function renderTime(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:TweenCore = null;
         var _loc4_:TweenCore = this._firstChild;
         if(_loc8_)
         {
            this.cachedTotalTime = param1;
            if(_loc8_ || Boolean(this))
            {
               addr35:
               this.cachedTime = param1;
            }
            for(; _loc4_; _loc4_ = _loc6_)
            {
               _loc6_ = _loc4_.nextNode;
               if(!(_loc8_ || Boolean(this)))
               {
                  continue;
               }
               §§push(_loc4_.active);
               §§push(_loc4_.active);
               if(_loc8_ || Boolean(this))
               {
                  if(!§§pop())
                  {
                     §§pop();
                     §§push(param1);
                     if(!_loc7_)
                     {
                        §§push(§§pop() >= _loc4_.cachedStartTime);
                        §§push(§§pop() >= _loc4_.cachedStartTime);
                        if(!(_loc7_ && param2))
                        {
                           addr84:
                           if(§§pop())
                           {
                              §§pop();
                              §§push(!_loc4_.cachedPaused);
                           }
                           if(§§pop())
                           {
                              §§pop();
                              if(_loc7_ && param3)
                              {
                                 continue;
                              }
                              addr96:
                              if(_loc4_.gc)
                              {
                                 continue;
                              }
                              if(!(_loc7_ && Boolean(param1)))
                              {
                                 §§push(_loc4_.cachedReversed);
                                 if(_loc8_ || Boolean(this))
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          continue;
                                       }
                                       §§push(_loc4_);
                                       §§push(param1);
                                       if(!(_loc7_ && param3))
                                       {
                                          §§push(_loc4_.cachedStartTime);
                                          if(_loc8_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc7_)
                                             {
                                                addr141:
                                                §§push(§§pop() * _loc4_.cachedTimeScale);
                                             }
                                             §§pop().renderTime(§§pop(),param2,false);
                                             continue;
                                          }
                                       }
                                       §§goto(addr141);
                                    }
                                    else
                                    {
                                       §§push(_loc4_.cacheIsDirty);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       continue;
                                    }
                                    §§push(_loc4_.totalDuration);
                                    if(!(_loc7_ && Boolean(this)))
                                    {
                                       §§push(§§pop());
                                       if(!(_loc7_ && Boolean(this)))
                                       {
                                          addr168:
                                       }
                                    }
                                    §§goto(addr168);
                                 }
                                 else
                                 {
                                    §§push(_loc4_.cachedTotalDuration);
                                    if(!(_loc7_ && param2))
                                    {
                                       §§push(§§pop());
                                       if(_loc8_ || param2)
                                       {
                                          addr186:
                                          §§push(§§pop());
                                       }
                                       _loc5_ = §§pop();
                                       addr188:
                                       §§push(_loc4_);
                                       §§push(_loc5_);
                                       if(!_loc7_)
                                       {
                                          §§push(param1);
                                          if(!_loc7_)
                                          {
                                             §§push(_loc4_.cachedStartTime);
                                             if(_loc8_ || Boolean(this))
                                             {
                                                addr222:
                                                §§push(§§pop() - §§pop());
                                                if(!(_loc7_ && param3))
                                                {
                                                   §§push(_loc4_.cachedTimeScale);
                                                }
                                                §§pop().renderTime(§§pop() - §§pop(),param2,false);
                                                continue;
                                             }
                                             §§push(§§pop() * §§pop());
                                          }
                                       }
                                       §§goto(addr222);
                                    }
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr188);
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr96);
               }
               §§goto(addr84);
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function get rawTime() : Number
      {
         return this.cachedTotalTime;
      }
   }
}
