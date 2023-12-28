package com.greensock
{
   import com.greensock.core.*;
   
   public final class OverwriteManager
   {
      
      public static const version:Number = 6.1;
      
      public static const NONE:int = 0;
      
      public static const ALL_IMMEDIATE:int = 1;
      
      public static const AUTO:int = 2;
      
      public static const CONCURRENT:int = 3;
      
      public static const ALL_ONSTART:int = 4;
      
      public static const PREEXISTING:int = 5;
      
      public static var mode:int;
      
      public static var enabled:Boolean;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            version = 6.1;
            NONE = 0;
            if(!(_loc2_ && OverwriteManager))
            {
               ALL_IMMEDIATE = 1;
               if(_loc1_ || _loc2_)
               {
                  AUTO = 2;
                  if(_loc1_ || OverwriteManager)
                  {
                     CONCURRENT = 3;
                     addr70:
                     ALL_ONSTART = 4;
                     PREEXISTING = 5;
                  }
               }
               §§goto(addr70);
            }
            return;
         }
         §§goto(addr70);
      }
      
      public function OverwriteManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function init(param1:int = 2) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(TweenLite.version < 11.6)
            {
               if(_loc2_)
               {
                  throw new Error("Warning: Your TweenLite class needs to be updated to work with OverwriteManager (or you may need to clear your ASO files). Please download and install the latest version from http://www.tweenlite.com.");
               }
            }
            else
            {
               TweenLite.overwriteManager = OverwriteManager;
               if(!_loc3_)
               {
                  addr44:
                  mode = param1;
                  if(_loc2_)
                  {
                     enabled = true;
                  }
               }
            }
            return mode;
         }
         §§goto(addr44);
      }
      
      public static function manageOverwrites(param1:TweenLite, param2:Object, param3:Array, param4:int) : Boolean
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:* = false;
         var _loc7_:TweenLite = null;
         var _loc13_:* = 0;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:TweenCore = null;
         var _loc17_:* = NaN;
         var _loc18_:SimpleTimeline = null;
         if(!(_loc20_ && Boolean(param1)))
         {
            §§push(param4);
            if(_loc21_)
            {
               if(§§pop() >= 4)
               {
                  if(!_loc20_)
                  {
                     addr68:
                     §§push(int(param3.length));
                     if(_loc21_ || Boolean(param2))
                     {
                        _loc13_ = §§pop();
                        if(_loc20_ && Boolean(param1))
                        {
                        }
                        addr69:
                        while(_loc5_ < _loc13_)
                        {
                           if((_loc7_ = param3[_loc5_]) != param1)
                           {
                              if(!(_loc20_ && OverwriteManager))
                              {
                                 §§push(_loc7_.setEnabled(false,false));
                                 if(!_loc20_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc21_ || Boolean(param3))
                                       {
                                          §§push(true);
                                          if(_loc21_)
                                          {
                                             _loc6_ = §§pop();
                                             if(!_loc21_)
                                             {
                                                addr112:
                                                break;
                                             }
                                          }
                                          §§goto(addr120);
                                       }
                                    }
                                    addr113:
                                    _loc5_++;
                                    if(!_loc20_)
                                    {
                                       continue;
                                    }
                                    addr121:
                                    var _loc8_:* = param1.cachedStartTime + 1e-10;
                                    var _loc9_:Array = [];
                                    var _loc10_:Array = [];
                                    var _loc11_:int = 0;
                                    var _loc12_:int = 0;
                                    if(_loc21_)
                                    {
                                       §§push(param3);
                                       if(!_loc20_)
                                       {
                                          _loc5_ = int(§§pop().length);
                                          addr145:
                                          loop16:
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             if(!(_loc20_ && Boolean(param2)))
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             §§push(_loc5_ = §§pop());
                                             if(_loc21_)
                                             {
                                                §§push(-1);
                                                if(!(_loc20_ && Boolean(param1)))
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      §§push(_loc11_);
                                                      if(!_loc20_)
                                                      {
                                                         §§push(0);
                                                         if(!(_loc20_ && OverwriteManager))
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               §§push(param1.cachedTimeScale);
                                                               if(_loc21_)
                                                               {
                                                                  _loc14_ = §§pop();
                                                                  §§push(_loc8_);
                                                                  if(!_loc20_)
                                                                  {
                                                                     addr410:
                                                                     §§push(§§pop());
                                                                  }
                                                                  _loc15_ = §§pop();
                                                                  if(_loc21_ || Boolean(param3))
                                                                  {
                                                                     _loc18_ = param1.timeline;
                                                                     if(_loc21_ || Boolean(param2))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc18_)
                                                                           {
                                                                              §§push(_loc14_ * _loc18_.cachedTimeScale);
                                                                              if(!_loc20_)
                                                                              {
                                                                                 _loc14_ = §§pop();
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    _loc15_ += _loc18_.cachedStartTime;
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr672);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr463);
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           if(!(_loc20_ && Boolean(param2)))
                                                                           {
                                                                              addr463:
                                                                              §§push(_loc14_ * _loc15_);
                                                                              break;
                                                                           }
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              if(_loc21_ || Boolean(param1))
                                                                              {
                                                                                 loop5:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                    if(!(_loc20_ && Boolean(param3)))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                addr669:
                                                                                                _loc5_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                continue loop5;
                                                                                                addr670:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() <= §§pop())
                                                                                                {
                                                                                                   addr672:
                                                                                                   §§push(_loc12_);
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      if(§§pop() == 0)
                                                                                                      {
                                                                                                         if(_loc21_ || Boolean(param2))
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               return §§pop();
                                                                                                            }
                                                                                                            loop11:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  §§push(true);
                                                                                                                  if(_loc21_ || OverwriteManager)
                                                                                                                  {
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        addr803:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           addr804:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - 1);
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    addr810:
                                                                                                                                    §§push(§§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc5_ = §§pop();
                                                                                                                                       §§goto(addr810);
                                                                                                                                    }
                                                                                                                                    addr811:
                                                                                                                                 }
                                                                                                                                 while(§§pop() > §§pop())
                                                                                                                                 {
                                                                                                                                    §§push(TweenLite(_loc9_[_loc5_]).setEnabled(false,false));
                                                                                                                                    if(_loc20_ && Boolean(param2))
                                                                                                                                    {
                                                                                                                                       §§goto(addr815);
                                                                                                                                    }
                                                                                                                                    continue loop11;
                                                                                                                                 }
                                                                                                                                 addr814:
                                                                                                                                 addr815:
                                                                                                                                 return §§pop();
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 addr813:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr813);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr803:
                                                                                                                     }
                                                                                                                     §§goto(addr814);
                                                                                                                  }
                                                                                                                  §§goto(addr815);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr803);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(_loc12_);
                                                                                                         if(!(_loc20_ && Boolean(param1)))
                                                                                                         {
                                                                                                            _loc5_ = §§pop();
                                                                                                            addr699:
                                                                                                            if(param4 == 2)
                                                                                                            {
                                                                                                               loop15:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  addr751:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - 1);
                                                                                                                     §§push(§§pop() - 1);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc20_ && Boolean(param3)))
                                                                                                                        {
                                                                                                                           _loc5_ = §§pop();
                                                                                                                           §§push(-1);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr814);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     if(§§pop() <= §§pop())
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push((_loc7_ = _loc9_[_loc5_]).killVars(param2));
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              continue loop15;
                                                                                                                           }
                                                                                                                           §§push(true);
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                              addr719:
                                                                                                                              _loc6_ = §§pop();
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 addr722:
                                                                                                                                 §§push(_loc7_.cachedPT1 == null);
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc21_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr743:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc21_)
                                                                                                                                          {
                                                                                                                                             addr746:
                                                                                                                                             _loc7_.setEnabled(false,false);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop15;
                                                                                                                                    }
                                                                                                                                    §§goto(addr743);
                                                                                                                                 }
                                                                                                                                 §§pop();
                                                                                                                                 if(_loc21_ || Boolean(param2))
                                                                                                                                 {
                                                                                                                                    addr740:
                                                                                                                                    §§goto(addr743);
                                                                                                                                    §§push(_loc7_.initted);
                                                                                                                                 }
                                                                                                                                 §§goto(addr746);
                                                                                                                              }
                                                                                                                              §§goto(addr740);
                                                                                                                           }
                                                                                                                           §§goto(addr743);
                                                                                                                        }
                                                                                                                        §§goto(addr722);
                                                                                                                     }
                                                                                                                     §§goto(addr719);
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                                  §§goto(addr814);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr803);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr804);
                                                                                                   }
                                                                                                   §§goto(addr751);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push((_loc16_ = _loc10_[_loc5_]).cachedTimeScale);
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!(_loc20_ && Boolean(param1)))
                                                                                                      {
                                                                                                         addr506:
                                                                                                         _loc14_ = §§pop();
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            §§push(_loc16_.cachedStartTime);
                                                                                                            if(!(_loc20_ && Boolean(param2)))
                                                                                                            {
                                                                                                               addr519:
                                                                                                               _loc15_ = §§pop();
                                                                                                            }
                                                                                                            §§goto(addr519);
                                                                                                         }
                                                                                                         _loc18_ = _loc16_.timeline;
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                            }
                                                                                                            addr559:
                                                                                                            §§push(§§pop());
                                                                                                            if(!(_loc20_ && Boolean(param1)))
                                                                                                            {
                                                                                                               _loc17_ = §§pop();
                                                                                                               §§push(§§pop() <= _loc8_);
                                                                                                               if(_loc21_ || OverwriteManager)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!(_loc20_ && Boolean(param3)))
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc21_ || Boolean(param2))
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           §§push(_loc17_);
                                                                                                                           if(_loc21_ || OverwriteManager)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + _loc16_.totalDuration * _loc14_);
                                                                                                                              if(_loc21_ || Boolean(param2))
                                                                                                                              {
                                                                                                                                 addr614:
                                                                                                                                 §§push(§§pop() + 1e-10);
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    addr618:
                                                                                                                                    §§push(§§pop() > _loc8_);
                                                                                                                                    if(!(_loc20_ && Boolean(param3)))
                                                                                                                                    {
                                                                                                                                       addr628:
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          addr636:
                                                                                                                                          if(_loc21_)
                                                                                                                                          {
                                                                                                                                             addr631:
                                                                                                                                             §§pop();
                                                                                                                                             §§push(_loc16_.cachedDuration);
                                                                                                                                          }
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             var _loc19_:*;
                                                                                                                                             _loc9_[_loc19_ = _loc12_++] = _loc16_;
                                                                                                                                          }
                                                                                                                                          continue loop10;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr636);
                                                                                                                                 §§push(§§pop() == 0);
                                                                                                                              }
                                                                                                                              §§goto(addr618);
                                                                                                                           }
                                                                                                                           §§goto(addr614);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr636);
                                                                                                                  }
                                                                                                                  §§goto(addr628);
                                                                                                               }
                                                                                                               §§goto(addr631);
                                                                                                            }
                                                                                                            §§goto(addr618);
                                                                                                         }
                                                                                                         §§push(_loc14_ * _loc15_);
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            §§goto(addr559);
                                                                                                            §§push(§§pop());
                                                                                                         }
                                                                                                         §§goto(addr614);
                                                                                                      }
                                                                                                      §§goto(addr519);
                                                                                                   }
                                                                                                   §§goto(addr506);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr669);
                                                                                       }
                                                                                       addr663:
                                                                                    }
                                                                                 }
                                                                                 addr655:
                                                                              }
                                                                              §§goto(addr669);
                                                                           }
                                                                           §§goto(addr463);
                                                                        }
                                                                        _loc8_ = §§pop();
                                                                        if(_loc21_ || Boolean(param3))
                                                                        {
                                                                           §§push(_loc11_);
                                                                           if(!(_loc20_ && OverwriteManager))
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc21_)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 §§goto(addr487);
                                                                              }
                                                                              §§goto(addr655);
                                                                           }
                                                                           §§goto(addr663);
                                                                        }
                                                                     }
                                                                     §§goto(addr672);
                                                                  }
                                                                  §§goto(addr814);
                                                               }
                                                               §§goto(addr410);
                                                            }
                                                            §§goto(addr672);
                                                         }
                                                         §§goto(addr814);
                                                      }
                                                      §§goto(addr699);
                                                   }
                                                   else
                                                   {
                                                      addr146:
                                                      §§push(param3);
                                                      while(true)
                                                      {
                                                         §§push((_loc7_ = §§pop()[_loc5_]) == param1);
                                                         §§push((_loc7_ = §§pop()[_loc5_]) == param1);
                                                         if(!(_loc20_ && Boolean(param2)))
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§pop();
                                                               if(_loc21_ || OverwriteManager)
                                                               {
                                                                  addr175:
                                                                  §§push(_loc7_.gc);
                                                                  if(!_loc7_.gc)
                                                                  {
                                                                     if(!(_loc20_ && OverwriteManager))
                                                                     {
                                                                        §§pop();
                                                                        §§push(!_loc7_.initted);
                                                                        if(!(_loc20_ && Boolean(param3)))
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc21_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          §§push(§§pop() - _loc7_.cachedStartTime);
                                                                                          if(_loc21_ || OverwriteManager)
                                                                                          {
                                                                                             §§push(2e-10);
                                                                                             if(_loc21_ || OverwriteManager)
                                                                                             {
                                                                                                addr226:
                                                                                                if(§§pop() <= §§pop())
                                                                                                {
                                                                                                   if(!(_loc20_ && Boolean(param2)))
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   if(_loc7_.timeline != param1.timeline)
                                                                                                   {
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         if(!getGlobalPaused(_loc7_))
                                                                                                         {
                                                                                                            _loc10_[_loc19_ = _loc11_++] = _loc7_;
                                                                                                            if(_loc21_ || Boolean(param3))
                                                                                                            {
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  addr265:
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               addr308:
                                                                                                               addr311:
                                                                                                               §§push(!_loc7_.cachedPaused);
                                                                                                               if(!_loc7_.cachedPaused)
                                                                                                               {
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr320:
                                                                                                                     §§push(param1.cachedDuration == 0);
                                                                                                                     if(param1.cachedDuration == 0)
                                                                                                                     {
                                                                                                                        if(!(_loc20_ && Boolean(param2)))
                                                                                                                        {
                                                                                                                           addr329:
                                                                                                                           §§pop();
                                                                                                                           §§push(_loc8_);
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                              addr336:
                                                                                                                              §§push(§§pop() - _loc7_.cachedStartTime <= 2e-10);
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 addr340:
                                                                                                                                 §§push(!§§pop());
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr336);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr340);
                                                                                                                  }
                                                                                                                  §§goto(addr320);
                                                                                                               }
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               if(_loc20_ && OverwriteManager)
                                                                                                               {
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               addr349:
                                                                                                               _loc9_[_loc19_ = _loc12_++] = _loc7_;
                                                                                                            }
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         §§goto(addr265);
                                                                                                      }
                                                                                                      §§goto(addr349);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(_loc7_.cachedStartTime <= _loc8_);
                                                                                                      if(_loc21_ || Boolean(param2))
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc21_ || Boolean(param3))
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(!(_loc21_ || Boolean(param2)))
                                                                                                               {
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               addr303:
                                                                                                               §§push(_loc7_.cachedStartTime + _loc7_.totalDuration + 1e-10 > _loc8_);
                                                                                                               if(_loc7_.cachedStartTime + _loc7_.totalDuration + 1e-10 > _loc8_)
                                                                                                               {
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     addr307:
                                                                                                                     §§pop();
                                                                                                                     §§goto(addr308);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr311);
                                                                                                            }
                                                                                                            §§goto(addr329);
                                                                                                         }
                                                                                                         §§goto(addr303);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr340);
                                                                                                }
                                                                                                §§goto(addr265);
                                                                                             }
                                                                                             §§goto(addr336);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr336);
                                                                                    }
                                                                                    §§goto(addr349);
                                                                                 }
                                                                                 §§goto(addr307);
                                                                              }
                                                                              §§goto(addr226);
                                                                           }
                                                                        }
                                                                        §§goto(addr303);
                                                                     }
                                                                     §§goto(addr320);
                                                                  }
                                                                  §§goto(addr226);
                                                               }
                                                               §§goto(addr329);
                                                            }
                                                            §§goto(addr175);
                                                         }
                                                         §§goto(addr303);
                                                         §§goto(addr146);
                                                      }
                                                      §§goto(addr751);
                                                      addr148:
                                                   }
                                                   §§goto(addr751);
                                                }
                                                §§goto(addr811);
                                             }
                                             §§goto(addr751);
                                          }
                                       }
                                       §§goto(addr148);
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr112);
                           }
                           else if(param4 == 5)
                           {
                              if(!_loc21_)
                              {
                                 continue;
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr113);
                        }
                        addr120:
                        return §§pop();
                        §§push(_loc6_);
                     }
                     _loc5_ = §§pop();
                     §§goto(addr69);
                  }
                  §§goto(addr68);
                  §§push(0);
               }
               §§goto(addr121);
            }
            §§goto(addr68);
         }
         §§goto(addr69);
      }
      
      public static function getGlobalPaused(param1:TweenCore) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         while(param1)
         {
            §§push(param1.cachedPaused);
            if(!(_loc4_ || _loc2_))
            {
               return §§pop();
            }
            if(§§pop())
            {
               if(!(_loc3_ && OverwriteManager))
               {
                  §§push(true);
                  if(!_loc3_)
                  {
                     _loc2_ = §§pop();
                     if(_loc4_ || Boolean(param1))
                     {
                        break;
                     }
                     break;
                  }
               }
               break;
            }
            param1 = param1.timeline;
         }
         §§goto(addr68);
         §§push(_loc2_);
      }
   }
}
