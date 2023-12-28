package com.greensock.plugins
{
   import com.greensock.*;
   import flash.display.*;
   
   public class FrameLabelPlugin extends FramePlugin
   {
      
      public static const API:Number = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            API = 1;
         }
      }
      
      public function FrameLabelPlugin()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               addr36:
               this.propName = "frameLabel";
            }
            return;
         }
         §§goto(addr36);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            §§push(!param3.target);
            if(_loc9_ || Boolean(param3))
            {
               §§push(§§pop() is MovieClip);
               if(_loc9_)
               {
                  if(§§pop())
                  {
                     if(_loc9_ || Boolean(this))
                     {
                        §§goto(addr39);
                     }
                     else
                     {
                        addr54:
                        this.frame = _target.currentFrame;
                     }
                  }
                  else
                  {
                     addr42:
                     _target = param1 as MovieClip;
                     if(_loc9_ || Boolean(this))
                     {
                        §§goto(addr54);
                     }
                  }
                  var _loc4_:Array = _target.currentLabels;
                  var _loc5_:String = param2;
                  var _loc6_:* = _target.currentFrame;
                  var _loc7_:* = int(_loc4_.length);
                  loop0:
                  while(true)
                  {
                     §§push(_loc7_);
                     if(!_loc8_)
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           if(!(_loc8_ && param2))
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc7_ = §§pop();
                        }
                        addr114:
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(_loc9_)
                           {
                              addr134:
                              if(this.frame != _loc6_)
                              {
                                 if(_loc9_ || Boolean(this))
                                 {
                                    addTween(this,"frame",this.frame,_loc6_,"frame");
                                    break;
                                 }
                                 break;
                              }
                              break;
                           }
                           break;
                        }
                        if(_loc4_[_loc7_].name == _loc5_)
                        {
                           if(!(_loc8_ && Boolean(param3)))
                           {
                              §§push(int(_loc4_[_loc7_].frame));
                              if(!_loc8_)
                              {
                                 _loc6_ = §§pop();
                                 if(!(_loc8_ && Boolean(this)))
                                 {
                                    §§goto(addr134);
                                 }
                                 break;
                              }
                              §§goto(addr114);
                           }
                           break;
                        }
                        continue loop0;
                        §§goto(addr134);
                     }
                     return true;
                  }
               }
            }
            addr39:
            return false;
         }
         §§goto(addr42);
      }
   }
}
