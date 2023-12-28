package com.greensock.plugins
{
   import com.greensock.core.*;
   import flash.filters.*;
   
   public class FilterPlugin extends TweenPlugin
   {
      
      public static const VERSION:Number = 2.03;
      
      public static const API:Number = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            VERSION = 2.03;
            if(!_loc1_)
            {
               API = 1;
            }
         }
      }
      
      protected var _target:Object;
      
      protected var _type:Class;
      
      protected var _filter:BitmapFilter;
      
      protected var _index:int;
      
      protected var _remove:Boolean;
      
      public function FilterPlugin()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      protected function initFilter(param1:Object, param2:BitmapFilter, param3:Array) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         var _loc7_:HexColorsPlugin = null;
         var _loc4_:Array = this._target.filters;
         if(!_loc9_)
         {
            var _loc8_:Object = param1 is BitmapFilter ? {} : param1;
            if(!(_loc9_ && Boolean(param1)))
            {
               this._index = -1;
               if(_loc10_)
               {
                  addr52:
                  if(_loc8_.index != null)
                  {
                     if(_loc10_)
                     {
                        addr58:
                        this._index = _loc8_.index;
                        if(!(_loc9_ && Boolean(param3)))
                        {
                           addr109:
                           §§push(this._index);
                           if(!(_loc9_ && Boolean(param1)))
                           {
                              addr118:
                              §§push(-1);
                              if(_loc10_ || Boolean(param1))
                              {
                                 addr126:
                                 if(§§pop() == §§pop() || _loc4_[this._index] == null || _loc8_.addFilter == true)
                                 {
                                    §§push(this);
                                    if(_loc10_ || Boolean(param3))
                                    {
                                       if(_loc8_.index != null)
                                       {
                                          addr156:
                                          §§push(int(_loc8_.index));
                                          if(_loc10_ || Boolean(this))
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§push(int(_loc4_.length));
                                       }
                                       §§pop()._index = §§pop();
                                       addr171:
                                       _loc4_[this._index] = param2;
                                       this._target.filters = _loc4_;
                                       addr180:
                                       this._filter = _loc4_[this._index];
                                       if(_loc8_.remove == true)
                                       {
                                          if(!(_loc9_ && Boolean(param1)))
                                          {
                                             this._remove = true;
                                             this.onComplete = this.onCompleteTween;
                                             addr204:
                                             §§push(param3);
                                             if(!(_loc9_ && Boolean(param1)))
                                             {
                                                §§push(int(§§pop().length));
                                                if(_loc10_ || Boolean(this))
                                                {
                                                   _loc6_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc9_)
                                                      {
                                                      }
                                                      §§goto(addr440);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc10_ || Boolean(param1))
                                                   {
                                                      addr438:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      addr438:
                                                   }
                                                   while(true)
                                                   {
                                                      _loc6_ = §§pop();
                                                      §§goto(addr440);
                                                   }
                                                }
                                             }
                                             §§goto(addr232);
                                          }
                                          §§goto(addr390);
                                       }
                                       §§goto(addr204);
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr438);
                           }
                           addr440:
                           loop1:
                           while(§§pop())
                           {
                              §§push(param3);
                              while(true)
                              {
                                 §§push(_loc5_ = String(§§pop()[_loc6_]));
                                 if(!(_loc9_ && Boolean(param3)))
                                 {
                                    §§push(§§pop() in param1);
                                    if(_loc10_ || Boolean(param2))
                                    {
                                       §§push(§§pop());
                                       if(_loc10_)
                                       {
                                          if(§§pop())
                                          {
                                             addr257:
                                             §§pop();
                                             if(_loc9_)
                                             {
                                                continue loop7;
                                             }
                                             §§push(this._filter[_loc5_] == param1[_loc5_]);
                                             if(_loc10_)
                                             {
                                                §§push(!§§pop());
                                                if(!_loc9_)
                                                {
                                                   addr273:
                                                   if(!§§pop())
                                                   {
                                                      continue loop7;
                                                   }
                                                   addr275:
                                                   §§push(_loc5_ == "color");
                                                   §§push(_loc5_ == "color");
                                                   if(_loc10_ || Boolean(this))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§pop();
                                                         §§push(_loc5_);
                                                         §§push("highlightColor");
                                                         if(_loc10_ || Boolean(param3))
                                                         {
                                                            addr297:
                                                            §§push(§§pop() == §§pop());
                                                            if(!(§§pop() == §§pop()))
                                                            {
                                                               §§pop();
                                                               if(_loc10_ || Boolean(this))
                                                               {
                                                                  §§push(_loc5_ == "shadowColor");
                                                                  if(_loc10_)
                                                                  {
                                                                     addr312:
                                                                     if(§§pop())
                                                                     {
                                                                        (_loc7_ = new HexColorsPlugin()).initColor(this._filter,_loc5_,this._filter[_loc5_],param1[_loc5_]);
                                                                        if(!(_loc9_ && Boolean(param1)))
                                                                        {
                                                                           _tweens[_tweens.length] = new PropTween(_loc7_,"changeFactor",0,1,_loc5_,false);
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     §§push(_loc5_);
                                                                     if(_loc10_ || Boolean(this))
                                                                     {
                                                                        §§push("quality");
                                                                        if(_loc10_)
                                                                        {
                                                                           addr361:
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!(§§pop() == §§pop()))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 §§push(_loc5_);
                                                                                 §§push("inner");
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    addr369:
                                                                                    §§push(§§pop() == §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr390:
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() == "knockout");
                                                                                                      addr381:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         addr382:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr386:
                                                                                                               §§push(_loc5_);
                                                                                                               §§push("hideObject");
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                               }
                                                                                                               addr386:
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr379:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   this._filter[_loc5_] = param1[_loc5_];
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      break loop1;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                }
                                                                                                addr390:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   addTween(this._filter,_loc5_,this._filter[_loc5_],param1[_loc5_],_loc5_);
                                                                                                   if(_loc9_ && Boolean(param3))
                                                                                                   {
                                                                                                      break loop1;
                                                                                                   }
                                                                                                   continue loop7;
                                                                                                }
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§goto(addr390);
                                                                                                }
                                                                                                §§goto(addr399);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr381);
                                                                                       }
                                                                                       §§goto(addr382);
                                                                                    }
                                                                                    addr369:
                                                                                 }
                                                                                 §§goto(addr386);
                                                                              }
                                                                              addr363:
                                                                           }
                                                                           §§goto(addr369);
                                                                        }
                                                                        §§goto(addr386);
                                                                     }
                                                                     §§goto(addr379);
                                                                  }
                                                                  §§goto(addr369);
                                                               }
                                                               §§goto(addr390);
                                                            }
                                                            §§goto(addr312);
                                                         }
                                                         §§goto(addr386);
                                                      }
                                                   }
                                                   §§goto(addr297);
                                                }
                                                §§goto(addr361);
                                             }
                                          }
                                          §§goto(addr273);
                                       }
                                       §§goto(addr361);
                                    }
                                    §§goto(addr257);
                                 }
                                 §§goto(addr275);
                              }
                           }
                           return;
                           addr69:
                        }
                        else
                        {
                           addr74:
                           while(true)
                           {
                              §§push(_loc6_);
                              if(!_loc9_)
                              {
                                 §§push(§§pop());
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() - 1);
                                    if(_loc10_ || Boolean(param2))
                                    {
                                       _loc6_ = §§pop();
                                       if(!_loc9_)
                                       {
                                          if(§§pop())
                                          {
                                             §§push(_loc4_[_loc6_] is this._type);
                                             if(!_loc9_)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue;
                                                }
                                                this._index = _loc6_;
                                                if(!_loc9_)
                                                {
                                                   §§goto(addr109);
                                                }
                                                §§goto(addr171);
                                             }
                                             §§goto(addr363);
                                          }
                                          §§goto(addr109);
                                       }
                                       §§goto(addr440);
                                    }
                                    §§goto(addr438);
                                 }
                                 §§goto(addr126);
                              }
                              break;
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr69);
                  }
                  else
                  {
                     _loc6_ = int(_loc4_.length);
                  }
                  §§goto(addr74);
               }
               §§goto(addr58);
            }
            §§goto(addr52);
         }
         §§goto(addr33);
      }
      
      public function onCompleteTween() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Array = null;
         var _loc2_:* = 0;
         if(!(_loc4_ && Boolean(_loc1_)))
         {
            if(this._remove)
            {
               addr28:
               _loc1_ = this._target.filters;
               if(_loc3_)
               {
                  if(!(_loc1_[this._index] is this._type))
                  {
                     if(_loc3_)
                     {
                        addr45:
                        _loc2_ = int(_loc1_.length);
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                           if(!(_loc4_ && Boolean(_loc1_)))
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc2_ = §§pop();
                        }
                        if(!§§pop())
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           addr115:
                           this._target.filters = _loc1_;
                           §§goto(addr119);
                        }
                        if(_loc1_[_loc2_] is this._type)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.splice(_loc2_,1);
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr119);
                           }
                           break;
                        }
                        continue;
                        addr119:
                        return;
                     }
                  }
                  else
                  {
                     _loc1_.splice(this._index,1);
                     if(_loc3_ || Boolean(_loc2_))
                     {
                     }
                  }
                  §§goto(addr115);
               }
               §§goto(addr45);
            }
            §§goto(addr115);
         }
         §§goto(addr28);
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:PropTween = null;
         var _loc2_:* = int(_tweens.length);
         var _loc4_:Array = this._target.filters;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               §§push(§§pop());
               if(!_loc6_)
               {
                  §§push(§§pop() - 1);
                  if(_loc7_)
                  {
                     _loc2_ = §§pop();
                     if(_loc7_)
                     {
                        if(§§pop())
                        {
                           _loc3_ = _tweens[_loc2_];
                           if(_loc7_ || Boolean(_loc3_))
                           {
                              _loc3_.target[_loc3_.property] = _loc3_.start + _loc3_.change * param1;
                           }
                           continue;
                        }
                        if(!_loc6_)
                        {
                           §§push(_loc4_[this._index] is this._type);
                           if(_loc7_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc7_ || Boolean(_loc3_))
                                 {
                                    §§push(this._index = _loc4_.length);
                                    if(!(_loc6_ && Boolean(this)))
                                    {
                                       addr107:
                                       _loc2_ = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!_loc6_)
                                          {
                                             break loop0;
                                          }
                                       }
                                       addr144:
                                       _loc4_[this._index] = this._filter;
                                       this._target.filters = _loc4_;
                                       return;
                                       addr123:
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          §§push(_loc4_[_loc2_] is this._type);
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                this._index = _loc2_;
                                                if(_loc7_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr123);
                                             }
                                          }
                                          addr116:
                                       }
                                    }
                                    addr143:
                                 }
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr107);
                  }
               }
               while(true)
               {
                  _loc2_ = §§pop();
                  §§goto(addr143);
               }
               addr142:
            }
            break;
         }
         while(true)
         {
            §§push(§§pop());
            if(_loc7_ || Boolean(_loc2_))
            {
               §§push(§§pop() - 1);
            }
            §§goto(addr142);
         }
      }
   }
}
