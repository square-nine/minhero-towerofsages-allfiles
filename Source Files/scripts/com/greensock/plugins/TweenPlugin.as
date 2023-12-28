package com.greensock.plugins
{
   import com.greensock.*;
   import com.greensock.core.*;
   
   public class TweenPlugin
   {
      
      public static const VERSION:Number = 1.4;
      
      public static const API:Number = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || TweenPlugin)
         {
            VERSION = 1.4;
            if(!_loc2_)
            {
               addr25:
               API = 1;
            }
            return;
         }
         §§goto(addr25);
      }
      
      public var propName:String;
      
      public var overwriteProps:Array;
      
      public var round:Boolean;
      
      public var priority:int = 0;
      
      public var activeDisable:Boolean;
      
      public var onInitAllProps:Function;
      
      public var onComplete:Function;
      
      public var onEnable:Function;
      
      public var onDisable:Function;
      
      protected var _tweens:Array;
      
      protected var _changeFactor:Number = 0;
      
      public function TweenPlugin()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Boolean(this)))
         {
            this._tweens = [];
            if(_loc1_ || _loc2_)
            {
               super();
            }
         }
      }
      
      private static function onTweenEvent(param1:String, param2:TweenLite) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:Array = null;
         var _loc6_:* = 0;
         var _loc3_:PropTween = param2.cachedPT1;
         if(_loc8_ || Boolean(param2))
         {
            if(param1 == "onInitAllProps")
            {
               addr34:
               _loc5_ = [];
               if(!(_loc9_ && TweenPlugin))
               {
                  _loc6_ = 0;
               }
               while(_loc3_)
               {
                  var _loc7_:*;
                  _loc5_[_loc7_ = _loc6_++] = _loc3_;
                  _loc3_ = _loc3_.nextNode;
               }
               if(_loc8_ || TweenPlugin)
               {
                  _loc5_.sortOn("priority",Array.NUMERIC | Array.DESCENDING);
                  if(!_loc9_)
                  {
                     addr81:
                     while(true)
                     {
                        §§push(_loc6_);
                        if(!(_loc9_ && Boolean(param2)))
                        {
                           §§push(§§pop() - 1);
                           if(_loc8_ || Boolean(_loc3_))
                           {
                              addr141:
                              §§push(§§pop());
                              if(_loc8_ || Boolean(param2))
                              {
                                 §§push(§§pop());
                                 if(_loc8_)
                                 {
                                    _loc6_ = §§pop();
                                    addr153:
                                    §§push(-1);
                                 }
                              }
                              if(§§pop() <= §§pop())
                              {
                                 break;
                              }
                              PropTween(_loc5_[_loc6_]).nextNode = _loc5_[_loc6_ + 1];
                              if(_loc8_ || Boolean(param2))
                              {
                                 PropTween(_loc5_[_loc6_]).prevNode = _loc5_[_loc6_ - 1];
                                 if(!(_loc8_ || Boolean(param2)))
                                 {
                                    break;
                                 }
                              }
                              continue;
                           }
                           §§goto(addr153);
                        }
                        §§goto(addr141);
                     }
                  }
                  _loc3_ = param2.cachedPT1 = _loc5_[0];
                  addr166:
                  for(; _loc3_; _loc3_ = _loc3_.nextNode)
                  {
                     §§push(_loc3_.isPlugin);
                     if(_loc8_ || Boolean(param1))
                     {
                        §§push(§§pop());
                        if(_loc8_)
                        {
                           if(§§pop())
                           {
                              if(!_loc9_)
                              {
                                 §§goto(addr184);
                              }
                           }
                           §§goto(addr199);
                        }
                        §§goto(addr265);
                     }
                     addr184:
                     §§pop();
                     if(_loc8_ || TweenPlugin)
                     {
                        §§push(Boolean(_loc3_.target[param1]));
                        if(!_loc9_)
                        {
                           addr199:
                           if(§§pop())
                           {
                              if(_loc9_ && Boolean(_loc3_))
                              {
                                 §§push(true);
                                 if(_loc8_ || Boolean(_loc3_))
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc9_ && Boolean(param1))
                                    {
                                    }
                                    break;
                                 }
                                 addr265:
                              }
                              if(_loc3_.target.activeDisable)
                              {
                                 if(!(_loc8_ || TweenPlugin))
                                 {
                                    continue;
                                 }
                              }
                              _loc3_.target[param1]();
                              §§goto(addr234);
                           }
                           continue;
                        }
                        §§goto(addr265);
                     }
                     addr234:
                     if(_loc9_ && TweenPlugin)
                     {
                        break;
                     }
                     continue;
                     addr265:
                     return §§pop();
                  }
                  §§goto(addr265);
                  §§push(_loc4_);
               }
               §§goto(addr81);
            }
            §§goto(addr166);
         }
         §§goto(addr34);
      }
      
      public static function activate(param1:Array) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = null;
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            TweenLite.onPluginEvent = TweenPlugin.onTweenEvent;
         }
         var _loc2_:* = int(param1.length);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc5_ && TweenPlugin))
            {
               §§push(§§pop());
               if(!_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               _loc2_ = §§pop();
            }
            if(§§pop())
            {
               §§push(param1);
               if(!(_loc5_ && TweenPlugin))
               {
                  §§push(_loc2_);
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     if(!§§pop()[§§pop()].hasOwnProperty("API"))
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        break;
                     }
                     addr63:
                     §§push(param1);
                     §§push(_loc2_);
                  }
                  _loc3_ = new (§§pop()[§§pop()] as Class)();
                  if(_loc4_ || Boolean(param1))
                  {
                     TweenLite.plugins[_loc3_.propName] = param1[_loc2_];
                  }
                  continue;
               }
               §§goto(addr63);
            }
            break;
         }
         return true;
      }
      
      public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.addTween(param1,this.propName,param1[this.propName],param2,this.propName);
         }
         return true;
      }
      
      protected function addTween(param1:Object, param2:String, param3:Number, param4:*, param5:String = null) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = NaN;
         if(!(_loc7_ && Boolean(this)))
         {
            if(param4 != null)
            {
               if(!(_loc7_ && Boolean(param3)))
               {
                  if(typeof param4 == "number")
                  {
                     if(_loc8_ || Boolean(param1))
                     {
                        addr44:
                        §§push(Number(param4) - param3);
                        if(_loc8_)
                        {
                           §§push(§§pop());
                           if(_loc7_ && Boolean(this))
                           {
                           }
                           addr76:
                           if((_loc6_ = §§pop()) != 0)
                           {
                              if(_loc8_ || Boolean(param3))
                              {
                                 this._tweens[this._tweens.length] = new PropTween(param1,param2,param3,_loc6_,param5 || param2,false);
                                 addr114:
                                 return;
                                 addr94:
                              }
                           }
                           §§goto(addr114);
                        }
                        addr73:
                        §§push(§§pop());
                        if(_loc8_)
                        {
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr114);
                  }
                  else
                  {
                     §§push(Number(param4));
                     if(_loc8_)
                     {
                        §§goto(addr73);
                     }
                  }
                  §§goto(addr76);
               }
               §§goto(addr94);
            }
            §§goto(addr114);
         }
         §§goto(addr44);
      }
      
      protected function updateTweens(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:PropTween = null;
         var _loc4_:* = NaN;
         var _loc2_:* = int(this._tweens.length);
         if(!_loc5_)
         {
            if(this.round)
            {
               addr29:
               loop1:
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     §§push(§§pop() - 1);
                     if(!_loc5_)
                     {
                        addr133:
                        §§push(§§pop());
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           §§push(§§pop());
                           if(_loc6_ || Boolean(this))
                           {
                              _loc2_ = §§pop();
                              if(_loc6_ || Boolean(param1))
                              {
                                 §§push(-1);
                                 if(!(_loc5_ && Boolean(_loc3_)))
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       if(_loc5_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§push(this._tweens);
                                       if(!(_loc5_ && Boolean(this)))
                                       {
                                          §§push(_loc2_);
                                          if(_loc6_)
                                          {
                                             _loc3_ = §§pop()[§§pop()];
                                             if(_loc6_)
                                             {
                                                §§push(_loc3_.start);
                                                if(!(_loc5_ && Boolean(_loc2_)))
                                                {
                                                   §§push(_loc3_.change);
                                                   if(_loc6_ || Boolean(_loc3_))
                                                   {
                                                      §§push(§§pop() * param1);
                                                      if(_loc6_ || Boolean(_loc3_))
                                                      {
                                                         addr75:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc5_ && Boolean(_loc2_))
                                                            {
                                                            }
                                                            addr88:
                                                            if(§§pop() > 0)
                                                            {
                                                               if(!(_loc5_ && Boolean(param1)))
                                                               {
                                                                  _loc3_.target[_loc3_.property] = _loc4_ + 0.5 >> 0;
                                                                  addr97:
                                                                  if(_loc6_)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               _loc3_.target[_loc3_.property] = _loc4_ - 0.5 >> 0;
                                                            }
                                                            continue;
                                                         }
                                                         §§push(§§pop());
                                                      }
                                                      _loc4_ = §§pop();
                                                      §§goto(addr88);
                                                   }
                                                   §§goto(addr75);
                                                }
                                                §§goto(addr88);
                                             }
                                             §§goto(addr97);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                _loc3_ = §§pop()[§§pop()];
                                                if(!(_loc5_ && Boolean(this)))
                                                {
                                                   _loc3_.target[_loc3_.property] = _loc3_.start + _loc3_.change * param1;
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc5_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - 1);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     addr215:
                                                                     while(true)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        addr216:
                                                                        while(true)
                                                                        {
                                                                           break loop1;
                                                                        }
                                                                     }
                                                                     addr215:
                                                                  }
                                                                  break loop1;
                                                               }
                                                               §§goto(addr215);
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         addr206:
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                   addr218:
                                                   return;
                                                   addr203:
                                                }
                                                §§goto(addr203);
                                             }
                                             addr174:
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr174);
                                       }
                                       addr173:
                                    }
                                    §§goto(addr218);
                                 }
                                 §§goto(addr215);
                              }
                              §§goto(addr206);
                           }
                           break;
                        }
                        break;
                     }
                     §§goto(addr216);
                  }
                  §§goto(addr133);
               }
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     §§goto(addr173);
                     §§push(this._tweens);
                  }
                  §§goto(addr218);
               }
            }
            §§goto(addr218);
         }
         §§goto(addr29);
      }
      
      public function get changeFactor() : Number
      {
         return this._changeFactor;
      }
      
      public function set changeFactor(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.updateTweens(param1);
            if(_loc3_ || Boolean(param1))
            {
               this._changeFactor = param1;
            }
         }
      }
      
      public function killProps(param1:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.overwriteProps.length);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               §§push(§§pop() - 1);
               §§push(§§pop() - 1);
               if(_loc3_ || Boolean(_loc2_))
               {
                  §§push(§§pop());
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc2_ = §§pop();
                     if(_loc3_ || Boolean(this))
                     {
                        §§push(-1);
                        if(!_loc4_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              §§push(this._tweens);
                              if(_loc3_ || Boolean(param1))
                              {
                                 addr131:
                                 _loc2_ = int(§§pop().length);
                                 addr129:
                                 if(!(_loc4_ && Boolean(param1)))
                                 {
                                    addr139:
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    break loop0;
                                 }
                                 return;
                                 addr158:
                              }
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr156:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr157:
                                    while(true)
                                    {
                                       §§pop().splice(§§pop(),§§pop());
                                       §§goto(addr158);
                                    }
                                 }
                              }
                              addr155:
                           }
                           else
                           {
                              §§push(this.overwriteProps);
                              if(_loc3_ || Boolean(this))
                              {
                                 §§push(_loc2_);
                                 if(!(_loc4_ && Boolean(_loc2_)))
                                 {
                                    §§push(§§pop()[§§pop()] in param1);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       if(!§§pop())
                                       {
                                          continue;
                                       }
                                       §§push(this.overwriteProps);
                                       if(_loc3_ || Boolean(this))
                                       {
                                          §§push(_loc2_);
                                          if(_loc3_)
                                          {
                                             §§push(1);
                                             if(_loc3_ || Boolean(_loc2_))
                                             {
                                                §§pop().splice(§§pop(),§§pop());
                                                if(_loc3_ || Boolean(_loc2_))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr139);
                                             }
                                             §§goto(addr157);
                                          }
                                          §§goto(addr156);
                                       }
                                       else
                                       {
                                          §§goto(addr129);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             §§goto(addr155);
                                             §§push(this._tweens);
                                          }
                                       }
                                       §§goto(addr129);
                                    }
                                    addr150:
                                 }
                                 §§goto(addr156);
                              }
                           }
                           §§goto(addr129);
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc3_ || Boolean(this))
                           {
                              addr190:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr191:
                                 while(true)
                                 {
                                    §§push(-1);
                                 }
                              }
                              addr190:
                           }
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 §§goto(addr150);
                                 §§push(PropTween(this._tweens[_loc2_]).name in param1);
                              }
                              §§goto(addr129);
                           }
                        }
                        addr182:
                     }
                     §§goto(addr131);
                  }
               }
               §§goto(addr190);
            }
            break;
         }
         while(true)
         {
            §§push(§§pop() - 1);
            if(!(_loc4_ && Boolean(this)))
            {
               §§push(§§pop());
               if(!(_loc4_ && Boolean(this)))
               {
                  §§goto(addr182);
               }
               §§goto(addr190);
            }
            §§goto(addr191);
         }
      }
   }
}
