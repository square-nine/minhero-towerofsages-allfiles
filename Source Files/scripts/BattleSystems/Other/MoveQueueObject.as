package BattleSystems.Other
{
   public class MoveQueueObject
   {
       
      
      public var m_timeQueueLasts:Number;
      
      public var m_function:Function;
      
      public var m_skipFunction:Function;
      
      public function MoveQueueObject(param1:Number = 0, param2:Function = null)
      {
         super();
         this.m_timeQueueLasts = param1;
         this.m_function = param2;
      }
   }
}
