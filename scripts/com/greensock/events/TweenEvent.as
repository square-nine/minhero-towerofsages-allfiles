package com.greensock.events
{
   import flash.events.Event;
   
   public class TweenEvent extends Event
   {
      
      public static const VERSION:Number = 1.1;
      
      public static const START:String = "start";
      
      public static const UPDATE:String = "change";
      
      public static const COMPLETE:String = "complete";
      
      public static const REVERSE_COMPLETE:String = "reverseComplete";
      
      public static const REPEAT:String = "repeat";
      
      public static const INIT:String = "init";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            START = "start";
            if(!(_loc2_ && TweenEvent))
            {
               UPDATE = "change";
               COMPLETE = "complete";
               if(_loc1_)
               {
                  REVERSE_COMPLETE = "reverseComplete";
                  addr53:
                  REPEAT = "repeat";
                  if(_loc1_)
                  {
                     INIT = "init";
                  }
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function TweenEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new TweenEvent(this.type,this.bubbles,this.cancelable);
      }
   }
}
