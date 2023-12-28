package BattleSystems.Other
{
   public class MoveQueueObject
   {
       
      
      public var m_timeQueueLasts:Number;
      
      public var m_function:Function;
      
      public var m_skipFunction:Function;
      
      public function MoveQueueObject(param1:Number = 0, param2:Function = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr32);
            }
            §§goto(addr42);
         }
         addr32:
         this.m_timeQueueLasts = param1;
         if(_loc4_ || Boolean(this))
         {
            addr42:
            this.m_function = param2;
         }
      }
   }
}
