package Utilities
{
   import flash.utils.ByteArray;
   
   public class Random
   {
       
      
      private var _inext:int;
      
      private var _inextp:int;
      
      private const MBIG:int = 2147483647;
      
      private const MSEED:int = 161803398;
      
      private const MZ:int = 0;
      
      private var _seed:int;
      
      private var _seedArray:Vector.<int>;
      
      public function Random(param1:int)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         if(!_loc8_)
         {
            super();
            if(_loc9_)
            {
               addr24:
               this._seed = param1;
               if(_loc9_)
               {
                  this._seedArray = new Vector.<int>(56,true);
               }
            }
            §§push(161803398);
            if(_loc9_)
            {
               §§push(int(§§pop() - Math.abs(param1)));
            }
            var _loc2_:* = §§pop();
            if(!_loc8_)
            {
               this._seedArray[55] = _loc2_;
            }
            var _loc3_:* = 1;
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               loop1:
               while(true)
               {
                  §§push(55);
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        break loop1;
                     }
                     §§push(21);
                     §§push(_loc4_);
                     if(!(_loc8_ && _loc2_))
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc8_ && Boolean(this)))
                        {
                           §§push(§§pop() % 55);
                           if(_loc9_)
                           {
                              §§push(§§pop());
                              if(_loc8_)
                              {
                                 continue loop1;
                              }
                              _loc6_ = §§pop();
                              if(_loc8_)
                              {
                                 continue loop0;
                              }
                              this._seedArray[_loc6_] = _loc3_;
                              §§push(_loc2_);
                              §§push(_loc3_);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!_loc8_)
                                 {
                                    addr98:
                                    §§push(§§pop());
                                    if(!(_loc8_ && Boolean(this)))
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc9_)
                                       {
                                          §§push(_loc3_);
                                          if(!_loc8_)
                                          {
                                             §§push(0);
                                             if(_loc9_)
                                             {
                                                addr115:
                                                if(§§pop() < §§pop())
                                                {
                                                   if(_loc9_ || _loc2_)
                                                   {
                                                      §§push(_loc3_);
                                                      §§push(2147483647);
                                                      if(!(_loc8_ && Boolean(_loc3_)))
                                                      {
                                                         addr139:
                                                         §§push(§§pop() + §§pop());
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                }
                                                addr142:
                                                _loc2_ = this._seedArray[_loc6_];
                                                _loc4_++;
                                                continue loop0;
                                             }
                                             §§goto(addr139);
                                          }
                                          addr141:
                                          _loc3_ = §§pop();
                                       }
                                       §§goto(addr142);
                                    }
                                    else
                                    {
                                       §§goto(addr153);
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr98);
                        }
                        break;
                     }
                  }
                  §§goto(addr141);
               }
               addr153:
               var _loc5_:* = §§pop();
               loop3:
               while(true)
               {
                  §§push(_loc5_);
                  if(_loc9_)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(5);
                        loop5:
                        while(§§pop() < §§pop())
                        {
                           §§push(1);
                           if(_loc9_ || Boolean(_loc3_))
                           {
                              _loc7_ = §§pop();
                              if(!_loc8_)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc7_);
                                    if(!_loc8_)
                                    {
                                       while(true)
                                       {
                                          §§push(56);
                                          if(!(_loc8_ && Boolean(_loc2_)))
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                _loc5_++;
                                                if(!_loc9_)
                                                {
                                                   break;
                                                }
                                                continue loop3;
                                             }
                                             this._seedArray[_loc7_] -= this._seedArray[1 + (_loc7_ + 30) % 55];
                                             if(!_loc9_)
                                             {
                                                break loop5;
                                             }
                                             if(this._seedArray[_loc7_] < 0)
                                             {
                                                if(!_loc9_)
                                                {
                                                   continue loop3;
                                                }
                                                this._seedArray[_loc7_] += 2147483647;
                                                if(_loc8_)
                                                {
                                                   continue loop6;
                                                }
                                             }
                                             _loc7_++;
                                             if(_loc8_)
                                             {
                                                §§goto(addr255);
                                             }
                                             continue loop6;
                                          }
                                          continue loop5;
                                       }
                                       addr253:
                                       break loop3;
                                       addr216:
                                    }
                                    break;
                                 }
                                 continue loop4;
                              }
                              addr250:
                              this._inextp = 21;
                              §§goto(addr253);
                           }
                           §§goto(addr216);
                        }
                        this._inext = 0;
                        if(_loc9_ || Boolean(param1))
                        {
                           §§goto(addr250);
                        }
                        §§goto(addr253);
                     }
                  }
                  break;
               }
               param1 = §§pop();
               addr255:
               return;
            }
         }
         §§goto(addr24);
      }
      
      public function get seed() : int
      {
         return this._seed;
      }
      
      private function getSampleForLargeRange() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.internalSample());
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this.internalSample());
            if(!(_loc4_ && _loc1_))
            {
               §§push(§§pop() % 2);
               if(!(_loc4_ && Boolean(this)))
               {
                  if(§§pop() == 0)
                  {
                     if(!_loc4_)
                     {
                        §§push(_loc1_);
                        if(_loc3_ || _loc1_)
                        {
                           addr77:
                           §§push(-§§pop());
                           if(_loc3_ || _loc3_)
                           {
                              §§push(§§pop());
                              if(!_loc4_)
                              {
                                 addr74:
                                 _loc1_ = §§pop();
                                 addr75:
                                 §§push(_loc1_);
                              }
                           }
                           var _loc2_:* = §§pop();
                           if(!_loc4_)
                           {
                              §§push(_loc2_);
                              if(_loc3_)
                              {
                                 §§push(§§pop() + 2147483646);
                                 if(_loc3_)
                                 {
                                    addr94:
                                    §§push(§§pop());
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       _loc2_ = §§pop();
                                       addr103:
                                       §§push(_loc2_);
                                       if(_loc4_)
                                       {
                                       }
                                       §§goto(addr108);
                                    }
                                    §§push(§§pop() / 4294967293);
                                 }
                                 addr108:
                                 return §§pop();
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr103);
                        }
                        §§push(§§pop());
                     }
                  }
                  §§goto(addr75);
               }
               §§goto(addr77);
            }
         }
         §§goto(addr74);
      }
      
      private function internalSample() : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this._inext);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this._inextp);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || Boolean(this))
         {
            §§push(_loc1_ + 1);
            if(_loc4_ || _loc1_)
            {
               §§push(§§pop());
               if(!_loc5_)
               {
                  §§push(§§pop());
                  if(_loc4_ || Boolean(this))
                  {
                     _loc1_ = §§pop();
                     if(_loc4_)
                     {
                        §§push(56);
                        if(!_loc5_)
                        {
                           addr58:
                           if(§§pop() >= §§pop())
                           {
                              if(!_loc5_)
                              {
                                 addr61:
                                 _loc1_ = 1;
                                 if(!_loc5_)
                                 {
                                    addr65:
                                    §§push(_loc2_);
                                    if(!_loc5_)
                                    {
                                       addr68:
                                       §§push(§§pop() + 1);
                                       if(_loc4_)
                                       {
                                          addr71:
                                          §§push(§§pop());
                                          if(_loc4_ || Boolean(_loc1_))
                                          {
                                             addr79:
                                             §§push(§§pop());
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                _loc2_ = §§pop();
                                                if(_loc5_ && Boolean(this))
                                                {
                                                }
                                                addr120:
                                                var _loc3_:* = §§pop();
                                                if(!(_loc5_ && Boolean(this)))
                                                {
                                                   §§push(_loc3_);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§push(0);
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            if(!(_loc5_ && Boolean(_loc1_)))
                                                            {
                                                               §§push(_loc3_);
                                                               if(!(_loc5_ && Boolean(this)))
                                                               {
                                                                  addr161:
                                                                  §§push(int(§§pop() + 2147483647));
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        addr185:
                                                                        this._seedArray[_loc1_] = _loc3_;
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           this._inext = _loc1_;
                                                                           if(_loc4_)
                                                                           {
                                                                              addr202:
                                                                              this._inextp = _loc2_;
                                                                              addr205:
                                                                              §§push(_loc3_);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr205);
                                                                  }
                                                               }
                                                               return §§pop();
                                                            }
                                                            §§goto(addr202);
                                                         }
                                                         §§goto(addr185);
                                                      }
                                                   }
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr202);
                                             }
                                             addr103:
                                             if(§§pop() >= §§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   addr106:
                                                   §§push(1);
                                                   if(!_loc5_)
                                                   {
                                                      _loc2_ = §§pop();
                                                   }
                                                   §§goto(addr120);
                                                }
                                             }
                                             §§goto(addr120);
                                             §§push(this._seedArray[_loc1_] - this._seedArray[_loc2_]);
                                          }
                                       }
                                       §§goto(addr103);
                                       §§push(56);
                                    }
                                    §§goto(addr120);
                                 }
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr65);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr58);
               }
               §§goto(addr79);
            }
            §§goto(addr68);
         }
         §§goto(addr61);
      }
      
      public function nextInt() : int
      {
         return this.internalSample();
      }
      
      public function nextMax(param1:int) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && Boolean(param1)))
         {
            if(param1 < 0)
            {
               if(_loc3_)
               {
                  throw new ArgumentError("Argument \"maxValue\" must be positive.");
               }
            }
         }
         return int(this.sample() * param1);
      }
      
      public function nextMinMax(param1:int, param2:int) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1);
            if(_loc4_ || Boolean(param2))
            {
               §§push(param2);
               if(!_loc5_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc5_)
                     {
                        throw new ArgumentError("Argument \"minValue\" must be less than or equal to \"maxValue\".");
                     }
                     addr40:
                     §§push(param2);
                     §§push(param1);
                  }
                  §§goto(addr40);
               }
               §§push(§§pop() - §§pop());
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop());
               }
               var _loc3_:* = §§pop();
               if(_loc4_)
               {
                  if(_loc3_ <= 2147483647)
                  {
                     if(!_loc5_)
                     {
                        return int(this.sample() * _loc3_) + param1;
                     }
                  }
               }
               return int(Number(this.getSampleForLargeRange() * _loc3_)) + param1;
            }
         }
         §§goto(addr40);
      }
      
      public function nextBytes(param1:ByteArray, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && Boolean(param2)))
         {
            if(param1 == null)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§goto(addr45);
               }
            }
            var _loc3_:int = 0;
            while(_loc3_ < param2)
            {
               param1.writeByte(this.internalSample() % 256);
               if(!_loc4_)
               {
                  _loc3_++;
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            return;
         }
         addr45:
         throw new ArgumentError("Argument \"buffer\" cannot be null.");
      }
      
      public function nextNumber() : Number
      {
         return this.sample();
      }
      
      protected function sample() : Number
      {
         return this.internalSample() * 4.656612875245797e-10;
      }
   }
}
