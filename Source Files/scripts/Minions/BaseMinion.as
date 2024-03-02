package Minions
{
   public class BaseMinion
   {
       
      
      public var m_minionDexID:int;
      
      public var m_baseMinionName:String;
      
      public var m_minionBattleSprite:String;
      
      public var m_minionIconPositioningX:int;
      
      public var m_minionIconPositioningY:int;
      
      public var m_baseHealth:int;
      
      public var m_baseEnergy:int;
      
      public var m_baseAttack:int;
      
      public var m_baseHealing:int;
      
      public var m_baseSpeed:int;
      
      public var m_expGainRate:int;
      
      public var m_minionType1:int;
      
      public var m_minionType2:int;
      
      public var m_numberOfGems:int;
      
      public var m_numberOfLockedGems:int;
      
      public var m_evolutionLevel:int;
      
      private var m_talentTrees:Vector.<MinionTalentTree>;
      
      public var m_spealizationMoves:Vector.<int>;
      
      public var m_startingMoves:Vector.<int>;
      
      public function BaseMinion()
      {
         super();
         this.m_talentTrees = new Vector.<MinionTalentTree>(3);
         this.m_startingMoves = new Vector.<int>();
         this.m_spealizationMoves = new Vector.<int>(3);
         this.m_expGainRate = 1;
         this.m_evolutionLevel = 999;
         this.m_numberOfGems = 0;
         this.m_numberOfLockedGems = 0;
      }
      
      public function SetSpeacilizaionMoves(param1:int, param2:int, param3:int) : void
      {
         this.m_spealizationMoves[0] = param1;
         this.m_spealizationMoves[1] = param2;
         this.m_spealizationMoves[2] = param3;
      }
      
      public function GetTalentTree(param1:int) : MinionTalentTree
      {
         return this.m_talentTrees[param1];
      }
      
      public function SetTalentTree(param1:int, param2:MinionTalentTree) : void
      {
         this.m_talentTrees[param1] = param2;
      }
      
      public function AddStartingMove(param1:int) : void
      {
         this.m_startingMoves.push(param1);
      }
   }
}
