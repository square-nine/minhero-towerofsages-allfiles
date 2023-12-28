package com.greensock.plugins
{
   import com.greensock.*;
   
   public class HexColorsPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            API = 1;
         }
      }
      
      protected var _colors:Array;
      
      public function HexColorsPlugin()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(_loc1_ || _loc2_)
            {
               addr43:
               this.propName = "hexColors";
               if(_loc1_)
               {
                  this.overwriteProps = [];
                  if(_loc2_ && _loc2_)
                  {
                  }
                  §§goto(addr61);
               }
               this._colors = [];
            }
            addr61:
            return;
         }
         §§goto(addr43);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:String = null;
         for(_loc4_ in param2)
         {
            if(!_loc8_)
            {
               this.initColor(param1,_loc4_,uint(param1[_loc4_]),uint(param2[_loc4_]));
            }
         }
         return true;
      }
      
      public function initColor(param1:Object, param2:String, param3:uint, param4:uint) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         §§push(param3);
         if(_loc9_)
         {
            if(§§pop() != param4)
            {
               if(_loc9_ || Boolean(param3))
               {
                  §§push(param3);
                  if(!_loc8_)
                  {
                     §§push(16);
                     if(!_loc8_)
                     {
                        §§push(§§pop() >> §§pop());
                        if(!(_loc8_ && Boolean(param1)))
                        {
                           §§push(§§pop());
                           if(!_loc8_)
                           {
                              _loc5_ = §§pop();
                              addr50:
                              §§push(param3);
                              if(_loc9_)
                              {
                                 addr53:
                                 §§push(8);
                                 if(!_loc8_)
                                 {
                                    addr63:
                                    §§push(§§pop() >> §§pop());
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() & 255);
                                       if(_loc9_ || Boolean(this))
                                       {
                                       }
                                       addr88:
                                       _loc7_ = §§pop();
                                       this._colors[this._colors.length] = [param1,param2,_loc5_,(param4 >> 16) - _loc5_,_loc6_,(param4 >> 8 & 255) - _loc6_,_loc7_,(param4 & 255) - _loc7_];
                                       this.overwriteProps[this.overwriteProps.length] = param2;
                                       return;
                                       addr87:
                                    }
                                    §§push(§§pop());
                                    if(_loc9_ || Boolean(param3))
                                    {
                                       _loc6_ = §§pop();
                                       addr85:
                                       §§push(param3);
                                       §§push(255);
                                    }
                                    §§goto(addr88);
                                 }
                                 §§goto(addr87);
                                 §§push(§§pop() & §§pop());
                              }
                              §§goto(addr85);
                           }
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr53);
               }
               §§goto(addr50);
            }
            §§goto(addr88);
         }
         §§goto(addr53);
      }
      
      override public function killProps(param1:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = int(this._colors.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(true)
            {
               if(§§pop() > -1)
               {
                  if(param1[this._colors[_loc2_][1]] != undefined)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        this._colors.splice(_loc2_,1);
                        if(_loc4_)
                        {
                           §§goto(addr91);
                        }
                     }
                  }
                  §§push(_loc2_);
                  if(_loc3_ || Boolean(this))
                  {
                     §§push(§§pop() - 1);
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     continue;
                  }
                  continue loop0;
               }
               if(!(_loc4_ && Boolean(param1)))
               {
                  break;
               }
               §§goto(addr91);
            }
            addr88:
            super.killProps(param1);
            addr91:
            return;
         }
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Array = null;
         var _loc2_:* = int(this._colors.length);
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               §§push(§§pop() - 1);
               if(_loc5_)
               {
                  §§push(§§pop());
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     §§push(§§pop());
                     if(!_loc4_)
                     {
                        addr103:
                        _loc2_ = §§pop();
                        §§push(-1);
                     }
                     if(§§pop() <= §§pop())
                     {
                        break;
                     }
                     _loc3_ = this._colors[_loc2_];
                     if(!_loc4_)
                     {
                        _loc3_[0][_loc3_[1]] = _loc3_[2] + param1 * _loc3_[3] << 16 | _loc3_[4] + param1 * _loc3_[5] << 8 | _loc3_[6] + param1 * _loc3_[7];
                     }
                     continue;
                  }
                  §§goto(addr103);
               }
            }
            §§goto(addr103);
         }
      }
   }
}
