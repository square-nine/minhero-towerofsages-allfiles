package TopDown.Trainers
{
   import Minions.MinionMove.BaseMinionMove;
   import States.ModStoneTypes;
   import States.TrainerType;
   import Utilities.Singleton;
   
   public class TrainerDataObject
   {
       
      
      private var _trainerType:int;
      
      public var m_trainerRoomID:int;
      
      public var m_extraMinionLevels:int;
      
      public var m_minions:Vector.<TrainerMinionDataObject>;
      
      public var m_overrideDifficulty:int;
      
      public var m_whatTrainerSaysAtStart_notBeaten:String;
      
      public var m_whatTrainerSaysAtStart_alreadyBeaten:String;
      
      public var m_whatTrainerSaysAtLose:String;
      
      public var m_trainerName:String;
      
      public var m_isModStonesActive:Vector.<Boolean>;
      
      public var m_numOfEnemyShields:int;
      
      public var m_numOfPlayerShields:int;
      
      public var m_moveTimeCounter:int;
      
      public var m_moveOnTimer:BaseMinionMove;
      
      public var m_movePower:int;
      
      public var m_passiveMoveForMoveOnTimer:int;
      
      public var m_numOfExtraOpponentMinions:int;
      
      public var m_extraOpponentMinionID:int;
      
      public var m_extraOpponentMinionLevelModifier:int;
      
      public var m_extraOpponentMinionTalentTree:Array;
      
      public var m_numOfExtraPlayerMinions:int;
      
      public var m_extraPlayerMinionID:int;
      
      public var m_extraPlayerMinionLevelModifier:int;
      
      public var m_extraPlayerMinionTalentTree:Array;
      
      public var m_turnsUntilResurection:int;
      
      public function TrainerDataObject()
      {
         super();
         this.m_minions = new Vector.<TrainerMinionDataObject>();
         this.m_extraMinionLevels = 0;
         this.m_whatTrainerSaysAtStart_notBeaten = "In hard mode we must fight!";
         this.m_whatTrainerSaysAtStart_alreadyBeaten = "You already beat me!   Retry for three stars?";
         this.m_whatTrainerSaysAtLose = "You did great!";
         this.m_isModStonesActive = new Vector.<Boolean>(4);
         var _loc1_:int = 0;
         while(_loc1_ < this.m_isModStonesActive.length)
         {
            this.m_isModStonesActive[_loc1_] = false;
            _loc1_++;
         }
         this.m_numOfEnemyShields = 0;
         this.m_numOfPlayerShields = 0;
         this.m_moveTimeCounter = 0;
         this.m_moveOnTimer = null;
         this.m_movePower = 0;
         this.m_passiveMoveForMoveOnTimer = -99;
         this.m_numOfExtraOpponentMinions = 0;
         this.m_extraOpponentMinionID = 0;
         this.m_extraOpponentMinionLevelModifier = 0;
         this.m_extraOpponentMinionTalentTree = null;
         this.m_numOfExtraPlayerMinions = 0;
         this.m_extraPlayerMinionID = 0;
         this.m_extraPlayerMinionLevelModifier = 0;
         this.m_extraPlayerMinionTalentTree = null;
         this.m_turnsUntilResurection = -99;
      }
      
      public function AddMod_Shield(param1:int, param2:int = 0) : void
      {
         this.m_isModStonesActive[ModStoneTypes.MOD_STONE_SHIELD] = true;
         this.m_numOfEnemyShields = param1;
         this.m_numOfPlayerShields = param2;
      }
      
      public function AddMod_MoveTimer(param1:int, param2:int, param3:int, param4:int = -99) : void
      {
         this.m_isModStonesActive[ModStoneTypes.MOD_STONE_MOVE_TIMER] = true;
         this.m_moveOnTimer = Singleton.staticData.GetBaseMinionMove(param1);
         this.m_moveTimeCounter = param2;
         this.m_movePower = param3;
         this.m_passiveMoveForMoveOnTimer = param4;
      }
      
      public function AddMod_ExtraMinions_Opponent(param1:int, param2:int, param3:Array = null, param4:int = 0) : void
      {
         this.m_isModStonesActive[ModStoneTypes.MOD_STONE_EXTRA_MINIONS] = true;
         this.m_extraOpponentMinionID = param1;
         this.m_numOfExtraOpponentMinions = param2;
         this.m_extraOpponentMinionLevelModifier = param4;
         this.m_extraOpponentMinionTalentTree = param3;
      }
      
      public function AddMod_ExtraMinions_Player(param1:int, param2:int, param3:Array = null, param4:int = 0) : void
      {
         this.m_isModStonesActive[ModStoneTypes.MOD_STONE_EXTRA_MINIONS] = true;
         this.m_extraPlayerMinionID = param1;
         this.m_numOfExtraPlayerMinions = param2;
         this.m_extraPlayerMinionLevelModifier = param4;
         this.m_extraPlayerMinionTalentTree = param3;
      }
      
      public function AddMod_Resurection(param1:int) : void
      {
         this.m_isModStonesActive[ModStoneTypes.MOD_STONE_RESURECTION] = true;
         this.m_turnsUntilResurection = param1;
      }
      
      public function IsAtLeastOneModActive() : Boolean
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.m_isModStonesActive.length)
         {
            if(this.m_isModStonesActive[_loc1_])
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function IsModActive(param1:int) : Boolean
      {
         return this.m_isModStonesActive[param1];
      }
      
      public function AddMinion(param1:int, param2:Array, param3:int = 1) : TrainerMinionDataObject
      {
         var _loc4_:TrainerMinionDataObject;
         (_loc4_ = new TrainerMinionDataObject()).m_minionID = param1;
         _loc4_.m_minionRole = param3;
         var _loc5_:int = 0;
         while(_loc5_ < param2.length)
         {
            _loc4_.m_moves.push(param2[_loc5_]);
            _loc5_++;
         }
         this.m_minions.push(_loc4_);
         return _loc4_;
      }
      
      public function get m_trainerType() : int
      {
         return this._trainerType;
      }
      
      public function set m_trainerType(param1:int) : void
      {
         this._trainerType = param1;
         switch(param1)
         {
            case TrainerType.NORMAL_TRAINER:
               this.m_trainerName = "Student";
               break;
            case TrainerType.HARD_TRAINER:
               this.m_trainerName = "Hard Sage";
               break;
            case TrainerType.EXPERT_TRAINER:
               this.m_trainerName = "Expert Sage";
               break;
            case TrainerType.BOSS_TRAINER:
               this.m_trainerName = "Minor Sage";
               break;
            case TrainerType.TRAINER_GYM_1:
               this.m_trainerName = "Grass Sage";
               break;
            case TrainerType.TRAINER_GYM_2:
               this.m_trainerName = "Fire Sage";
               break;
            case TrainerType.TRAINER_GYM_3:
               this.m_trainerName = "Electric Sage";
               break;
            case TrainerType.TRAINER_GYM_4:
               this.m_trainerName = "Undead Sage";
               break;
            case TrainerType.TRAINER_GYM_5:
               this.m_trainerName = "Talo Sage";
               break;
            case TrainerType.TRAINER_GYM_6:
               this.m_trainerName = "Daco Sage";
               break;
            case TrainerType.TRAINER_GRAND_SAGE:
               this.m_trainerName = "Grand Sage";
               break;
            default:
               this.m_trainerName = "Inner Monologue";
         }
      }
   }
}
