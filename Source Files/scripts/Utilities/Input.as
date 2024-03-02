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
      
      public static var keysPressed:Dictionary = new Dictionary();
      
      public static var keysUp:Dictionary = new Dictionary();
      
      public static var stage:Stage;
      
      public static var initialized:Boolean = false;
       
      
      public function Input()
      {
         super();
      }
      
      public static function initialize(param1:Stage, param2:Boolean = true) : void
      {
         if(initialized)
         {
            return;
         }
         initialized = true;
         if(param2)
         {
            param1.addEventListener(Event.ENTER_FRAME,handleEnterFrame,false,-1000,true);
         }
         param1.addEventListener(KeyboardEvent.KEY_DOWN,handleKeyDown,false,0,true);
         param1.addEventListener(KeyboardEvent.KEY_UP,handleKeyUp,false,0,true);
         param1.addEventListener(MouseEvent.MOUSE_UP,handleMouseUp,false,0,true);
         param1.addEventListener(MouseEvent.MOUSE_DOWN,handleMouseDown,false,0,true);
         param1.addEventListener(MouseEvent.MOUSE_MOVE,handleMouseMove,false,0,true);
         param1.addEventListener(Event.MOUSE_LEAVE,handleMouseLeave,false,0,true);
         param1.addEventListener(Event.DEACTIVATE,handleDeactivate,false,0,true);
         stage = param1;
      }
      
      public static function handleKeyDown(param1:KeyboardEvent) : void
      {
         if(!keysDown[param1.keyCode])
         {
            keysPressed[param1.keyCode] = true;
            keysDown[param1.keyCode] = true;
         }
      }
      
      public static function handleKeyUp(param1:KeyboardEvent) : void
      {
         keysUp[param1.keyCode] = true;
         delete keysDown[param1.keyCode];
      }
      
      public static function handleEnterFrame(param1:Event) : void
      {
         clear();
      }
      
      public static function clear() : void
      {
         keysUp = new Dictionary();
         keysPressed = new Dictionary();
      }
      
      public static function handleMouseEvent(param1:MouseEvent) : void
      {
         if(Math.abs(param1.stageX) < 900000)
         {
            mousePos.x = param1.stageX < 0 ? 0 : (param1.stageX > stage.stageWidth ? stage.stageWidth : param1.stageX);
            mousePos.y = param1.stageY < 0 ? 0 : (param1.stageY > stage.stageHeight ? stage.stageHeight : param1.stageY);
         }
         mouseTrackable = true;
         mouseDetected = true;
      }
      
      public static function mousePositionIn(param1:DisplayObject) : Point
      {
         return param1.globalToLocal(mousePos);
      }
      
      public static function handleMouseDown(param1:MouseEvent) : void
      {
         mouseIsDown = true;
         handleMouseEvent(param1);
      }
      
      public static function handleMouseUp(param1:MouseEvent) : void
      {
         mouseIsDown = false;
         handleMouseEvent(param1);
         stage.dispatchEvent(new Event(MOUSE_UP_OR_LOST));
      }
      
      public static function handleMouseMove(param1:MouseEvent) : void
      {
         handleMouseEvent(param1);
      }
      
      public static function handleMouseLeave(param1:Event) : void
      {
         mouseIsDown = false;
         stage.dispatchEvent(new Event(MOUSE_UP_OR_LOST));
         mouseTrackable = false;
      }
      
      public static function handleDeactivate(param1:Event) : void
      {
         mouseIsDown = false;
         stage.dispatchEvent(new Event(MOUSE_UP_OR_LOST));
         mouseTrackable = false;
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
         var _loc3_:uint = 0;
         while(_loc3_ < param2.length)
         {
            if(param1[KeyCodes[param2[_loc3_]]])
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
   }
}
