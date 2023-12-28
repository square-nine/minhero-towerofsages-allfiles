package com.greensock.core
{
   public final class PropTween
   {
       
      
      public var target:Object;
      
      public var property:String;
      
      public var start:Number;
      
      public var change:Number;
      
      public var name:String;
      
      public var priority:int;
      
      public var isPlugin:Boolean;
      
      public var nextNode:PropTween;
      
      public var prevNode:PropTween;
      
      public function PropTween(param1:Object, param2:String, param3:Number, param4:Number, param5:String, param6:Boolean, param7:PropTween = null, param8:int = 0)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         super();
         if(_loc9_ || Boolean(param1))
         {
            this.target = param1;
            if(_loc9_)
            {
               this.property = param2;
               this.start = param3;
               this.change = param4;
               if(_loc9_ || Boolean(param3))
               {
                  this.name = param5;
                  this.isPlugin = param6;
                  if(param7)
                  {
                     if(_loc9_ || Boolean(param1))
                     {
                        addr72:
                        param7.prevNode = this;
                        if(_loc9_ || Boolean(param2))
                        {
                           §§goto(addr82);
                        }
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr92);
               }
               §§goto(addr72);
            }
         }
         addr82:
         this.nextNode = param7;
         if(!(_loc10_ && Boolean(param1)))
         {
            addr92:
            this.priority = param8;
         }
      }
   }
}
