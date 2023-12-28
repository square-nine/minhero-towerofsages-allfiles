package com.greensock
{
   import com.greensock.core.*;
   import com.greensock.events.TweenEvent;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   
   public class TweenMax extends TweenLite implements IEventDispatcher
   {
      
      public static const version:Number = 11.698;
      
      private static var _overwriteMode:int;
      
      public static var killTweensOf:Function;
      
      public static var killDelayedCallsTo:Function;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            version = 11.698;
            if(_loc2_)
            {
               addr21:
               §§push(§§findproperty(_overwriteMode));
               if(_loc2_ || _loc2_)
               {
                  if(OverwriteManager.enabled)
                  {
                     addr32:
                     §§push(OverwriteManager.mode);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                        if(_loc2_)
                        {
                        }
                     }
                     else
                     {
                        addr57:
                        §§push(§§pop());
                     }
                  }
                  else
                  {
                     §§push(OverwriteManager.init(2));
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr57);
                     }
                  }
                  §§pop()._overwriteMode = §§pop();
                  if(_loc2_)
                  {
                     addr61:
                     killTweensOf = TweenLite.killTweensOf;
                     if(_loc2_)
                     {
                        §§goto(addr67);
                     }
                     §§goto(addr85);
                  }
                  addr67:
                  killDelayedCallsTo = TweenLite.killTweensOf;
                  if(!(_loc1_ && _loc2_))
                  {
                     addr85:
                     TweenPlugin.activate([AutoAlphaPlugin,EndArrayPlugin,FramePlugin,RemoveTintPlugin,TintPlugin,VisiblePlugin,VolumePlugin,BevelFilterPlugin,BezierPlugin,BezierThroughPlugin,BlurFilterPlugin,ColorMatrixFilterPlugin,ColorTransformPlugin,DropShadowFilterPlugin,FrameLabelPlugin,GlowFilterPlugin,HexColorsPlugin,RoundPropsPlugin,ShortRotationPlugin,{}]);
                  }
                  return;
               }
               §§goto(addr32);
            }
            §§goto(addr61);
         }
         §§goto(addr21);
      }
      
      protected var _dispatcher:EventDispatcher;
      
      protected var _hasUpdateListener:Boolean;
      
      protected var _repeat:int = 0;
      
      protected var _repeatDelay:Number = 0;
      
      protected var _cyclesComplete:int = 0;
      
      protected var _easePower:int;
      
      protected var _easeType:int;
      
      public var yoyo:Boolean;
      
      public function TweenMax(param1:Object, param2:Number, param3:Object)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
            if(!_loc5_)
            {
               if(TweenLite.version < 11.2)
               {
                  if(_loc4_)
                  {
                     throw new Error("TweenMax error! Please update your TweenLite class or try deleting your ASO files. TweenMax requires a more recent version. Download updates at http://www.TweenMax.com.");
                  }
                  §§goto(addr193);
               }
               else
               {
                  this.yoyo = Boolean(this.vars.yoyo);
                  this._repeat = uint(this.vars.repeat);
                  §§push(this);
                  if(_loc4_)
                  {
                     if(this.vars.repeatDelay)
                     {
                        addr60:
                        §§push(Number(this.vars.repeatDelay));
                        if(_loc4_ || Boolean(param3))
                        {
                        }
                     }
                     else
                     {
                        §§push(0);
                     }
                     §§pop()._repeatDelay = §§pop();
                     this.cacheIsDirty = true;
                     §§push(Boolean(this.vars.onCompleteListener));
                     §§push(Boolean(this.vars.onCompleteListener));
                     if(!(_loc5_ && Boolean(param2)))
                     {
                        if(!§§pop())
                        {
                           if(!(_loc5_ && Boolean(param1)))
                           {
                              §§pop();
                              if(!(_loc5_ && Boolean(param3)))
                              {
                                 §§push(Boolean(this.vars.onInitListener));
                                 if(!_loc5_)
                                 {
                                    addr114:
                                    §§push(§§pop());
                                    if(!_loc5_)
                                    {
                                       if(!§§pop())
                                       {
                                          §§pop();
                                          §§push(Boolean(this.vars.onUpdateListener));
                                          if(!(_loc5_ && Boolean(param3)))
                                          {
                                             addr137:
                                             §§push(§§pop());
                                             if(_loc4_)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§pop();
                                                   if(_loc4_)
                                                   {
                                                      §§push(Boolean(this.vars.onStartListener));
                                                      if(!(_loc5_ && Boolean(param1)))
                                                      {
                                                         addr155:
                                                         §§push(§§pop());
                                                         if(!(_loc5_ && Boolean(param3)))
                                                         {
                                                            addr163:
                                                            if(!§§pop())
                                                            {
                                                               if(_loc4_ || Boolean(param3))
                                                               {
                                                                  §§pop();
                                                                  §§push(Boolean(this.vars.onRepeatListener));
                                                                  if(_loc4_ || Boolean(param2))
                                                                  {
                                                                     addr183:
                                                                     if(!§§pop())
                                                                     {
                                                                        §§pop();
                                                                        if(_loc4_ || Boolean(param1))
                                                                        {
                                                                           addr193:
                                                                           §§push(Boolean(this.vars.onReverseCompleteListener));
                                                                           if(_loc4_)
                                                                           {
                                                                              addr199:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    this.initDispatcher();
                                                                                 }
                                                                                 addr208:
                                                                                 §§push(param2 == 0);
                                                                                 if(param2 == 0)
                                                                                 {
                                                                                    if(!(_loc5_ && Boolean(param3)))
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc4_ || Boolean(this))
                                                                                       {
                                                                                          addr227:
                                                                                          addr224:
                                                                                          if(_delay == 0)
                                                                                          {
                                                                                             this._dispatcher.dispatchEvent(new TweenEvent(TweenEvent.UPDATE));
                                                                                          }
                                                                                          §§goto(addr244);
                                                                                       }
                                                                                       this._dispatcher.dispatchEvent(new TweenEvent(TweenEvent.COMPLETE));
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          addr244:
                                                                                          §§goto(addr255);
                                                                                       }
                                                                                       §§goto(addr273);
                                                                                    }
                                                                                    §§goto(addr259);
                                                                                 }
                                                                              }
                                                                              §§goto(addr227);
                                                                           }
                                                                           addr255:
                                                                           §§goto(addr265);
                                                                        }
                                                                        §§goto(addr227);
                                                                     }
                                                                     §§goto(addr199);
                                                                  }
                                                                  addr265:
                                                                  §§push(Boolean(this.vars.timeScale));
                                                                  if(Boolean(this.vars.timeScale))
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr259:
                                                                        §§pop();
                                                                        §§push(!(this.target is TweenCore));
                                                                     }
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc4_ || Boolean(param3))
                                                                     {
                                                                        addr273:
                                                                        this.cachedTimeScale = this.vars.timeScale;
                                                                     }
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr199);
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                         §§goto(addr208);
                                                      }
                                                      §§goto(addr259);
                                                   }
                                                   §§goto(addr273);
                                                }
                                                §§goto(addr155);
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr227);
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr163);
                                 }
                                 §§goto(addr259);
                              }
                              §§goto(addr224);
                           }
                           §§goto(addr199);
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr208);
                  }
                  §§goto(addr60);
               }
               §§goto(addr208);
            }
            §§goto(addr273);
         }
         §§goto(addr227);
      }
      
      public static function to(param1:Object, param2:Number, param3:Object) : TweenMax
      {
         return new TweenMax(param1,param2,param3);
      }
      
      public static function from(param1:Object, param2:Number, param3:Object) : TweenMax
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && Boolean(param2)))
         {
            if(param3.isGSVars)
            {
               if(_loc5_ || Boolean(param1))
               {
                  addr45:
                  param3 = param3.vars;
                  §§goto(addr49);
               }
               §§goto(addr54);
            }
            addr49:
            param3.runBackwards = true;
            if(_loc5_)
            {
               addr54:
               if(!("immediateRender" in param3))
               {
                  if(_loc5_)
                  {
                     param3.immediateRender = true;
                  }
               }
            }
            return new TweenMax(param1,param2,param3);
         }
         §§goto(addr45);
      }
      
      public static function fromTo(param1:Object, param2:Number, param3:Object, param4:Object) : TweenMax
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(param4.isGSVars)
            {
               if(_loc6_)
               {
                  param4 = param4.vars;
                  addr32:
                  if(param3.isGSVars)
                  {
                     if(_loc6_)
                     {
                        addr37:
                        param3 = param3.vars;
                        addr48:
                        param4.startAt = param3;
                        if(!_loc5_)
                        {
                           if(param3.immediateRender)
                           {
                              if(_loc5_ && Boolean(param2))
                              {
                              }
                           }
                           §§goto(addr66);
                        }
                     }
                     param4.immediateRender = true;
                     §§goto(addr66);
                  }
                  §§goto(addr48);
               }
               addr66:
               return new TweenMax(param1,param2,param4);
            }
            §§goto(addr32);
         }
         §§goto(addr37);
      }
      
      public static function allTo(param1:Array, param2:Number, param3:Object, param4:Number = 0, param5:Function = null, param6:Array = null) : Array
      {
         var targets:Array;
         var duration:Number;
         var vars:Object;
         var stagger:Number;
         var onCompleteAll:Function;
         var onCompleteAllParams:Array;
         var i:int;
         var varsDup:Object;
         var p:String;
         var l:int;
         var a:Array;
         var curDelay:Number;
         var onCompleteProxy:Function;
         var onCompleteParamsProxy:Array;
         var lastIndex:int;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc10_)
         {
            §§push(0);
            if(_loc11_ || Boolean(param2))
            {
               §§pop().§§slot[7] = §§pop();
               if(_loc11_)
               {
                  §§push(§§newactivation());
                  if(_loc11_ || Boolean(param2))
                  {
                     §§push(null);
                     if(_loc11_)
                     {
                        §§pop().§§slot[8] = §§pop();
                        if(_loc11_)
                        {
                           §§push(§§newactivation());
                           §§push(null);
                           if(!(_loc10_ && Boolean(param2)))
                           {
                              §§pop().§§slot[9] = §§pop();
                              §§push(§§newactivation());
                              if(_loc11_)
                              {
                                 §§push(null);
                                 if(_loc11_ || Boolean(param2))
                                 {
                                    addr69:
                                    §§pop().§§slot[13] = §§pop();
                                    §§push(§§newactivation());
                                    if(_loc11_)
                                    {
                                       addr75:
                                       §§pop().§§slot[14] = null;
                                       §§push(§§newactivation());
                                       if(!(_loc10_ && Boolean(param1)))
                                       {
                                          §§push(param1);
                                          if(!_loc10_)
                                          {
                                             §§pop().§§slot[1] = §§pop();
                                             §§push(§§newactivation());
                                             if(_loc11_ || Boolean(param1))
                                             {
                                                §§push(param2);
                                                if(!(_loc10_ && TweenMax))
                                                {
                                                   §§pop().§§slot[2] = §§pop();
                                                   if(_loc11_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc11_)
                                                      {
                                                         §§pop().§§slot[3] = param3;
                                                         addr114:
                                                         §§push(§§newactivation());
                                                         §§push(param4);
                                                         if(!_loc10_)
                                                         {
                                                            addr117:
                                                            §§pop().§§slot[4] = §§pop();
                                                            onCompleteAll = param5;
                                                            addr121:
                                                            §§push(§§newactivation());
                                                            §§push(param6);
                                                            if(!(_loc10_ && TweenMax))
                                                            {
                                                               §§pop().§§slot[6] = §§pop();
                                                               if(_loc11_ || Boolean(param3))
                                                               {
                                                                  addr139:
                                                                  §§push(§§newactivation());
                                                                  §§push(§§newactivation());
                                                                  if(_loc11_ || TweenMax)
                                                                  {
                                                                     addr148:
                                                                     §§push(int(§§pop().§§slot[1].length));
                                                                     if(_loc11_ || Boolean(param2))
                                                                     {
                                                                        §§pop().§§slot[10] = §§pop();
                                                                        if(_loc11_)
                                                                        {
                                                                           addr161:
                                                                           a = [];
                                                                           addr165:
                                                                           if(!vars.isGSVars)
                                                                           {
                                                                           }
                                                                           addr178:
                                                                           §§push(§§newactivation());
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(!("delay" in vars))
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc11_ || TweenMax)
                                                                                    {
                                                                                       addr206:
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc10_ && Boolean(param1)))
                                                                                       {
                                                                                          §§pop().§§slot[12] = §§pop();
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             addr218:
                                                                                             §§push(§§newactivation());
                                                                                             §§push(§§newactivation());
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§pop().§§slot[13] = §§pop().§§slot[3].onComplete;
                                                                                                addr221:
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      addr237:
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc11_ || Boolean(param1))
                                                                                                      {
                                                                                                         addr245:
                                                                                                         §§pop().§§slot[14] = §§pop().§§slot[3].onCompleteParams;
                                                                                                         addr269:
                                                                                                         addr270:
                                                                                                         addr249:
                                                                                                         §§push(§§newactivation());
                                                                                                         if(!(_loc10_ && TweenMax))
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                         }
                                                                                                         §§pop().§§slot[7] = 0;
                                                                                                         loop0:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(i);
                                                                                                            loop1:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               loop2:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[10]);
                                                                                                                  while(§§pop() < §§pop())
                                                                                                                  {
                                                                                                                     varsDup = {};
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           var _loc8_:* = §§pop();
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              var _loc9_:* = vars;
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 loop4:
                                                                                                                                 while(§§hasnext(_loc9_,_loc8_))
                                                                                                                                 {
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    if(!(_loc10_ && Boolean(param2)))
                                                                                                                                    {
                                                                                                                                       §§pop().§§slot[9] = §§nextname(_loc8_,_loc9_);
                                                                                                                                       if(_loc10_ && Boolean(param1))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().§§slot[8][p] = vars[p];
                                                                                                                                       continue loop4;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr326:
                                                                                                                                 varsDup.delay = curDelay;
                                                                                                                                 if(!(_loc10_ && TweenMax))
                                                                                                                                 {
                                                                                                                                    §§push(i);
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       continue loop1;
                                                                                                                                    }
                                                                                                                                    addr343:
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       continue loop2;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop().§§slot[15]);
                                                                                                                                    if(!(_loc11_ || Boolean(param3)))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc11_)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             addr362:
                                                                                                                                             §§push(onCompleteAll == null);
                                                                                                                                             if(_loc11_)
                                                                                                                                             {
                                                                                                                                                addr368:
                                                                                                                                                §§push(!§§pop());
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr368);
                                                                                                                                       }
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc10_ && TweenMax))
                                                                                                                                          {
                                                                                                                                             varsDup.onComplete = function():void
                                                                                                                                             {
                                                                                                                                                if(onCompleteProxy != null)
                                                                                                                                                {
                                                                                                                                                   onCompleteProxy.apply(null,onCompleteParamsProxy);
                                                                                                                                                }
                                                                                                                                                onCompleteAll.apply(null,onCompleteAllParams);
                                                                                                                                             };
                                                                                                                                          }
                                                                                                                                          addr406:
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                          if(_loc11_ || Boolean(param2))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().§§slot[12]);
                                                                                                                                             if(_loc11_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + stagger);
                                                                                                                                                if(_loc11_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(_loc10_ && Boolean(param2))
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr458:
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   continue loop0;
                                                                                                                                                }
                                                                                                                                                §§pop().§§slot[12] = §§pop();
                                                                                                                                                if(!(_loc11_ || Boolean(param1)))
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                addr448:
                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                §§push(i);
                                                                                                                                                if(_loc10_ && Boolean(param2))
                                                                                                                                                {
                                                                                                                                                   continue loop0;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + 1);
                                                                                                                                             }
                                                                                                                                             §§goto(addr458);
                                                                                                                                          }
                                                                                                                                          §§goto(addr448);
                                                                                                                                       }
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§§slot[11]);
                                                                                                                                          if(!(_loc10_ && Boolean(param1)))
                                                                                                                                          {
                                                                                                                                             §§pop()[i] = new TweenMax(targets[i],duration,varsDup);
                                                                                                                                             §§goto(addr406);
                                                                                                                                          }
                                                                                                                                          §§goto(addr467);
                                                                                                                                       }
                                                                                                                                       §§goto(addr448);
                                                                                                                                    }
                                                                                                                                    §§goto(addr368);
                                                                                                                                 }
                                                                                                                                 §§goto(addr362);
                                                                                                                              }
                                                                                                                              §§goto(addr313);
                                                                                                                           }
                                                                                                                           §§goto(addr326);
                                                                                                                        }
                                                                                                                        §§goto(addr343);
                                                                                                                     }
                                                                                                                     §§goto(addr406);
                                                                                                                  }
                                                                                                                  addr467:
                                                                                                                  return §§pop();
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(§§pop().§§slot[10]);
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         addr262:
                                                                                                         §§push(int(§§pop() - 1));
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            addr265:
                                                                                                            §§pop().§§slot[15] = §§pop();
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               §§goto(addr269);
                                                                                                               §§push(§§newactivation());
                                                                                                            }
                                                                                                            §§goto(addr269);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr270);
                                                                                                   }
                                                                                                   §§goto(addr269);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr245);
                                                                                          }
                                                                                          §§goto(addr249);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr262);
                                                                                 }
                                                                              }
                                                                              §§goto(addr265);
                                                                           }
                                                                           §§push(Number(vars.delay));
                                                                           if(_loc10_)
                                                                           {
                                                                           }
                                                                           §§goto(addr206);
                                                                        }
                                                                        §§push(§§newactivation());
                                                                        if(_loc11_)
                                                                        {
                                                                           addr171:
                                                                           §§push(§§newactivation());
                                                                           if(_loc11_)
                                                                           {
                                                                              §§pop().§§slot[3] = §§pop().§§slot[3].vars;
                                                                              §§goto(addr178);
                                                                           }
                                                                           §§goto(addr221);
                                                                        }
                                                                        §§goto(addr237);
                                                                     }
                                                                     §§goto(addr262);
                                                                  }
                                                                  §§goto(addr245);
                                                               }
                                                               §§goto(addr178);
                                                            }
                                                            §§goto(addr148);
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                      §§goto(addr114);
                                                   }
                                                   §§goto(addr121);
                                                }
                                                §§goto(addr117);
                                             }
                                             §§goto(addr139);
                                          }
                                          §§goto(addr148);
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr75);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr69);
                        }
                        §§goto(addr245);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr218);
               }
               §§goto(addr117);
            }
            §§goto(addr265);
         }
         §§goto(addr114);
      }
      
      public static function allFrom(param1:Array, param2:Number, param3:Object, param4:Number = 0, param5:Function = null, param6:Array = null) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || TweenMax)
         {
            if(param3.isGSVars)
            {
               if(_loc8_)
               {
                  param3 = param3.vars;
               }
               §§goto(addr68);
            }
            param3.runBackwards = true;
            if(_loc8_ || Boolean(param1))
            {
               if(!("immediateRender" in param3))
               {
                  if(_loc8_ || Boolean(param1))
                  {
                     param3.immediateRender = true;
                  }
               }
            }
         }
         addr68:
         return allTo(param1,param2,param3,param4,param5,param6);
      }
      
      public static function allFromTo(param1:Array, param2:Number, param3:Object, param4:Object, param5:Number = 0, param6:Function = null, param7:Array = null) : Array
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            if(param4.isGSVars)
            {
               if(!_loc9_)
               {
                  param4 = param4.vars;
                  addr24:
                  if(param3.isGSVars)
                  {
                     if(!(_loc9_ && Boolean(param2)))
                     {
                        param3 = param3.vars;
                        addr52:
                        param4.startAt = param3;
                        if(_loc8_)
                        {
                           if(param3.immediateRender)
                           {
                              if(_loc8_)
                              {
                                 addr62:
                                 param4.immediateRender = true;
                              }
                           }
                        }
                        §§goto(addr62);
                        addr41:
                     }
                     return allTo(param1,param2,param4,param5,param6,param7);
                  }
                  §§goto(addr52);
               }
               §§goto(addr62);
            }
            §§goto(addr24);
         }
         §§goto(addr41);
      }
      
      public static function delayedCall(param1:Number, param2:Function, param3:Array = null, param4:Boolean = false) : TweenMax
      {
         return new TweenMax(param2,0,{
            "delay":param1,
            "onComplete":param2,
            "onCompleteParams":param3,
            "immediateRender":false,
            "useFrames":param4,
            "overwrite":0
         });
      }
      
      public static function getTweensOf(param1:Object) : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:Array = masterList[param1];
         var _loc3_:Array = [];
         if(!(_loc8_ && Boolean(_loc3_)))
         {
            if(_loc2_)
            {
               if(_loc7_)
               {
                  addr36:
                  §§push(int(_loc2_.length));
                  if(_loc7_)
                  {
                     _loc4_ = §§pop();
                     §§goto(addr53);
                  }
                  _loc5_ = §§pop();
               }
               §§goto(addr53);
            }
            addr53:
            if(!_loc8_)
            {
               §§push(0);
            }
            while(true)
            {
               §§push(_loc4_);
               if(_loc7_)
               {
                  §§push(§§pop() - 1);
                  if(!(_loc8_ && Boolean(param1)))
                  {
                     addr101:
                     §§push(§§pop());
                     if(!_loc8_)
                     {
                        §§push(§§pop());
                        if(!_loc8_)
                        {
                           _loc4_ = §§pop();
                           addr108:
                           §§push(-1);
                        }
                     }
                     if(§§pop() <= §§pop())
                     {
                        break;
                     }
                     if(!TweenLite(_loc2_[_loc4_]).gc)
                     {
                        if(_loc8_)
                        {
                           break;
                        }
                        var _loc6_:*;
                        _loc3_[_loc6_ = _loc5_++] = _loc2_[_loc4_];
                        if(_loc8_ && Boolean(_loc2_))
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  §§goto(addr108);
               }
               §§goto(addr101);
            }
            return _loc3_;
         }
         §§goto(addr36);
      }
      
      public static function isTweening(param1:Object) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:TweenLite = null;
         var _loc2_:Array = getTweensOf(param1);
         var _loc3_:* = int(_loc2_.length);
         while(true)
         {
            §§push(_loc3_);
            if(_loc6_)
            {
               §§push(§§pop() - 1);
               if(!_loc5_)
               {
                  §§push(§§pop());
                  if(_loc6_ || Boolean(_loc2_))
                  {
                     §§push(§§pop());
                     if(_loc6_ || Boolean(param1))
                     {
                        _loc3_ = §§pop();
                        addr125:
                        §§push(-1);
                     }
                  }
                  if(§§pop() <= §§pop())
                  {
                     return false;
                  }
                  §§push((_loc4_ = _loc2_[_loc3_]).active);
                  if(_loc6_)
                  {
                     §§push(§§pop());
                     if(_loc6_ || TweenMax)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc5_ && Boolean(_loc3_)))
                           {
                              §§pop();
                              if(_loc5_)
                              {
                                 continue;
                              }
                              §§push(_loc4_.cachedStartTime == _loc4_.timeline.cachedTime);
                              if(_loc6_)
                              {
                                 addr73:
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       §§pop();
                                       if(!_loc6_)
                                       {
                                          addr94:
                                          break;
                                       }
                                       §§push(_loc4_.timeline.active);
                                       if(_loc5_)
                                       {
                                          addr94:
                                          return §§pop();
                                       }
                                       addr85:
                                       if(§§pop())
                                       {
                                          if(!(_loc5_ && Boolean(param1)))
                                          {
                                             break;
                                          }
                                       }
                                       continue;
                                    }
                                 }
                                 §§goto(addr85);
                              }
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr85);
                     }
                  }
                  §§goto(addr73);
               }
            }
            §§goto(addr125);
         }
         §§goto(addr94);
         §§push(true);
      }
      
      public static function getAllTweens() : Array
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc1_:Dictionary = masterList;
         var _loc2_:int = 0;
         var _loc3_:Array = [];
         for each(_loc4_ in _loc1_)
         {
            §§push(int(_loc4_.length));
            if(_loc9_)
            {
               _loc5_ = §§pop();
               if(!_loc10_)
               {
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc9_ || TweenMax)
                     {
                        §§push(§§pop() - 1);
                        if(!(_loc10_ && Boolean(_loc1_)))
                        {
                           addr111:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc10_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc10_ && Boolean(_loc2_)))
                                 {
                                    addr122:
                                    _loc5_ = §§pop();
                                    while(true)
                                    {
                                       §§push(-1);
                                    }
                                    addr123:
                                 }
                                 while(true)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       break loop1;
                                    }
                                    if(TweenLite(_loc4_[_loc5_]).gc)
                                    {
                                       continue loop1;
                                    }
                                    if(_loc10_ && Boolean(_loc1_))
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       var _loc8_:*;
                                       _loc3_[_loc8_ = _loc2_++] = _loc4_[_loc5_];
                                       if(!(_loc9_ || Boolean(_loc2_)))
                                       {
                                          break loop1;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              §§goto(addr122);
                           }
                           addr111:
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr111);
                  }
                  continue;
               }
               §§goto(addr69);
            }
            §§goto(addr111);
         }
         return _loc3_;
      }
      
      public static function killAll(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = false;
         var _loc4_:Array;
         var _loc6_:* = int((_loc4_ = getAllTweens()).length);
         while(true)
         {
            §§push(_loc6_);
            if(_loc8_)
            {
               §§push(§§pop() - 1);
               if(!(_loc7_ && param1))
               {
                  §§push(§§pop());
                  if(!(_loc7_ && param3))
                  {
                     §§push(§§pop());
                     if(_loc8_)
                     {
                        addr148:
                        _loc6_ = §§pop();
                        §§push(-1);
                     }
                     if(§§pop() > §§pop())
                     {
                        §§push(_loc4_[_loc6_].target == _loc4_[_loc6_].vars.onComplete);
                        §§push(_loc4_[_loc6_].target == _loc4_[_loc6_].vars.onComplete);
                        if(_loc8_ || TweenMax)
                        {
                           _loc5_ = §§pop();
                           §§push(param3);
                           if(_loc8_)
                           {
                              §§push(§§pop() == §§pop());
                              §§push(§§pop() == §§pop());
                              if(_loc8_ || param1)
                              {
                                 addr57:
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    if(_loc8_)
                                    {
                                       §§push(_loc5_);
                                       if(_loc8_ || param1)
                                       {
                                          addr77:
                                          §§push(§§pop() != param2);
                                          if(_loc8_ || param1)
                                          {
                                             addr86:
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                             if(!(_loc7_ && param1))
                                             {
                                                addr95:
                                                if(param1)
                                                {
                                                   if(_loc8_ || param2)
                                                   {
                                                      addr103:
                                                      _loc4_[_loc6_].complete(false);
                                                      if(!_loc8_)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   _loc4_[_loc6_].setEnabled(false,false);
                                                   if(!_loc8_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                continue;
                                             }
                                             §§goto(addr103);
                                          }
                                       }
                                    }
                                    §§goto(addr95);
                                 }
                                 §§goto(addr86);
                              }
                              §§goto(addr77);
                           }
                        }
                        §§goto(addr57);
                     }
                     break;
                  }
                  §§goto(addr148);
               }
            }
            §§goto(addr148);
         }
      }
      
      public static function killChildTweensOf(param1:DisplayObjectContainer, param2:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:Object = null;
         var _loc5_:DisplayObjectContainer = null;
         var _loc3_:Array = getAllTweens();
         var _loc6_:* = int(_loc3_.length);
         while(true)
         {
            §§push(_loc6_);
            if(!_loc7_)
            {
               §§push(§§pop() - 1);
               if(!(_loc7_ && param2))
               {
                  §§push(§§pop());
                  if(_loc8_ || Boolean(param1))
                  {
                     §§push(§§pop());
                     if(_loc8_ || param2)
                     {
                        addr135:
                        _loc6_ = §§pop();
                        §§push(-1);
                     }
                     if(§§pop() <= §§pop())
                     {
                        break;
                     }
                     if((_loc4_ = _loc3_[_loc6_].target) is DisplayObject)
                     {
                        _loc5_ = _loc4_.parent;
                        if(!_loc7_)
                        {
                           for(; _loc5_; _loc5_ = _loc5_.parent)
                           {
                              if(_loc5_ == param1)
                              {
                                 if(!_loc7_)
                                 {
                                    if(param2)
                                    {
                                       if(!(_loc7_ && Boolean(_loc3_)))
                                       {
                                          _loc3_[_loc6_].complete(false);
                                          if(!(_loc8_ || Boolean(param1)))
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       _loc3_[_loc6_].setEnabled(false,false);
                                       if(!(_loc8_ || Boolean(_loc3_)))
                                       {
                                          break;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     continue;
                  }
                  §§goto(addr135);
               }
            }
            §§goto(addr135);
         }
      }
      
      public static function pauseAll(param1:Boolean = true, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            changePause(true,param1,param2);
         }
      }
      
      public static function resumeAll(param1:Boolean = true, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            changePause(false,param1,param2);
         }
      }
      
      private static function changePause(param1:Boolean, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = false;
         var _loc4_:Array;
         var _loc6_:* = int((_loc4_ = getAllTweens()).length);
         while(true)
         {
            §§push(_loc6_);
            if(!(_loc7_ && param2))
            {
               §§push(§§pop() - 1);
               if(_loc8_ || param3)
               {
                  addr127:
                  §§push(§§pop());
                  if(_loc8_ || TweenMax)
                  {
                     §§push(§§pop());
                     if(_loc8_)
                     {
                        _loc6_ = §§pop();
                        addr139:
                        §§push(-1);
                     }
                  }
                  if(§§pop() > §§pop())
                  {
                     §§push(TweenLite(_loc4_[_loc6_]).target == TweenLite(_loc4_[_loc6_]).vars.onComplete);
                     §§push(TweenLite(_loc4_[_loc6_]).target == TweenLite(_loc4_[_loc6_]).vars.onComplete);
                     if(!_loc7_)
                     {
                        _loc5_ = §§pop();
                        §§push(param3);
                        if(_loc8_)
                        {
                           addr47:
                           §§push(§§pop() == §§pop());
                           if(_loc8_ || param3)
                           {
                              §§push(§§pop());
                              if(!(_loc7_ && param2))
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc8_)
                                    {
                                       addr73:
                                       §§pop();
                                       if(_loc7_ && param2)
                                       {
                                          continue;
                                       }
                                       §§push(_loc5_);
                                    }
                                    addr83:
                                    §§push(§§pop() == param2);
                                    if(!_loc7_)
                                    {
                                       §§push(!§§pop());
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    TweenCore(_loc4_[_loc6_]).paused = param1;
                                    if(_loc7_ && param1)
                                    {
                                       break;
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr83);
                           }
                           §§goto(addr73);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr47);
                  }
                  break;
               }
               §§goto(addr139);
            }
            §§goto(addr127);
         }
      }
      
      public static function get globalTimeScale() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(TweenLite.rootTimeline == null)
            {
               addr32:
               §§push(1);
               if(_loc2_)
               {
               }
            }
            else
            {
               §§push(TweenLite.rootTimeline.cachedTimeScale);
            }
            return §§pop();
         }
         §§goto(addr32);
      }
      
      public static function set globalTimeScale(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || Boolean(param1))
         {
            §§push(param1);
            if(!(_loc5_ && TweenMax))
            {
               if(§§pop() == 0)
               {
                  addr50:
                  if(_loc6_ || Boolean(param1))
                  {
                     §§push(0.0001);
                     if(_loc6_)
                     {
                        §§push(§§pop());
                     }
                  }
                  if(TweenLite.rootTimeline == null)
                  {
                     if(_loc6_)
                     {
                        addr56:
                        TweenLite.to({},0,{});
                     }
                  }
                  var _loc2_:SimpleTimeline = TweenLite.rootTimeline;
                  §§push(getTimer() * 0.001);
                  if(!(_loc5_ && TweenMax))
                  {
                     §§push(§§pop());
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc5_)
                  {
                     §§push(_loc2_);
                     §§push(_loc3_);
                     if(_loc6_ || TweenMax)
                     {
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           §§push(§§pop() - _loc2_.cachedStartTime);
                           if(!(_loc5_ && Boolean(_loc2_)))
                           {
                              §§push(§§pop() * _loc2_.cachedTimeScale);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() / param1);
                              }
                           }
                        }
                        §§push(§§pop() - §§pop());
                     }
                     §§pop().cachedStartTime = §§pop();
                  }
                  _loc2_ = TweenLite.rootFramesTimeline;
                  if(!_loc5_)
                  {
                     _loc3_ = TweenLite.rootFrame;
                     if(_loc6_)
                     {
                        addr130:
                        §§push(_loc2_);
                        §§push(_loc3_);
                        if(_loc6_)
                        {
                           §§push(_loc3_);
                           if(!_loc5_)
                           {
                              §§push(§§pop() - _loc2_.cachedStartTime);
                              if(!(_loc5_ && Boolean(_loc3_)))
                              {
                                 §§push(§§pop() * _loc2_.cachedTimeScale);
                                 if(!(_loc5_ && Boolean(_loc2_)))
                                 {
                                    §§push(§§pop() / param1);
                                 }
                              }
                           }
                           §§push(§§pop() - §§pop());
                        }
                        §§pop().cachedStartTime = §§pop();
                        if(!_loc5_)
                        {
                           TweenLite.rootFramesTimeline.cachedTimeScale = TweenLite.rootTimeline.cachedTimeScale = param1;
                        }
                     }
                     return;
                  }
                  §§goto(addr130);
               }
               §§goto(addr50);
            }
            param1 = §§pop();
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               §§goto(addr50);
            }
            §§goto(addr56);
         }
         §§goto(addr50);
      }
      
      override protected function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:TweenMax = null;
         if(!_loc2_)
         {
            if(this.vars.startAt)
            {
               this.vars.startAt.overwrite = 0;
               if(!(_loc2_ && _loc2_))
               {
                  this.vars.startAt.immediateRender = true;
                  if(!_loc2_)
                  {
                     _loc1_ = new TweenMax(this.target,0,this.vars.startAt);
                     §§goto(addr59);
                  }
               }
               §§goto(addr62);
            }
            addr59:
            if(this._dispatcher)
            {
               this._dispatcher.dispatchEvent(new TweenEvent(TweenEvent.INIT));
               addr62:
            }
            super.init();
            if(_ease in fastEaseLookup)
            {
               addr82:
               this._easeType = fastEaseLookup[_ease][0];
               this._easePower = fastEaseLookup[_ease][1];
            }
            return;
         }
         §§goto(addr82);
      }
      
      override public function invalidate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.yoyo = Boolean(this.vars.yoyo == true);
         §§push(this);
         if(_loc2_ || _loc1_)
         {
            if(this.vars.repeat)
            {
               addr35:
               §§push(int(Number(this.vars.repeat)));
               if(_loc2_)
               {
               }
            }
            else
            {
               §§push(0);
            }
            §§pop()._repeat = §§pop();
            if(_loc2_ || _loc1_)
            {
               §§push(this);
               if(_loc2_)
               {
                  if(this.vars.repeatDelay)
                  {
                     addr60:
                     §§push(Number(this.vars.repeatDelay));
                     if(_loc1_)
                     {
                     }
                  }
                  else
                  {
                     §§push(0);
                  }
                  §§pop()._repeatDelay = §§pop();
                  this._hasUpdateListener = false;
                  §§push(this.vars.onCompleteListener == null);
                  if(!_loc1_)
                  {
                     §§push(!§§pop());
                     if(!_loc1_)
                     {
                        §§push(§§pop());
                        if(_loc2_ || _loc2_)
                        {
                           if(!§§pop())
                           {
                              if(!_loc1_)
                              {
                                 addr103:
                                 §§pop();
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr111:
                                    §§push(this.vars.onUpdateListener != null);
                                    if(!_loc1_)
                                    {
                                       addr126:
                                       if(!§§pop())
                                       {
                                          §§pop();
                                          if(_loc2_)
                                          {
                                             §§goto(addr137);
                                          }
                                          §§goto(addr138);
                                       }
                                    }
                                 }
                                 §§goto(addr137);
                              }
                              addr137:
                              if(this.vars.onStartListener != null)
                              {
                                 addr138:
                                 this.initDispatcher();
                              }
                              setDirtyCache(true);
                              super.invalidate();
                              return;
                           }
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr126);
               }
               §§goto(addr60);
            }
            §§goto(addr111);
         }
         §§goto(addr35);
      }
      
      public function updateTo(param1:Object, param2:Boolean = false) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:PropTween = null;
         var _loc8_:* = NaN;
         var _loc3_:Number = this.ratio;
         if(_loc12_ || Boolean(this))
         {
            §§push(param2);
            if(!(_loc11_ && Boolean(this)))
            {
               §§push(§§pop());
            }
            §§push(§§pop());
            if(_loc12_ || param2)
            {
               if(§§pop())
               {
                  §§pop();
                  if(!(_loc11_ && Boolean(param1)))
                  {
                     addr68:
                     addr69:
                     §§push(this.timeline != null);
                     if(this.timeline != null)
                     {
                        if(_loc12_)
                        {
                           §§pop();
                           addr73:
                           §§push(this.cachedStartTime < this.timeline.cachedTime);
                        }
                     }
                     if(§§pop())
                     {
                        this.cachedStartTime = this.timeline.cachedTime;
                        if(!(_loc11_ && param2))
                        {
                           this.setDirtyCache(false);
                        }
                        if(this.gc)
                        {
                           addr98:
                           this.setEnabled(true,false);
                           if(_loc12_ || Boolean(this))
                           {
                           }
                        }
                        else
                        {
                           this.timeline.insert(this,this.cachedStartTime - _delay);
                        }
                     }
                     for(_loc4_ in param1)
                     {
                        if(!(_loc11_ && Boolean(_loc3_)))
                        {
                           this.vars[_loc4_] = param1[_loc4_];
                        }
                     }
                     if(!(_loc11_ && param2))
                     {
                        if(this.initted)
                        {
                           if(!(_loc11_ && Boolean(param1)))
                           {
                              §§push(param2);
                              if(_loc12_ || Boolean(this))
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc11_ && Boolean(_loc3_)))
                                    {
                                       this.initted = false;
                                       addr374:
                                       return;
                                       addr191:
                                    }
                                    §§goto(addr374);
                                 }
                                 else
                                 {
                                    §§push(_notifyPluginsOfEnabled);
                                    if(_loc12_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc12_)
                                          {
                                          }
                                          addr204:
                                          if(§§pop())
                                          {
                                             if(_loc12_ || Boolean(this))
                                             {
                                                onPluginEvent("onDisable",this);
                                                if(_loc12_ || Boolean(param1))
                                                {
                                                   addr223:
                                                   §§push(this.cachedTime / this.cachedDuration);
                                                   if(!(_loc11_ && Boolean(_loc3_)))
                                                   {
                                                      if(§§pop() > 0.998)
                                                      {
                                                         §§push(this.cachedTime);
                                                         if(!(_loc11_ && param2))
                                                         {
                                                            addr247:
                                                            _loc5_ = §§pop();
                                                            this.renderTime(0,true,false);
                                                            this.initted = false;
                                                            if(!_loc11_)
                                                            {
                                                               this.renderTime(_loc5_,true,false);
                                                               if(_loc12_ || Boolean(_loc3_))
                                                               {
                                                                  §§goto(addr374);
                                                               }
                                                               else
                                                               {
                                                                  addr282:
                                                                  this.initted = false;
                                                                  if(_loc12_ || Boolean(param1))
                                                                  {
                                                                     addr292:
                                                                     this.init();
                                                                     if(_loc12_)
                                                                     {
                                                                     }
                                                                     _loc7_ = this.cachedPT1;
                                                                     if(_loc12_)
                                                                     {
                                                                        loop1:
                                                                        while(_loc7_)
                                                                        {
                                                                           §§push(_loc7_.start);
                                                                           if(!_loc11_)
                                                                           {
                                                                              §§push(§§pop() + _loc7_.change);
                                                                              if(_loc12_ || Boolean(this))
                                                                              {
                                                                                 §§push(§§pop());
                                                                              }
                                                                           }
                                                                           _loc8_ = §§pop();
                                                                           if(_loc12_)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              §§push(_loc7_.change);
                                                                              if(_loc12_)
                                                                              {
                                                                                 §§push(§§pop() * _loc6_);
                                                                              }
                                                                              §§pop().change = §§pop();
                                                                              if(_loc12_ || Boolean(this))
                                                                              {
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§push(_loc7_);
                                                                           §§push(_loc8_);
                                                                           if(!_loc11_)
                                                                           {
                                                                              §§push(§§pop() - _loc7_.change);
                                                                           }
                                                                           §§pop().start = §§pop();
                                                                           if(_loc11_ && Boolean(param1))
                                                                           {
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc7_ = _loc7_.nextNode;
                                                                              continue loop1;
                                                                           }
                                                                        }
                                                                        §§goto(addr374);
                                                                     }
                                                                     §§goto(addr368);
                                                                  }
                                                                  §§push(1 / (1 - _loc3_));
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§push(§§pop());
                                                                  }
                                                               }
                                                               §§goto(addr374);
                                                            }
                                                            §§goto(addr292);
                                                         }
                                                         _loc6_ = §§pop();
                                                         §§goto(addr292);
                                                      }
                                                      else
                                                      {
                                                         if(this.cachedTime > 0)
                                                         {
                                                            if(_loc12_ || Boolean(_loc3_))
                                                            {
                                                               §§goto(addr282);
                                                            }
                                                            §§goto(addr292);
                                                         }
                                                         §§goto(addr374);
                                                      }
                                                   }
                                                   §§goto(addr247);
                                                }
                                             }
                                             §§goto(addr282);
                                          }
                                          §§goto(addr223);
                                       }
                                       §§goto(addr204);
                                    }
                                    §§pop();
                                    §§goto(addr204);
                                    §§push(Boolean(this.cachedPT1));
                                 }
                                 §§goto(addr292);
                              }
                              §§goto(addr204);
                           }
                           §§goto(addr191);
                        }
                        §§goto(addr374);
                     }
                     §§goto(addr292);
                  }
                  §§goto(addr73);
               }
               §§goto(addr68);
            }
            §§goto(addr69);
         }
         §§goto(addr98);
      }
      
      public function setDestination(param1:String, param2:*, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Object;
         (_loc4_ = {})[param1] = param2;
         if(_loc5_ || param2)
         {
            this.updateTo(_loc4_,!param3);
         }
      }
      
      public function killProperties(param1:Array) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Object = {};
         var _loc3_:* = int(param1.length);
         do
         {
            §§push(_loc3_);
            if(!_loc4_)
            {
               §§push(§§pop() - 1);
               if(_loc5_ || Boolean(_loc2_))
               {
                  §§push(§§pop());
                  if(_loc5_)
                  {
                     §§push(§§pop());
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        addr72:
                        _loc3_ = §§pop();
                        §§push(-1);
                     }
                     if(§§pop() <= §§pop())
                     {
                        if(_loc5_ || Boolean(this))
                        {
                           break;
                        }
                        §§goto(addr85);
                     }
                     continue;
                  }
                  §§goto(addr72);
               }
            }
            §§goto(addr72);
         }
         while(_loc2_[param1[_loc3_]] = true, _loc5_ || Boolean(_loc2_));
         
         killVars(_loc2_);
         addr85:
      }
      
      override public function renderTime(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc7_:* = false;
         var _loc8_:Boolean = false;
         var _loc9_:* = false;
         var _loc11_:* = NaN;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = NaN;
         if(_loc18_ || param2)
         {
            if(this.cacheIsDirty)
            {
               addr38:
               §§push(this.totalDuration);
               if(!(_loc17_ && param3))
               {
                  §§push(§§pop());
                  if(_loc17_ && param3)
                  {
                  }
                  §§goto(addr67);
               }
               addr66:
               §§push(§§pop());
            }
            else
            {
               §§push(this.cachedTotalDuration);
               if(!(_loc17_ && param3))
               {
                  §§goto(addr66);
               }
            }
            addr67:
            var _loc4_:* = §§pop();
            var _loc5_:Number = this.cachedTime;
            var _loc6_:Number = this.cachedTotalTime;
            if(!_loc17_)
            {
               §§push(param1);
               if(!(_loc17_ && param3))
               {
                  if(§§pop() >= _loc4_)
                  {
                     this.cachedTotalTime = _loc4_;
                     if(!(_loc17_ && Boolean(param1)))
                     {
                        this.cachedTime = this.cachedDuration;
                        this.ratio = 1;
                        _loc7_ = !this.cachedReversed;
                        if(this.cachedDuration == 0)
                        {
                           §§push(param1);
                           if(_loc18_)
                           {
                              §§push(0);
                              if(!_loc17_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!_loc17_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc17_ && Boolean(param1)))
                                    {
                                       if(!§§pop())
                                       {
                                          if(!(_loc17_ && param3))
                                          {
                                             §§pop();
                                             §§goto(addr142);
                                          }
                                          §§goto(addr162);
                                       }
                                       addr142:
                                       §§push(_rawPrevTime < 0);
                                       if(_rawPrevTime < 0)
                                       {
                                          if(!(_loc17_ && param2))
                                          {
                                             §§pop();
                                             §§push(_rawPrevTime == param1);
                                             if(_loc18_ || Boolean(param1))
                                             {
                                                addr162:
                                                §§push(!§§pop());
                                                if(!_loc17_)
                                                {
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr648);
                                             }
                                             §§goto(addr556);
                                          }
                                          §§goto(addr667);
                                       }
                                       addr165:
                                       if(§§pop())
                                       {
                                          if(!_loc17_)
                                          {
                                             param3 = true;
                                             if(_loc18_ || param3)
                                             {
                                                §§goto(addr177);
                                             }
                                             else
                                             {
                                                addr219:
                                                param3 = true;
                                                if(!_loc17_)
                                                {
                                                   §§push(_rawPrevTime > 0);
                                                   if(_loc18_)
                                                   {
                                                      _loc7_ = §§pop();
                                                      addr229:
                                                      _rawPrevTime = param1;
                                                      var _loc15_:*;
                                                      this.ratio = _loc15_ = 0;
                                                      §§push(this);
                                                      §§push(this);
                                                      §§push(_loc15_);
                                                      if(!(_loc17_ && param2))
                                                      {
                                                         §§push(_loc15_ = §§pop());
                                                      }
                                                      §§pop().cachedTime = §§pop();
                                                      §§pop().cachedTotalTime = _loc15_;
                                                      if(!(_loc17_ && Boolean(this)))
                                                      {
                                                         §§push(this.cachedReversed);
                                                         if(!(_loc17_ && Boolean(param1)))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§pop();
                                                               §§push(_loc6_);
                                                               if(_loc18_)
                                                               {
                                                                  addr301:
                                                                  §§push(0);
                                                                  if(!(_loc17_ && Boolean(this)))
                                                                  {
                                                                     addr311:
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        §§push(true);
                                                                        if(_loc18_ || param3)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           addr321:
                                                                           §§goto(addr354);
                                                                        }
                                                                        §§goto(addr657);
                                                                     }
                                                                     §§goto(addr321);
                                                                  }
                                                                  §§goto(addr525);
                                                               }
                                                               §§goto(addr726);
                                                            }
                                                            §§goto(addr311);
                                                         }
                                                         §§goto(addr608);
                                                      }
                                                      §§goto(addr587);
                                                      addr232:
                                                   }
                                                   §§goto(addr503);
                                                }
                                             }
                                             §§goto(addr609);
                                          }
                                          §§goto(addr756);
                                       }
                                       §§goto(addr177);
                                    }
                                    §§goto(addr656);
                                 }
                                 §§goto(addr411);
                              }
                              §§goto(addr311);
                           }
                           §§goto(addr301);
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr504);
                  }
                  else
                  {
                     §§push(param1);
                     §§push(0);
                     if(!_loc17_)
                     {
                        if(§§pop() <= §§pop())
                        {
                           §§push(param1);
                           if(!(_loc17_ && param3))
                           {
                              §§push(0);
                              if(!_loc17_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    this.active = false;
                                    if(_loc18_)
                                    {
                                       if(this.cachedDuration == 0)
                                       {
                                          if(_rawPrevTime >= 0)
                                          {
                                             if(!_loc17_)
                                             {
                                                §§goto(addr219);
                                             }
                                             §§goto(addr354);
                                          }
                                          §§goto(addr229);
                                       }
                                       §§goto(addr232);
                                    }
                                    §§goto(addr623);
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    if(_loc18_ || Boolean(this))
                                    {
                                       §§push(0);
                                       if(_loc18_)
                                       {
                                          addr244:
                                          §§push(§§pop() == §§pop());
                                          if(§§pop() == §§pop())
                                          {
                                             §§pop();
                                             if(!_loc17_)
                                             {
                                                addr253:
                                                if(!this.initted)
                                                {
                                                   param3 = true;
                                                }
                                                §§goto(addr229);
                                             }
                                             §§goto(addr385);
                                          }
                                          §§goto(addr253);
                                       }
                                       §§goto(addr525);
                                    }
                                 }
                                 §§goto(addr734);
                              }
                              §§goto(addr311);
                           }
                           §§goto(addr378);
                        }
                        else
                        {
                           this.cachedTotalTime = this.cachedTime = param1;
                           if(_loc18_ || param3)
                           {
                              §§push(true);
                              if(_loc18_ || param2)
                              {
                                 _loc9_ = §§pop();
                                 if(_loc18_ || Boolean(this))
                                 {
                                    §§goto(addr354);
                                 }
                                 §§goto(addr691);
                              }
                              §§goto(addr682);
                           }
                        }
                        §§goto(addr489);
                     }
                     §§goto(addr244);
                  }
               }
               §§goto(addr726);
            }
            addr177:
            _rawPrevTime = param1;
            if(_loc18_ || Boolean(this))
            {
               addr354:
               §§push(this._repeat);
               §§push(0);
               if(_loc18_ || param2)
               {
                  if(§§pop() != §§pop())
                  {
                     §§push(this.cachedDuration + this._repeatDelay);
                     if(_loc18_ || param3)
                     {
                        addr378:
                        _loc11_ = §§pop();
                        §§push(this._cyclesComplete);
                        if(_loc18_)
                        {
                           _loc12_ = §§pop();
                           addr385:
                           §§push((this._cyclesComplete = this.cachedTotalTime / _loc11_ >> 0) == this.cachedTotalTime / _loc11_);
                           if(_loc18_ || param3)
                           {
                              if(§§pop())
                              {
                                 addr411:
                                 §§pop();
                                 if(!(_loc17_ && Boolean(param1)))
                                 {
                                    §§push(this._cyclesComplete);
                                    §§push(0);
                                    if(!_loc17_)
                                    {
                                       §§push(§§pop() != §§pop());
                                       if(!_loc17_)
                                       {
                                          addr428:
                                          if(§§pop())
                                          {
                                             §§push((_loc15_ = this)._cyclesComplete);
                                             if(!_loc17_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             var _loc16_:* = §§pop();
                                             if(!(_loc17_ && param2))
                                             {
                                                _loc15_._cyclesComplete = _loc16_;
                                             }
                                             if(_loc18_ || param2)
                                             {
                                                addr456:
                                                _loc8_ = Boolean(_loc12_ != this._cyclesComplete);
                                                if(_loc18_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      if(_loc18_ || param3)
                                                      {
                                                         §§push(this.yoyo);
                                                         if(this.yoyo)
                                                         {
                                                            §§pop();
                                                            if(_loc18_ || Boolean(this))
                                                            {
                                                               addr489:
                                                               §§push(this._repeat);
                                                               §§push(2);
                                                               if(_loc18_)
                                                               {
                                                                  §§push(Boolean(§§pop() % §§pop()));
                                                                  if(_loc17_ && Boolean(this))
                                                                  {
                                                                     addr547:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc17_ && param3))
                                                                        {
                                                                           addr556:
                                                                           §§pop();
                                                                           §§push(this._cyclesComplete);
                                                                           if(_loc18_)
                                                                           {
                                                                              addr561:
                                                                              §§push(2);
                                                                              if(_loc18_ || Boolean(param1))
                                                                              {
                                                                                 addr569:
                                                                                 §§push(§§pop() % §§pop());
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       addr575:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             this.cachedTime = this.cachedDuration - this.cachedTime;
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                addr609:
                                                                                                if(this.cachedTime <= 0)
                                                                                                {
                                                                                                   this.cachedTime = this.ratio = 0;
                                                                                                   addr623:
                                                                                                   _loc9_ = false;
                                                                                                   addr622:
                                                                                                }
                                                                                                §§push(_loc5_);
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   addr631:
                                                                                                   §§push(§§pop() == this.cachedTime);
                                                                                                   if(_loc18_ || Boolean(this))
                                                                                                   {
                                                                                                      addr648:
                                                                                                      §§push(§§pop());
                                                                                                      if(!(_loc17_ && param3))
                                                                                                      {
                                                                                                         addr656:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr657:
                                                                                                            §§pop();
                                                                                                            addr658:
                                                                                                            §§push(param3);
                                                                                                            if(!(_loc17_ && param3))
                                                                                                            {
                                                                                                               addr667:
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  §§goto(addr668);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  if(!this.initted)
                                                                                                                  {
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        this.init();
                                                                                                                        addr676:
                                                                                                                        §§push(!this.active);
                                                                                                                        if(!_loc17_)
                                                                                                                        {
                                                                                                                           addr682:
                                                                                                                           addr681:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr694:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr695:
                                                                                                                              this.active = true;
                                                                                                                              if(!(_loc17_ && param3))
                                                                                                                              {
                                                                                                                                 addr705:
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    addr707:
                                                                                                                                    §§push(this._easeType);
                                                                                                                                    if(_loc18_ || param3)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          addr756:
                                                                                                                                          if(!(_loc17_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             addr726:
                                                                                                                                             _loc13_ = this._easePower;
                                                                                                                                             addr734:
                                                                                                                                             _loc14_ = this.cachedTime / this.cachedDuration;
                                                                                                                                             addr733:
                                                                                                                                             §§push(this._easeType);
                                                                                                                                             addr728:
                                                                                                                                             addr733:
                                                                                                                                          }
                                                                                                                                          loop7:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc13_ - 1);
                                                                                                                                             if(_loc18_ || param2)
                                                                                                                                             {
                                                                                                                                                §§push(_loc13_ = §§pop());
                                                                                                                                                if(_loc18_ || Boolean(this))
                                                                                                                                                {
                                                                                                                                                   if(§§pop() > -1)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   this.ratio = 1 - this.ratio;
                                                                                                                                                   addr991:
                                                                                                                                                   §§push(_loc6_ == 0);
                                                                                                                                                   §§push(_loc6_ == 0);
                                                                                                                                                   if(!(_loc17_ && param3))
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_ || param3)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            if(_loc18_ || param2)
                                                                                                                                                            {
                                                                                                                                                               addr1029:
                                                                                                                                                               §§push(this.cachedTotalTime == 0);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        addr1047:
                                                                                                                                                                        §§push(this.cachedDuration == 0);
                                                                                                                                                                        if(this.cachedDuration == 0)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              addr1052:
                                                                                                                                                                              §§push(!param2);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(this.vars.onStart)
                                                                                                                                                                        {
                                                                                                                                                                           addr1059:
                                                                                                                                                                           this.vars.onStart.apply(null,this.vars.onStartParams);
                                                                                                                                                                           addr1067:
                                                                                                                                                                           if(this._dispatcher)
                                                                                                                                                                           {
                                                                                                                                                                              this._dispatcher.dispatchEvent(new TweenEvent(TweenEvent.START));
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1067);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1047);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1077);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1047);
                                                                                                                                                   addr991:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - 1);
                                                                                                                                                      break loop7;
                                                                                                                                                   }
                                                                                                                                                   addr966:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                loop8:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - 1);
                                                                                                                                                   if(_loc18_ || Boolean(param1))
                                                                                                                                                   {
                                                                                                                                                      if((_loc13_ = §§pop()) <= -1)
                                                                                                                                                      {
                                                                                                                                                         this.ratio *= 0.5;
                                                                                                                                                         §§goto(addr991);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr873:
                                                                                                                                                         §§push(this);
                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                         if(_loc18_ || Boolean(param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * this.ratio);
                                                                                                                                                         }
                                                                                                                                                         §§pop().ratio = §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                            if(_loc17_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            continue loop8;
                                                                                                                                                            §§goto(addr873);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() <= -1)
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this);
                                                                                                                                                                  §§push(1);
                                                                                                                                                                  §§push(0.5);
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * this.ratio);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().ratio = §§pop() - §§pop();
                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr991);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1029);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1059);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr949:
                                                                                                                                                               §§push(this);
                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * this.ratio);
                                                                                                                                                               }
                                                                                                                                                               §§pop().ratio = §§pop();
                                                                                                                                                               if(!(_loc17_ && Boolean(this)))
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr966);
                                                                                                                                                                     §§goto(addr949);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1059);
                                                                                                                                                                  addr965:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1059);
                                                                                                                                                               }
                                                                                                                                                               addr1077:
                                                                                                                                                               var _loc10_:PropTween = this.cachedPT1;
                                                                                                                                                               if(!(_loc17_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  while(_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc10_.target[_loc10_.property] = _loc10_.start + this.ratio * _loc10_.change;
                                                                                                                                                                     _loc10_ = _loc10_.nextNode;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_hasUpdate);
                                                                                                                                                                     §§push(_hasUpdate);
                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              if(_loc18_ || Boolean(this))
                                                                                                                                                                              {
                                                                                                                                                                                 addr1129:
                                                                                                                                                                                 if(!param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.vars.onUpdate.apply(null,this.vars.onUpdateParams);
                                                                                                                                                                                       if(_loc18_ || Boolean(param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1147:
                                                                                                                                                                                          §§push(this._hasUpdateListener);
                                                                                                                                                                                          §§push(this._hasUpdateListener);
                                                                                                                                                                                          if(_loc18_ || Boolean(this))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1158:
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1159:
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                §§push(!param2);
                                                                                                                                                                                             }
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                this._dispatcher.dispatchEvent(new TweenEvent(TweenEvent.UPDATE));
                                                                                                                                                                                                if(_loc17_ && param3)
                                                                                                                                                                                                {
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1293);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc8_);
                                                                                                                                                                                             if(!(_loc17_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                if(!(_loc17_ && Boolean(this)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      addr1196:
                                                                                                                                                                                                      §§push(param2);
                                                                                                                                                                                                      if(!(_loc17_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1204:
                                                                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         §§push(!this.gc);
                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1215:
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1216:
                                                                                                                                                                                                               if(this.vars.onRepeat)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.vars.onRepeat.apply(null,this.vars.onRepeatParams);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(this._dispatcher)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this._dispatcher.dispatchEvent(new TweenEvent(TweenEvent.REPEAT));
                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1242:
                                                                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                                                                        if(!(_loc17_ && Boolean(param1)))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1254:
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                 §§push(!this.gc);
                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr1261);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1261:
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1274:
                                                                                                                                                                                                                                    §§push(_hasPlugins);
                                                                                                                                                                                                                                    if(_hasPlugins)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                          if(!(_loc17_ && Boolean(param1)))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1288:
                                                                                                                                                                                                                                             if(Boolean(this.cachedPT1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1293);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1288);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 onPluginEvent("onComplete",this);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1293);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1274);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1288);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1293);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1242);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1261);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1215);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1274);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1254);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1204);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1254);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1196);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1293);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1147);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1293);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1159);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1129);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1158);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1216);
                                                                                                                                                               }
                                                                                                                                                               addr1293:
                                                                                                                                                               this.complete(true,param2);
                                                                                                                                                               return;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1059);
                                                                                                                                                         }
                                                                                                                                                         addr970:
                                                                                                                                                         addr887:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1059);
                                                                                                                                                   }
                                                                                                                                                   break loop7;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1059);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             addr969:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc13_ = §§pop();
                                                                                                                                                §§goto(addr970);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          this.ratio = _ease(this.cachedTime,0,1,this.cachedDuration);
                                                                                                                                          §§goto(addr991);
                                                                                                                                       }
                                                                                                                                       §§goto(addr991);
                                                                                                                                    }
                                                                                                                                    if(§§pop() == 2)
                                                                                                                                    {
                                                                                                                                       §§push(this);
                                                                                                                                       §§push(1 - _loc14_);
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc15_ = §§pop());
                                                                                                                                          if(!_loc17_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(!_loc17_)
                                                                                                                                             {
                                                                                                                                                _loc14_ = §§pop();
                                                                                                                                                §§push(_loc15_);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§pop().ratio = §§pop();
                                                                                                                                       §§goto(addr756);
                                                                                                                                    }
                                                                                                                                    else if(this._easeType == 1)
                                                                                                                                    {
                                                                                                                                       this.ratio = _loc14_;
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc13_ - 1);
                                                                                                                                          §§push(_loc13_ - 1);
                                                                                                                                          if(!(_loc17_ && Boolean(param1)))
                                                                                                                                          {
                                                                                                                                             _loc13_ = §§pop();
                                                                                                                                             if(§§pop() > -1)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§goto(addr991);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr969);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(_loc18_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          if(§§pop() < 0.5)
                                                                                                                                          {
                                                                                                                                             §§push(this);
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * 2);
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   addr856:
                                                                                                                                                   §§push(_loc15_ = §§pop());
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(!(_loc17_ && param3))
                                                                                                                                                      {
                                                                                                                                                         _loc14_ = §§pop();
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§pop().ratio = §§pop();
                                                                                                                                                §§goto(addr887);
                                                                                                                                             }
                                                                                                                                             §§goto(addr856);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(this);
                                                                                                                                             §§push(1 - _loc14_);
                                                                                                                                             if(!(_loc17_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * 2);
                                                                                                                                                if(_loc18_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc15_ = §§pop());
                                                                                                                                                   if(!_loc17_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(!_loc17_)
                                                                                                                                                      {
                                                                                                                                                         _loc14_ = §§pop();
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§pop().ratio = §§pop();
                                                                                                                                             if(!(_loc17_ && Boolean(param1)))
                                                                                                                                             {
                                                                                                                                                §§goto(addr965);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1052);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr991);
                                                                                                                              }
                                                                                                                              §§goto(addr707);
                                                                                                                           }
                                                                                                                           §§goto(addr705);
                                                                                                                        }
                                                                                                                        §§pop();
                                                                                                                        if(_loc18_ || param3)
                                                                                                                        {
                                                                                                                           addr691:
                                                                                                                           §§goto(addr694);
                                                                                                                           §§push(!this.cachedPaused);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr728);
                                                                                                                  }
                                                                                                                  §§goto(addr676);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr667);
                                                                                                      }
                                                                                                      §§goto(addr682);
                                                                                                   }
                                                                                                   §§goto(addr705);
                                                                                                }
                                                                                                §§goto(addr733);
                                                                                                addr587:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr695);
                                                                                       }
                                                                                       else if(this.cachedTime >= this.cachedDuration)
                                                                                       {
                                                                                          this.cachedTime = this.cachedDuration;
                                                                                          if(!(_loc17_ && Boolean(this)))
                                                                                          {
                                                                                             this.ratio = 1;
                                                                                             addr608:
                                                                                             _loc9_ = false;
                                                                                             §§goto(addr609);
                                                                                          }
                                                                                          §§goto(addr658);
                                                                                       }
                                                                                       §§goto(addr609);
                                                                                    }
                                                                                    §§goto(addr681);
                                                                                 }
                                                                                 §§goto(addr733);
                                                                              }
                                                                              §§goto(addr707);
                                                                           }
                                                                           §§goto(addr726);
                                                                        }
                                                                     }
                                                                     §§goto(addr575);
                                                                  }
                                                                  §§goto(addr609);
                                                               }
                                                               §§goto(addr707);
                                                            }
                                                            §§goto(addr622);
                                                         }
                                                         addr503:
                                                         if(§§pop())
                                                         {
                                                            addr504:
                                                            this.cachedTime = this.ratio = 0;
                                                            if(!_loc17_)
                                                            {
                                                               addr515:
                                                               §§goto(addr609);
                                                            }
                                                            §§goto(addr705);
                                                         }
                                                         §§goto(addr515);
                                                      }
                                                      §§goto(addr668);
                                                   }
                                                   else
                                                   {
                                                      §§push(param1);
                                                      if(_loc18_ || Boolean(this))
                                                      {
                                                         addr525:
                                                         if(§§pop() > 0)
                                                         {
                                                            if(!(_loc17_ && param2))
                                                            {
                                                               this.cachedTime = this.cachedTotalTime - this._cyclesComplete * _loc11_;
                                                               §§push(this.yoyo);
                                                               if(_loc18_)
                                                               {
                                                                  §§goto(addr547);
                                                               }
                                                               §§goto(addr623);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            this._cyclesComplete = 0;
                                                         }
                                                         §§goto(addr609);
                                                      }
                                                      §§goto(addr726);
                                                   }
                                                }
                                                §§goto(addr756);
                                             }
                                             §§goto(addr726);
                                          }
                                          §§goto(addr456);
                                       }
                                       §§goto(addr556);
                                    }
                                    §§goto(addr707);
                                 }
                                 §§goto(addr623);
                              }
                              §§goto(addr428);
                           }
                           §§goto(addr682);
                        }
                        §§goto(addr561);
                     }
                     §§goto(addr631);
                  }
                  §§goto(addr609);
               }
               §§goto(addr569);
               addr187:
            }
            addr668:
            return;
         }
         §§goto(addr38);
      }
      
      override public function complete(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super.complete(param1,param2);
         if(!(_loc4_ && param2))
         {
            §§push(!param2);
            §§push(!param2);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     §§pop();
                     §§push(Boolean(this._dispatcher));
                     if(_loc3_)
                     {
                        §§goto(addr43);
                     }
                     §§goto(addr51);
                  }
               }
               addr43:
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr51:
                     §§push(this.cachedTotalTime == this.cachedTotalDuration);
                     §§push(this.cachedTotalTime == this.cachedTotalDuration);
                     if(_loc3_ || param1)
                     {
                        addr66:
                        if(§§pop())
                        {
                           §§pop();
                           if(_loc3_ || param1)
                           {
                              §§push(!this.cachedReversed);
                              if(!_loc4_)
                              {
                                 addr80:
                                 if(§§pop())
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       this._dispatcher.dispatchEvent(new TweenEvent(TweenEvent.COMPLETE));
                                       if(!(_loc4_ && param1))
                                       {
                                          §§goto(addr132);
                                       }
                                       else
                                       {
                                          addr120:
                                          §§push(this.cachedTotalTime == 0);
                                       }
                                       §§goto(addr132);
                                    }
                                    §§goto(addr125);
                                 }
                                 else
                                 {
                                    §§push(this.cachedReversed);
                                    if(!_loc4_)
                                    {
                                       addr116:
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                          }
                                       }
                                       §§goto(addr124);
                                    }
                                    §§pop();
                                    §§goto(addr120);
                                 }
                              }
                              addr124:
                              if(§§pop())
                              {
                                 addr125:
                                 this._dispatcher.dispatchEvent(new TweenEvent(TweenEvent.REVERSE_COMPLETE));
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr125);
               }
               §§goto(addr132);
            }
            §§goto(addr66);
         }
         addr132:
      }
      
      protected function initDispatcher() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(this._dispatcher == null)
         {
            if(_loc1_)
            {
               this._dispatcher = new EventDispatcher(this);
               if(!(_loc2_ && Boolean(this)))
               {
                  addr31:
                  §§push(this.vars.onInitListener is Function);
                  if(_loc1_)
                  {
                     if(§§pop())
                     {
                        this._dispatcher.addEventListener(TweenEvent.INIT,this.vars.onInitListener,false,0,true);
                     }
                     §§push(this.vars.onStartListener is Function);
                     if(!_loc2_)
                     {
                        addr57:
                        if(§§pop())
                        {
                           if(_loc1_ || _loc1_)
                           {
                              this._dispatcher.addEventListener(TweenEvent.START,this.vars.onStartListener,false,0,true);
                              if(_loc1_ || _loc1_)
                              {
                                 addr83:
                                 §§push(this.vars.onUpdateListener is Function);
                                 if(_loc1_ || _loc1_)
                                 {
                                    if(§§pop())
                                    {
                                       addr103:
                                       this._dispatcher.addEventListener(TweenEvent.UPDATE,this.vars.onUpdateListener,false,0,true);
                                       this._hasUpdateListener = true;
                                       addr117:
                                       §§push(this.vars.onCompleteListener is Function);
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          addr129:
                                          if(§§pop())
                                          {
                                             if(!_loc2_)
                                             {
                                                this._dispatcher.addEventListener(TweenEvent.COMPLETE,this.vars.onCompleteListener,false,0,true);
                                                if(_loc1_ || _loc2_)
                                                {
                                                   addr150:
                                                   §§push(this.vars.onRepeatListener is Function);
                                                   if(!(_loc2_ && Boolean(this)))
                                                   {
                                                      addr162:
                                                      if(§§pop())
                                                      {
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            this._dispatcher.addEventListener(TweenEvent.REPEAT,this.vars.onRepeatListener,false,0,true);
                                                            addr188:
                                                            if(this.vars.onReverseCompleteListener is Function)
                                                            {
                                                               this._dispatcher.addEventListener(TweenEvent.REVERSE_COMPLETE,this.vars.onReverseCompleteListener,false,0,true);
                                                            }
                                                         }
                                                         return;
                                                      }
                                                   }
                                                }
                                                §§goto(addr188);
                                             }
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr117);
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr188);
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr57);
               }
               §§goto(addr150);
            }
            §§goto(addr103);
         }
         §§goto(addr31);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || Boolean(param2))
         {
            if(this._dispatcher == null)
            {
               if(!(_loc7_ && Boolean(param1)))
               {
                  §§goto(addr38);
               }
            }
            §§goto(addr47);
         }
         addr38:
         this.initDispatcher();
         if(!(_loc7_ && Boolean(this)))
         {
            addr47:
            if(param1 == TweenEvent.UPDATE)
            {
               if(!_loc7_)
               {
                  this._hasUpdateListener = true;
                  if(_loc7_ && param3)
                  {
                  }
                  §§goto(addr78);
               }
            }
            this._dispatcher.addEventListener(param1,param2,param3,param4,param5);
         }
         addr78:
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(this._dispatcher)
            {
               if(!_loc4_)
               {
                  addr21:
                  this._dispatcher.removeEventListener(param1,param2,param3);
               }
            }
            return;
         }
         §§goto(addr21);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this._dispatcher == null)
            {
               addr31:
               §§push(false);
               if(_loc2_ || _loc2_)
               {
               }
            }
            else
            {
               §§push(this._dispatcher.hasEventListener(param1));
            }
            return §§pop();
         }
         §§goto(addr31);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this._dispatcher == null)
            {
               addr26:
               §§push(false);
               if(_loc2_ || Boolean(this))
               {
               }
            }
            else
            {
               §§push(this._dispatcher.willTrigger(param1));
            }
            return §§pop();
         }
         §§goto(addr26);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this._dispatcher == null)
            {
               addr26:
               §§push(false);
               if(_loc2_ || Boolean(this))
               {
               }
            }
            else
            {
               §§push(this._dispatcher.dispatchEvent(param1));
            }
            return §§pop();
         }
         §§goto(addr26);
      }
      
      public function get currentProgress() : Number
      {
         return this.cachedTime / this.duration;
      }
      
      public function set currentProgress(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this._cyclesComplete == 0)
            {
               if(!(_loc2_ && _loc3_))
               {
                  setTotalTime(this.duration * param1,false);
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     addr55:
                  }
               }
            }
            else
            {
               §§push(§§findproperty(setTotalTime));
               §§push(this.duration * param1);
               if(!_loc2_)
               {
                  §§push(§§pop() + this._cyclesComplete * this.cachedDuration);
               }
               §§pop().setTotalTime(§§pop(),false);
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function get totalProgress() : Number
      {
         return this.cachedTotalTime / this.totalDuration;
      }
      
      public function set totalProgress(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§§findproperty(setTotalTime));
            §§push(this.totalDuration);
            if(!_loc3_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().setTotalTime(§§pop(),false);
         }
      }
      
      override public function set currentTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this._cyclesComplete);
            if(!_loc3_)
            {
               §§push(0);
               if(_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr129);
                  }
                  else
                  {
                     §§push(this.yoyo);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                        if(_loc2_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                              }
                              addr75:
                              if(§§pop())
                              {
                                 §§push(this.duration - param1);
                                 if(_loc2_ || Boolean(this))
                                 {
                                    §§push(this._cyclesComplete);
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§push(§§pop() * (this.cachedDuration + this._repeatDelay));
                                       if(_loc2_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc3_)
                                          {
                                             addr115:
                                             param1 = §§pop();
                                          }
                                          §§goto(addr129);
                                       }
                                       else
                                       {
                                          addr126:
                                          §§push(§§pop() + §§pop());
                                       }
                                       param1 = §§pop();
                                       §§goto(addr129);
                                    }
                                    else
                                    {
                                       addr120:
                                       §§push(§§pop() * (this.duration + this._repeatDelay));
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr115);
                              }
                              else
                              {
                                 §§push(param1);
                                 §§push(this._cyclesComplete);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr75);
                        }
                        §§pop();
                        if(!(_loc3_ && _loc2_))
                        {
                           addr63:
                           §§push(this._cyclesComplete % 2);
                           if(!_loc3_)
                           {
                              §§push(1);
                              if(_loc2_ || Boolean(this))
                              {
                                 §§goto(addr75);
                                 §§push(§§pop() == §§pop());
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr75);
                  }
               }
            }
            §§goto(addr63);
         }
         addr129:
         setTotalTime(param1,false);
      }
      
      override public function get totalDuration() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.cacheIsDirty)
            {
               if(!_loc1_)
               {
                  §§push(this);
                  if(_loc2_ || Boolean(this))
                  {
                     if(this._repeat == -1)
                     {
                        addr38:
                        §§push(999999999999);
                        if(!_loc1_)
                        {
                           §§push(§§pop());
                           if(_loc2_)
                           {
                           }
                           §§goto(addr89);
                        }
                        addr88:
                        §§push(§§pop());
                     }
                     else
                     {
                        §§push(this.cachedDuration * (this._repeat + 1));
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(this._repeatDelay);
                           if(_loc2_)
                           {
                              §§push(§§pop() * this._repeat);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc2_ || _loc1_)
                           {
                              §§goto(addr88);
                           }
                        }
                     }
                     addr89:
                     §§pop().cachedTotalDuration = §§pop();
                     if(!(_loc1_ && _loc2_))
                     {
                        addr97:
                        this.cacheIsDirty = false;
                        §§goto(addr100);
                     }
                     addr100:
                     return this.cachedTotalDuration;
                  }
                  §§goto(addr38);
               }
               §§goto(addr97);
            }
         }
         §§goto(addr97);
      }
      
      override public function set totalDuration(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this._repeat == -1)
            {
               if(_loc2_ || Boolean(this))
               {
                  return;
               }
            }
            else
            {
               §§push(this);
               §§push(param1);
               if(_loc2_)
               {
                  §§push(this._repeat);
                  if(!_loc3_)
                  {
                     §§push(§§pop() * this._repeatDelay);
                     if(_loc2_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc3_)
                        {
                           addr63:
                           §§push(§§pop() / (this._repeat + 1));
                        }
                        §§pop().duration = §§pop();
                        §§goto(addr65);
                     }
                  }
               }
               §§goto(addr63);
            }
         }
         addr65:
      }
      
      public function get timeScale() : Number
      {
         return this.cachedTimeScale;
      }
      
      public function set timeScale(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            if(_loc4_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(0.0001);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                        if(!(_loc3_ && Boolean(this)))
                        {
                           param1 = §§pop();
                           if(_loc4_)
                           {
                              addr47:
                              §§push(Boolean(this.cachedPauseTime));
                              if(_loc4_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       addr68:
                                       §§pop();
                                       addr76:
                                       if(!_loc3_)
                                       {
                                          §§push(this.cachedPauseTime == 0);
                                       }
                                       §§push(this.cachedPauseTime);
                                       if(!_loc3_)
                                       {
                                          addr94:
                                          var _loc2_:Number = §§pop();
                                          if(_loc4_)
                                          {
                                             §§push(this);
                                             §§push(_loc2_);
                                             if(!_loc3_)
                                             {
                                                §§push(_loc2_);
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() - this.cachedStartTime);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop() * this.cachedTimeScale);
                                                      if(_loc4_ || Boolean(param1))
                                                      {
                                                         §§push(§§pop() / param1);
                                                      }
                                                   }
                                                }
                                                §§push(§§pop() - §§pop());
                                             }
                                             §§pop().cachedStartTime = §§pop();
                                             if(!_loc3_)
                                             {
                                                this.cachedTimeScale = param1;
                                                if(_loc3_)
                                                {
                                                }
                                                §§goto(addr140);
                                             }
                                             setDirtyCache(false);
                                          }
                                          addr140:
                                          return;
                                          addr81:
                                       }
                                       §§goto(addr94);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    §§goto(addr76);
                                 }
                                 else
                                 {
                                    §§push(this.timeline.cachedTotalTime);
                                    if(_loc3_ && Boolean(param1))
                                    {
                                    }
                                    §§goto(addr94);
                                 }
                              }
                           }
                           §§goto(addr68);
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr94);
                  }
               }
               §§goto(addr47);
            }
            §§goto(addr94);
         }
         §§goto(addr68);
      }
      
      public function get repeat() : int
      {
         return this._repeat;
      }
      
      public function set repeat(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this._repeat = param1;
            if(_loc3_ || _loc3_)
            {
               addr26:
               setDirtyCache(true);
            }
            return;
         }
         §§goto(addr26);
      }
      
      public function get repeatDelay() : Number
      {
         return this._repeatDelay;
      }
      
      public function set repeatDelay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this._repeatDelay = param1;
            if(!_loc2_)
            {
               setDirtyCache(true);
            }
         }
      }
   }
}
