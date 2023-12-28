package com.greensock.plugins
{
   import com.greensock.TweenLite;
   import com.greensock.core.PropTween;
   
   public class RoundPropsPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && RoundPropsPlugin))
         {
            API = 1;
         }
      }
      
      protected var _tween:TweenLite;
      
      public function RoundPropsPlugin()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         this.propName = "roundProps";
         if(!_loc1_)
         {
            this.overwriteProps = ["roundProps"];
            if(!_loc1_)
            {
               addr36:
               this.round = true;
               this.priority = -1;
               this.onInitAllProps = this._initAllProps;
            }
            return;
         }
         §§goto(addr36);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this._tween = param3;
            if(!_loc5_)
            {
               this.overwriteProps = this.overwriteProps.concat(param2 as Array);
            }
         }
         return true;
      }
      
      protected function _initAllProps() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:String = null;
         var _loc2_:* = null;
         var _loc4_:PropTween = null;
         var _loc3_:Array = this._tween.vars.roundProps;
         var _loc5_:* = int(_loc3_.length);
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc7_ && Boolean(this)))
            {
               §§push(§§pop() - 1);
               if(_loc6_)
               {
                  addr214:
                  §§push(§§pop());
                  if(!(_loc7_ && Boolean(_loc3_)))
                  {
                     §§push(§§pop());
                     if(_loc6_ || Boolean(this))
                     {
                        _loc5_ = §§pop();
                        addr231:
                        §§push(-1);
                     }
                  }
                  if(§§pop() <= §§pop())
                  {
                     break;
                  }
                  _loc1_ = String(_loc3_[_loc5_]);
                  if(_loc7_)
                  {
                     break;
                  }
                  _loc4_ = this._tween.cachedPT1;
                  for(; _loc4_; _loc4_ = _loc4_.nextNode)
                  {
                     §§push(_loc4_.name);
                     if(_loc6_)
                     {
                        if(§§pop() == _loc1_)
                        {
                           if(_loc4_.isPlugin)
                           {
                              if(_loc6_ || Boolean(_loc1_))
                              {
                                 _loc4_.target.round = true;
                              }
                              else
                              {
                                 addr120:
                                 §§push(_loc4_.name);
                                 if(_loc6_)
                                 {
                                    §§push("_MULTIPLE_");
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc6_ || Boolean(_loc1_))
                                       {
                                          addr135:
                                          if(§§pop())
                                          {
                                             if(!(_loc7_ && Boolean(_loc2_)))
                                             {
                                                §§pop();
                                                if(_loc7_)
                                                {
                                                   break;
                                                }
                                                §§push(!_loc4_.target.round);
                                             }
                                          }
                                       }
                                       if(!§§pop())
                                       {
                                          continue;
                                       }
                                       if(_loc6_)
                                       {
                                          §§push(" ");
                                          if(_loc6_ || Boolean(this))
                                          {
                                             §§push(§§pop() + _loc4_.target.overwriteProps.join(" "));
                                             if(!_loc7_)
                                             {
                                                addr170:
                                                §§push(§§pop() + " ");
                                             }
                                             _loc2_ = §§pop();
                                             addr173:
                                             §§push(_loc2_);
                                             §§push(" ");
                                             if(_loc6_)
                                             {
                                                addr177:
                                                §§push(§§pop() + _loc1_);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop() + " ");
                                                }
                                             }
                                             if(§§pop().indexOf(§§pop()) != -1)
                                             {
                                                _loc4_.target.round = true;
                                             }
                                             continue;
                                          }
                                          §§goto(addr170);
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr173);
                              }
                           }
                           else
                           {
                              this.add(_loc4_.target,_loc1_,_loc4_.start,_loc4_.change);
                              if(!_loc7_)
                              {
                                 this._removePropTween(_loc4_);
                                 this._tween.propTweenLookup[_loc1_] = this._tween.propTweenLookup.roundProps;
                              }
                           }
                           continue;
                        }
                        §§push(_loc4_.isPlugin);
                        §§push(_loc4_.isPlugin);
                        if(!(_loc7_ && Boolean(_loc1_)))
                        {
                           if(§§pop())
                           {
                              if(_loc6_ || Boolean(_loc3_))
                              {
                                 §§pop();
                                 §§goto(addr120);
                              }
                           }
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr173);
                  }
                  continue;
               }
               §§goto(addr231);
            }
            §§goto(addr214);
         }
      }
      
      protected function _removePropTween(param1:PropTween) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1.nextNode);
         if(!(_loc3_ && _loc2_))
         {
            if(§§pop())
            {
               addr25:
               param1.nextNode.prevNode = param1.prevNode;
               if(_loc2_ || Boolean(param1))
               {
                  addr35:
                  §§push(param1.prevNode);
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        addr42:
                        param1.prevNode.nextNode = param1.nextNode;
                        if(!_loc3_)
                        {
                           addr79:
                           §§push(param1.isPlugin);
                           if(_loc2_)
                           {
                              §§push(§§pop());
                              if(_loc2_)
                              {
                                 addr93:
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       §§goto(addr97);
                                    }
                                 }
                                 §§goto(addr104);
                              }
                              addr97:
                              §§pop();
                              if(!_loc3_)
                              {
                                 addr104:
                                 if(Boolean(param1.target.onDisable))
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr112:
                                       param1.target.onDisable();
                                    }
                                 }
                              }
                              return;
                           }
                           §§goto(addr93);
                        }
                     }
                     else
                     {
                        §§push(this._tween);
                        if(_loc2_ || Boolean(this))
                        {
                           if(§§pop().cachedPT1 == param1)
                           {
                              §§push(this._tween);
                           }
                           §§goto(addr79);
                        }
                        §§pop().cachedPT1 = param1.nextNode;
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           §§goto(addr79);
                        }
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr42);
               }
               §§goto(addr79);
            }
            §§goto(addr35);
         }
         §§goto(addr25);
      }
      
      public function add(param1:Object, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            addTween(param1,param2,param3,param3 + param4,param2);
            if(_loc5_)
            {
               addr33:
               this.overwriteProps[this.overwriteProps.length] = param2;
            }
            return;
         }
         §§goto(addr33);
      }
   }
}
