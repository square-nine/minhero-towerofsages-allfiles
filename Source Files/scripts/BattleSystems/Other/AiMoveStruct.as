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
         super();
         this.m_moveThreat = 0;
      }
   }
}
