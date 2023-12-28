package com.greensock
{
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   
   public class TweenLite extends TweenCore
   {
      
      public static const version:Number = 11.698;
      
      public static var plugins:Object;
      
      public static var fastEaseLookup:Dictionary;
      
      public static var onPluginEvent:Function;
      
      public static var killDelayedCallsTo:Function = TweenLite.killTweensOf;
      
      public static var defaultEase:Function = TweenLite.easeOut;
      
      public static var overwriteManager:Object;
      
      public static var rootFrame:Number;
      
      public static var rootTimeline:SimpleTimeline;
      
      public static var rootFramesTimeline:SimpleTimeline;
      
      public static var masterList:Dictionary;
      
      private static var _shape:Shape;
      
      protected static var _reservedProps:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && TweenLite))
         {
            version = 11.698;
            plugins = {};
            if(!_loc2_)
            {
               fastEaseLookup = new Dictionary(false);
               if(_loc1_ || _loc2_)
               {
                  §§goto(addr40);
               }
               §§goto(addr67);
            }
            §§goto(addr85);
         }
         addr40:
         if(!(_loc2_ && TweenLite))
         {
            masterList = new Dictionary(false);
            if(!(_loc2_ && _loc2_))
            {
               addr67:
               _shape = new Shape();
               if(_loc1_ || _loc2_)
               {
                  _reservedProps = {
                     "ease":1,
                     "delay":1,
                     "overwrite":1,
                     "onComplete":1,
                     "onCompleteParams":1,
                     "useFrames":1,
                     "runBackwards":1,
                     "startAt":1,
                     "onUpdate":1,
                     "onUpdateParams":1,
                     "onStart":1,
                     "onStartParams":1,
                     "onInit":1,
                     "onInitParams":1,
                     "onReverseComplete":1,
                     "onReverseCompleteParams":1,
                     "onRepeat":1,
                     "onRepeatParams":1,
                     "proxiedEase":1,
                     "easeParams":1,
                     "yoyo":1,
                     "onCompleteListener":1,
                     "onUpdateListener":1,
                     "onStartListener":1,
                     "onReverseCompleteListener":1,
                     "onRepeatListener":1,
                     "orientToBezier":1,
                     "timeScale":1,
                     "immediateRender":1,
                     "repeat":1,
                     "repeatDelay":1,
                     "timeline":1,
                     "data":1,
                     "paused":1,
                     "reversed":1
                  };
                  addr85:
               }
            }
            §§goto(addr85);
         }
      }
      
      public var target:Object;
      
      public var propTweenLookup:Object;
      
      public var ratio:Number = 0;
      
      public var cachedPT1:PropTween;
      
      protected var _ease:Function;
      
      protected var _overwrite:int;
      
      protected var _overwrittenProps:Object;
      
      protected var _hasPlugins:Boolean;
      
      protected var _notifyPluginsOfEnabled:Boolean;
      
      public function TweenLite(param1:Object, param2:Number, param3:Object)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:TweenLite = null;
         super(param2,param3);
         if(param1 == null)
         {
            if(_loc8_ || Boolean(param1))
            {
               throw new Error("Cannot tween a null object.");
            }
            addr78:
            §§push(this);
            if(!_loc9_)
            {
               §§push(Number(param3.overwrite) > -1);
               if(_loc8_ || Boolean(param3))
               {
                  §§push(!§§pop());
                  if(_loc8_)
                  {
                     §§push(§§pop());
                     if(_loc8_ || Boolean(this))
                     {
                        if(!§§pop())
                        {
                           if(!_loc9_)
                           {
                              addr108:
                              §§pop();
                              if(!_loc9_)
                              {
                                 §§push(!overwriteManager.enabled);
                                 if(!_loc9_)
                                 {
                                    addr117:
                                    if(§§pop())
                                    {
                                       if(!(_loc9_ && Boolean(this)))
                                       {
                                          addr125:
                                          §§pop();
                                          if(!_loc9_)
                                          {
                                             addr128:
                                             addr139:
                                             if(param3.overwrite > 1)
                                             {
                                                addr140:
                                                §§push(int(overwriteManager.mode));
                                                if(_loc8_ || Boolean(param1))
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§push(int(param3.overwrite));
                                             }
                                             §§pop()._overwrite = §§pop();
                                             var _loc4_:Array;
                                             if(!(_loc4_ = masterList[param1]))
                                             {
                                                if(_loc8_ || Boolean(this))
                                                {
                                                   masterList[param1] = [this];
                                                   if(_loc9_ && Boolean(param1))
                                                   {
                                                      addr190:
                                                      addr191:
                                                      for each(_loc5_ in _loc4_)
                                                      {
                                                         if(!_loc5_.gc)
                                                         {
                                                            if(!(_loc9_ && Boolean(param1)))
                                                            {
                                                               _loc5_.setEnabled(false,false);
                                                            }
                                                         }
                                                      }
                                                      if(_loc8_ || Boolean(param1))
                                                      {
                                                         masterList[param1] = [this];
                                                         if(!(_loc9_ && Boolean(this)))
                                                         {
                                                            addr247:
                                                            §§push(this.active);
                                                            if(_loc8_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     §§pop();
                                                                     §§goto(addr273);
                                                                  }
                                                               }
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  §§goto(addr273);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr273);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr183:
                                                   }
                                                   §§goto(addr247);
                                                }
                                                §§goto(addr183);
                                             }
                                             else
                                             {
                                                §§push(this._overwrite);
                                                if(!_loc9_)
                                                {
                                                   if(§§pop() == 1)
                                                   {
                                                      §§goto(addr190);
                                                   }
                                                   else
                                                   {
                                                      _loc4_[_loc4_.length] = this;
                                                      if(_loc8_)
                                                      {
                                                         §§goto(addr247);
                                                      }
                                                   }
                                                   addr273:
                                                   if(_loc8_)
                                                   {
                                                      §§push(Boolean(this.vars.immediateRender));
                                                   }
                                                   this.renderTime(0,false,true);
                                                   return;
                                                }
                                             }
                                             §§goto(addr191);
                                          }
                                          §§goto(addr140);
                                       }
                                    }
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr108);
               }
               §§goto(addr125);
            }
            §§goto(addr128);
         }
         else
         {
            this.target = param1;
            if(_loc8_ || Boolean(param1))
            {
               §§push(this.target is TweenCore);
               if(!_loc9_)
               {
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        addr54:
                        §§pop();
                        if(!(_loc9_ && Boolean(this)))
                        {
                           addr62:
                           §§push(Boolean(this.vars.timeScale));
                        }
                        §§goto(addr128);
                     }
                  }
                  if(§§pop())
                  {
                     this.cachedTimeScale = 1;
                  }
                  this.propTweenLookup = {};
                  this._ease = defaultEase;
                  if(_loc8_)
                  {
                     §§goto(addr78);
                  }
                  §§goto(addr128);
               }
               §§goto(addr54);
            }
            §§goto(addr62);
         }
         §§goto(addr128);
      }
      
      public static function initClass() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         rootFrame = 0;
         rootTimeline = new SimpleTimeline(null);
         rootFramesTimeline = new SimpleTimeline(null);
         §§push(rootTimeline);
         if(_loc1_)
         {
            §§pop().cachedStartTime = getTimer() * 0.001;
            §§push(rootFramesTimeline);
            if(_loc1_ || _loc2_)
            {
               §§pop().cachedStartTime = rootFrame;
               if(!_loc2_)
               {
                  addr54:
                  rootTimeline.autoRemoveChildren = true;
                  addr57:
                  rootFramesTimeline.autoRemoveChildren = true;
                  if(_loc1_)
                  {
                     _shape.addEventListener(Event.ENTER_FRAME,updateAll,false,0,true);
                     if(_loc1_)
                     {
                        if(overwriteManager == null)
                        {
                           if(_loc2_ && _loc2_)
                           {
                           }
                        }
                     }
                     §§goto(addr95);
                  }
                  overwriteManager = {
                     "mode":1,
                     "enabled":false
                  };
               }
               addr95:
               return;
            }
            §§goto(addr57);
         }
         §§goto(addr54);
      }
      
      public static function to(param1:Object, param2:Number, param3:Object) : TweenLite
      {
         return new TweenLite(param1,param2,param3);
      }
      
      public static function from(param1:Object, param2:Number, param3:Object) : TweenLite
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param3.isGSVars)
            {
               if(!_loc5_)
               {
                  param3 = param3.vars;
                  param3.runBackwards = true;
                  §§goto(addr31);
               }
               §§goto(addr43);
            }
            addr31:
            if(!_loc5_)
            {
               addr43:
               if(!("immediateRender" in param3))
               {
                  if(_loc5_ && Boolean(param1))
                  {
                  }
               }
               §§goto(addr57);
            }
            param3.immediateRender = true;
            §§goto(addr57);
         }
         addr57:
         return new TweenLite(param1,param2,param3);
      }
      
      public static function delayedCall(param1:Number, param2:Function, param3:Array = null, param4:Boolean = false) : TweenLite
      {
         return new TweenLite(param2,0,{
            "delay":param1,
            "onComplete":param2,
            "onCompleteParams":param3,
            "immediateRender":false,
            "useFrames":param4,
            "overwrite":0
         });
      }
      
      protected static function updateAll(param1:Event = null) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:Dictionary = null;
         var _loc3_:Object = null;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         if(!(_loc9_ && Boolean(_loc3_)))
         {
            §§push(rootTimeline);
            §§push(getTimer() * 0.001);
            if(!(_loc9_ && Boolean(_loc2_)))
            {
               §§push(rootTimeline);
               if(_loc8_)
               {
                  addr53:
                  §§push(§§pop() - §§pop().cachedStartTime);
                  if(!_loc9_)
                  {
                     §§push(rootTimeline);
                  }
                  §§pop().renderTime(§§pop(),false,false);
                  if(_loc8_ || Boolean(param1))
                  {
                     §§push(§§findproperty(rootFrame));
                     §§push(rootFrame);
                     if(_loc8_ || TweenLite)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§pop().rootFrame = §§pop();
                     if(!_loc9_)
                     {
                        addr77:
                        §§push(rootFramesTimeline);
                        §§push(rootFrame);
                        if(_loc8_)
                        {
                           §§push(rootFramesTimeline);
                           if(!(_loc9_ && TweenLite))
                           {
                              §§push(§§pop() - §§pop().cachedStartTime);
                              if(!_loc9_)
                              {
                                 addr94:
                                 §§push(§§pop() * rootFramesTimeline.cachedTimeScale);
                              }
                              §§pop().renderTime(§§pop(),false,false);
                              if(!_loc9_)
                              {
                                 §§goto(addr101);
                              }
                              §§goto(addr114);
                           }
                        }
                        §§goto(addr94);
                     }
                     addr101:
                     §§push(rootFrame);
                     if(!_loc9_)
                     {
                        §§push(§§pop() % 60);
                     }
                     if(!§§pop())
                     {
                        addr114:
                        _loc2_ = masterList;
                        loop0:
                        for(_loc3_ in _loc2_)
                        {
                           §§push(int((_loc4_ = _loc2_[_loc3_]).length));
                           if(_loc8_ || Boolean(_loc2_))
                           {
                              _loc5_ = §§pop();
                              if(_loc8_ || TweenLite)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(!(_loc9_ && Boolean(_loc3_)))
                                    {
                                       §§push(§§pop() - 1);
                                       if(_loc9_ && Boolean(param1))
                                       {
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          §§push(-1);
                                          addr199:
                                          while(true)
                                          {
                                             if(§§pop() <= §§pop())
                                             {
                                                break loop2;
                                             }
                                             if(TweenLite(_loc4_[_loc5_]).gc)
                                             {
                                                if(_loc8_ || Boolean(param1))
                                                {
                                                   _loc4_.splice(_loc5_,1);
                                                   if(!_loc8_)
                                                   {
                                                      break loop1;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop0;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       addr198:
                                       if(_loc9_ && Boolean(param1))
                                       {
                                          break;
                                       }
                                       if(_loc4_.length == 0)
                                       {
                                          if(_loc8_ || Boolean(param1))
                                          {
                                             break;
                                          }
                                       }
                                       continue loop0;
                                       addr198:
                                    }
                                    §§push(§§pop());
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop());
                                       if(_loc8_)
                                       {
                                          addr197:
                                          _loc5_ = §§pop();
                                          §§goto(addr198);
                                       }
                                       §§goto(addr199);
                                    }
                                    §§goto(addr197);
                                 }
                              }
                              delete _loc2_[_loc3_];
                              continue;
                           }
                           §§goto(addr198);
                        }
                     }
                     return;
                  }
                  §§goto(addr77);
               }
               §§push(§§pop() * §§pop().cachedTimeScale);
            }
            §§goto(addr53);
         }
         §§goto(addr77);
      }
      
      public static function killTweensOf(param1:Object, param2:Boolean = false, param3:Object = null) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:TweenLite = null;
         if(_loc7_)
         {
            if(param1 in masterList)
            {
               addr27:
               _loc5_ = int((_loc4_ = masterList[param1]).length);
               while(true)
               {
                  §§push(_loc5_);
                  if(_loc7_ || Boolean(param3))
                  {
                     §§push(§§pop() - 1);
                     if(!(_loc8_ && TweenLite))
                     {
                        §§push(§§pop());
                        if(!(_loc8_ && Boolean(param3)))
                        {
                           §§push(§§pop());
                           if(!(_loc8_ && Boolean(param3)))
                           {
                              _loc5_ = §§pop();
                              addr188:
                              §§push(-1);
                           }
                        }
                        if(§§pop() <= §§pop())
                        {
                           break;
                        }
                        if((_loc6_ = _loc4_[_loc5_]).gc)
                        {
                           continue;
                        }
                        §§push(param2);
                        if(_loc7_ || TweenLite)
                        {
                           if(§§pop())
                           {
                              if(_loc7_ || Boolean(param1))
                              {
                                 _loc6_.complete(false,false);
                                 if(_loc8_ && Boolean(param1))
                                 {
                                    continue;
                                 }
                                 addr73:
                                 if(param3 != null)
                                 {
                                    if(!(_loc7_ || Boolean(param3)))
                                    {
                                       continue;
                                    }
                                    _loc6_.killVars(param3);
                                    if(!_loc8_)
                                    {
                                       addr88:
                                       §§push(param3 == null);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop());
                                          if(_loc7_ || param2)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc7_)
                                                {
                                                   §§pop();
                                                   if(!(_loc8_ && TweenLite))
                                                   {
                                                      addr119:
                                                      §§push(_loc6_.cachedPT1 == null);
                                                      if(_loc7_ || TweenLite)
                                                      {
                                                         addr130:
                                                         if(§§pop())
                                                         {
                                                            if(_loc7_ || Boolean(param3))
                                                            {
                                                               addr139:
                                                               §§pop();
                                                               addr143:
                                                               if(!_loc6_.initted)
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr143);
                                                   }
                                                   _loc6_.setEnabled(false,false);
                                                   continue;
                                                }
                                                §§goto(addr130);
                                             }
                                             §§goto(addr143);
                                          }
                                       }
                                       §§goto(addr130);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr88);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr73);
                        }
                        §§goto(addr139);
                     }
                  }
                  §§goto(addr188);
               }
               if(_loc7_ || param2)
               {
                  if(param3 == null)
                  {
                     if(_loc7_)
                     {
                     }
                  }
                  §§goto(addr206);
               }
               delete masterList[param1];
            }
            addr206:
            return;
         }
         §§goto(addr27);
      }
      
      protected static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(1);
         §§push(1);
         §§push(param1);
         if(!(_loc7_ && Boolean(param3)))
         {
            §§push(§§pop() / param4);
         }
         §§push(§§pop() - §§pop());
         if(_loc6_ || TweenLite)
         {
            §§push(§§pop());
            if(!_loc7_)
            {
               var _loc5_:* = §§pop();
               §§goto(addr73);
            }
            §§push(§§pop() * §§pop());
         }
         addr73:
         if(!_loc7_)
         {
            §§push(§§pop());
            if(!(_loc7_ && Boolean(param2)))
            {
               param1 = §§pop();
               §§push(_loc5_);
            }
         }
         if(_loc6_ || Boolean(param3))
         {
            §§push(param1);
         }
         return §§pop() - §§pop();
      }
      
      protected function init() : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc1_:* = null;
         var _loc2_:* = 0;
         var _loc3_:* = undefined;
         var _loc4_:Boolean = false;
         var _loc5_:Array = null;
         var _loc6_:PropTween = null;
         if(_loc11_ || Boolean(this))
         {
            if(this.vars.onInit)
            {
               this.vars.onInit.apply(null,this.vars.onInitParams);
            }
            if(typeof this.vars.ease == "function")
            {
               if(_loc11_ || Boolean(_loc1_))
               {
                  this._ease = this.vars.ease;
               }
            }
            if(this.vars.easeParams)
            {
               if(_loc11_ || Boolean(this))
               {
                  addr78:
                  this.vars.proxiedEase = this._ease;
                  this._ease = this.easeProxy;
                  if(_loc11_)
                  {
                     addr89:
                     this.cachedPT1 = null;
                     if(_loc11_ || _loc3_)
                     {
                     }
                     addr102:
                     var _loc7_:* = 0;
                     var _loc8_:* = this.vars;
                     loop0:
                     for(_loc7_ in _loc8_)
                     {
                        §§push(_loc7_);
                        if(!_loc10_)
                        {
                           _loc1_ = §§pop();
                           if(_loc10_ && _loc3_)
                           {
                              continue;
                           }
                           §§push(_loc1_);
                           if(_loc11_ || Boolean(this))
                           {
                              §§push(§§pop() in _reservedProps);
                              §§push(§§pop() in _reservedProps);
                              if(!(_loc10_ && Boolean(_loc1_)))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc11_ || Boolean(_loc1_))
                                    {
                                       §§pop();
                                       §§push(_loc1_);
                                       if(_loc11_)
                                       {
                                          §§push("timeScale");
                                          if(!(_loc10_ && Boolean(_loc1_)))
                                          {
                                             §§push(§§pop() == §§pop());
                                             §§push(§§pop() == §§pop());
                                             if(_loc11_ || Boolean(_loc2_))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      §§pop();
                                                      if(!(_loc10_ && Boolean(_loc2_)))
                                                      {
                                                         addr186:
                                                         if(!(this.target is TweenCore))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc1_);
                                                         if(!_loc10_)
                                                         {
                                                            addr192:
                                                            §§push(§§pop() in plugins);
                                                            §§push(§§pop() in plugins);
                                                            if(!(_loc10_ && Boolean(_loc2_)))
                                                            {
                                                               addr202:
                                                               if(§§pop())
                                                               {
                                                                  §§pop();
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr227:
                                                                     if(Boolean((_loc3_ = new (plugins[_loc1_] as Class)()).onInitTween(this.target,this.vars[_loc1_],this)))
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           this.cachedPT1 = new PropTween(_loc3_,"changeFactor",0,1,_loc3_.overwriteProps.length == 1 ? String(_loc3_.overwriteProps[0]) : "_MULTIPLE_",true,this.cachedPT1);
                                                                           addr230:
                                                                           §§push(this.cachedPT1);
                                                                           if(_loc11_)
                                                                           {
                                                                              addr258:
                                                                              if(§§pop().name == "_MULTIPLE_")
                                                                              {
                                                                                 if(_loc11_ || Boolean(this))
                                                                                 {
                                                                                    §§push(int(_loc3_.overwriteProps.length));
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       _loc2_ = §§pop();
                                                                                       addr274:
                                                                                       loop1:
                                                                                       do
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          if(!(_loc10_ && _loc3_))
                                                                                          {
                                                                                             §§push(§§pop() - 1);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                      {
                                                                                                         _loc2_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(-1);
                                                                                                         }
                                                                                                         addr322:
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() > §§pop())
                                                                                                      {
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      if(_loc3_.priority)
                                                                                                      {
                                                                                                         addr340:
                                                                                                         this.cachedPT1.priority = _loc3_.priority;
                                                                                                         _loc4_ = true;
                                                                                                         addr338:
                                                                                                         if(_loc10_ && Boolean(this))
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(Boolean(_loc3_.onDisable));
                                                                                                      if(!(_loc10_ && _loc3_))
                                                                                                      {
                                                                                                         addr363:
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               addr366:
                                                                                                               §§pop();
                                                                                                               addr373:
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  §§push(Boolean(_loc3_.onEnable));
                                                                                                               }
                                                                                                               this._notifyPluginsOfEnabled = true;
                                                                                                               this._hasPlugins = true;
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                      }
                                                                                                      §§goto(addr373);
                                                                                                   }
                                                                                                }
                                                                                                addr303:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr322);
                                                                                       }
                                                                                       while(this.propTweenLookup[_loc3_.overwriteProps[_loc2_]] = this.cachedPT1, _loc11_ || _loc3_);
                                                                                       
                                                                                       addr424:
                                                                                       this.propTweenLookup[_loc1_] = this.cachedPT1;
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr303);
                                                                                 }
                                                                                 §§goto(addr424);
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.propTweenLookup[this.cachedPT1.name] = this.cachedPT1;
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    §§goto(addr335);
                                                                                 }
                                                                              }
                                                                              §§goto(addr338);
                                                                           }
                                                                           §§goto(addr340);
                                                                        }
                                                                        §§goto(addr373);
                                                                     }
                                                                     else
                                                                     {
                                                                        this.cachedPT1 = new PropTween(this.target,_loc1_,Number(this.target[_loc1_]),typeof this.vars[_loc1_] == "number" ? Number(this.vars[_loc1_]) - this.target[_loc1_] : Number(this.vars[_loc1_]),_loc1_,false,this.cachedPT1);
                                                                     }
                                                                     §§goto(addr424);
                                                                  }
                                                                  §§goto(addr274);
                                                               }
                                                               §§goto(addr227);
                                                            }
                                                            §§goto(addr363);
                                                         }
                                                         §§goto(addr258);
                                                      }
                                                      §§goto(addr230);
                                                   }
                                                   §§goto(addr366);
                                                }
                                                §§goto(addr186);
                                             }
                                             §§goto(addr363);
                                          }
                                       }
                                       §§goto(addr258);
                                    }
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr202);
                           }
                        }
                        §§goto(addr192);
                     }
                     if(_loc11_)
                     {
                        §§push(_loc4_);
                        if(_loc11_ || Boolean(_loc2_))
                        {
                           if(§§pop())
                           {
                              onPluginEvent("onInitAllProps",this);
                           }
                           if(this.vars.runBackwards)
                           {
                              §§push(this.cachedPT1);
                              if(_loc11_ || _loc3_)
                              {
                                 _loc6_ = §§pop();
                                 if(_loc11_ || Boolean(_loc2_))
                                 {
                                    while(_loc6_)
                                    {
                                       §§push(_loc6_);
                                       §§push(_loc6_.start);
                                       if(!(_loc10_ && Boolean(this)))
                                       {
                                          §§push(§§pop() + _loc6_.change);
                                       }
                                       §§pop().start = §§pop();
                                       if(!_loc11_)
                                       {
                                          break;
                                       }
                                       §§push(_loc6_);
                                       §§push(_loc6_.change);
                                       if(_loc11_)
                                       {
                                          §§push(-§§pop());
                                       }
                                       §§pop().change = §§pop();
                                       if(_loc10_ && Boolean(_loc2_))
                                       {
                                          break;
                                       }
                                       _loc6_ = _loc6_.nextNode;
                                    }
                                    addr509:
                                    _hasUpdate = Boolean(this.vars.onUpdate != null);
                                    if(this._overwrittenProps)
                                    {
                                       this.killVars(this._overwrittenProps);
                                       addr526:
                                       §§push(this.cachedPT1);
                                       if(_loc11_ || Boolean(_loc1_))
                                       {
                                          if(§§pop() == null)
                                          {
                                             this.setEnabled(false,false);
                                             if(_loc11_ || Boolean(_loc2_))
                                             {
                                                addr548:
                                                §§push(this._overwrite > 1);
                                                if(_loc11_ || Boolean(_loc2_))
                                                {
                                                   §§push(§§pop());
                                                   if(§§pop())
                                                   {
                                                      §§pop();
                                                      if(_loc11_ || Boolean(_loc1_))
                                                      {
                                                         addr573:
                                                         §§push(this.cachedPT1);
                                                         if(!(_loc10_ && Boolean(_loc1_)))
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc10_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     addr588:
                                                                     §§pop();
                                                                     if(_loc11_ || Boolean(this))
                                                                     {
                                                                        addr608:
                                                                        §§push(_loc5_ = masterList[this.target]);
                                                                        if(_loc5_ = masterList[this.target])
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              §§goto(addr612);
                                                                           }
                                                                        }
                                                                        §§goto(addr619);
                                                                     }
                                                                     §§goto(addr615);
                                                                  }
                                                                  addr612:
                                                                  §§pop();
                                                                  if(_loc11_)
                                                                  {
                                                                     addr619:
                                                                     addr615:
                                                                     if(_loc5_.length > 1)
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           if(overwriteManager.manageOverwrites(this,this.propTweenLookup,_loc5_,this._overwrite))
                                                                           {
                                                                              if(_loc11_ || Boolean(this))
                                                                              {
                                                                                 addr645:
                                                                                 this.init();
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     this.initted = true;
                                                                  }
                                                                  return;
                                                               }
                                                            }
                                                            §§goto(addr608);
                                                         }
                                                         §§goto(addr588);
                                                      }
                                                      §§goto(addr608);
                                                   }
                                                   §§goto(addr573);
                                                }
                                                §§goto(addr588);
                                             }
                                             §§goto(addr645);
                                          }
                                       }
                                       §§goto(addr573);
                                    }
                                    §§goto(addr548);
                                 }
                                 §§goto(addr509);
                              }
                              §§goto(addr573);
                           }
                           §§goto(addr509);
                        }
                        §§goto(addr619);
                     }
                     §§goto(addr526);
                  }
                  this.propTweenLookup = {};
               }
               §§goto(addr102);
            }
            §§goto(addr89);
         }
         §§goto(addr78);
      }
      
      override public function renderTime(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:* = false;
         var _loc5_:Number = this.cachedTime;
         §§push(param1);
         if(!(_loc8_ && Boolean(param1)))
         {
            if(§§pop() >= this.cachedDuration)
            {
               this.cachedTotalTime = this.cachedTime = this.cachedDuration;
               if(_loc9_ || param2)
               {
                  this.ratio = 1;
                  _loc4_ = !this.cachedReversed;
                  if(this.cachedDuration == 0)
                  {
                     §§push(param1);
                     if(_loc9_ || Boolean(param1))
                     {
                        §§push(0);
                        if(_loc9_ || param3)
                        {
                           §§push(§§pop() == §§pop());
                           if(!(_loc8_ && Boolean(param1)))
                           {
                              if(!§§pop())
                              {
                                 if(_loc9_ || param3)
                                 {
                                    §§pop();
                                    if(!(_loc8_ && Boolean(this)))
                                    {
                                       addr103:
                                       if(_rawPrevTime < 0 && _rawPrevTime != param1)
                                       {
                                          param3 = true;
                                       }
                                       _rawPrevTime = param1;
                                       §§push(this.cachedTime == _loc5_);
                                       §§push(this.cachedTime == _loc5_);
                                       if(!_loc8_)
                                       {
                                          if(§§pop())
                                          {
                                             §§pop();
                                             addr284:
                                             §§push(!param3);
                                          }
                                          if(§§pop())
                                          {
                                             return;
                                          }
                                          if(!this.initted)
                                          {
                                             if(!_loc8_)
                                             {
                                                addr300:
                                                this.init();
                                                if(!(_loc8_ && param2))
                                                {
                                                   addr313:
                                                   §§push(_loc4_);
                                                   if(_loc9_)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   if(§§pop() && Boolean(this.cachedTime))
                                                   {
                                                      addr320:
                                                      this.ratio = this._ease(this.cachedTime,0,1,this.cachedDuration);
                                                      addr330:
                                                      §§push(!this.active);
                                                      if(_loc9_ || Boolean(param1))
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc8_ && param2))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  §§pop();
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr357:
                                                                     if(!this.cachedPaused)
                                                                     {
                                                                        this.active = true;
                                                                        if(!(_loc8_ && param2))
                                                                        {
                                                                           addr368:
                                                                           addr370:
                                                                           addr369:
                                                                           §§push(_loc5_ == 0);
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(§§pop() && this.vars.onStart);
                                                                              §§push(§§pop() && this.vars.onStart);
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr415:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr387:
                                                                                    §§pop();
                                                                                    §§push(this.cachedTime == 0);
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc9_ || param2)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc9_ || param2)
                                                                                       {
                                                                                          §§push(param2);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             addr436:
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                this.vars.onStart.apply(null,this.vars.onStartParams);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr436);
                                                                                       }
                                                                                       addr445:
                                                                                       var _loc6_:PropTween = this.cachedPT1;
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(_hasUpdate);
                                                                                          if(!(_loc8_ && param3))
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr490:
                                                                                                   §§pop();
                                                                                                   §§push(!param2);
                                                                                                   if(!(_loc8_ && param2))
                                                                                                   {
                                                                                                      addr500:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         this.vars.onUpdate.apply(null,this.vars.onUpdateParams);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            addr511:
                                                                                                            §§push(_loc4_);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc9_ || param2)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     §§push(!this.gc);
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr535:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc8_ && Boolean(param1)))
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           §§push(Boolean(this.cachedPT1));
                                                                                                                        }
                                                                                                                     }
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           onPluginEvent("onComplete",this);
                                                                                                                           if(!(_loc8_ && param3))
                                                                                                                           {
                                                                                                                              addr568:
                                                                                                                              complete(true,param2);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr572);
                                                                                                                     }
                                                                                                                     §§goto(addr568);
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  addr572:
                                                                                                                  return;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr535);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr511);
                                                                                                   }
                                                                                                   §§goto(addr535);
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                                §§goto(addr500);
                                                                                             }
                                                                                             §§goto(addr535);
                                                                                          }
                                                                                          §§goto(addr490);
                                                                                       }
                                                                                       §§goto(addr490);
                                                                                       §§push(this._hasPlugins);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr436);
                                                                              }
                                                                              addr401:
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    addr404:
                                                                                    §§pop();
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       addr407:
                                                                                       §§push(this.cachedDuration == 0);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          addr413:
                                                                                          §§goto(addr415);
                                                                                          §§push(§§pop());
                                                                                       }
                                                                                       §§goto(addr415);
                                                                                    }
                                                                                    §§goto(addr445);
                                                                                 }
                                                                                 §§goto(addr415);
                                                                              }
                                                                              §§goto(addr413);
                                                                           }
                                                                           §§push(!§§pop());
                                                                           if(_loc9_ || Boolean(this))
                                                                           {
                                                                              §§goto(addr401);
                                                                              §§push(§§pop());
                                                                           }
                                                                           §§goto(addr404);
                                                                        }
                                                                        §§goto(addr407);
                                                                     }
                                                                     §§goto(addr368);
                                                                  }
                                                                  §§goto(addr377);
                                                               }
                                                               §§goto(addr415);
                                                            }
                                                            §§goto(addr357);
                                                         }
                                                         §§goto(addr415);
                                                      }
                                                      §§goto(addr387);
                                                   }
                                                   §§goto(addr330);
                                                }
                                             }
                                             §§goto(addr387);
                                          }
                                          §§goto(addr330);
                                       }
                                       §§goto(addr401);
                                       addr116:
                                    }
                                    §§goto(addr300);
                                 }
                                 §§goto(addr387);
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr109);
                        }
                        else
                        {
                           addr164:
                           if(§§pop() < §§pop())
                           {
                              if(!(_loc8_ && param2))
                              {
                                 this.active = false;
                                 if(this.cachedDuration == 0)
                                 {
                                    if(_loc9_ || param2)
                                    {
                                       addr186:
                                       if(_rawPrevTime >= 0)
                                       {
                                          §§push(true);
                                          if(!_loc8_)
                                          {
                                             param3 = §§pop();
                                             _loc4_ = _rawPrevTime > 0;
                                             if(_loc9_ || param3)
                                             {
                                                addr204:
                                                _rawPrevTime = param1;
                                                if(!_loc8_)
                                                {
                                                   addr209:
                                                   §§push(this.cachedReversed);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc9_ || Boolean(param1))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               addr225:
                                                               §§pop();
                                                               if(!_loc8_)
                                                               {
                                                                  addr228:
                                                                  §§push(_loc5_);
                                                                  if(!(_loc8_ && param2))
                                                                  {
                                                                     addr236:
                                                                     §§push(0);
                                                                     if(!(_loc8_ && param3))
                                                                     {
                                                                        addr246:
                                                                        addr244:
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           _loc4_ = true;
                                                                        }
                                                                        §§goto(addr103);
                                                                     }
                                                                     §§goto(addr370);
                                                                  }
                                                                  §§goto(addr369);
                                                               }
                                                               §§goto(addr368);
                                                            }
                                                            §§goto(addr313);
                                                         }
                                                         §§goto(addr246);
                                                      }
                                                      §§goto(addr415);
                                                   }
                                                   §§goto(addr404);
                                                }
                                                §§goto(addr387);
                                             }
                                             §§goto(addr320);
                                          }
                                          §§goto(addr225);
                                       }
                                       §§goto(addr204);
                                    }
                                    §§goto(addr284);
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr186);
                           }
                           §§goto(addr209);
                        }
                     }
                     else
                     {
                        addr120:
                        §§push(0);
                        if(!(_loc8_ && param3))
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(!_loc8_)
                              {
                                 var _loc7_:*;
                                 this.ratio = _loc7_ = 0;
                                 §§push(this);
                                 §§push(this);
                                 §§push(_loc7_);
                                 if(_loc9_ || param2)
                                 {
                                    §§push(_loc7_ = §§pop());
                                 }
                                 §§pop().cachedTime = §§pop();
                                 §§pop().cachedTotalTime = _loc7_;
                                 §§push(param1);
                                 if(_loc9_)
                                 {
                                    addr156:
                                    §§push(0);
                                    if(_loc9_ || Boolean(this))
                                    {
                                       §§goto(addr164);
                                    }
                                    §§goto(addr368);
                                 }
                                 §§goto(addr236);
                              }
                              §§goto(addr313);
                           }
                           else
                           {
                              this.cachedTotalTime = this.cachedTime = param1;
                              this.ratio = this._ease(param1,0,1,this.cachedDuration);
                           }
                           §§goto(addr103);
                        }
                     }
                     §§goto(addr244);
                  }
                  §§goto(addr116);
               }
               §§goto(addr228);
            }
            else
            {
               §§push(param1);
               if(!_loc8_)
               {
                  §§goto(addr120);
               }
            }
         }
         §§goto(addr156);
      }
      
      public function killVars(param1:Object, param2:Boolean = true) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:PropTween = null;
         var _loc5_:Boolean = false;
         if(!_loc8_)
         {
            if(this._overwrittenProps == null)
            {
               if(!(_loc8_ && param2))
               {
                  addr35:
                  this._overwrittenProps = {};
               }
            }
            var _loc6_:* = 0;
            var _loc7_:* = param1;
            for(_loc6_ in _loc7_)
            {
               §§push(_loc6_);
               if(!(_loc8_ && Boolean(_loc3_)))
               {
                  _loc3_ = §§pop();
                  if(!(_loc8_ && Boolean(_loc3_)))
                  {
                     addr65:
                     §§push(_loc3_ in this.propTweenLookup);
                     if(!(_loc8_ && Boolean(_loc3_)))
                     {
                        if(§§pop())
                        {
                           if(!(_loc8_ && Boolean(_loc3_)))
                           {
                              §§push((_loc4_ = this.propTweenLookup[_loc3_]).isPlugin);
                              if(!(_loc8_ && Boolean(this)))
                              {
                                 §§push(§§pop());
                                 §§push(§§pop());
                                 if(_loc9_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc9_ || param2)
                                       {
                                          §§pop();
                                          if(_loc9_ || Boolean(param1))
                                          {
                                             §§push(_loc4_.name);
                                             if(_loc9_ || Boolean(param1))
                                             {
                                                §§push("_MULTIPLE_");
                                                if(_loc9_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc8_ && Boolean(this)))
                                                   {
                                                      addr138:
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc8_ && Boolean(param1)))
                                                         {
                                                            _loc4_.target.killProps(param1);
                                                            if(!_loc8_)
                                                            {
                                                               addr152:
                                                               if(_loc4_.target.overwriteProps.length == 0)
                                                               {
                                                                  _loc4_.name = "";
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr163:
                                                                     §§push(_loc3_);
                                                                     if(!(_loc8_ && Boolean(param1)))
                                                                     {
                                                                        addr182:
                                                                        §§push(§§pop() != _loc4_.target.propName);
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr185:
                                                                           §§push(§§pop());
                                                                           if(_loc9_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§pop();
                                                                                 §§push(_loc4_.name);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§push("");
                                                                                    if(!(_loc8_ && param2))
                                                                                    {
                                                                                       addr202:
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(!(_loc8_ && Boolean(this)))
                                                                                       {
                                                                                          addr210:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             delete this.propTweenLookup[_loc3_];
                                                                                             addr216:
                                                                                             §§push(_loc4_.name);
                                                                                             §§push("_MULTIPLE_");
                                                                                          }
                                                                                          §§goto(addr216);
                                                                                       }
                                                                                       addr281:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr282:
                                                                                          _loc4_.target.onDisable();
                                                                                          if(_loc4_.target.activeDisable)
                                                                                          {
                                                                                             addr289:
                                                                                             _loc5_ = true;
                                                                                             if(_loc9_ || param2)
                                                                                             {
                                                                                             }
                                                                                             addr303:
                                                                                             §§push(param2);
                                                                                             if(_loc9_ || Boolean(this))
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                }
                                                                                                addr340:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc9_ || param2)
                                                                                                   {
                                                                                                      this._overwrittenProps[_loc3_] = 1;
                                                                                                   }
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc8_ && Boolean(this)))
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   addr326:
                                                                                                   §§push(param1 == this._overwrittenProps);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§goto(addr340);
                                                                                                      §§push(!§§pop());
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr340);
                                                                                          }
                                                                                       }
                                                                                       delete this.propTweenLookup[_loc3_];
                                                                                       §§goto(addr303);
                                                                                    }
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       §§push(_loc4_.nextNode);
                                                                                       if(_loc9_ || Boolean(_loc3_))
                                                                                       {
                                                                                          addr242:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§push(_loc4_.nextNode);
                                                                                          }
                                                                                          §§push(_loc4_.prevNode);
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   addr251:
                                                                                                   _loc4_.prevNode.nextNode = _loc4_.nextNode;
                                                                                                   addr267:
                                                                                                   §§push(_loc4_.isPlugin);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      addr273:
                                                                                                      §§push(§§pop());
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr281);
                                                                                                   }
                                                                                                   §§pop();
                                                                                                   §§goto(addr281);
                                                                                                   §§push(Boolean(_loc4_.target.onDisable));
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr261:
                                                                                                   this.cachedPT1 = _loc4_.nextNode;
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      §§goto(addr267);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr289);
                                                                                             }
                                                                                             else if(this.cachedPT1 == _loc4_)
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§goto(addr261);
                                                                                                }
                                                                                                §§goto(addr267);
                                                                                             }
                                                                                             §§goto(addr267);
                                                                                          }
                                                                                          §§goto(addr251);
                                                                                       }
                                                                                       §§pop().prevNode = _loc4_.prevNode;
                                                                                       if(_loc9_ || Boolean(_loc3_))
                                                                                       {
                                                                                          §§goto(addr242);
                                                                                       }
                                                                                       §§goto(addr282);
                                                                                    }
                                                                                    §§goto(addr289);
                                                                                 }
                                                                                 §§goto(addr216);
                                                                              }
                                                                              §§goto(addr210);
                                                                           }
                                                                        }
                                                                        §§goto(addr273);
                                                                     }
                                                                     §§goto(addr216);
                                                                  }
                                                                  §§goto(addr261);
                                                               }
                                                               §§goto(addr163);
                                                            }
                                                            §§goto(addr242);
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                   §§goto(addr185);
                                                }
                                                §§goto(addr202);
                                             }
                                             §§goto(addr216);
                                          }
                                          §§goto(addr152);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr273);
                              }
                              §§goto(addr202);
                           }
                           §§goto(addr326);
                        }
                        §§goto(addr289);
                     }
                     §§goto(addr340);
                  }
                  §§goto(addr326);
               }
               §§goto(addr65);
            }
            return _loc5_;
         }
         §§goto(addr35);
      }
      
      override public function invalidate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this._notifyPluginsOfEnabled);
         if(!_loc3_)
         {
            §§push(§§pop());
            if(_loc2_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr29:
                     §§pop();
                     §§push(Boolean(this.cachedPT1));
                  }
               }
            }
            if(§§pop())
            {
               onPluginEvent("onDisable",this);
            }
            this.cachedPT1 = null;
            this._overwrittenProps = null;
            var _loc1_:*;
            this._notifyPluginsOfEnabled = _loc1_ = false;
            §§push(§§findproperty(_hasUpdate));
            §§push(this);
            §§push(this);
            §§push(_loc1_);
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(_loc1_ = §§pop());
            }
            §§pop().active = §§pop();
            §§push(_loc1_);
            if(_loc2_)
            {
               §§push(_loc1_ = §§pop());
            }
            §§pop().initted = §§pop();
            §§pop()._hasUpdate = _loc1_;
            this.propTweenLookup = {};
            return;
         }
         §§goto(addr29);
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Array = null;
         if(_loc5_ || Boolean(_loc3_))
         {
            §§push(param1);
            if(_loc5_ || param1)
            {
               if(§§pop())
               {
                  if(_loc5_ || param2)
                  {
                     addr40:
                     _loc3_ = TweenLite.masterList[this.target];
                     if(_loc5_)
                     {
                        if(!_loc3_)
                        {
                           if(!_loc4_)
                           {
                              TweenLite.masterList[this.target] = [this];
                              if(_loc5_)
                              {
                              }
                              addr82:
                              super.setEnabled(param1,param2);
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 addr93:
                                 §§push(this._notifyPluginsOfEnabled);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc4_ && param2))
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             addr109:
                                             §§pop();
                                             if(_loc5_)
                                             {
                                                §§push(Boolean(this.cachedPT1));
                                                if(_loc5_)
                                                {
                                                   addr124:
                                                   if(§§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         addr143:
                                                         return false;
                                                         addr142:
                                                      }
                                                   }
                                                   §§goto(addr142);
                                                }
                                                §§goto(addr143);
                                             }
                                             §§push(§§findproperty(onPluginEvent));
                                             if(!_loc4_)
                                             {
                                                if(param1)
                                                {
                                                   return "onEnable".onPluginEvent(_loc5_ ? §§pop() : §§pop(),this);
                                                   addr132:
                                                }
                                                else
                                                {
                                                   §§push("onDisable");
                                                }
                                                §§goto(addr138);
                                             }
                                             §§goto(addr132);
                                          }
                                       }
                                       §§goto(addr124);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr109);
                              }
                              §§goto(addr143);
                           }
                        }
                        else if(_loc3_.indexOf(this) == -1)
                        {
                           if(!_loc4_)
                           {
                              _loc3_[_loc3_.length] = this;
                           }
                        }
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr93);
               }
               §§goto(addr82);
            }
            §§goto(addr109);
         }
         §§goto(addr40);
      }
      
      protected function easeProxy(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return this.vars.proxiedEase.apply(null,arguments.concat(this.vars.easeParams));
      }
   }
}
