package Utilities
{
   import States.KeyCodes;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.utils.*;
   
   public class Input
   {
      
      public static const MOUSE_UP_OR_LOST:String = "mouseUpOrLost";
      
      public static var mousePos:Point = new Point(-1000,-1000);
      
      public static var mouseTrackable:Boolean = false;
      
      public static var mouseDetected:Boolean = false;
      
      public static var mouseIsDown:Boolean = false;
      
      public static var keysDown:Dictionary = new Dictionary();
      
      public static var keysPressed:Dictionary;
      
      public static var keysUp:Dictionary;
      
      public static var stage:Stage;
      
      public static var initialized:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            keysPressed = new Dictionary();
            keysUp = new Dictionary();
            if(_loc2_)
            {
               addr67:
               initialized = false;
            }
            return;
         }
         §§goto(addr67);
      }
      
      public function Input()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      public static function initialize(param1:Stage, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(initialized);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  addr28:
                  initialized = true;
                  addr32:
                  if(param2)
                  {
                     param1.addEventListener(Event.ENTER_FRAME,handleEnterFrame,false,-1000,true);
                  }
                  param1.addEventListener(KeyboardEvent.KEY_DOWN,handleKeyDown,false,0,true);
                  param1.addEventListener(KeyboardEvent.KEY_UP,handleKeyUp,false,0,true);
               }
               param1.addEventListener(MouseEvent.MOUSE_UP,handleMouseUp,false,0,true);
               if(_loc4_)
               {
                  param1.addEventListener(MouseEvent.MOUSE_DOWN,handleMouseDown,false,0,true);
                  if(!_loc3_)
                  {
                     §§goto(addr84);
                  }
                  §§goto(addr114);
               }
               addr84:
               param1.addEventListener(MouseEvent.MOUSE_MOVE,handleMouseMove,false,0,true);
               param1.addEventListener(Event.MOUSE_LEAVE,handleMouseLeave,false,0,true);
               if(_loc4_ || _loc3_)
               {
                  addr114:
                  param1.addEventListener(Event.DEACTIVATE,handleDeactivate,false,0,true);
                  stage = param1;
               }
               return;
            }
            §§goto(addr32);
         }
         §§goto(addr28);
      }
      
      public static function handleKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!keysDown[param1.keyCode])
            {
               if(_loc3_)
               {
                  addr30:
                  keysPressed[param1.keyCode] = true;
                  if(_loc3_)
                  {
                     keysDown[param1.keyCode] = true;
                  }
               }
            }
            return;
         }
         §§goto(addr30);
      }
      
      public static function handleKeyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && Input))
         {
            keysUp[param1.keyCode] = true;
            if(_loc2_ || _loc2_)
            {
               addr39:
               delete keysDown[param1.keyCode];
            }
            return;
         }
         §§goto(addr39);
      }
      
      public static function handleEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(param1))
         {
            clear();
         }
      }
      
      public static function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            keysUp = new Dictionary();
            if(!_loc1_)
            {
               keysPressed = new Dictionary();
            }
         }
      }
      
      public static function handleMouseEvent(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(param1))
         {
            if(Math.abs(param1.stageX) < 900000)
            {
               if(!_loc3_)
               {
                  mousePos.x = param1.stageX < 0 ? 0 : (param1.stageX > stage.stageWidth ? stage.stageWidth : param1.stageX);
                  if(_loc2_ || _loc3_)
                  {
                  }
                  §§goto(addr102);
               }
               mousePos.y = param1.stageY < 0 ? 0 : (param1.stageY > stage.stageHeight ? stage.stageHeight : param1.stageY);
               if(_loc2_)
               {
               }
               §§goto(addr102);
            }
            mouseTrackable = true;
            if(_loc2_)
            {
            }
            §§goto(addr102);
         }
         addr102:
         mouseDetected = true;
      }
      
      public static function mousePositionIn(param1:DisplayObject) : Point
      {
         return param1.globalToLocal(mousePos);
      }
      
      public static function handleMouseDown(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mouseIsDown = true;
            if(!(_loc2_ && _loc3_))
            {
               addr26:
               handleMouseEvent(param1);
            }
            return;
         }
         §§goto(addr26);
      }
      
      public static function handleMouseUp(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(param1))
         {
            mouseIsDown = false;
            if(_loc2_)
            {
               handleMouseEvent(param1);
               if(_loc2_ || _loc2_)
               {
                  addr42:
                  stage.dispatchEvent(new Event(MOUSE_UP_OR_LOST));
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      public static function handleMouseMove(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            handleMouseEvent(param1);
         }
      }
      
      public static function handleMouseLeave(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            mouseIsDown = false;
            if(_loc2_)
            {
               stage.dispatchEvent(new Event(MOUSE_UP_OR_LOST));
               if(!(_loc3_ && _loc3_))
               {
                  addr44:
                  mouseTrackable = false;
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public static function handleDeactivate(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mouseIsDown = false;
            if(!(_loc3_ && Input))
            {
               stage.dispatchEvent(new Event(MOUSE_UP_OR_LOST));
               if(_loc2_)
               {
                  addr39:
                  mouseTrackable = false;
               }
               return;
            }
         }
         §§goto(addr39);
      }
      
      public static function kd(... rest) : Boolean
      {
         return keySearch(keysDown,rest);
      }
      
      public static function ku(... rest) : Boolean
      {
         return keySearch(keysUp,rest);
      }
      
      public static function kp(... rest) : Boolean
      {
         return keySearch(keysPressed,rest);
      }
      
      public static function keySearch(param1:Dictionary, param2:Array) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(§§pop() < param2.length)
            {
               if(param1[KeyCodes[param2[_loc3_]]])
               {
                  if(!_loc4_)
                  {
                     break loop0;
                  }
               }
               else
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     §§push(uint(§§pop() + 1));
                     if(_loc4_)
                     {
                        continue;
                     }
                  }
                  _loc3_ = §§pop();
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               continue loop0;
            }
            §§goto(addr69);
         }
         §§push(true);
         if(!_loc4_)
         {
            return §§pop();
         }
         addr69:
         return false;
      }
   }
}
