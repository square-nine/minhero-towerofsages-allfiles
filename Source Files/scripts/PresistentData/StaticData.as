package PresistentData
{
   import BattleSystems.Visuals.VisualMoves.*;
   import BattleSystems.Visuals.VisualMoves.Burn.BaseBurnMove;
   import BattleSystems.Visuals.VisualMoves.DownFromTop.BaseDownFromTop;
   import BattleSystems.Visuals.VisualMoves.EarthQuake.BaseEarthquakeMoveVisual;
   import BattleSystems.Visuals.VisualMoves.FadeDownAndHitMinion.BaseFadeDownAndHitMinion;
   import BattleSystems.Visuals.VisualMoves.FadeInAndGoThroughMinion.BaseFadeInAndGoThroughMinion;
   import BattleSystems.Visuals.VisualMoves.FadeUpOutOfTheMinion.BaseFadeOutOfTheMinion;
   import BattleSystems.Visuals.VisualMoves.RotateIntoTheMinion.BaseRotateIntoTheMinionMove;
   import BattleSystems.Visuals.VisualMoves.ShootIntoMinion.BaseShootIntoMinionMoveVisual;
   import Minions.AllMinionsContainer;
   import Minions.BaseMinion;
   import Minions.BaseTalentTreeContainer;
   import Minions.MinionMove.AllBaseMovesContainer;
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import States.MinionDexID;
   import States.MinionType;
   import States.MinionVisualMoveID;
   import States.SpecialRoom;
   import States.StatType;
   import States.TrainerType;
   import TopDown.Levels.BaseTopDownLevel;
   import TopDown.Levels.Grass.CourtyardLevel;
   import TopDown.Levels.Grass.Floor1_1.*;
   import TopDown.Levels.MainTower.BaseEggery;
   import TopDown.Levels.MainTower.ExpertRoom_electric;
   import TopDown.Levels.MainTower.ExpertRoom_fire;
   import TopDown.Levels.MainTower.ExpertRoom_undead;
   import TopDown.Levels.MainTower.Lobby;
   import TopDown.Menus.MiniMap.MiniMapDataObject;
   import TopDown.Trainers.TrainerSystem;
   import Utilities.LevelContainer;
   import Utilities.Singleton;
   import flash.geom.Point;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class StaticData
   {
       
      
      private var m_baseMinionsList:AllMinionsContainer;
      
      private var m_baseMinionMovesList:AllBaseMovesContainer;
      
      public var m_baseTalentTreesList:BaseTalentTreeContainer;
      
      public var m_trainerSystem:TrainerSystem;
      
      public const SOMETHING_COLOR_RED:uint = 11737348;
      
      public var IS_SUPER_FAST_MODE_ON:Boolean = false;
      
      public const IS_BETA_ON:Boolean = false;
      
      public var NUM_OF_FLOORS_IN_THE_STANDARD_TOWER:int = 31;
      
      public var NUM_OF_FLOORS_IN_THE_HARD_TOWER:int = 31;
      
      public var MAX_NUM_OF_MINIONS_IN_GROUP:int = 5;
      
      public const NO_MOVE:int = -99;
      
      public var AUTO_WIN_BATTLES:Boolean = false;
      
      public const STAB_MODIFIER:Number = 1.1;
      
      public const SUPER_EFFECTIVE_MODIFIER:Number = 1.5;
      
      public const NOT_EFFECTIVE_MODIFIER:Number = 0.66666666667;
      
      public var m_sponsorURL_part1:String;
      
      public var m_sponsorURL_part2:String;
      
      public var m_sponsorURL_part3:String;
      
      public var m_sponsorURL_part4:String;
      
      public var m_sponsorURL_part5:String;
      
      public var m_sponsorURL_part6:String;
      
      public var m_sponsorURL_part7:String;
      
      public var m_sponsorURL_part8:String;
      
      public var m_sponsorURL_part9:String;
      
      public var m_sponsorURL_part10:String;
      
      public var m_sponsorURL_part11:String;
      
      public var m_sponsorURL_part12:String;
      
      public var m_onInterfaceBarTextFormat:TextFormat;
      
      private var m_minionLevelsForFloors:Vector.<int>;
      
      private var m_minionGemsForFloors:Vector.<int>;
      
      private var m_minionMoneyForFloors:Vector.<Number>;
      
      private var m_minionDifficultyForFloors:Vector.<Number>;
      
      private var m_normalRooms:Vector.<Vector.<BaseTopDownLevel>>;
      
      private var m_specialRooms:Vector.<BaseTopDownLevel>;
      
      private var m_miniMapDataObjects:Vector.<Vector.<MiniMapDataObject>>;
      
      private var m_miniMapPositions:Vector.<Point>;
      
      private var m_miniMapScales:Vector.<Number>;
      
      private var m_eggeryMinionsToGetOnFloor:Vector.<Vector.<int>>;
      
      private var m_eggeryMinionChancePerFloor:Vector.<Vector.<int>>;
      
      private var m_typeEffectivenessArray:Vector.<Vector.<Number>>;
      
      private var m_statStageIncreaseAmounts:Vector.<Number>;
      
      private var m_statStageDecreaseAmounts:Vector.<Number>;
      
      private var m_enemyStatModificationValuesPerFloor:Vector.<Vector.<Number>>;
      
      private var m_currLevel:BaseTopDownLevel;
      
      public function StaticData()
      {
         super();
      }
      
      public function CreateObjects() : void
      {
         this.m_trainerSystem = new TrainerSystem();
         this.m_baseMinionMovesList = new AllBaseMovesContainer();
         this.m_baseTalentTreesList = new BaseTalentTreeContainer();
         this.m_baseMinionsList = new AllMinionsContainer();
         this.SetupTheTrainerInfo();
         this.SetupTextFormats();
         this.SetupLevels();
         this.SetupTypeEffectivenessArray();
         this.SetupStagesArrays();
         this.SetupTheEggeryInfo();
         this.SetupTheEnemyStatBonuses();
      }
      
      public function CreateObjectsAfterDynamicData() : void
      {
         this.m_trainerSystem.CreateFloors();
      }
      
      private function SetupTheTrainerInfo() : void
      {
         this.m_minionLevelsForFloors = new Vector.<int>(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + this.NUM_OF_FLOORS_IN_THE_HARD_TOWER);
         this.m_minionGemsForFloors = new Vector.<int>(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + this.NUM_OF_FLOORS_IN_THE_HARD_TOWER);
         this.m_minionMoneyForFloors = new Vector.<Number>(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + this.NUM_OF_FLOORS_IN_THE_HARD_TOWER);
         this.m_minionDifficultyForFloors = new Vector.<Number>(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + this.NUM_OF_FLOORS_IN_THE_HARD_TOWER);
         this.m_minionLevelsForFloors[0] = 7;
         this.m_minionLevelsForFloors[1] = 10;
         this.m_minionLevelsForFloors[2] = 13;
         this.m_minionLevelsForFloors[3] = 22;
         this.m_minionLevelsForFloors[4] = 15;
         this.m_minionLevelsForFloors[5] = 18;
         this.m_minionLevelsForFloors[6] = 21;
         this.m_minionLevelsForFloors[7] = 24;
         this.m_minionLevelsForFloors[8] = 33;
         this.m_minionLevelsForFloors[9] = 26;
         this.m_minionLevelsForFloors[10] = 29;
         this.m_minionLevelsForFloors[11] = 32;
         this.m_minionLevelsForFloors[12] = 35;
         this.m_minionLevelsForFloors[13] = 41;
         this.m_minionLevelsForFloors[14] = 37;
         this.m_minionLevelsForFloors[15] = 39;
         this.m_minionLevelsForFloors[16] = 41;
         this.m_minionLevelsForFloors[17] = 43;
         this.m_minionLevelsForFloors[18] = 48;
         this.m_minionLevelsForFloors[19] = 45;
         this.m_minionLevelsForFloors[20] = 47;
         this.m_minionLevelsForFloors[21] = 49;
         this.m_minionLevelsForFloors[22] = 50;
         this.m_minionLevelsForFloors[23] = 51;
         this.m_minionLevelsForFloors[24] = 51;
         this.m_minionLevelsForFloors[25] = 52;
         this.m_minionLevelsForFloors[26] = 53;
         this.m_minionLevelsForFloors[27] = 54;
         this.m_minionLevelsForFloors[28] = 55;
         this.m_minionLevelsForFloors[29] = 55;
         this.m_minionLevelsForFloors[30] = 58;
         this.m_minionLevelsForFloors[31] = 58;
         this.m_minionLevelsForFloors[32] = 59;
         this.m_minionLevelsForFloors[33] = 60;
         var _loc1_:int = 34;
         while(_loc1_ < this.m_minionLevelsForFloors.length)
         {
            this.m_minionLevelsForFloors[_loc1_] = 60;
            _loc1_++;
         }
         this.m_minionMoneyForFloors[0] = 7;
         var _loc2_:int = 1;
         while(_loc2_ < this.m_minionMoneyForFloors.length)
         {
            this.m_minionMoneyForFloors[_loc2_] = this.m_minionMoneyForFloors[_loc2_ - 1] * 1.25;
            if(this.m_minionMoneyForFloors[_loc2_] > 2000)
            {
               this.m_minionMoneyForFloors[_loc2_] = 2000;
            }
            _loc2_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this.m_minionGemsForFloors.length)
         {
            this.m_minionGemsForFloors[_loc1_] = 6;
            _loc1_++;
         }
         this.m_minionGemsForFloors[0] = 1;
         this.m_minionGemsForFloors[1] = 1;
         this.m_minionGemsForFloors[2] = 1;
         this.m_minionGemsForFloors[3] = 1;
         this.m_minionGemsForFloors[4] = 1;
         this.m_minionGemsForFloors[5] = 2;
         this.m_minionGemsForFloors[6] = 2;
         this.m_minionGemsForFloors[7] = 2;
         this.m_minionGemsForFloors[8] = 2;
         this.m_minionGemsForFloors[9] = 2;
         this.m_minionGemsForFloors[10] = 3;
         this.m_minionGemsForFloors[11] = 3;
         this.m_minionGemsForFloors[12] = 3;
         this.m_minionGemsForFloors[13] = 3;
         this.m_minionGemsForFloors[14] = 3;
         this.m_minionGemsForFloors[15] = 4;
         this.m_minionGemsForFloors[16] = 4;
         this.m_minionGemsForFloors[17] = 4;
         this.m_minionGemsForFloors[18] = 4;
         this.m_minionGemsForFloors[19] = 4;
         this.m_minionGemsForFloors[20] = 5;
         this.m_minionGemsForFloors[21] = 5;
         this.m_minionGemsForFloors[22] = 5;
         this.m_minionGemsForFloors[23] = 5;
         this.m_minionGemsForFloors[24] = 5;
         this.m_minionGemsForFloors[25] = 5;
         this.m_minionGemsForFloors[26] = 5;
         this.m_minionGemsForFloors[27] = 5;
         this.m_minionGemsForFloors[28] = 5;
         this.m_minionGemsForFloors[29] = 5;
         this.m_minionGemsForFloors[30] = 6;
         var _loc3_:int = 0;
         while(_loc3_ < this.m_minionDifficultyForFloors.length)
         {
            this.m_minionDifficultyForFloors[_loc3_] = 0.5;
            _loc3_++;
         }
         this.m_sponsorURL_part1 = "h";
         this.m_sponsorURL_part2 = "t";
         this.m_sponsorURL_part3 = "p";
         this.m_sponsorURL_part4 = ":";
         this.m_sponsorURL_part5 = "/";
         this.m_sponsorURL_part6 = "so";
         this.m_sponsorURL_part7 = "go";
         this.m_sponsorURL_part8 = "o";
         this.m_sponsorURL_part9 = "d";
         this.m_sponsorURL_part10 = ".";
         this.m_sponsorURL_part11 = "c";
         this.m_sponsorURL_part12 = "m";
         this.m_minionDifficultyForFloors[0] = 100;
         this.m_minionDifficultyForFloors[1] = 5;
         this.m_minionDifficultyForFloors[2] = 4;
         this.m_minionDifficultyForFloors[3] = 3;
         this.m_minionDifficultyForFloors[4] = 2;
         this.m_minionDifficultyForFloors[5] = 1;
         this.m_minionDifficultyForFloors[6] = 0.8;
         this.m_minionDifficultyForFloors[7] = 0.7;
         this.m_minionDifficultyForFloors[8] = 0.5;
      }
      
      public function GetDifficultyModifierForMinion(param1:OwnedMinion) : Number
      {
         if(param1.m_trainerType == TrainerType.NO_TRAINER || param1.m_trainerType == TrainerType.EXPERT_TRAINER)
         {
            return 0;
         }
         var _loc2_:Number = param1.m_currLevel * this.m_minionDifficultyForFloors[Singleton.dynamicData.m_currFloorOfTower];
         if(param1.m_trainerType == TrainerType.HARD_TRAINER)
         {
            _loc2_ /= 2;
         }
         return Math.random() * _loc2_;
      }
      
      private function SetupTheEggeryInfo() : void
      {
         var _loc2_:int = 0;
         this.m_eggeryMinionsToGetOnFloor = new Vector.<Vector.<int>>(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
         this.m_eggeryMinionChancePerFloor = new Vector.<Vector.<int>>(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
         var _loc1_:int = 0;
         while(_loc1_ < this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
         {
            this.m_eggeryMinionsToGetOnFloor[_loc1_] = new Vector.<int>();
            this.m_eggeryMinionChancePerFloor[_loc1_] = new Vector.<int>();
            _loc1_++;
         }
         _loc2_ = 0;
         this.AddMinionToEggery(MinionDexID.DEX_ID_grassSnake_1,60,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_grassGorilla_1,40,_loc2_);
         _loc2_ = 1;
         this.AddMinionToEggery(MinionDexID.DEX_ID_groundMole_1,70,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_groundAttacker_1,30,_loc2_);
         _loc2_ = 2;
         this.AddMinionToEggery(MinionDexID.DEX_ID_waterSeal_1,60,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_waterBird_1,40,_loc2_);
         _loc2_ = 3;
         this.AddMinionToEggery(MinionDexID.DEX_ID_healingHorse_1,50,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_holyMantris_1,30,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_tRex_1,20,_loc2_);
         _loc2_ = 4;
         this.AddMinionToEggery(MinionDexID.DEX_ID_testing_minion,60,_loc2_);
         _loc2_ = 5;
         this.AddMinionToEggery(MinionDexID.DEX_ID_tikiMonkey_2,40,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_ground_plant_2,40,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_racoon_1,20,_loc2_);
         _loc2_ = 6;
         this.AddMinionToEggery(MinionDexID.DEX_ID_fire_frog_2,50,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_demonic_cat_2,30,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_chameleon_1,20,_loc2_);
         _loc2_ = 7;
         this.AddMinionToEggery(MinionDexID.DEX_ID_worm_1,55,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_fire_bear_2,40,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_tortoise_1,5,_loc2_);
         _loc2_ = 8;
         this.AddMinionToEggery(MinionDexID.DEX_ID_holyfox_1,50,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_raptor_2,30,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_robobull_1,20,_loc2_);
         _loc2_ = 9;
         this.AddMinionToEggery(MinionDexID.DEX_ID_testing_minion,60,_loc2_);
         _loc2_ = 10;
         this.AddMinionToEggery(MinionDexID.DEX_ID_Goo_2,50,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_Scorpion_2,50,_loc2_);
         _loc2_ = 11;
         this.AddMinionToEggery(MinionDexID.DEX_ID_DogEel_2,50,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_JellyFish_2,35,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_cheetah_2,15,_loc2_);
         _loc2_ = 12;
         this.AddMinionToEggery(MinionDexID.DEX_ID_Armadillo_2,40,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_AntEater_2,40,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_HummingBird_1,20,_loc2_);
         _loc2_ = 13;
         this.AddMinionToEggery(MinionDexID.DEX_ID_Griffen_2,50,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_RoboShark_1,30,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_DC2Guy_1,20,_loc2_);
         _loc2_ = 14;
         this.AddMinionToEggery(MinionDexID.DEX_ID_testing_minion,60,_loc2_);
         _loc2_ = 15;
         this.AddMinionToEggery(MinionDexID.DEX_ID_EvilEye_2,40,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_Crow_2,35,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_Scarecrow_2,25,_loc2_);
         _loc2_ = 16;
         this.AddMinionToEggery(MinionDexID.DEX_ID_EvilEye_1,15,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_Crow_1,15,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_BlueBell_1,15,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_PinkBell_1,15,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_FireGhost_1,25,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_HolyStrongGuy_1,15,_loc2_);
         _loc2_ = 17;
         this.AddMinionToEggery(MinionDexID.DEX_ID_EvilEye_2,20,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_Crow_2,20,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_SlenderMan_1,25,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_LichBoss_2,35,_loc2_);
         _loc2_ = 18;
         this.AddMinionToEggery(MinionDexID.DEX_ID_IceDeer_1,60,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_BatDemon_1,20,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_UndeadEel_1,20,_loc2_);
         _loc2_ = 19;
         this.AddMinionToEggery(MinionDexID.DEX_ID_testing_minion,60,_loc2_);
         _loc2_ = 20;
         this.AddMinionToEggery(MinionDexID.DEX_ID_demonic_cat_1,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_demonic_cat_2,15,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_iceBird_2,30,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_waterBird_3,15,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_iceTree_2,10,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_healingHorse_1,10,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_holyMantris_1,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_iceBird_1,10,_loc2_);
         _loc2_ = 21;
         this.AddMinionToEggery(MinionDexID.DEX_ID_iceTree_1,10,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_grassSnake_3,25,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_landShark_1,35,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_groundAttacker_2,20,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_flyingGrassSuperMinion_1,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_tRex_2,5,_loc2_);
         _loc2_ = 22;
         this.AddMinionToEggery(MinionDexID.DEX_ID_fire_frog_1,10,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_groundMole_3,35,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_worm_2,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_worm_3,20,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_fire_bear_1,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_fire_bear_2,15,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_tortoise_1,10,_loc2_);
         _loc2_ = 23;
         this.AddMinionToEggery(MinionDexID.DEX_ID_tikiMonkey_1,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_tikiMonkey_2,20,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_ground_plant_1,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_ground_plant_2,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_ground_plant_3,20,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_harpy_1,15,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_holyfox_1,15,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_raptor_1,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_raptor_2,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_robobull_1,5,_loc2_);
         _loc2_ = 24;
         this.AddMinionToEggery(MinionDexID.DEX_ID_testing_minion,60,_loc2_);
         _loc2_ = 25;
         this.AddMinionToEggery(MinionDexID.DEX_ID_DogEel_1,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_DogEel_2,25,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_JellyFish_1,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_JellyFish_2,25,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_Griffen_1,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_Griffen_2,15,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_cheetah_1,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_cheetah_2,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_cheetah_3,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_waterHorse_1,5,_loc2_);
         _loc2_ = 26;
         this.AddMinionToEggery(MinionDexID.DEX_ID_Scorpion_1,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_Goo_1,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_Armadillo_1,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_Armadillo_2,25,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_AntEater_1,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_AntEater_2,25,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_HummingBird_1,25,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_RoboShark_1,5,_loc2_);
         _loc2_ = 27;
         this.AddMinionToEggery(MinionDexID.DEX_ID_BlueBell_1,15,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_PinkBell_1,15,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_HolyStrongGuy_1,20,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_FireGhost_1,25,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_IceDeer_1,10,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_Tiger_2,15,_loc2_);
         _loc2_ = 28;
         this.AddMinionToEggery(MinionDexID.DEX_ID_Crow_2,30,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_Scarecrow_1,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_Scarecrow_2,25,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_LichBoss_1,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_LichBoss_2,25,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_BatDemon_1,5,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_UndeadEel_1,5,_loc2_);
         _loc2_ = 29;
         this.AddMinionToEggery(MinionDexID.DEX_ID_testing_minion,60,_loc2_);
         _loc2_ = 30;
         this.AddMinionToEggery(MinionDexID.DEX_ID_testing_minion,60,_loc2_);
      }
      
      private function AddMinionToEggery(param1:int, param2:int, param3:int) : void
      {
         this.m_eggeryMinionsToGetOnFloor[param3].push(param1);
         this.m_eggeryMinionChancePerFloor[param3].push(param2);
      }
      
      private function SetupStagesArrays() : void
      {
         this.m_statStageIncreaseAmounts = new Vector.<Number>(10);
         this.m_statStageIncreaseAmounts[0] = 1.25;
         this.m_statStageIncreaseAmounts[1] = 1.5;
         this.m_statStageIncreaseAmounts[2] = 1.75;
         this.m_statStageIncreaseAmounts[3] = 2;
         this.m_statStageIncreaseAmounts[4] = 2.25;
         this.m_statStageIncreaseAmounts[5] = 2.5;
         this.m_statStageIncreaseAmounts[6] = 2.75;
         this.m_statStageIncreaseAmounts[7] = 3;
         this.m_statStageIncreaseAmounts[8] = 3.25;
         this.m_statStageIncreaseAmounts[9] = 3.5;
         this.m_statStageDecreaseAmounts = new Vector.<Number>(10);
         this.m_statStageDecreaseAmounts[0] = 0.8;
         this.m_statStageDecreaseAmounts[1] = 0.51;
         this.m_statStageDecreaseAmounts[2] = 0.41;
         this.m_statStageDecreaseAmounts[3] = 0.33;
         this.m_statStageDecreaseAmounts[4] = 0.26;
         this.m_statStageDecreaseAmounts[5] = 0.21;
         this.m_statStageDecreaseAmounts[6] = 0.17;
         this.m_statStageDecreaseAmounts[7] = 0.15;
         this.m_statStageDecreaseAmounts[8] = 0.13;
         this.m_statStageDecreaseAmounts[9] = 0.1;
      }
      
      private function SetupTheEnemyStatBonuses() : void
      {
         this.m_enemyStatModificationValuesPerFloor = new Vector.<Vector.<Number>>(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + this.NUM_OF_FLOORS_IN_THE_HARD_TOWER);
         var _loc1_:int = 0;
         while(_loc1_ < this.m_enemyStatModificationValuesPerFloor.length)
         {
            this.m_enemyStatModificationValuesPerFloor[_loc1_] = new Vector.<Number>();
            _loc1_++;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.m_enemyStatModificationValuesPerFloor.length)
         {
            this.AddEnemyStatIncreaseToFloor_FirstTime(_loc2_,0.05);
            _loc2_++;
         }
         this.AddEnemyStatIncreaseToFloor_NewValues(0,0);
         this.AddEnemyStatIncreaseToFloor_NewValues(1,0);
         this.AddEnemyStatIncreaseToFloor_NewValues(2,0);
         this.AddEnemyStatIncreaseToFloor_NewValues(3,0.05);
         this.AddEnemyStatIncreaseToFloor_NewValues(4,0.05);
         this.AddEnemyStatIncreaseToFloor_NewValues(5,0.05);
         this.AddEnemyStatIncreaseToFloor_NewValues(6,0.05);
         this.AddEnemyStatIncreaseToFloor_NewValues(21,0.05);
         this.AddEnemyStatIncreaseToFloor_NewValues(22,0.052);
         this.AddEnemyStatIncreaseToFloor_NewValues(23,0.054);
         this.AddEnemyStatIncreaseToFloor_NewValues(24,0.056);
         this.AddEnemyStatIncreaseToFloor_NewValues(25,0.06);
         this.AddEnemyStatIncreaseToFloor_NewValues(26,0.065);
         this.AddEnemyStatIncreaseToFloor_NewValues(27,0.067);
         this.AddEnemyStatIncreaseToFloor_NewValues(28,0.07);
         this.AddEnemyStatIncreaseToFloor_NewValues(29,0.075);
         this.AddEnemyStatIncreaseToFloor_NewValues(30,0.08);
         this.AddEnemyStatIncreaseToFloor_FineTuning(31,0.1,0.1,0.12,0.12,0.1);
         this.AddEnemyStatIncreaseToFloor_FineTuning(32,0.12,0.12,0.12,0.12,0.12);
         this.AddEnemyStatIncreaseToFloor_NewValues(33,0.11);
         this.AddEnemyStatIncreaseToFloor_NewValues(34,0.12);
         this.AddEnemyStatIncreaseToFloor_NewValues(35,0.1);
         this.AddEnemyStatIncreaseToFloor_NewValues(36,0.25);
         this.AddEnemyStatIncreaseToFloor_NewValues(37,0.2);
         this.AddEnemyStatIncreaseToFloor_NewValues(38,0.25);
         this.AddEnemyStatIncreaseToFloor_NewValues(39,0.27);
         this.AddEnemyStatIncreaseToFloor_NewValues(40,0.27);
         this.AddEnemyStatIncreaseToFloor_NewValues(41,0.27);
         this.AddEnemyStatIncreaseToFloor_NewValues(42,0.27);
         this.AddEnemyStatIncreaseToFloor_NewValues(43,0.32);
         this.AddEnemyStatIncreaseToFloor_NewValues(44,0.27);
         this.AddEnemyStatIncreaseToFloor_NewValues(45,0.27);
         this.AddEnemyStatIncreaseToFloor_NewValues(46,0.29);
         this.AddEnemyStatIncreaseToFloor_NewValues(47,0.32);
         this.AddEnemyStatIncreaseToFloor_NewValues(48,0.33);
         this.AddEnemyStatIncreaseToFloor_NewValues(49,0.34);
         this.AddEnemyStatIncreaseToFloor_NewValues(50,0.35);
         this.AddEnemyStatIncreaseToFloor_NewValues(51,0.35);
         this.AddEnemyStatIncreaseToFloor_NewValues(52,0.35);
         this.AddEnemyStatIncreaseToFloor_NewValues(53,0.35);
         this.AddEnemyStatIncreaseToFloor_NewValues(54,0.35);
         this.AddEnemyStatIncreaseToFloor_NewValues(55,0.37);
         this.AddEnemyStatIncreaseToFloor_NewValues(56,0.37);
         this.AddEnemyStatIncreaseToFloor_NewValues(57,0.37);
         this.AddEnemyStatIncreaseToFloor_NewValues(58,0.37);
         this.AddEnemyStatIncreaseToFloor_NewValues(59,0.37);
         this.AddEnemyStatIncreaseToFloor_NewValues(60,0.4);
         this.AddEnemyStatIncreaseToFloor_NewValues(61,0.4);
      }
      
      private function AddEnemyStatIncreaseToFloor_FirstTime(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < 5)
         {
            this.m_enemyStatModificationValuesPerFloor[param1].push(param2);
            _loc3_++;
         }
         this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_ENERGY] *= 1.1;
      }
      
      private function AddEnemyStatIncreaseToFloor_FineTuning(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_HEALTH] = param2;
         this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_ENERGY] = param3;
         this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_ATTACK] = param4;
         this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_HEALING] = param5;
         this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_SPEED] = param6;
      }
      
      private function AddEnemyStatIncreaseToFloor_NewValues(param1:int, param2:Number) : void
      {
         this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_HEALTH] = param2;
         this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_ENERGY] = param2 * 1.3;
         this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_ATTACK] = param2;
         this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_HEALING] = param2;
         this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_SPEED] = param2;
      }
      
      public function GetEnemyStatBonusForCurrentFloor(param1:int, param2:OwnedMinion) : Number
      {
         return 1 + this.m_enemyStatModificationValuesPerFloor[Singleton.dynamicData.m_currFloorOfTower][param1] * param2.m_baseMinion.m_numberOfGems;
      }
      
      public function GetMoneyRewardForCurrentFloor() : Number
      {
         return Math.round(this.m_minionMoneyForFloors[Singleton.dynamicData.m_currFloorOfTower]);
      }
      
      public function GetGemTierRewardForCurrentFloor() : int
      {
         return this.m_minionGemsForFloors[Singleton.dynamicData.m_currFloorOfTower];
      }
      
      private function SetupTypeEffectivenessArray() : void
      {
         var _loc2_:int = 0;
         this.m_typeEffectivenessArray = new Vector.<Vector.<Number>>();
         var _loc1_:int = 0;
         while(_loc1_ < MinionType.NUM_OF_MINION_TYPES)
         {
            this.m_typeEffectivenessArray.push(new Vector.<Number>(MinionType.NUM_OF_MINION_TYPES));
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < MinionType.NUM_OF_MINION_TYPES)
         {
            _loc2_ = 0;
            while(_loc2_ < MinionType.NUM_OF_MINION_TYPES)
            {
               this.m_typeEffectivenessArray[_loc1_][_loc2_] = 1;
               _loc2_++;
            }
            _loc1_++;
         }
         this.m_typeEffectivenessArray[MinionType.TYPE_ENERGY][MinionType.TYPE_ENERGY] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_ENERGY][MinionType.TYPE_EARTH] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_ENERGY][MinionType.TYPE_DINO] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_ENERGY][MinionType.TYPE_ROBOT] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_ENERGY][MinionType.TYPE_WATER] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_ENERGY][MinionType.TYPE_FLYING] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_UNDEAD][MinionType.TYPE_UNDEAD] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_UNDEAD][MinionType.TYPE_FIRE] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_UNDEAD][MinionType.TYPE_DEMONIC] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_UNDEAD][MinionType.TYPE_HOLY] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_UNDEAD][MinionType.TYPE_PLANT] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_UNDEAD][MinionType.TYPE_EARTH] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_UNDEAD][MinionType.TYPE_NORMAL] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_FIRE][MinionType.TYPE_FIRE] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_FIRE][MinionType.TYPE_WATER] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_FIRE][MinionType.TYPE_DEMONIC] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_FIRE][MinionType.TYPE_UNDEAD] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_FIRE][MinionType.TYPE_PLANT] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_FIRE][MinionType.TYPE_ROBOT] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_FIRE][MinionType.TYPE_ICE] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_WATER][MinionType.TYPE_ENERGY] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_WATER][MinionType.TYPE_WATER] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_WATER][MinionType.TYPE_HOLY] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_WATER][MinionType.TYPE_PLANT] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_WATER][MinionType.TYPE_DINO] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_WATER][MinionType.TYPE_ROBOT] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_WATER][MinionType.TYPE_FIRE] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_WATER][MinionType.TYPE_DEMONIC] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_WATER][MinionType.TYPE_EARTH] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_ICE][MinionType.TYPE_FIRE] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_ICE][MinionType.TYPE_ICE] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_ICE][MinionType.TYPE_TITAN] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_ICE][MinionType.TYPE_DINO] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_ICE][MinionType.TYPE_PLANT] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_UNDEAD] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_FIRE] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_DEMONIC] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_HOLY] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_PLANT] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_NORMAL] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_UNDEAD] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_FIRE] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_DEMONIC] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_HOLY] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_PLANT] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_NORMAL] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_HOLY][MinionType.TYPE_FLYING] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_HOLY][MinionType.TYPE_HOLY] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_HOLY][MinionType.TYPE_NORMAL] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_HOLY][MinionType.TYPE_UNDEAD] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_HOLY][MinionType.TYPE_DEMONIC] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_HOLY][MinionType.TYPE_TITAN] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_EARTH][MinionType.TYPE_UNDEAD] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_EARTH][MinionType.TYPE_WATER] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_EARTH][MinionType.TYPE_EARTH] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_EARTH][MinionType.TYPE_PLANT] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_EARTH][MinionType.TYPE_ENERGY] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_EARTH][MinionType.TYPE_FIRE] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_EARTH][MinionType.TYPE_FLYING] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_EARTH][MinionType.TYPE_DINO] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_PLANT][MinionType.TYPE_ROBOT] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_PLANT][MinionType.TYPE_FIRE] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_PLANT][MinionType.TYPE_PLANT] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_PLANT][MinionType.TYPE_DINO] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_PLANT][MinionType.TYPE_UNDEAD] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_PLANT][MinionType.TYPE_WATER] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_PLANT][MinionType.TYPE_EARTH] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_FLYING][MinionType.TYPE_ENERGY] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_FLYING][MinionType.TYPE_TITAN] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_FLYING][MinionType.TYPE_WATER] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_FLYING][MinionType.TYPE_ICE] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_FLYING][MinionType.TYPE_PLANT] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_TITAN][MinionType.TYPE_HOLY] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_TITAN][MinionType.TYPE_EARTH] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_TITAN][MinionType.TYPE_ICE] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_TITAN][MinionType.TYPE_TITAN] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_TITAN][MinionType.TYPE_DINO] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_NORMAL][MinionType.TYPE_HOLY] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_NORMAL][MinionType.TYPE_TITAN] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_DINO][MinionType.TYPE_ICE] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_DINO][MinionType.TYPE_EARTH] = this.NOT_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_DINO][MinionType.TYPE_ENERGY] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_DINO][MinionType.TYPE_PLANT] = this.SUPER_EFFECTIVE_MODIFIER;
         this.m_typeEffectivenessArray[MinionType.TYPE_DINO][MinionType.TYPE_ROBOT] = this.SUPER_EFFECTIVE_MODIFIER;
      }
      
      public function GetTrainerMinionLevelFor(param1:int) : int
      {
         return this.m_minionLevelsForFloors[param1];
      }
      
      public function GetCurrentLevel() : BaseTopDownLevel
      {
         return this.m_currLevel;
      }
      
      public function GetCurrentLevelForNextLevel() : BaseTopDownLevel
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:Boolean = false;
         var _loc2_:BaseTopDownLevel = null;
         if(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_currLevel is Lobby)
         {
            _loc1_ = true;
         }
         if(Singleton.dynamicData.m_currTransitionID == SpecialRoom.TOWER_FLOOR_SELECT)
         {
            _loc2_ = this.m_specialRooms[0];
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOffTheMiniMap();
         }
         if(!_loc1_ && Singleton.dynamicData.m_currTransitionID == SpecialRoom.LOBBY_START)
         {
            _loc3_ = Singleton.dynamicData.m_currTransitionID;
            _loc4_ = Singleton.dynamicData.m_currRoomOfTower;
            Singleton.dynamicData.ResetFloorData();
            Singleton.dynamicData.m_currTransitionID = _loc3_;
            Singleton.dynamicData.m_currRoomOfTower = _loc4_;
            if(Singleton.dynamicData.m_isAutoSaveOn)
            {
               Singleton.dynamicData.SaveAllData(Singleton.dynamicData.m_saveSlot);
            }
            _loc2_ = this.m_specialRooms[0];
            Singleton.utility.m_soundController.PlaySound("tower_eggeryDoorClosing",1);
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOffTheMiniMap();
         }
         else if(Singleton.dynamicData.m_currTransitionID == SpecialRoom.LOBBY_ELEVATOR)
         {
            _loc2_ = this.m_specialRooms[0];
            Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOffTheMiniMap();
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.GetCurrentLevelFromFloorAndRoom(Singleton.dynamicData.m_currFloorOfTower,Singleton.dynamicData.m_currRoomOfTower);
         }
         this.m_currLevel = _loc2_;
         return _loc2_;
      }
      
      public function PreBuildRoomsForFloor(param1:int) : void
      {
         if(param1 >= this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
         {
            param1 -= this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.m_normalRooms[param1].length)
         {
            if(this.m_normalRooms[param1][_loc2_].PreLoadSprites())
            {
               this.m_normalRooms[param1][_loc2_].CleanUpSprites();
            }
            _loc2_++;
         }
      }
      
      public function GetCurrentLevelFromFloorAndRoom(param1:int, param2:int) : BaseTopDownLevel
      {
         if(param1 >= this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
         {
            param1 -= this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER;
         }
         return this.m_normalRooms[param1][param2];
      }
      
      public function GetRoomForTransitionID(param1:int) : int
      {
         var _loc2_:int = Singleton.dynamicData.m_currFloorOfTower;
         if(_loc2_ >= this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
         {
            _loc2_ -= this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.m_normalRooms[_loc2_].length)
         {
            if(_loc3_ != Singleton.dynamicData.m_currRoomOfTower)
            {
               if(this.m_normalRooms[_loc2_][_loc3_].DoesHaveRoomTransitionObject(param1))
               {
                  return _loc3_;
               }
            }
            _loc3_++;
         }
         return 0;
      }
      
      private function SetupLevels() : void
      {
         this.m_specialRooms = new Vector.<BaseTopDownLevel>();
         this.m_specialRooms.push(new Lobby());
         this.m_normalRooms = new Vector.<Vector.<BaseTopDownLevel>>();
         this.m_miniMapDataObjects = new Vector.<Vector.<MiniMapDataObject>>();
         this.m_miniMapPositions = new Vector.<Point>(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
         this.m_miniMapScales = new Vector.<Number>(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
         var _loc1_:int = 0;
         while(_loc1_ < this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
         {
            this.m_normalRooms.push(new Vector.<BaseTopDownLevel>());
            this.m_miniMapDataObjects.push(new Vector.<MiniMapDataObject>());
            _loc1_++;
         }
         var _loc2_:int = 0;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_1_EntryHallway));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_1_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_1_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_1_C));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_1_D));
         this.m_normalRooms[_loc2_].push(new Room1_1_expertRoom());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_1_E));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_1_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_1_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_1_H3));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_1_H4));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_1_H0));
         this.m_normalRooms[_loc2_].push(new CourtyardLevel(LevelContainer.Level_1_1_courtyard));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_1_1_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(-16,3);
         this.m_miniMapScales[_loc2_] = 0.62;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",79,24,0,1,false,1.5));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",181,113,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",181,84,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",107,62,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",78,62,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",150,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",157,38,6));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",186,106,7));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor1",128,59,8));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_hori",99,66,9));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",161,29,10));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",186,135,11));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",74,2,12,1,false,1.5));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",157,7,13,0,true));
         _loc2_ = 1;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_2_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_2_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_2_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_2_D));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_2_E));
         this.m_normalRooms[_loc2_].push(new Room1_1_expertRoom());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_2_C));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_2_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_2_H3));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_2_H4));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_1_2_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(12,18);
         this.m_miniMapScales[_loc2_] = 0.65;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",90,80,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",85,59,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",46,14,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",124,59,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",124,88,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",85,14,6));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor2",51,35,7));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",128,80,8));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",90,5,9));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",85,-18,10,0,true));
         _loc2_ = 2;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_3_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_3_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_3_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_3_E));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_3_C));
         this.m_normalRooms[_loc2_].push(new Room1_1_expertRoom());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_3_D));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_3_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_3_H3));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_1_3_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(13,12);
         this.m_miniMapScales[_loc2_] = 0.82;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor3",60,45,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",55,68,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",55,25,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",119,47,3,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",26,25,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",86,25,6));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_hori",47,28,7));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",90,17,8));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",86,-4,9,0,true));
         _loc2_ = 3;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_4_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_4_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_4_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_4_D));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_4_C));
         this.m_normalRooms[_loc2_].push(new Room1_1_expertRoom());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_4_F));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_4_E));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_4_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_4_H3));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_4_H4));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_1_4_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(8,2);
         this.m_miniMapScales[_loc2_] = 0.85;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor4_1",29,7,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",24,23,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",78,52,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",100,73,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",124,52,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",115,65,6,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",23,69,7,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor4_3",18,42,8));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor4_2",100,58,9));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",120,58,10,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",115,38,11,1,true));
         _loc2_ = 4;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_1_gym));
         this.m_miniMapPositions[_loc2_] = new Point(65,36);
         this.m_miniMapScales[_loc2_] = 1;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,0));
         _loc2_ = 5;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_1_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_1_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_1_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_1_C));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_1_D));
         this.m_normalRooms[_loc2_].push(new ExpertRoom_fire());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_1_E));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_1_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_1_H3));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_2_1_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(24,23);
         this.m_miniMapScales[_loc2_] = 0.75;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor5_1",48,66,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",32,69,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",97,69,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",64,47,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",97,26,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",27,4,6));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor5_2",30,24,7));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",31,-4,8));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",27,-24,10,0,true));
         _loc2_ = 6;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_2_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_2_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_2_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_2_C));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_2_D));
         this.m_normalRooms[_loc2_].push(new ExpertRoom_fire());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_2_E));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_2_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_2_H3));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_2_H4));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_2_2_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(0,19);
         this.m_miniMapScales[_loc2_] = 0.8;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",77,80,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",73,59,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",46,36,2,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",116,37,3,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",145,37,4,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",87,15,6));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor6",67,34,7));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_hori",137,41,8,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",91,7,9));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",87,-14,10,0,true));
         _loc2_ = 7;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_3_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_3_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_3_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_3_D));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_3_C));
         this.m_normalRooms[_loc2_].push(new ExpertRoom_fire());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_3_E));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_3_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_3_H3));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_3_H4));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_2_3_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(16,20);
         this.m_miniMapScales[_loc2_] = 0.8;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor7",41,29,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",94,13,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",94,-16,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",78,67,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",65,-16,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",39,20,6));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",99,5,7));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_hori",86,-12,8));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",47,12,9));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",39,-9,10,0,true));
         _loc2_ = 8;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_4_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_4_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_4_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_4_C));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_4_D));
         this.m_normalRooms[_loc2_].push(new ExpertRoom_fire());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_4_E));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_4_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_4_H3));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_2_4_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(22,24);
         this.m_miniMapScales[_loc2_] = 0.75;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor8_1",34,42,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",64,47,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",90,26,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",38,26,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",17,55,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",64,4,6));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor8_2",56,21,7));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",69,-4,8));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",64,-24,9,0,true));
         _loc2_ = 9;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_2_gym));
         this.m_miniMapPositions[_loc2_] = new Point(65,36);
         this.m_miniMapScales[_loc2_] = 1;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,0));
         _loc2_ = 10;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_1_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_1_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_1_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_1_D));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_1_E));
         this.m_normalRooms[_loc2_].push(new ExpertRoom_electric());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_1_F));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_1_C));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_1_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_1_H3));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_1_H4));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_1_H5));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_3_1_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(25,17);
         this.m_miniMapScales[_loc2_] = 0.67;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",41,6,0,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",36,15,1,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",36,62,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",89,62,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",89,91,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",88,13,6));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",63,40,7));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor8_2",55,57,8));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor9",81,32,9));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",92,4,10));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",93,83,11));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",88,-17,12,0,true));
         _loc2_ = 11;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_2_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_2_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_2_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_2_C));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_2_D));
         this.m_normalRooms[_loc2_].push(new ExpertRoom_electric());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_2_F));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_2_E));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_2_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_2_H3));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_2_H4));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_3_2_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(19,28);
         this.m_miniMapScales[_loc2_] = 0.68;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor10",50,19,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",33,23,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",89,23,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",61,45,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",61,74,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",115,-4,6));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",89,0,7,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",66,66,8));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor9",108,15,9));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",120,-12,10));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",115,-33,11,0,true));
         _loc2_ = 12;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_3_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_3_C));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_3_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_3_D));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_3_E));
         this.m_normalRooms[_loc2_].push(new ExpertRoom_electric());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_3_F));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_3_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_3_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_3_H3));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_3_H4));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_3_3_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(0,0);
         this.m_miniMapScales[_loc2_] = 1;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",68,6,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",37,39,1,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",64,39,2,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",92,39,3,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",92,68,4,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,9));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",10,39,6,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",64,15,7));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor11",15,56,8,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",97,60,9,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",18,31,10,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",10,10,11,3,true));
         _loc2_ = 13;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_4_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_4_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_4_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_4_C));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_4_D));
         this.m_normalRooms[_loc2_].push(new ExpertRoom_electric());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_4_E));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_4_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_4_H3));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_4_H4));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_4_H5));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_3_4_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(4,19);
         this.m_miniMapScales[_loc2_] = 1;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_hori",40,50,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",48,46,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",30,10,2,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",30,39,3,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",58,10,4,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",30,39,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",73,20,6));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor9",66,38,7));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",78,12,8));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_hori",50,14,9,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",34,31,10,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",73,-9,11,0,true));
         _loc2_ = 14;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_3_gym));
         this.m_miniMapPositions[_loc2_] = new Point(65,36);
         this.m_miniMapScales[_loc2_] = 1;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,0));
         _loc2_ = 15;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_1_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_1_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_1_C));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_1_D));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_1_E));
         this.m_normalRooms[_loc2_].push(new ExpertRoom_undead());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_1_F));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_1_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_1_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_1_H3));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_1_H4));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_1_H5));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_4_1_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(33,-1);
         this.m_miniMapScales[_loc2_] = 0.7;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",68,7,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",83,56,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",42,56,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",62,97,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",87,97,4,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",16,97,6));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",63,15,7));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor13_1",45,33,8));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor13_2",44,74,9));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor13_3",21,112,10));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",21,90,11));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",16,70,12,0,true));
         _loc2_ = 16;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_2_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_2_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_2_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_2_C));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_2_E));
         this.m_normalRooms[_loc2_].push(new ExpertRoom_undead());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_2_D));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_2_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_2_H3));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_4_2_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(6,11);
         this.m_miniMapScales[_loc2_] = 0.9;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor14",42,42,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",38,26,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",65,26,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",93,26,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",93,-3,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",72,49,6,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",97,18,7));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",76,42,8,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",72,22,9,1,true));
         _loc2_ = 17;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_3_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_3_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_3_C));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_3_D));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_3_E));
         this.m_normalRooms[_loc2_].push(new ExpertRoom_undead());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_3_F));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_3_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_3_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_3_H3));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_3_H4));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_3_H5));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_4_3_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(4,12);
         this.m_miniMapScales[_loc2_] = 0.87;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor15",30,35,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",55,58,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",114,64,2,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",86,21,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",115,21,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",59,21,6));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",86,64,7));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_hori",107,25,8));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",64,13,9));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",90,85,10));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",118,56,11,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",59,-8,12,0,true));
         _loc2_ = 18;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_4_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_4_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_4_C));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_4_D));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_4_E));
         this.m_normalRooms[_loc2_].push(new ExpertRoom_undead());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_4_F));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_4_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_4_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_4_H3));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_4_H4));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_4_4_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(0,0);
         this.m_miniMapScales[_loc2_] = 1;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor16",32,20,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",58,2,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",101,27,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",101,51,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",130,51,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",58,23,6,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",15,50,7));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_hori",122,54,8));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",63,43,9,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",63,16,10,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",58,-4,11,1,true));
         _loc2_ = 19;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_4_gym));
         this.m_miniMapPositions[_loc2_] = new Point(65,36);
         this.m_miniMapScales[_loc2_] = 1;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,0));
         _loc2_ = 20;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_1_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_1_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_1_C));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_1_D));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_1_B));
         this.m_normalRooms[_loc2_].push(new Room1_1_expertRoom());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_1_F));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_1_E));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_1_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_1_H3));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_1_H4));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_5_1_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(0,21);
         this.m_miniMapScales[_loc2_] = 1;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor17",63,26,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",43,30,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",95,28,2,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",98,46,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",15,30,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",59,8,6,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",59,35,7,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_hori",35,34,8));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",64,56,9,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",64,28,10,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",59,-13,11,1,true));
         _loc2_ = 21;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_2_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_2_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_2_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_2_C));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_2_E));
         this.m_normalRooms[_loc2_].push(new Room1_1_expertRoom());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_2_D));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_2_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_2_H3));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_5_2_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(0,0);
         this.m_miniMapScales[_loc2_] = 1;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor18",30,14,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",28,62,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",87,13,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",87,40,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",116,40,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",72,46,6,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_hori",108,44,7));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",75,39,8,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",72,19,9,1,true));
         _loc2_ = 22;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_3_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_3_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_3_C));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_3_E));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_3_B));
         this.m_normalRooms[_loc2_].push(new ExpertRoom_fire());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_3_D));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_3_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_3_H3));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_5_3_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(24,25);
         this.m_miniMapScales[_loc2_] = 0.8;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor19",30,20,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",55,60,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",35,3,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",75,35,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",84,60,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",58,3,6));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_hori",76,61,7));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",59,-5,8));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",58,-25,9,0,true));
         _loc2_ = 23;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_4_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_4_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_4_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_4_D));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_4_E));
         this.m_normalRooms[_loc2_].push(new ExpertRoom_fire());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_4_C));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_4_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_4_H3));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_4_H4));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_5_4_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(33,12);
         this.m_miniMapScales[_loc2_] = 0.62;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",49,-10,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",45,-2,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",48,37,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",49,80,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",49,108,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",89,35,6));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor20",31,18,7));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",54,101,8));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",89,27,9));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",89,6,10,0,true));
         _loc2_ = 24;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_5_gym));
         this.m_miniMapPositions[_loc2_] = new Point(65,36);
         this.m_miniMapScales[_loc2_] = 1;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,0));
         _loc2_ = 25;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_1_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_1_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_1_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_1_D));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_1_C));
         this.m_normalRooms[_loc2_].push(new ExpertRoom_electric());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_1_F));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_1_E));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_1_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_1_H3));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_1_H4));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_1_H5));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_1_H6));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_6_1_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(0,15);
         this.m_miniMapScales[_loc2_] = 0.9;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor10",51,3,0,5));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",28,7,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",28,36,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",97,12,3,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",28,65,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",107,21,6,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",97,64,7,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor21",94,32,8,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",32,28,9));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",32,57,10));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor13_3",66,37,11,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",112,14,12,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",107,-6,13,4,true));
         _loc2_ = 26;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_2_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_2_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_2_E));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_2_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_2_C));
         this.m_normalRooms[_loc2_].push(new ExpertRoom_electric());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_2_D));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_2_F));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_2_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_2_H3));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_6_2_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(48,29);
         this.m_miniMapScales[_loc2_] = 0.52;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor22",0,0,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",35,71,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",69,25,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",24,25,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",35,98,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",24,-15,6));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",92,25,7,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",29,-23,8));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",39,91,9));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",24,-44,10,0,true));
         _loc2_ = 27;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_3_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_3_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_3_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_3_E));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_3_F));
         this.m_normalRooms[_loc2_].push(new ExpertRoom_undead());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_3_G));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_3_C));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_3_D));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_3_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_3_H3));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_3_H4));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_3_H5));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_6_3_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(27,15);
         this.m_miniMapScales[_loc2_] = 0.9;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor23",18,9,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",56,11,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",83,11,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",42,50,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",83,40,4));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",42,51,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",65,50,6,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",-1,38,7));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",28,-11,8));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_hori",76,15,9));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor11",46,67,10));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",70,43,11,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",88,32,12));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",65,23,13,1,true));
         _loc2_ = 28;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_4_H1));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_4_A));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_4_B));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_4_D));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_4_C));
         this.m_normalRooms[_loc2_].push(new ExpertRoom_undead());
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_4_F));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_4_E));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_4_H2));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_4_H3));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_4_H4));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_4_H5));
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_4_H6));
         this.m_normalRooms[_loc2_].push(new BaseEggery(LevelContainer.Level_6_4_Eggery));
         this.m_miniMapPositions[_loc2_] = new Point(-12,-2);
         this.m_miniMapScales[_loc2_] = 1;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor24",45,18,0));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",76,17,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",104,17,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",104,45,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",104,17,4,2));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,5,3));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",75,49,6,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",52,49,7));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_hori",96,22,8));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",109,38,9));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_hori",96,49,10));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hallway_floor11",55,66,11));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_hwaySmall_vert",78,42,12,1));
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",75,22,13,1,true));
         _loc2_ = 29;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_6_gym));
         this.m_miniMapPositions[_loc2_] = new Point(65,36);
         this.m_miniMapScales[_loc2_] = 1;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,0));
         _loc2_ = 30;
         this.m_normalRooms[_loc2_].push(new BaseTopDownLevel(LevelContainer.Level_7_gym));
         this.m_miniMapPositions[_loc2_] = new Point(65,36);
         this.m_miniMapScales[_loc2_] = 1;
         this.m_miniMapDataObjects[_loc2_].push(new MiniMapDataObject("miniMap_room1",0,0,0));
      }
      
      private function SetupTextFormats() : void
      {
         this.m_onInterfaceBarTextFormat = new TextFormat();
         this.m_onInterfaceBarTextFormat.color = 15461355;
         this.m_onInterfaceBarTextFormat.size = 9;
         this.m_onInterfaceBarTextFormat.font = "BurbinCasual";
         this.m_onInterfaceBarTextFormat.align = TextFormatAlign.CENTER;
      }
      
      public function GetMiniMapDataForCurrFloor() : Vector.<MiniMapDataObject>
      {
         if(Singleton.dynamicData.m_currFloorOfTower > 30)
         {
            return this.m_miniMapDataObjects[Singleton.dynamicData.m_currFloorOfTower - 31];
         }
         return this.m_miniMapDataObjects[Singleton.dynamicData.m_currFloorOfTower];
      }
      
      public function GetMiniMapScaleForCurrFloor() : Number
      {
         if(Singleton.dynamicData.m_currFloorOfTower > 30)
         {
            return this.m_miniMapScales[Singleton.dynamicData.m_currFloorOfTower - 31];
         }
         return this.m_miniMapScales[Singleton.dynamicData.m_currFloorOfTower];
      }
      
      public function GetMiniMapPositionForCurrFloor() : Point
      {
         if(Singleton.dynamicData.m_currFloorOfTower > 30)
         {
            return this.m_miniMapPositions[Singleton.dynamicData.m_currFloorOfTower - 31];
         }
         return this.m_miniMapPositions[Singleton.dynamicData.m_currFloorOfTower];
      }
      
      public function GetRandomMinionForFloor(param1:int) : OwnedMinion
      {
         var _loc3_:OwnedMinion = null;
         var _loc2_:Boolean = false;
         if(param1 >= this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
         {
            param1 -= this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER;
            _loc2_ = true;
         }
         var _loc4_:int = Math.random() * 100;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < this.m_eggeryMinionChancePerFloor[param1].length)
         {
            _loc5_ += this.m_eggeryMinionChancePerFloor[param1][_loc7_];
            if(_loc4_ < _loc5_)
            {
               _loc6_ = _loc7_;
               break;
            }
            _loc7_++;
         }
         _loc3_ = new OwnedMinion(this.m_eggeryMinionsToGetOnFloor[param1][_loc6_]);
         var _loc8_:int;
         if((_loc8_ = this.m_minionLevelsForFloors[param1] + Math.random() * 3) > 60)
         {
            _loc8_ = 60;
         }
         if(_loc2_)
         {
            _loc8_ = 55;
         }
         _loc3_.SetLevel(_loc8_);
         return _loc3_;
      }
      
      public function GetBaseMinion(param1:int) : BaseMinion
      {
         return this.m_baseMinionsList.GetBaseMinion(param1);
      }
      
      public function GetBaseMinionMove(param1:int) : BaseMinionMove
      {
         return this.m_baseMinionMovesList.GetMove(param1);
      }
      
      public function GetVisualMinionMove(param1:int) : BaseVisualMove
      {
         var _loc2_:BaseVisualMove = null;
         switch(param1)
         {
            case MinionVisualMoveID.VM_sear:
               _loc2_ = new BaseDownFromTop("mv_fireball");
               _loc2_.SetSounds("battle_hit_thump_splat",1,"battle_fireBall",1);
               BaseDownFromTop(_loc2_).m_extraThroughDistance = 40;
               return _loc2_;
            case MinionVisualMoveID.VM_fire_shot:
               _loc2_ = new BaseDownFromTop("mv_fireball");
               _loc2_.SetSounds("battle_hit_thump_splat",1,"battle_fireBall",1);
               BaseDownFromTop(_loc2_).m_extraThroughDistance = 40;
               return _loc2_;
            case MinionVisualMoveID.VM_rock_throw:
               _loc2_ = new BaseDownFromTop("mv_rock1");
               _loc2_.SetSounds("battle_rockHittingGround",0.5,"battle_whoosh_falling_deepSound",1);
               return _loc2_;
            case MinionVisualMoveID.VM_kings_rush:
               _loc2_ = new BaseDownFromTop("mv_crown");
               _loc2_.SetSounds("battle_rockHittingGround",0.5,"battle_whoosh_falling_deepSound",1);
               return _loc2_;
            case MinionVisualMoveID.VM_rock_slide:
               _loc2_ = new BaseDownFromTop("mv_rock1");
               _loc2_.SetSounds("battle_rockHittingGround",0.3,"battle_whoosh_falling_deepSound",1);
               return _loc2_;
            case MinionVisualMoveID.VM_stone_fall:
               _loc2_ = new BaseDownFromTop("mv_rock2");
               _loc2_.SetSounds("battle_hit_thump_knock",0.8,"battle_whoosh_falling_deepSound",1);
               BaseDownFromTop(_loc2_).m_numberOfObjects = 1;
               return _loc2_;
            case MinionVisualMoveID.VM_cog_fallout:
               _loc2_ = new BaseDownFromTop("mv_cog");
               _loc2_.SetSounds("battle_hit_slap_quick",0.4,"battle_whoosh_highPitch",0.3);
               return _loc2_;
            case MinionVisualMoveID.VM_ancient_force:
               _loc2_ = new BaseDownFromTop("mv_ancientForce");
               _loc2_.SetSounds("battle_hit_thump_knock",0.6,"battle_fireBall",1);
               BaseDownFromTop(_loc2_).m_numberOfObjects = 5;
               BaseDownFromTop(_loc2_).m_impactSpeed = 1;
               return _loc2_;
            case MinionVisualMoveID.VM_fire_bolt:
               _loc2_ = new BaseDownFromTop("mv_fireBolt");
               _loc2_.SetSounds("battle_hit_slap_quick",0.6,"battle_fireBall",0.9);
               return _loc2_;
            case MinionVisualMoveID.VM_hailstone:
               _loc2_ = new BaseDownFromTop("mv_hailstone");
               _loc2_.SetSounds("battle_freezeExplosion",0.2,"battle_whoosh_falling_object",1);
               return _loc2_;
            case MinionVisualMoveID.VM_meteor_strike:
               _loc2_ = new BaseDownFromTop("mv_meteor");
               _loc2_.SetSounds("battle_hit_thump_knock",1,"battle_fireBall",1);
               BaseDownFromTop(_loc2_).m_numberOfObjects = 1;
               return _loc2_;
            case MinionVisualMoveID.VM_penance:
               _loc2_ = new BaseDownFromTop("mv_lightBeam");
               _loc2_.SetSounds("battle_hit_thump_splat",1,"battle_fireBall",1);
               return _loc2_;
            case MinionVisualMoveID.VM_steel_spike:
               _loc2_ = new BaseDownFromTop("mv_steelSpike");
               _loc2_.SetSounds("battle_hit_thump_splat",1,"battle_swipe",1);
               return _loc2_;
            case MinionVisualMoveID.VM_twin_missile:
               _loc2_ = new BaseDownFromTop("mv_missle");
               _loc2_.SetSounds("",1,"battle_whoosh_misslePass",1);
               BaseDownFromTop(_loc2_).m_numberOfObjects = 1;
               return _loc2_;
            case MinionVisualMoveID.VM_timber:
               _loc2_ = new BaseDownFromTop("mv_plank");
               _loc2_.SetSounds("battle_hit_thump_knock",0.8,"battle_whoosh_falling_deepSound",1);
               BaseDownFromTop(_loc2_).m_numberOfObjects = 2;
               return _loc2_;
            case MinionVisualMoveID.VM_death_call:
               _loc2_ = new BaseDownFromTop("mv_bullet");
               _loc2_.SetSounds("battle_hit_splat",0.7,"battle_gunFire",0.3);
               BaseDownFromTop(_loc2_).m_numberOfObjects = 4;
               return _loc2_;
            case MinionVisualMoveID.VM_wild_lance:
               _loc2_ = new BaseDownFromTop("mv_lance");
               _loc2_.SetSounds("battle_hit_thump_splat",1,"battle_swipe",1);
               BaseDownFromTop(_loc2_).m_numberOfObjects = 1;
               return _loc2_;
            case MinionVisualMoveID.VM_wind_lance:
               _loc2_ = new BaseDownFromTop("mv_windLance");
               _loc2_.SetSounds("",1,"battle_whoosh_wind",1);
               BaseDownFromTop(_loc2_).m_delayBetweenObjects = 0.3;
               return _loc2_;
            case MinionVisualMoveID.VM_batch_bolt:
               _loc2_ = new BaseDownFromTop("mv_blueLightningBolt");
               _loc2_.SetSounds("",1,"battle_electric_bolt",1);
               BaseDownFromTop(_loc2_).m_numberOfObjects = 1;
               BaseDownFromTop(_loc2_).m_randomStartTime = 1;
               return _loc2_;
            case MinionVisualMoveID.VM_coldfront:
               _loc2_ = new BaseDownFromTop("mv_snowflake");
               _loc2_.SetSounds("",1,"battle_whoosh_wind",0.25);
               BaseDownFromTop(_loc2_).m_numberOfObjects = 5;
               BaseDownFromTop(_loc2_).m_impactSpeed = 1.5;
               BaseDownFromTop(_loc2_).m_randomStartTime = 1;
               BaseDownFromTop(_loc2_).m_displayImpacts = false;
               return _loc2_;
            case MinionVisualMoveID.VM_rainfall:
               _loc2_ = new BaseDownFromTop("mv_raindrop");
               _loc2_.SetSounds("battle_magic1",0.1,"battle_whoosh_wind",0.1);
               BaseDownFromTop(_loc2_).m_numberOfObjects = 5;
               BaseDownFromTop(_loc2_).m_randomStartTime = 1;
               BaseDownFromTop(_loc2_).m_impactSpeed = 1.5;
               BaseDownFromTop(_loc2_).m_displayImpacts = false;
               return _loc2_;
            case MinionVisualMoveID.VM_sleet:
               _loc2_ = new BaseDownFromTop("mv_snowflake");
               _loc2_.SetSounds("",1,"battle_whoosh_wind",0.3);
               BaseDownFromTop(_loc2_).m_numberOfObjects = 5;
               BaseDownFromTop(_loc2_).m_impactSpeed = 1.5;
               BaseDownFromTop(_loc2_).m_displayImpacts = false;
               return _loc2_;
            case MinionVisualMoveID.VM_thunderstorm:
               _loc2_ = new BaseDownFromTop("mv_lightningBolt");
               _loc2_.SetSounds("",1,"battle_electric_bolt",1);
               BaseDownFromTop(_loc2_).m_numberOfObjects = 1;
               BaseDownFromTop(_loc2_).m_randomStartTime = 1;
               return _loc2_;
            case MinionVisualMoveID.VM_volley:
               _loc2_ = new BaseDownFromTop("mv_downwardAirImpact");
               _loc2_.SetSounds("battle_hit_thump_splat",0.5,"battle_whoosh_wind",0.7);
               BaseDownFromTop(_loc2_).m_randomStartTime = 1;
               return _loc2_;
            case MinionVisualMoveID.VM_burn:
               return new BaseBurnMove("mv_arcFlame");
            case MinionVisualMoveID.VM_flare_up:
               _loc2_ = new BaseBurnMove("mv_flameWithFace");
               _loc2_.SetSounds("",1,"battle_flamethrower",0.75);
               return _loc2_;
            case MinionVisualMoveID.VM_hurricane:
               _loc2_ = new BaseBurnMove("mv_whirlwind");
               _loc2_.SetSounds("",1,"battle_wingsFlapping",1);
               return _loc2_;
            case MinionVisualMoveID.VM_intense_flame:
               return new BaseBurnMove("mv_blueMysticalFlame");
            case MinionVisualMoveID.VM_wildfire:
               _loc2_ = new BaseBurnMove("mv_fireStrip");
               _loc2_.SetSounds("",1,"battle_flamethrower",0.25);
               return _loc2_;
            case MinionVisualMoveID.VM_crazed:
               return new BaseBurnMove("mv_crazed");
            case MinionVisualMoveID.VM_claw:
               _loc2_ = new BaseRotateIntoTheMinionMove("mv_clawNoFur");
               _loc2_.SetSounds("battle_hit_thump_splat",0.9,"battle_whoosh_swipe",0.9);
               return _loc2_;
            case MinionVisualMoveID.VM_crush:
               _loc2_ = new BaseRotateIntoTheMinionMove("mv_purpleFist");
               _loc2_.SetSounds("battle_hit_thump_normal",0.9,"battle_whoosh_punch",0.9);
               return _loc2_;
            case MinionVisualMoveID.VM_demonic_strike:
               _loc2_ = new BaseRotateIntoTheMinionMove("mv_demonFist");
               _loc2_.SetSounds("battle_hit_splat",0.9,"battle_whoosh_punch",0.9);
               BaseRotateIntoTheMinionMove(_loc2_).m_numberOfObjects = 3;
               return _loc2_;
            case MinionVisualMoveID.VM_holy_strike:
               _loc2_ = new BaseRotateIntoTheMinionMove("mv_holyFist");
               _loc2_.SetSounds("battle_hit_thump_knock",0.9,"battle_whoosh_punch",0.9);
               BaseRotateIntoTheMinionMove(_loc2_).m_numberOfObjects = 2;
               return _loc2_;
            case MinionVisualMoveID.VM_phantom_strike:
               _loc2_ = new BaseRotateIntoTheMinionMove("mv_ghostFist");
               _loc2_.SetSounds("battle_hit_splat",0.9,"battle_whoosh_punch",0.9);
               BaseRotateIntoTheMinionMove(_loc2_).m_numberOfObjects = 3;
               return _loc2_;
            case MinionVisualMoveID.VM_fire_bash:
               _loc2_ = new BaseRotateIntoTheMinionMove("mv_fireFist");
               _loc2_.SetSounds("battle_hit_thump_normal",0.9,"battle_fireBall",0.9);
               BaseRotateIntoTheMinionMove(_loc2_).m_numberOfObjects = 3;
               return _loc2_;
            case MinionVisualMoveID.VM_lifeless_touch:
               _loc2_ = new BaseRotateIntoTheMinionMove("mv_skeletonHand");
               _loc2_.SetSounds("battle_blood3",1,"",0.9);
               BaseRotateIntoTheMinionMove(_loc2_).m_impactSpeed = 2.4;
               return _loc2_;
            case MinionVisualMoveID.VM_grassblade:
               _loc2_ = new BaseRotateIntoTheMinionMove("mv_leafSword");
               _loc2_.SetSounds("battle_hit_splat",0.3,"battle_whoosh_sword_swipe",0.7);
               BaseRotateIntoTheMinionMove(_loc2_).m_numberOfObjects = 3;
               return _loc2_;
            case MinionVisualMoveID.VM_titan_slash:
               _loc2_ = new BaseRotateIntoTheMinionMove("mv_titanSword");
               _loc2_.SetSounds("battle_hit_splat",0.3,"battle_whoosh_sword_swipe",0.7);
               BaseRotateIntoTheMinionMove(_loc2_).m_numberOfObjects = 3;
               return _loc2_;
            case MinionVisualMoveID.VM_cleanse_darkness:
               _loc2_ = new BaseRotateIntoTheMinionMove("mv_holyHand");
               _loc2_.SetSounds("",0.9,"battle_magic1",0.4);
               BaseRotateIntoTheMinionMove(_loc2_).m_impactSpeed = 2.4;
               BaseRotateIntoTheMinionMove(_loc2_).m_numberOfObjects = 3;
               BaseRotateIntoTheMinionMove(_loc2_).m_isImpactVisible = false;
               return _loc2_;
            case MinionVisualMoveID.VM_reckless_grasp:
               _loc2_ = new BaseRotateIntoTheMinionMove("mv_dinoClaw");
               _loc2_.SetSounds("battle_hit_slap_quick",0.9,"battle_dinoRoar",0.15);
               BaseRotateIntoTheMinionMove(_loc2_).m_numberOfObjects = 8;
               return _loc2_;
            case MinionVisualMoveID.VM_blood_ritual:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_bloodSymbol");
               _loc2_.SetSounds("battle_ghostWispher2",0.9,"battle_misc1",0.6);
               return _loc2_;
            case MinionVisualMoveID.VM_chosen_earth:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_diamondRocks");
               _loc2_.SetSounds("battle_rockHittingGround",1,"battle_rockHittingGround",0.1);
               BaseFadeDownAndHitMinion(_loc2_).m_displayImpactOnHit = false;
               return _loc2_;
            case MinionVisualMoveID.VM_dread_transfer:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_greenSkull");
               _loc2_.SetSounds("battle_hit_splat",0.9,"",0.05);
               _loc2_.m_mainSound2 = "battle_ghostWispher";
               _loc2_.m_mainSoundVolume2 = 0.9;
               return _loc2_;
            case MinionVisualMoveID.VM_flesh_sacrifice:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_rottenHeart");
               _loc2_.SetSounds("battle_hit_splat",0.9,"",0.1);
               _loc2_.m_mainSound2 = "battle_ghostWispher";
               _loc2_.m_mainSoundVolume2 = 0.9;
               return _loc2_;
            case MinionVisualMoveID.VM_demonic_force:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_goldMask");
               _loc2_.SetSounds("battle_hit_splat",1,"battle_demonicGrowl",0.6);
               return _loc2_;
            case MinionVisualMoveID.VM_earth_barrier:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_stoneBarrier");
               _loc2_.SetSounds("battle_rockHittingGround",1,"battle_rockHittingGround",0.1);
               BaseFadeDownAndHitMinion(_loc2_).m_displayImpactOnHit = false;
               return _loc2_;
            case MinionVisualMoveID.VM_watergize:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_nuclearWater");
               _loc2_.SetSounds("battle_magic1",0.2,"battle_waterSplash",0.07);
               BaseFadeDownAndHitMinion(_loc2_).m_displayImpactOnHit = false;
               return _loc2_;
            case MinionVisualMoveID.VM_energize:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_nuclearWater");
               _loc2_.SetSounds("battle_waterSplash",0.3,"battle_waterSplash",0.07);
               BaseFadeDownAndHitMinion(_loc2_).m_displayImpactOnHit = false;
               return _loc2_;
            case MinionVisualMoveID.VM_invigorate:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_leafYinYang");
               _loc2_.SetSounds("battle_waterSplash",0.3,"battle_waterSplash",0.07);
               BaseFadeDownAndHitMinion(_loc2_).m_displayImpactOnHit = false;
               return _loc2_;
            case MinionVisualMoveID.VM_ice_barrier:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_iceBarrier");
               _loc2_.SetSounds("battle_metalImpact2",0.7,"battle_whoosh_wind",0.3);
               BaseFadeDownAndHitMinion(_loc2_).m_displayImpactOnHit = false;
               return _loc2_;
            case MinionVisualMoveID.VM_ore_drill:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_drill");
               _loc2_.SetSounds("battle_hit_thump_normal",0.9,"battle_metalImpact",0.6);
               return _loc2_;
            case MinionVisualMoveID.VM_ashen_reminder:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_ashenReminder");
               _loc2_.SetSounds("battle_hit_splat",0.9,"battle_ghostWispher",0.3);
               BaseFadeDownAndHitMinion(_loc2_).m_numberUpDownsBeforeImpact = 0;
               return _loc2_;
            case MinionVisualMoveID.VM_peck:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_beak");
               _loc2_.SetSounds("battle_hit_thump_normal",0.8,"battle_whoosh_wind",0.4);
               _loc2_.m_mainSound2 = "battle_whoosh_wind";
               _loc2_.m_mainSoundVolume2 = 1;
               return _loc2_;
            case MinionVisualMoveID.VM_poison_tooth:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_fang");
               _loc2_.SetSounds("battle_hit_thump_splat",1,"battle_misc1",0.4);
               return _loc2_;
            case MinionVisualMoveID.VM_grind:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_pawGrind");
               _loc2_.SetSounds("battle_hit_thump_bounce",1,"",0.9);
               _loc2_.m_mainSound2 = "battle_whoosh_wind";
               _loc2_.m_mainSoundVolume2 = 1;
               BaseFadeDownAndHitMinion(_loc2_).m_numberUpDownsBeforeImpact = 1;
               return _loc2_;
            case MinionVisualMoveID.VM_pound:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_poundFist");
               _loc2_.SetSounds("battle_hit_slap_quick",1,"battle_misc1",0.3);
               return _loc2_;
            case MinionVisualMoveID.VM_soak:
               _loc2_ = new BaseDownFromTop("mv_fallingWater");
               _loc2_.SetSounds("battle_waterSplash",0.9,"battle_whoosh_wind",0.6);
               BaseDownFromTop(_loc2_).m_numberOfObjects = 1;
               return _loc2_;
            case MinionVisualMoveID.VM_static_pummel:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_lightningFist");
               _loc2_.SetSounds("battle_electric_bolt",1,"battle_spark",0.5);
               BaseFadeDownAndHitMinion(_loc2_).m_impactSpeed = 0.2;
               return _loc2_;
            case MinionVisualMoveID.VM_tire:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_tire");
               _loc2_.SetSounds("battle_hit_slap_quick",0.9,"battle_whoosh_falling_deepSound",0.7);
               return _loc2_;
            case MinionVisualMoveID.VM_tree_slam:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_roughFist");
               _loc2_.SetSounds("battle_hit_thump_knock",1,"battle_whoosh_falling_deepSound",0.9);
               BaseFadeDownAndHitMinion(_loc2_).m_impactSpeed = 0.2;
               return _loc2_;
            case MinionVisualMoveID.VM_titan_slam:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_titanFist");
               _loc2_.SetSounds("battle_hit_thump_knock",1,"battle_whoosh_falling_deepSound",0.9);
               BaseFadeDownAndHitMinion(_loc2_).m_impactSpeed = 0.2;
               return _loc2_;
            case MinionVisualMoveID.VM_water_infusion:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_raindropHealSymbol");
               _loc2_.SetSounds("battle_magic1",0.25,"battle_waterSplash",0.15);
               BaseFadeDownAndHitMinion(_loc2_).m_numberUpDownsBeforeImpact = 2;
               return _loc2_;
            case MinionVisualMoveID.VM_waterjet:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_waterJet");
               _loc2_.SetSounds("battle_waterSplash",0.7,"battle_waterSplash",0.4);
               BaseFadeDownAndHitMinion(_loc2_).m_impactSpeed = 1;
               BaseFadeDownAndHitMinion(_loc2_).m_numberUpDownsBeforeImpact = 0;
               return _loc2_;
            case MinionVisualMoveID.VM_water_slam:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_waterFist");
               _loc2_.SetSounds("battle_waterSplash",0.9,"battle_whoosh_wind",0.4);
               BaseFadeDownAndHitMinion(_loc2_).m_impactSpeed = 0.2;
               return _loc2_;
            case MinionVisualMoveID.VM_crusade:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_sword");
               _loc2_.SetSounds("battle_hit_thump_splat",0.9,"",0.3);
               BaseFadeDownAndHitMinion(_loc2_).m_numberUpDownsBeforeImpact = 1;
               _loc2_.m_mainSound2 = "battle_magic1";
               _loc2_.m_mainSoundVolume2 = 0.4;
               return _loc2_;
            case MinionVisualMoveID.VM_spike:
               _loc2_ = new BaseFadeDownAndHitMinion("mv_spikeCluster");
               _loc2_.SetSounds("battle_hit_thump_splat",0.9,"battle_whoosh_highPitch",0.9);
               BaseFadeDownAndHitMinion(_loc2_).m_numberUpDownsBeforeImpact = 0;
               return _loc2_;
            case MinionVisualMoveID.VM_poisonToothPoisonBubbles:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_poisonDrop");
               _loc2_.SetSounds("",0.9,"battle_bubbles",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_numberOfObjects = 3;
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 130;
               BaseFadeOutOfTheMinion(_loc2_).m_finalHangTime = 0.1;
               BaseFadeOutOfTheMinion(_loc2_).m_delayBetweenObjects = 0.3;
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1.5;
               BaseFadeOutOfTheMinion(_loc2_).m_extraXSpacingBetweenObjects = 20;
               BaseFadeOutOfTheMinion(_loc2_).m_xPositionOffset = 10;
               BaseFadeOutOfTheMinion(_loc2_).m_soundVolume = 0.5;
               return _loc2_;
            case MinionVisualMoveID.VM_brilliance:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_radianceArcs");
               _loc2_.SetSounds("",0.9,"battle_whoosh_magic4",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_numberOfObjects = 6;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 30;
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 30;
               return _loc2_;
            case MinionVisualMoveID.VM_deathly_energy:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_reaper");
               _loc2_.SetSounds("",0.9,"battle_ghostWispher2",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 50;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 30;
               return _loc2_;
            case MinionVisualMoveID.VM_dry_ice:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_dryIce");
               _loc2_.SetSounds("",0.9,"battle_freezeExplosion",0.7);
               return _loc2_;
            case MinionVisualMoveID.VM_earth_shield:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_earthShield");
               _loc2_.SetSounds("",0.9,"battle_metalImpact2",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 30;
               return _loc2_;
            case MinionVisualMoveID.VM_metal_shield:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_shield");
               _loc2_.SetSounds("",0.9,"battle_metalImpact2",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 30;
               return _loc2_;
            case MinionVisualMoveID.VM_earthy_fortitude:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_earthlyFortitude");
               _loc2_.SetSounds("",0.9,"battle_magic1",0.3);
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 30;
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 0;
               return _loc2_;
            case MinionVisualMoveID.VM_holy_light:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_yellowLightRays");
               _loc2_.SetSounds("",0.9,"battle_magic1",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 30;
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 0;
               return _loc2_;
            case MinionVisualMoveID.VM_titan_light:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_yellowLightRays");
               _loc2_.SetSounds("",0.9,"battle_magic1",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 30;
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 0;
               return _loc2_;
            case MinionVisualMoveID.VM_hope:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_pinkHands");
               _loc2_.SetSounds("",0.9,"battle_magic1",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 30;
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 30;
               return _loc2_;
            case MinionVisualMoveID.VM_titan_heal:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_titanHeal");
               _loc2_.SetSounds("",0.9,"battle_magic1",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 60;
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 30;
               return _loc2_;
            case MinionVisualMoveID.VM_ice_shield:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_iceShield");
               _loc2_.SetSounds("",0.9,"battle_metalImpact2",0.9);
               return _loc2_;
            case MinionVisualMoveID.VM_resurgence:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_vines");
               _loc2_.SetSounds("",0.9,"battle_magic1",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 30;
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 0;
               return _loc2_;
            case MinionVisualMoveID.VM_inflame:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_inflame");
               _loc2_.SetSounds("",0.9,"battle_fireBall",0.75);
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 30;
               return _loc2_;
            case MinionVisualMoveID.VM_kindle:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_kindle");
               _loc2_.SetSounds("",0.9,"battle_fireBall",0.75);
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 30;
               return _loc2_;
            case MinionVisualMoveID.VM_inner_force:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_dinoHeadPowerUp");
               _loc2_.SetSounds("",0.9,"battle_dinoRoar",0.8);
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 50;
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 30;
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 3.5;
               return _loc2_;
            case MinionVisualMoveID.VM_martyr:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_blueHands");
               _loc2_.SetSounds("",0.9,"battle_whoosh_magic2",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 30;
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 30;
               return _loc2_;
            case MinionVisualMoveID.VM_mystic_ice:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_purpleCrystal");
               _loc2_.SetSounds("",0.9,"battle_magic1",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 30;
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 60;
               return _loc2_;
            case MinionVisualMoveID.VM_touch_fire:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_touchFire");
               _loc2_.SetSounds("",0.9,"battle_fireBall",0.8);
               return _loc2_;
            case MinionVisualMoveID.VM_righteous_zeal:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_goldSword");
               _loc2_.SetSounds("",0.9,"battle_whoosh_magic1",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_numberOfObjects = 3;
               BaseFadeOutOfTheMinion(_loc2_).m_extraXSpacingBetweenObjects = 20;
               BaseFadeOutOfTheMinion(_loc2_).m_xPositionOffset = 25;
               BaseFadeOutOfTheMinion(_loc2_).m_delayBetweenObjects = 0.6;
               return _loc2_;
            case MinionVisualMoveID.VM_nourish:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_handsAndPlant");
               _loc2_.SetSounds("",0.9,"battle_magic1",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 30;
               return _loc2_;
            case MinionVisualMoveID.VM_download:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_binary");
               _loc2_.SetSounds("",0.9,"battle_rayGun",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 330;
               BaseFadeOutOfTheMinion(_loc2_).m_finalHangTime = 0;
               BaseFadeOutOfTheMinion(_loc2_).m_delayBetweenObjects = 0.6;
               BaseFadeOutOfTheMinion(_loc2_).m_numberOfObjects = 3;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 30;
               return _loc2_;
            case MinionVisualMoveID.VM_drain:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_drain");
               _loc2_.SetSounds("",0.9,"battle_whoosh_magic3",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 230;
               BaseFadeOutOfTheMinion(_loc2_).m_finalHangTime = 0;
               BaseFadeOutOfTheMinion(_loc2_).m_delayBetweenObjects = 0.6;
               BaseFadeOutOfTheMinion(_loc2_).m_numberOfObjects = 3;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 30;
               return _loc2_;
            case MinionVisualMoveID.VM_solder:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_sparks");
               _loc2_.SetSounds("",0.9,"battle_spark",1);
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 30;
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = -20;
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1.3;
               BaseFadeOutOfTheMinion(_loc2_).m_riseSpeed = 0.9;
               BaseFadeOutOfTheMinion(_loc2_).m_finalHangTime = 0.1;
               return _loc2_;
            case MinionVisualMoveID.VM_overload:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_staticBurst");
               _loc2_.SetSounds("",0.9,"battle_electric_bolt",1);
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 30;
               BaseFadeOutOfTheMinion(_loc2_).m_isNoRiseActive = true;
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 4.5;
               BaseFadeOutOfTheMinion(_loc2_).m_riseSpeed = 0.7;
               BaseFadeOutOfTheMinion(_loc2_).m_finalHangTime = 0.05;
               return _loc2_;
            case MinionVisualMoveID.VM_serenity:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_lightCircle");
               _loc2_.SetSounds("",0.9,"battle_magic1",0.4);
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 50;
               BaseFadeOutOfTheMinion(_loc2_).m_isNoRiseActive = true;
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1.2;
               return _loc2_;
            case MinionVisualMoveID.VM_overflow:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_fallingWater");
               _loc2_.SetSounds("battle_magic1",0.2,"battle_waterSplash",0.25);
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 50;
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 0;
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1.1;
               return _loc2_;
            case MinionVisualMoveID.VM_cleansing_heal:
               _loc2_ = new BaseShootIntoMinionMoveVisual("mv_healSignGreen");
               _loc2_.SetSounds("",0.25,"battle_magic1",0.15);
               return _loc2_;
            case MinionVisualMoveID.VM_titan_recovery:
               _loc2_ = new BaseShootIntoMinionMoveVisual("mv_healSignGreen");
               _loc2_.SetSounds("",0.25,"battle_magic1",0.15);
               return _loc2_;
            case MinionVisualMoveID.VM_poison_ivy:
               _loc2_ = new BaseShootIntoMinionMoveVisual("mv_leafWithSkull");
               _loc2_.SetSounds("",0.25,"battle_hit_slap_normal",0.1);
               _loc2_.m_mainSound2 = "battle_whoosh_swipe";
               _loc2_.m_mainSoundVolume2 = 0.2;
               return _loc2_;
            case MinionVisualMoveID.VM_regrowth:
               _loc2_ = new BaseShootIntoMinionMoveVisual("mv_sprout");
               _loc2_.SetSounds("",0.25,"battle_magic1",0.15);
               return _loc2_;
            case MinionVisualMoveID.VM_razor_vine:
               _loc2_ = new BaseShootIntoMinionMoveVisual("mv_razorWhip");
               _loc2_.SetSounds("",0.25,"battle_hit_slap_normal",0.1);
               _loc2_.m_mainSound2 = "battle_whoosh_swipe";
               _loc2_.m_mainSoundVolume2 = 0.2;
               BaseShootIntoMinionMoveVisual(_loc2_).m_movementSpeed = 0.35;
               BaseShootIntoMinionMoveVisual(_loc2_).m_hangTime = 0.1;
               return _loc2_;
            case MinionVisualMoveID.VM_prehistoric_bite:
               _loc2_ = new BaseShootIntoMinionMoveVisual("mv_teethSet");
               _loc2_.SetSounds("battle_hit_splat",0.2,"battle_roar",0.08);
               BaseShootIntoMinionMoveVisual(_loc2_).m_allEnterAtTheSameTime = true;
               BaseShootIntoMinionMoveVisual(_loc2_).m_movementSpeed = 0.35;
               BaseShootIntoMinionMoveVisual(_loc2_).m_hangTime = 0.5;
               return _loc2_;
            case MinionVisualMoveID.VM_warmth:
               _loc2_ = new BaseShootIntoMinionMoveVisual("mv_orangeHealthSymbol");
               _loc2_.SetSounds("battle_magic1",0.05,"",0.1);
               _loc2_.m_mainSound2 = "battle_fireBall";
               _loc2_.m_mainSoundVolume2 = 0.15;
               BaseShootIntoMinionMoveVisual(_loc2_).m_allEnterAtTheSameTime = true;
               return _loc2_;
            case MinionVisualMoveID.VM_spore_blast:
               _loc2_ = new BaseShootIntoMinionMoveVisual("mv_spores");
               _loc2_.SetSounds("",0.05,"",0.1);
               _loc2_.m_mainSound2 = "battle_whoosh_wind";
               _loc2_.m_mainSoundVolume2 = 0.15;
               BaseShootIntoMinionMoveVisual(_loc2_).m_allEnterAtTheSameTime = true;
               BaseShootIntoMinionMoveVisual(_loc2_).m_movementSpeed = 0.3;
               BaseShootIntoMinionMoveVisual(_loc2_).m_hangTime = 0.7;
               return _loc2_;
            case MinionVisualMoveID.VM_ice_enclosure:
               _loc2_ = new BaseShootIntoMinionMoveVisual("mv_iceBarrier");
               _loc2_.SetSounds("battle_metalImpact2",0.3,"",0.1);
               _loc2_.m_mainSound2 = "battle_whoosh_punch";
               _loc2_.m_mainSoundVolume2 = 0.1;
               BaseShootIntoMinionMoveVisual(_loc2_).m_masterScale = 0.5;
               BaseShootIntoMinionMoveVisual(_loc2_).m_allEnterAtTheSameTime = true;
               return _loc2_;
            case MinionVisualMoveID.VM_metal_mold:
               _loc2_ = new BaseShootIntoMinionMoveVisual("mv_metalMold");
               _loc2_.SetSounds("battle_metalImpact2",0.3,"",0.1);
               _loc2_.m_mainSound2 = "battle_whoosh_punch";
               _loc2_.m_mainSoundVolume2 = 0.1;
               BaseShootIntoMinionMoveVisual(_loc2_).m_allEnterAtTheSameTime = true;
               return _loc2_;
            case MinionVisualMoveID.VM_alloy_coat:
               _loc2_ = new BaseShootIntoMinionMoveVisual("mv_alloyBall");
               _loc2_.SetSounds("battle_metalImpact2",0.3,"",0.1);
               _loc2_.m_mainSound2 = "battle_whoosh_punch";
               _loc2_.m_mainSoundVolume2 = 0.05;
               BaseShootIntoMinionMoveVisual(_loc2_).m_allEnterAtTheSameTime = true;
               return _loc2_;
            case MinionVisualMoveID.VM_madness:
               _loc2_ = new BaseShootIntoMinionMoveVisual("mv_eyeball");
               _loc2_.SetSounds("",0.3,"battle_ghostWispher",0.45);
               BaseShootIntoMinionMoveVisual(_loc2_).m_hangTime = 0.05;
               BaseShootIntoMinionMoveVisual(_loc2_).m_delayBetweenObjects = 0.08;
               return _loc2_;
            case MinionVisualMoveID.VM_stun:
               _loc2_ = new BaseShootIntoMinionMoveVisual("mv_smallYellowImpact");
               _loc2_.SetSounds("",0.3,"battle_spark",0.4);
               BaseShootIntoMinionMoveVisual(_loc2_).m_hangTime = 0.05;
               BaseShootIntoMinionMoveVisual(_loc2_).m_delayBetweenObjects = 0.08;
               return _loc2_;
            case MinionVisualMoveID.VM_infest:
               _loc2_ = new BaseShootIntoMinionMoveVisual("mv_spider");
               _loc2_.SetSounds("",0.3,"battle_ghostWispher",0.45);
               BaseShootIntoMinionMoveVisual(_loc2_).m_hangTime = 0.05;
               BaseShootIntoMinionMoveVisual(_loc2_).m_delayBetweenObjects = 0.08;
               return _loc2_;
            case MinionVisualMoveID.VM_blood_press:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_bloodPress");
               _loc2_.SetSounds("",0.9,"battle_hit_splat",0.9);
               return _loc2_;
            case MinionVisualMoveID.VM_blow_by:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_swoopingArrows");
               _loc2_.SetSounds("",0.9,"battle_whoosh_swipe",0.9);
               return _loc2_;
            case MinionVisualMoveID.VM_crazed_blast:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_crazyBlast");
               _loc2_.SetSounds("",0.9,"battle_ghostWispher2",0.9);
               return _loc2_;
            case MinionVisualMoveID.VM_charge_blast:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_lightningBlast");
               _loc2_.SetSounds("",0.9,"battle_electric_bolt",1);
               return _loc2_;
            case MinionVisualMoveID.VM_cutting_wind:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_cuttingWind");
               _loc2_.SetSounds("",0.9,"battle_whoosh_swipe",0.9);
               return _loc2_;
            case MinionVisualMoveID.VM_demoralizing_charge:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_tricerotopsHead");
               _loc2_.SetSounds("",0.9,"battle_dinoRoar",0.9);
               return _loc2_;
            case MinionVisualMoveID.VM_fire_blast:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_fireBlast");
               _loc2_.SetSounds("",0.9,"battle_fireBall",1);
               return _loc2_;
            case MinionVisualMoveID.VM_titan_blast:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_titanBlast");
               _loc2_.SetSounds("",0.9,"battle_fireBall",1);
               return _loc2_;
            case MinionVisualMoveID.VM_flurry:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_windBlade");
               _loc2_.SetSounds("",0.9,"battle_whoosh_misslePass",0.9);
               return _loc2_;
            case MinionVisualMoveID.VM_dominate:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_starburst");
               _loc2_.SetSounds("",0.9,"battle_whoosh_misslePass",0.9);
               return _loc2_;
            case MinionVisualMoveID.VM_icy_blast:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_iceBlast");
               _loc2_.SetSounds("",0.9,"battle_freezeExplosion",0.8);
               return _loc2_;
            case MinionVisualMoveID.VM_mud_blast:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_mudBlast");
               _loc2_.SetSounds("",0.9,"battle_blood1",0.35);
               return _loc2_;
            case MinionVisualMoveID.VM_platinum:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_metalPlate");
               _loc2_.SetSounds("",0.9,"battle_metalImpact",1);
               return _loc2_;
            case MinionVisualMoveID.VM_purge:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_blueSwoopingArrows");
               _loc2_.SetSounds("",0.9,"battle_whoosh_swipe",0.9);
               return _loc2_;
            case MinionVisualMoveID.VM_reckless_dash:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_sideDash");
               _loc2_.SetSounds("",0.9,"battle_hit_thump_knock",0.9);
               return _loc2_;
            case MinionVisualMoveID.VM_rock_blast:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_rockBlast");
               _loc2_.SetSounds("",0.9,"battle_earthquake",0.5);
               return _loc2_;
            case MinionVisualMoveID.VM_spark:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_staticBolt");
               _loc2_.SetSounds("",0.9,"battle_spark",1);
               BaseFadeInAndGoThroughMinion(_loc2_).m_moveThroughSpeed = 0.5;
               BaseFadeInAndGoThroughMinion(_loc2_).m_numberOfObjects = 6;
               BaseFadeInAndGoThroughMinion(_loc2_).m_finalHangTime = 0;
               return _loc2_;
            case MinionVisualMoveID.VM_fire_ram:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_fireRam");
               _loc2_.SetSounds("",0.9,"battle_fireBall",0.9);
               return _loc2_;
            case MinionVisualMoveID.VM_righteous_fate:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_blueLightBurst");
               _loc2_.SetSounds("",0.9,"battle_whoosh_magic1",0.9);
               return _loc2_;
            case MinionVisualMoveID.VM_roar:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_soundWaves");
               _loc2_.SetSounds("",0.9,"battle_roar",0.6);
               return _loc2_;
            case MinionVisualMoveID.VM_forceful_heal:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_greenHealHand");
               _loc2_.SetSounds("",0.9,"battle_demonicGrowl",0.5);
               BaseFadeInAndGoThroughMinion(_loc2_).m_moveThroughSpeed = 1.8;
               return _loc2_;
            case MinionVisualMoveID.VM_focused_charge:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_focusedCharge");
               _loc2_.SetSounds("",0.9,"battle_dinoRoar",0.9);
               return _loc2_;
            case MinionVisualMoveID.VM_piercing_charge:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_brokenShield");
               _loc2_.SetSounds("",0.9,"battle_glassBreaking",0.9);
               return _loc2_;
            case MinionVisualMoveID.VM_charge_pass:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_blueHorizontalBolt");
               _loc2_.SetSounds("",0.9,"battle_electric_bolt",0.9);
               return _loc2_;
            case MinionVisualMoveID.VM_slow:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_spiderweb");
               _loc2_.SetSounds("",0.9,"battle_ghostWispher",0.9);
               BaseFadeInAndGoThroughMinion(_loc2_).m_numberOfObjects = 6;
               BaseFadeInAndGoThroughMinion(_loc2_).m_moveThroughSpeed = 1.8;
               BaseFadeInAndGoThroughMinion(_loc2_).m_delayBetweenObjects = 0.4;
               return _loc2_;
            case MinionVisualMoveID.VM_tackle:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_motionArcsYellow");
               _loc2_.SetSounds("",0.9,"battle_hit_thump_normal",0.9);
               BaseFadeInAndGoThroughMinion(_loc2_).m_moveThroughSpeed = 0.5;
               return _loc2_;
            case MinionVisualMoveID.VM_desperation:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_motionArcsYellow");
               _loc2_.SetSounds("",0.9,"battle_hit_thump_normal",0.9);
               BaseFadeInAndGoThroughMinion(_loc2_).m_moveThroughSpeed = 0.5;
               return _loc2_;
            case MinionVisualMoveID.VM_wild_tackle:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_motionArcsBlue");
               _loc2_.SetSounds("",0.9,"battle_hit_thump_knock",0.9);
               BaseFadeInAndGoThroughMinion(_loc2_).m_moveThroughSpeed = 0.5;
               BaseFadeInAndGoThroughMinion(_loc2_).m_numberOfObjects = 3;
               return _loc2_;
            case MinionVisualMoveID.VM_refreshing_wave:
               _loc2_ = new BaseFadeInAndGoThroughMinion("mv_wave");
               _loc2_.SetSounds("",0.9,"battle_waterSplash",0.2);
               BaseFadeInAndGoThroughMinion(_loc2_).m_numberOfObjects = 1;
               BaseFadeInAndGoThroughMinion(_loc2_).m_extraThroughDistance = 20;
               return _loc2_;
            case MinionVisualMoveID.VM_blaze:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_skullAndFlames");
               _loc2_.SetSounds("",0.9,"battle_fireBall",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 20;
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 80;
               BaseFadeOutOfTheMinion(_loc2_).m_riseSpeed = 1.3;
               BaseFadeOutOfTheMinion(_loc2_).m_numOfShakes = 4;
               return _loc2_;
            case MinionVisualMoveID.VM_holy_burn:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_holyBurn");
               _loc2_.SetSounds("",0.9,"battle_fireBall",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 20;
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 80;
               BaseFadeOutOfTheMinion(_loc2_).m_riseSpeed = 1.3;
               BaseFadeOutOfTheMinion(_loc2_).m_numOfShakes = 4;
               return _loc2_;
            case MinionVisualMoveID.VM_demonic_sacrifice:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_demonicSacrifice");
               _loc2_.SetSounds("",0.9,"battle_ghostWispher",0.4);
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 20;
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 80;
               BaseFadeOutOfTheMinion(_loc2_).m_riseSpeed = 1.3;
               BaseFadeOutOfTheMinion(_loc2_).m_numOfShakes = 4;
               return _loc2_;
            case MinionVisualMoveID.VM_lich_burn:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_hornedskull");
               _loc2_.SetSounds("",0.9,"battle_demonicGrowl",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 20;
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 80;
               BaseFadeOutOfTheMinion(_loc2_).m_riseSpeed = 1.3;
               BaseFadeOutOfTheMinion(_loc2_).m_numOfShakes = 4;
               return _loc2_;
            case MinionVisualMoveID.VM_skin_trap:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_bearTrap");
               _loc2_.SetSounds("",0.9,"battle_metalImpact",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = 20;
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 80;
               BaseFadeOutOfTheMinion(_loc2_).m_riseSpeed = 1.3;
               BaseFadeOutOfTheMinion(_loc2_).m_numOfShakes = 4;
               return _loc2_;
            case MinionVisualMoveID.VM_swift_mend:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_leafYinYang");
               _loc2_.SetSounds("",0.9,"battle_magic1",0.8);
               BaseFadeOutOfTheMinion(_loc2_).m_numberOfObjects = 3;
               BaseFadeOutOfTheMinion(_loc2_).m_riseDistance = 130;
               BaseFadeOutOfTheMinion(_loc2_).m_finalHangTime = 0.1;
               BaseFadeOutOfTheMinion(_loc2_).m_delayBetweenObjects = 0.3;
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1.5;
               BaseFadeOutOfTheMinion(_loc2_).m_extraXSpacingBetweenObjects = 20;
               BaseFadeOutOfTheMinion(_loc2_).m_xPositionOffset = 10;
               BaseFadeOutOfTheMinion(_loc2_).m_soundVolume = 0.5;
               BaseFadeOutOfTheMinion(_loc2_).m_numOfShakes = 4;
               return _loc2_;
            case MinionVisualMoveID.VM_blinding_jolt:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_boltEye");
               _loc2_.SetSounds("battle_electric_bolt",0.9,"",0.9);
               _loc2_.m_mainSound2 = "battle_spark";
               _loc2_.m_mainSoundVolume2 = 0.9;
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = -40;
               BaseFadeOutOfTheMinion(_loc2_).m_riseSpeed = 1.3;
               BaseFadeOutOfTheMinion(_loc2_).m_numOfShakes = 4;
               BaseFadeOutOfTheMinion(_loc2_).m_isNoRiseActive = true;
               BaseFadeOutOfTheMinion(_loc2_).m_flashesOnFinish = true;
               return _loc2_;
            case MinionVisualMoveID.VM_bone_chill:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_frozenSkull");
               _loc2_.SetSounds("battle_freezeExplosion",0.45,"",0.9);
               _loc2_.m_mainSound2 = "battle_misc1";
               _loc2_.m_mainSoundVolume2 = 0.9;
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = -40;
               BaseFadeOutOfTheMinion(_loc2_).m_riseSpeed = 1.3;
               BaseFadeOutOfTheMinion(_loc2_).m_numOfShakes = 4;
               BaseFadeOutOfTheMinion(_loc2_).m_isNoRiseActive = true;
               return _loc2_;
            case MinionVisualMoveID.VM_demonic_bargain:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_handsShake");
               _loc2_.SetSounds("battle_magic1",0.9,"battle_ghostWispher",1);
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = -40;
               BaseFadeOutOfTheMinion(_loc2_).m_riseSpeed = 1.3;
               BaseFadeOutOfTheMinion(_loc2_).m_numOfShakes = 4;
               BaseFadeOutOfTheMinion(_loc2_).m_isNoRiseActive = true;
               return _loc2_;
            case MinionVisualMoveID.VM_demoralize:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_eyes");
               _loc2_.SetSounds("",0.9,"battle_ghostWispher2",1);
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = -40;
               BaseFadeOutOfTheMinion(_loc2_).m_riseSpeed = 1.3;
               BaseFadeOutOfTheMinion(_loc2_).m_numOfShakes = 4;
               BaseFadeOutOfTheMinion(_loc2_).m_isNoRiseActive = true;
               return _loc2_;
            case MinionVisualMoveID.VM_evil_eye:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_demonEye");
               _loc2_.SetSounds("",0.9,"battle_ghostWispher2",1);
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = -40;
               BaseFadeOutOfTheMinion(_loc2_).m_riseSpeed = 1.3;
               BaseFadeOutOfTheMinion(_loc2_).m_numOfShakes = 4;
               BaseFadeOutOfTheMinion(_loc2_).m_isNoRiseActive = true;
               return _loc2_;
            case MinionVisualMoveID.VM_fresh_stream:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_stream");
               _loc2_.SetSounds("battle_waterSplash",0.9,"battle_bubbles",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = -40;
               BaseFadeOutOfTheMinion(_loc2_).m_riseSpeed = 1.3;
               BaseFadeOutOfTheMinion(_loc2_).m_numOfShakes = 4;
               BaseFadeOutOfTheMinion(_loc2_).m_isNoRiseActive = true;
               BaseFadeOutOfTheMinion(_loc2_).m_doesImpactMinion = true;
               return _loc2_;
            case MinionVisualMoveID.VM_haunt:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_skeletonGhost");
               _loc2_.SetSounds("",0.9,"battle_ghostWispher",1);
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = -40;
               BaseFadeOutOfTheMinion(_loc2_).m_riseSpeed = 1.3;
               BaseFadeOutOfTheMinion(_loc2_).m_numOfShakes = 4;
               BaseFadeOutOfTheMinion(_loc2_).m_isNoRiseActive = true;
               return _loc2_;
            case MinionVisualMoveID.VM_reflect_damage:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_mirror");
               _loc2_.SetSounds("battle_metalImpact",1,"",0.9);
               _loc2_.m_mainSound2 = "battle_metalImpact";
               _loc2_.m_mainSoundVolume2 = 0.3;
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = -40;
               BaseFadeOutOfTheMinion(_loc2_).m_riseSpeed = 1.3;
               BaseFadeOutOfTheMinion(_loc2_).m_numOfShakes = 4;
               BaseFadeOutOfTheMinion(_loc2_).m_isNoRiseActive = true;
               return _loc2_;
            case MinionVisualMoveID.VM_mortify:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_screamingGhost");
               _loc2_.SetSounds("",0.9,"battle_ghostWispher",1);
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = -40;
               BaseFadeOutOfTheMinion(_loc2_).m_riseSpeed = 1.3;
               BaseFadeOutOfTheMinion(_loc2_).m_numOfShakes = 4;
               BaseFadeOutOfTheMinion(_loc2_).m_isNoRiseActive = true;
               return _loc2_;
            case MinionVisualMoveID.VM_rancid_bite:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_grossMouth");
               _loc2_.SetSounds("battle_blood1",0.9,"battle_ghostWispher2",1);
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = -40;
               BaseFadeOutOfTheMinion(_loc2_).m_riseSpeed = 1.3;
               BaseFadeOutOfTheMinion(_loc2_).m_numOfShakes = 4;
               BaseFadeOutOfTheMinion(_loc2_).m_isNoRiseActive = true;
               BaseFadeOutOfTheMinion(_loc2_).m_doesImpactMinion = true;
               return _loc2_;
            case MinionVisualMoveID.VM_bone_crunch:
               _loc2_ = new BaseFadeOutOfTheMinion("mv_brokenBone");
               _loc2_.SetSounds("battle_blood1",0.9,"battle_dinoRoar",0.9);
               BaseFadeOutOfTheMinion(_loc2_).m_finishingScale = 1;
               BaseFadeOutOfTheMinion(_loc2_).m_yPositionOffset = -40;
               BaseFadeOutOfTheMinion(_loc2_).m_riseSpeed = 1.3;
               BaseFadeOutOfTheMinion(_loc2_).m_numOfShakes = 4;
               BaseFadeOutOfTheMinion(_loc2_).m_isNoRiseActive = true;
               BaseFadeOutOfTheMinion(_loc2_).m_doesImpactMinion = true;
               return _loc2_;
            case MinionVisualMoveID.VM_earthquake:
               _loc2_ = new BaseEarthquakeMoveVisual();
               _loc2_.SetSounds("",0.9,"battle_earthquake",0.7);
               return _loc2_;
            case MinionVisualMoveID.VM_destabilize:
               _loc2_ = new BaseEarthquakeMoveVisual(0.2,5,40);
               _loc2_.SetSounds("",0.9,"battle_earthquake",1);
               return _loc2_;
            case MinionVisualMoveID.VM_stonequake:
               _loc2_ = new BaseEarthquakeMoveVisual(0.05,8,25);
               _loc2_.SetSounds("",0.9,"battle_earthquake",0.8);
               return _loc2_;
            case MinionVisualMoveID.VISUALS_STAT_CHANGE:
               return new BaseStatModifyMove();
            case MinionVisualMoveID.VISUALS_MOVE_MISS:
               return new VisualMoveMiss();
            case MinionVisualMoveID.VISUALS_MOVE_EXHAUST:
               return new VisualMoveExhausted();
            case MinionVisualMoveID.VISUALS_MOVE_CHARGING:
               return new VisualMoveCharging();
            case MinionVisualMoveID.VISUALS_MOVE_FROZEN:
               return new VisualMoveFreeze();
            case MinionVisualMoveID.VISUALS_MOVE_STUNNED:
               return new VisualMoveStunned();
            case MinionVisualMoveID.VISUALS_MOVE_DAMAGE_REFLECTED:
               return new VisualMoveReflectedDamage();
            default:
               return new TestVisualMove();
         }
      }
      
      public function GetStatStageModificationAmount(param1:int) : Number
      {
         if(param1 == 0)
         {
            return 1;
         }
         if(param1 > 0)
         {
            if(param1 > 10)
            {
               param1 = 10;
            }
            return this.m_statStageIncreaseAmounts[param1 - 1];
         }
         if(param1 < -10)
         {
            param1 = -10;
         }
         param1 *= -1;
         return this.m_statStageDecreaseAmounts[param1 - 1];
      }
      
      public function GetGemSellAmount(param1:int) : int
      {
         return this.GetGemBuyAmount(param1) * 0.25;
      }
      
      public function GetGemBuyAmount(param1:int) : int
      {
         var _loc2_:Array = new Array(6,14,31,67,142,296,610,1247,2535,5132);
         return _loc2_[param1 - 1];
      }
      
      public function GetGemCombineCostAmount(param1:int) : int
      {
         var _loc2_:Array = new Array(2,3,5,8,12,18,27,41,62,93);
         return _loc2_[param1 - 1];
      }
      
      public function GetGemTierForShop() : int
      {
         return this.m_minionGemsForFloors[Singleton.dynamicData.GetHighestFloor()];
      }
      
      public function GetFloorsAMinionIsFoundOn(param1:int) : Vector.<int>
      {
         var _loc4_:int = 0;
         var _loc2_:Vector.<int> = new Vector.<int>();
         var _loc3_:int = 0;
         while(_loc3_ < this.m_eggeryMinionsToGetOnFloor.length)
         {
            _loc4_ = 0;
            while(_loc4_ < this.m_eggeryMinionsToGetOnFloor[_loc3_].length)
            {
               if(this.m_eggeryMinionsToGetOnFloor[_loc3_][_loc4_] == param1)
               {
                  _loc2_.push(_loc3_ + 1);
               }
               _loc4_++;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function CalculateEffectivenessModifier(param1:int, param2:int) : Number
      {
         if(param2 == MinionType.TYPE_NONE)
         {
            return 1;
         }
         return this.m_typeEffectivenessArray[param1][param2];
      }
      
      public function CalculateHealingEffectivenessModifier(param1:int, param2:int) : Number
      {
         if(param2 == MinionType.TYPE_NONE)
         {
            return 1;
         }
         if(this.m_typeEffectivenessArray[param1][param2] == this.NOT_EFFECTIVE_MODIFIER)
         {
            return this.SUPER_EFFECTIVE_MODIFIER;
         }
         if(this.m_typeEffectivenessArray[param1][param2] == this.SUPER_EFFECTIVE_MODIFIER)
         {
            return this.NOT_EFFECTIVE_MODIFIER;
         }
         return this.m_typeEffectivenessArray[param1][param2];
      }
      
      public function CalculateDamageOrHealingAmount(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : Number
      {
         var _loc6_:Number = param4;
         var _loc7_:Number = param1 + param2 * Math.random();
         var _loc8_:Number = param3;
         var _loc10_:Number = (_loc10_ = (_loc10_ = (_loc10_ = (_loc10_ = _loc6_ * 3 / 5 + 2) * _loc7_) * _loc8_) * 1) / 3000;
         return Math.ceil(_loc10_);
      }
   }
}
