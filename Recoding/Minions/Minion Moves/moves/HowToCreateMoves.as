package Minions.MinionMove 
{ 
   // these imports are just conversions from an ID into a number, so no biggie. May have to steal to hide game stuff.
   import States.MinionMoveClasses;
   import States.MinionMoveID;
   import States.MinionType;
   import States.MinionVisualMoveID;
   import States.StatType;
   
   public class AllBaseMovesContainer
   {
       
      
      public var m_allMoves:Vector.<BaseMinionMove>;
      
      private var m_currFirstMinionMoveID:int;
      
      private var m_currMinionMoveClass:int;
      
      private var m_currMoveIconName:String;
      
      private var m_currMinionMoveVisuals:int;
      
      private var m_currMinionDOTMoveVisuals:int;
      
      private const m_armorModRate:Number = 0.66;
      
      public function AllBaseMovesContainer()
      {
        // makes moves exist
         super();
         this.m_allMoves = new Vector.<BaseMinionMove>(MinionMoveID.NUM_OF_MOVES);
         this.CreateFireMoves();
         this.CreateElectricMoves();
         this.CreateNormalMoves();
         this.CreatePassiveMoves();
         this.CreateEarthMoves();
         this.CreateUndeadMoves();
         this.CreateDinoMoves();
         this.CreateGrassMoves();
         this.CreateWaterMoves();
         this.CreateIceMoves();
         this.CreateDemonMoves();
         this.CreateFlyingMoves();
         this.CreateHolyMoves();
         this.CreateRobotMoves();
         this.CreateTitanMoves();
      }
      
   //element-specific functions have been moved.

      //this one is used by most skills to setup
      //basically this sets up the boring stuff that is always present, and will never not be there
      private function CreateMove(param1:String, param2:int, param3:int, param4:int, param5:String, param6:int, param7:int, param8:int = -99) : BaseMinionMove
      {
         var _loc9_:BaseMinionMove = null;
         (_loc9_ = new BaseMinionMove()).m_moveID = param4;
         _loc9_.m_moveClass = param3;
         _loc9_.m_moveTier = 0;
         _loc9_.m_visualMoveID = param7;
         _loc9_.m_moveIcon = param5;
         _loc9_.m_moveType = param6;
         _loc9_.m_moveName = param1;
         _loc9_.m_energyUsed = param2;
         if(param8 != -99)
         {
            _loc9_.m_visualDOTMoveID = param8;
         }
         else
         {
            _loc9_.m_visualDOTMoveID = param7;
         }
         this.m_allMoves[_loc9_.m_moveID] = _loc9_;
         return _loc9_;
      }
      //this can copy a move by increasing the name level, energy and IDs
      private function CopyMove(param1:BaseMinionMove, param2:int, param3:String = null) : BaseMinionMove
      {
         var _loc4_:BaseMinionMove = null;
         ++(_loc4_ = param1.GetMoveCopy()).m_moveTier;
         ++_loc4_.m_moveID;
         _loc4_.m_energyUsed = param2;
         if(param3 == null)
         {
            _loc4_.m_moveName = this.m_allMoves[_loc4_.m_moveID - _loc4_.m_moveTier].m_moveName + "  lv." + (_loc4_.m_moveTier + 1);
         }
         else
         {
            _loc4_.m_moveName = param3;
         }
         this.m_allMoves[_loc4_.m_moveID] = _loc4_;
         return _loc4_;
      }


      //idk man
      public function GetMove(param1:int) : BaseMinionMove
      {
         return this.m_allMoves[param1];
      }
   }
}
