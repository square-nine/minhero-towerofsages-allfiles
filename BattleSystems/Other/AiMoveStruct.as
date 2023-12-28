package BattleSystems.Other
{
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   
   public class AiMoveStruct
   {
       
      
      public var m_move:BaseMinionMove;
      
      public var m_moveThreat:Number;
      
      public var m_minionHit:OwnedMinion;
      
      public function AiMoveStruct()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               this.m_moveThreat = 0;
            }
         }
      }
   }
}
