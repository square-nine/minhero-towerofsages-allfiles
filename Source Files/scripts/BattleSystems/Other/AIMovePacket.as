package BattleSystems.Other
{
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   
   public class AIMovePacket
   {
       
      
      public var m_currMoves:Vector.<BaseMinionMove>;
      
      public var m_currMinionsAttacked:Vector.<Vector.<OwnedMinion>>;
      
      public var m_threatPerMove:Vector.<Number>;
      
      public var m_bestMoves:Vector.<BaseMinionMove>;
      
      public var m_bestMinionsAttacked:Vector.<Vector.<OwnedMinion>>;
      
      public var m_threatPerBestMoves:Vector.<Number>;
      
      public function AIMovePacket()
      {
         super();
         this.m_threatPerMove = new Vector.<Number>(5);
         this.m_threatPerBestMoves = new Vector.<Number>(5);
         this.m_currMoves = new Vector.<BaseMinionMove>(5);
         this.m_currMinionsAttacked = new Vector.<Vector.<OwnedMinion>>(5);
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this.m_currMinionsAttacked[_loc1_] = new Vector.<OwnedMinion>();
            this.m_threatPerMove[_loc1_] = 0;
            this.m_threatPerBestMoves[_loc1_] = 0;
            _loc1_++;
         }
      }
      
      public function SetCurrMovesToBestMoves() : void
      {
         var _loc2_:int = 0;
         this.m_bestMoves = new Vector.<BaseMinionMove>(5);
         this.m_threatPerBestMoves = new Vector.<Number>(5);
         this.m_bestMinionsAttacked = new Vector.<Vector.<OwnedMinion>>(5);
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this.m_bestMinionsAttacked[_loc1_] = new Vector.<OwnedMinion>();
            _loc2_ = 0;
            while(_loc2_ < this.m_currMinionsAttacked[_loc1_].length)
            {
               this.m_bestMinionsAttacked[_loc1_].push(this.m_currMinionsAttacked[_loc1_][_loc2_]);
               _loc2_++;
            }
            this.m_bestMoves[_loc1_] = this.m_currMoves[_loc1_];
            this.m_threatPerBestMoves[_loc1_] = this.m_threatPerMove[_loc1_];
            _loc1_++;
         }
      }
      
      public function GetTotalCurrThreat() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         while(_loc2_ < 5)
         {
            _loc1_ += this.m_threatPerMove[_loc2_];
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function GetTotalBestThreat() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < 5)
         {
            _loc1_ += this.m_threatPerBestMoves[_loc2_];
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
