package PresistentData
{
   import BattleSystems.Visuals.VisualMoves.*;
   import Minions.AllMinionsContainer;
   import Minions.BaseMinion;
   import Minions.BaseTalentTreeContainer;
   import Minions.MinionMove.AllBaseMovesContainer;
   import Minions.MinionMove.BaseMinionMove;
   import Minions.OwnedMinion;
   import States.MinionDexID;
   import States.MinionType;
   import States.SpecialRoom;
   import States.StatType;
   import States.TrainerType;
   import TopDown.Levels.BaseTopDownLevel;
   import TopDown.Levels.Grass.Floor1_1.*;
   import TopDown.Levels.MainTower.Lobby;
   import TopDown.Menus.MiniMap.MiniMapDataObject;
   import TopDown.Trainers.TrainerSystem;
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public function CreateObjects() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.m_trainerSystem = new TrainerSystem();
            this.m_baseMinionMovesList = new AllBaseMovesContainer();
            this.m_baseTalentTreesList = new BaseTalentTreeContainer();
            if(_loc1_ || Boolean(this))
            {
               §§goto(addr46);
            }
            §§goto(addr66);
         }
         addr46:
         this.m_baseMinionsList = new AllMinionsContainer();
         this.SetupTheTrainerInfo();
         if(!(_loc2_ && _loc2_))
         {
            addr66:
            this.SetupTextFormats();
         }
         this.SetupLevels();
         if(!_loc2_)
         {
            this.SetupTypeEffectivenessArray();
         }
         this.SetupStagesArrays();
         this.SetupTheEggeryInfo();
         this.SetupTheEnemyStatBonuses();
      }
      
      public function CreateObjectsAfterDynamicData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Boolean(this)))
         {
            this.m_trainerSystem.CreateFloors();
         }
      }
      
      private function SetupTheTrainerInfo() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         this.m_minionLevelsForFloors = new Vector.<int>(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + this.NUM_OF_FLOORS_IN_THE_HARD_TOWER);
         this.m_minionGemsForFloors = new Vector.<int>(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + this.NUM_OF_FLOORS_IN_THE_HARD_TOWER);
         this.m_minionMoneyForFloors = new Vector.<Number>(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + this.NUM_OF_FLOORS_IN_THE_HARD_TOWER);
         if(_loc5_)
         {
            this.m_minionDifficultyForFloors = new Vector.<Number>(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + this.NUM_OF_FLOORS_IN_THE_HARD_TOWER);
            this.m_minionLevelsForFloors[0] = 7;
            this.m_minionLevelsForFloors[1] = 10;
            if(!(_loc4_ && _loc1_))
            {
               this.m_minionLevelsForFloors[2] = 13;
               if(_loc5_)
               {
                  this.m_minionLevelsForFloors[3] = 22;
                  this.m_minionLevelsForFloors[4] = 15;
                  addr94:
                  this.m_minionLevelsForFloors[5] = 18;
                  if(_loc5_)
                  {
                     this.m_minionLevelsForFloors[6] = 21;
                     if(!(_loc4_ && _loc3_))
                     {
                        this.m_minionLevelsForFloors[7] = 24;
                        addr118:
                        this.m_minionLevelsForFloors[8] = 33;
                        if(!(_loc4_ && _loc3_))
                        {
                           this.m_minionLevelsForFloors[9] = 26;
                           this.m_minionLevelsForFloors[10] = 29;
                           if(!(_loc4_ && _loc1_))
                           {
                              this.m_minionLevelsForFloors[11] = 32;
                              this.m_minionLevelsForFloors[12] = 35;
                              if(_loc5_)
                              {
                                 this.m_minionLevelsForFloors[13] = 41;
                                 addr164:
                                 this.m_minionLevelsForFloors[14] = 37;
                                 if(_loc5_ || _loc3_)
                                 {
                                    addr176:
                                    this.m_minionLevelsForFloors[15] = 39;
                                    if(!_loc4_)
                                    {
                                       this.m_minionLevelsForFloors[16] = 41;
                                       this.m_minionLevelsForFloors[17] = 43;
                                       this.m_minionLevelsForFloors[18] = 48;
                                       this.m_minionLevelsForFloors[19] = 45;
                                       this.m_minionLevelsForFloors[20] = 47;
                                       addr208:
                                       this.m_minionLevelsForFloors[21] = 49;
                                       this.m_minionLevelsForFloors[22] = 50;
                                       this.m_minionLevelsForFloors[23] = 51;
                                       if(!_loc4_)
                                       {
                                          addr225:
                                          this.m_minionLevelsForFloors[24] = 51;
                                          if(_loc5_ || Boolean(this))
                                          {
                                             this.m_minionLevelsForFloors[25] = 52;
                                             if(!(_loc4_ && _loc1_))
                                             {
                                                this.m_minionLevelsForFloors[26] = 53;
                                                this.m_minionLevelsForFloors[27] = 54;
                                                addr259:
                                                this.m_minionLevelsForFloors[28] = 55;
                                                if(_loc5_)
                                                {
                                                   addr266:
                                                   this.m_minionLevelsForFloors[29] = 55;
                                                   this.m_minionLevelsForFloors[30] = 58;
                                                   this.m_minionLevelsForFloors[31] = 58;
                                                }
                                                this.m_minionLevelsForFloors[32] = 59;
                                                this.m_minionLevelsForFloors[33] = 60;
                                             }
                                             var _loc1_:* = 34;
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                if(_loc5_)
                                                {
                                                   if(§§pop() >= this.m_minionLevelsForFloors.length)
                                                   {
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         this.m_minionMoneyForFloors[0] = 7;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      this.m_minionLevelsForFloors[_loc1_] = 60;
                                                      if(!_loc5_)
                                                      {
                                                         continue;
                                                      }
                                                      _loc1_++;
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   break;
                                                }
                                                break;
                                             }
                                             var _loc2_:* = §§pop();
                                             if(_loc5_)
                                             {
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc5_)
                                                   {
                                                      if(§§pop() < this.m_minionMoneyForFloors.length)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(0);
                                                      if(!(_loc4_ && Boolean(_loc1_)))
                                                      {
                                                         _loc1_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(_loc1_);
                                                            if(_loc4_ && _loc2_)
                                                            {
                                                            }
                                                            break loop1;
                                                            addr382:
                                                            this.m_minionGemsForFloors[_loc1_] = 6;
                                                            _loc1_++;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop() >= this.m_minionGemsForFloors.length)
                                                         {
                                                            if(_loc5_ || _loc2_)
                                                            {
                                                               this.m_minionGemsForFloors[0] = 1;
                                                               if(_loc5_ || Boolean(this))
                                                               {
                                                                  this.m_minionGemsForFloors[1] = 1;
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     addr432:
                                                                     this.m_minionGemsForFloors[2] = 1;
                                                                     if(_loc5_ || _loc2_)
                                                                     {
                                                                        this.m_minionGemsForFloors[3] = 1;
                                                                        this.m_minionGemsForFloors[4] = 1;
                                                                        this.m_minionGemsForFloors[5] = 2;
                                                                        if(_loc5_)
                                                                        {
                                                                           this.m_minionGemsForFloors[6] = 2;
                                                                           if(_loc5_)
                                                                           {
                                                                              this.m_minionGemsForFloors[7] = 2;
                                                                              if(_loc5_)
                                                                              {
                                                                                 this.m_minionGemsForFloors[8] = 2;
                                                                                 addr480:
                                                                                 this.m_minionGemsForFloors[9] = 2;
                                                                                 this.m_minionGemsForFloors[10] = 3;
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    this.m_minionGemsForFloors[11] = 3;
                                                                                    addr497:
                                                                                    this.m_minionGemsForFloors[12] = 3;
                                                                                 }
                                                                                 this.m_minionGemsForFloors[13] = 3;
                                                                                 this.m_minionGemsForFloors[14] = 3;
                                                                              }
                                                                              §§goto(addr480);
                                                                           }
                                                                           this.m_minionGemsForFloors[15] = 4;
                                                                           this.m_minionGemsForFloors[16] = 4;
                                                                           if(!_loc4_)
                                                                           {
                                                                              this.m_minionGemsForFloors[17] = 4;
                                                                           }
                                                                           this.m_minionGemsForFloors[18] = 4;
                                                                           addr534:
                                                                           this.m_minionGemsForFloors[19] = 4;
                                                                           this.m_minionGemsForFloors[20] = 5;
                                                                           if(_loc5_ || Boolean(_loc1_))
                                                                           {
                                                                              this.m_minionGemsForFloors[21] = 5;
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr558:
                                                                                 this.m_minionGemsForFloors[22] = 5;
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    this.m_minionGemsForFloors[23] = 5;
                                                                                    this.m_minionGemsForFloors[24] = 5;
                                                                                    if(!(_loc4_ && Boolean(_loc1_)))
                                                                                    {
                                                                                       addr582:
                                                                                       this.m_minionGemsForFloors[25] = 5;
                                                                                       this.m_minionGemsForFloors[26] = 5;
                                                                                       addr592:
                                                                                       this.m_minionGemsForFloors[27] = 5;
                                                                                       if(!(_loc4_ && Boolean(this)))
                                                                                       {
                                                                                          addr604:
                                                                                          this.m_minionGemsForFloors[28] = 5;
                                                                                          if(_loc5_ || Boolean(_loc1_))
                                                                                          {
                                                                                             addr616:
                                                                                             this.m_minionGemsForFloors[29] = 5;
                                                                                             if(_loc5_)
                                                                                             {
                                                                                             }
                                                                                             addr628:
                                                                                             break loop1;
                                                                                          }
                                                                                          this.m_minionGemsForFloors[30] = 6;
                                                                                       }
                                                                                       §§goto(addr628);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr604);
                                                                              }
                                                                              §§goto(addr616);
                                                                           }
                                                                           §§goto(addr558);
                                                                        }
                                                                        §§goto(addr497);
                                                                     }
                                                                     §§goto(addr534);
                                                                  }
                                                                  §§goto(addr592);
                                                               }
                                                               §§goto(addr582);
                                                            }
                                                            §§goto(addr480);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr382);
                                                         }
                                                      }
                                                   }
                                                   break;
                                                }
                                                var _loc3_:* = §§pop();
                                                do
                                                {
                                                   if(_loc3_ < this.m_minionDifficultyForFloors.length)
                                                   {
                                                      continue;
                                                   }
                                                   this.m_sponsorURL_part1 = "h";
                                                   this.m_sponsorURL_part2 = "t";
                                                   this.m_sponsorURL_part3 = "p";
                                                   if(_loc5_)
                                                   {
                                                      this.m_sponsorURL_part4 = ":";
                                                      this.m_sponsorURL_part5 = "/";
                                                      this.m_sponsorURL_part6 = "so";
                                                      if(!(_loc4_ && Boolean(_loc1_)))
                                                      {
                                                         this.m_sponsorURL_part7 = "go";
                                                         this.m_sponsorURL_part8 = "o";
                                                         this.m_sponsorURL_part9 = "d";
                                                         this.m_sponsorURL_part10 = ".";
                                                         if(_loc5_)
                                                         {
                                                            this.m_sponsorURL_part11 = "c";
                                                            break;
                                                         }
                                                         §§goto(addr746);
                                                      }
                                                      §§goto(addr692);
                                                   }
                                                   §§goto(addr736);
                                                }
                                                while(this.m_minionDifficultyForFloors[_loc3_] = 0.5, _loc3_++, _loc5_);
                                                
                                                this.m_sponsorURL_part12 = "m";
                                                addr692:
                                                this.m_minionDifficultyForFloors[0] = 100;
                                                this.m_minionDifficultyForFloors[1] = 5;
                                                this.m_minionDifficultyForFloors[2] = 4;
                                                this.m_minionDifficultyForFloors[3] = 3;
                                                this.m_minionDifficultyForFloors[4] = 2;
                                                this.m_minionDifficultyForFloors[5] = 1;
                                                this.m_minionDifficultyForFloors[6] = 0.8;
                                                if(_loc5_)
                                                {
                                                   addr736:
                                                   this.m_minionDifficultyForFloors[7] = 0.7;
                                                   this.m_minionDifficultyForFloors[8] = 0.5;
                                                }
                                                addr746:
                                                return;
                                             }
                                             §§goto(addr432);
                                          }
                                       }
                                       §§goto(addr259);
                                    }
                                 }
                                 §§goto(addr266);
                              }
                           }
                           §§goto(addr259);
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr225);
                  }
                  §§goto(addr164);
               }
               §§goto(addr208);
            }
            §§goto(addr118);
         }
         §§goto(addr94);
      }
      
      public function GetDifficultyModifierForMinion(param1:OwnedMinion) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1.m_trainerType);
            if(_loc5_ || _loc2_)
            {
               §§push(TrainerType.NO_TRAINER);
               if(_loc5_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_ || Boolean(param1))
                  {
                     if(!§§pop())
                     {
                        if(_loc5_ || Boolean(this))
                        {
                           addr46:
                           §§pop();
                           if(!_loc4_)
                           {
                              §§push(param1.m_trainerType);
                              if(!_loc4_)
                              {
                                 addr56:
                                 if(§§pop() == TrainerType.EXPERT_TRAINER)
                                 {
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(0);
                                       if(!_loc5_)
                                       {
                                          addr77:
                                          §§push(§§pop() * this.m_minionDifficultyForFloors[Singleton.dynamicData.m_currFloorOfTower]);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop());
                                          }
                                          var _loc2_:* = §§pop();
                                          if(_loc5_ || _loc3_)
                                          {
                                             if(param1.m_trainerType == TrainerType.HARD_TRAINER)
                                             {
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   addr114:
                                                   §§push(_loc2_);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop() / 2);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc4_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            addr125:
                                                            §§push(Math.random() * _loc2_);
                                                            if(_loc5_)
                                                            {
                                                               addr131:
                                                               §§push(§§pop());
                                                            }
                                                         }
                                                      }
                                                      return §§pop();
                                                   }
                                                   §§goto(addr131);
                                                }
                                             }
                                             §§goto(addr125);
                                          }
                                          §§goto(addr114);
                                       }
                                    }
                                    else
                                    {
                                       addr75:
                                       §§goto(addr77);
                                       §§push(param1.m_currLevel);
                                    }
                                    §§goto(addr77);
                                 }
                                 §§goto(addr75);
                              }
                              return §§pop();
                           }
                           §§goto(addr75);
                        }
                     }
                     §§goto(addr56);
                  }
                  §§goto(addr46);
               }
               §§goto(addr56);
            }
            §§goto(addr77);
         }
         §§goto(addr75);
      }
      
      private function SetupTheEggeryInfo() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(!_loc3_)
         {
            this.m_eggeryMinionsToGetOnFloor = new Vector.<Vector.<int>>(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
            if(!_loc3_)
            {
               this.m_eggeryMinionChancePerFloor = new Vector.<Vector.<int>>(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
            }
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ < this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER)
            {
               continue;
            }
            if(!_loc3_)
            {
               _loc2_ = 0;
               if(_loc4_ || Boolean(this))
               {
                  this.AddMinionToEggery(MinionDexID.DEX_ID_grassSnake_1,60,_loc2_);
                  this.AddMinionToEggery(MinionDexID.DEX_ID_grassGorilla_1,40,_loc2_);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§push(1);
                     if(!_loc3_)
                     {
                        _loc2_ = §§pop();
                        if(!_loc3_)
                        {
                           this.AddMinionToEggery(MinionDexID.DEX_ID_groundMole_1,70,_loc2_);
                           this.AddMinionToEggery(MinionDexID.DEX_ID_groundAttacker_1,30,_loc2_);
                           _loc2_ = 2;
                           if(_loc4_ || _loc3_)
                           {
                              this.AddMinionToEggery(MinionDexID.DEX_ID_waterSeal_1,60,_loc2_);
                              if(!(_loc3_ && _loc3_))
                              {
                                 this.AddMinionToEggery(MinionDexID.DEX_ID_waterBird_1,40,_loc2_);
                                 §§push(3);
                                 if(!_loc3_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       this.AddMinionToEggery(MinionDexID.DEX_ID_healingHorse_1,50,_loc2_);
                                       this.AddMinionToEggery(MinionDexID.DEX_ID_holyMantris_1,30,_loc2_);
                                       this.AddMinionToEggery(MinionDexID.DEX_ID_tRex_1,20,_loc2_);
                                       if(!_loc3_)
                                       {
                                          §§push(4);
                                          if(_loc4_)
                                          {
                                             _loc2_ = §§pop();
                                             this.AddMinionToEggery(MinionDexID.DEX_ID_testing_minion,60,_loc2_);
                                             if(_loc4_ || Boolean(_loc2_))
                                             {
                                                §§push(5);
                                                if(_loc4_ || Boolean(_loc2_))
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc4_)
                                                   {
                                                      this.AddMinionToEggery(MinionDexID.DEX_ID_tikiMonkey_2,40,_loc2_);
                                                      addr215:
                                                      this.AddMinionToEggery(MinionDexID.DEX_ID_ground_plant_2,40,_loc2_);
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         this.AddMinionToEggery(MinionDexID.DEX_ID_racoon_1,20,_loc2_);
                                                         if(!_loc3_)
                                                         {
                                                            _loc2_ = 6;
                                                            this.AddMinionToEggery(MinionDexID.DEX_ID_fire_frog_2,50,_loc2_);
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               this.AddMinionToEggery(MinionDexID.DEX_ID_demonic_cat_2,30,_loc2_);
                                                               this.AddMinionToEggery(MinionDexID.DEX_ID_chameleon_1,20,_loc2_);
                                                               addr263:
                                                               §§push(7);
                                                               if(!_loc3_)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  this.AddMinionToEggery(MinionDexID.DEX_ID_worm_2,55,_loc2_);
                                                                  this.AddMinionToEggery(MinionDexID.DEX_ID_fire_bear_2,40,_loc2_);
                                                                  this.AddMinionToEggery(MinionDexID.DEX_ID_tortoise_1,5,_loc2_);
                                                                  _loc2_ = 8;
                                                                  if(_loc4_)
                                                                  {
                                                                     this.AddMinionToEggery(MinionDexID.DEX_ID_holyfox_1,50,_loc2_);
                                                                     if(_loc4_)
                                                                     {
                                                                        this.AddMinionToEggery(MinionDexID.DEX_ID_raptor_2,30,_loc2_);
                                                                        this.AddMinionToEggery(MinionDexID.DEX_ID_robobull_1,20,_loc2_);
                                                                        §§push(9);
                                                                        if(!(_loc3_ && Boolean(_loc1_)))
                                                                        {
                                                                           addr317:
                                                                           _loc2_ = §§pop();
                                                                           if(_loc4_)
                                                                           {
                                                                              this.AddMinionToEggery(MinionDexID.DEX_ID_testing_minion,60,_loc2_);
                                                                              _loc2_ = 10;
                                                                              addr328:
                                                                              this.AddMinionToEggery(MinionDexID.DEX_ID_Goo_2,50,_loc2_);
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 this.AddMinionToEggery(MinionDexID.DEX_ID_Scorpion_2,50,_loc2_);
                                                                                 addr347:
                                                                                 _loc2_ = 11;
                                                                                 if(_loc4_ || Boolean(this))
                                                                                 {
                                                                                    this.AddMinionToEggery(MinionDexID.DEX_ID_DogEel_2,50,_loc2_);
                                                                                    this.AddMinionToEggery(MinionDexID.DEX_ID_JellyFish_2,35,_loc2_);
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       addr375:
                                                                                       this.AddMinionToEggery(MinionDexID.DEX_ID_cheetah_2,15,_loc2_);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr383:
                                                                                          _loc2_ = 12;
                                                                                          this.AddMinionToEggery(MinionDexID.DEX_ID_Armadillo_2,40,_loc2_);
                                                                                          this.AddMinionToEggery(MinionDexID.DEX_ID_AntEater_2,40,_loc2_);
                                                                                          if(!(_loc3_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             this.AddMinionToEggery(MinionDexID.DEX_ID_HummingBird_1,20,_loc2_);
                                                                                             _loc2_ = 13;
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                this.AddMinionToEggery(MinionDexID.DEX_ID_Griffen_2,50,_loc2_);
                                                                                                this.AddMinionToEggery(MinionDexID.DEX_ID_RoboShark_1,30,_loc2_);
                                                                                                this.AddMinionToEggery(MinionDexID.DEX_ID_DC2Guy_1,20,_loc2_);
                                                                                                §§push(14);
                                                                                                if(_loc4_ || Boolean(_loc1_))
                                                                                                {
                                                                                                   _loc2_ = §§pop();
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      this.AddMinionToEggery(MinionDexID.DEX_ID_testing_minion,60,_loc2_);
                                                                                                      addr450:
                                                                                                      _loc2_ = 15;
                                                                                                      if(_loc4_ || Boolean(_loc2_))
                                                                                                      {
                                                                                                         this.AddMinionToEggery(MinionDexID.DEX_ID_EvilEye_2,40,_loc2_);
                                                                                                         this.AddMinionToEggery(MinionDexID.DEX_ID_Crow_2,35,_loc2_);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            addr472:
                                                                                                            this.AddMinionToEggery(MinionDexID.DEX_ID_Scarecrow_2,25,_loc2_);
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               addr480:
                                                                                                               _loc2_ = 16;
                                                                                                               if(_loc4_ || Boolean(this))
                                                                                                               {
                                                                                                                  this.AddMinionToEggery(MinionDexID.DEX_ID_EvilEye_1,15,_loc2_);
                                                                                                                  if(_loc4_ || Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     this.AddMinionToEggery(MinionDexID.DEX_ID_Crow_1,15,_loc2_);
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        addr510:
                                                                                                                        this.AddMinionToEggery(MinionDexID.DEX_ID_BlueBell_1,15,_loc2_);
                                                                                                                        this.AddMinionToEggery(MinionDexID.DEX_ID_PinkBell_1,15,_loc2_);
                                                                                                                        this.AddMinionToEggery(MinionDexID.DEX_ID_FireGhost_1,25,_loc2_);
                                                                                                                        this.AddMinionToEggery(MinionDexID.DEX_ID_HolyStrongGuy_1,15,_loc2_);
                                                                                                                        _loc2_ = 17;
                                                                                                                        this.AddMinionToEggery(MinionDexID.DEX_ID_EvilEye_2,20,_loc2_);
                                                                                                                        this.AddMinionToEggery(MinionDexID.DEX_ID_Crow_2,20,_loc2_);
                                                                                                                        this.AddMinionToEggery(MinionDexID.DEX_ID_SlenderMan_1,25,_loc2_);
                                                                                                                        this.AddMinionToEggery(MinionDexID.DEX_ID_LichBoss_2,35,_loc2_);
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           §§push(18);
                                                                                                                           if(_loc4_ || Boolean(_loc2_))
                                                                                                                           {
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                              {
                                                                                                                                 this.AddMinionToEggery(MinionDexID.DEX_ID_IceDeer_1,60,_loc2_);
                                                                                                                              }
                                                                                                                              this.AddMinionToEggery(MinionDexID.DEX_ID_BatDemon_1,20,_loc2_);
                                                                                                                              addr597:
                                                                                                                              this.AddMinionToEggery(MinionDexID.DEX_ID_UndeadEel_1,20,_loc2_);
                                                                                                                              §§push(19);
                                                                                                                           }
                                                                                                                           _loc2_ = §§pop();
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              this.AddMinionToEggery(MinionDexID.DEX_ID_testing_minion,60,_loc2_);
                                                                                                                              addr614:
                                                                                                                              _loc2_ = 20;
                                                                                                                              addr615:
                                                                                                                              this.AddMinionToEggery(MinionDexID.DEX_ID_demonic_cat_1,5,_loc2_);
                                                                                                                              addr621:
                                                                                                                              this.AddMinionToEggery(MinionDexID.DEX_ID_demonic_cat_2,15,_loc2_);
                                                                                                                              this.AddMinionToEggery(MinionDexID.DEX_ID_iceBird_2,30,_loc2_);
                                                                                                                              if(_loc4_ || Boolean(_loc2_))
                                                                                                                              {
                                                                                                                                 this.AddMinionToEggery(MinionDexID.DEX_ID_waterBird_3,15,_loc2_);
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    this.AddMinionToEggery(MinionDexID.DEX_ID_iceTree_2,10,_loc2_);
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    addr977:
                                                                                                                                    _loc2_ = 26;
                                                                                                                                    this.AddMinionToEggery(MinionDexID.DEX_ID_Scorpion_1,5,_loc2_);
                                                                                                                                    this.AddMinionToEggery(MinionDexID.DEX_ID_Goo_1,5,_loc2_);
                                                                                                                                    addr990:
                                                                                                                                    this.AddMinionToEggery(MinionDexID.DEX_ID_Armadillo_1,5,_loc2_);
                                                                                                                                    this.AddMinionToEggery(MinionDexID.DEX_ID_Armadillo_2,25,_loc2_);
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       this.AddMinionToEggery(MinionDexID.DEX_ID_AntEater_1,5,_loc2_);
                                                                                                                                       this.AddMinionToEggery(MinionDexID.DEX_ID_AntEater_2,25,_loc2_);
                                                                                                                                       addr1016:
                                                                                                                                       this.AddMinionToEggery(MinionDexID.DEX_ID_HummingBird_1,25,_loc2_);
                                                                                                                                       this.AddMinionToEggery(MinionDexID.DEX_ID_RoboShark_1,5,_loc2_);
                                                                                                                                       §§push(27);
                                                                                                                                       if(!(_loc3_ && Boolean(_loc2_)))
                                                                                                                                       {
                                                                                                                                          _loc2_ = §§pop();
                                                                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             this.AddMinionToEggery(MinionDexID.DEX_ID_BlueBell_1,15,_loc2_);
                                                                                                                                             if(_loc4_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                this.AddMinionToEggery(MinionDexID.DEX_ID_PinkBell_1,15,_loc2_);
                                                                                                                                                addr1063:
                                                                                                                                                this.AddMinionToEggery(MinionDexID.DEX_ID_HolyStrongGuy_1,20,_loc2_);
                                                                                                                                                this.AddMinionToEggery(MinionDexID.DEX_ID_FireGhost_1,25,_loc2_);
                                                                                                                                                this.AddMinionToEggery(MinionDexID.DEX_ID_IceDeer_1,10,_loc2_);
                                                                                                                                                if(_loc4_ || Boolean(_loc1_))
                                                                                                                                                {
                                                                                                                                                   this.AddMinionToEggery(MinionDexID.DEX_ID_Tiger_2,15,_loc2_);
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      _loc2_ = 28;
                                                                                                                                                      this.AddMinionToEggery(MinionDexID.DEX_ID_Crow_2,30,_loc2_);
                                                                                                                                                      addr1104:
                                                                                                                                                      this.AddMinionToEggery(MinionDexID.DEX_ID_Scarecrow_1,5,_loc2_);
                                                                                                                                                      this.AddMinionToEggery(MinionDexID.DEX_ID_Scarecrow_2,25,_loc2_);
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr1118:
                                                                                                                                                         this.AddMinionToEggery(MinionDexID.DEX_ID_LichBoss_1,5,_loc2_);
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr1126:
                                                                                                                                                            this.AddMinionToEggery(MinionDexID.DEX_ID_LichBoss_2,25,_loc2_);
                                                                                                                                                            this.AddMinionToEggery(MinionDexID.DEX_ID_BatDemon_1,5,_loc2_);
                                                                                                                                                            if(!(_loc3_ && Boolean(_loc2_)))
                                                                                                                                                            {
                                                                                                                                                               addr1145:
                                                                                                                                                               this.AddMinionToEggery(MinionDexID.DEX_ID_UndeadEel_1,5,_loc2_);
                                                                                                                                                               if(_loc3_ && _loc3_)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               addr1167:
                                                                                                                                                               this.AddMinionToEggery(MinionDexID.DEX_ID_testing_minion,60,_loc2_);
                                                                                                                                                               addr1174:
                                                                                                                                                               _loc2_ = 30;
                                                                                                                                                               addr1175:
                                                                                                                                                               this.AddMinionToEggery(MinionDexID.DEX_ID_testing_minion,60,_loc2_);
                                                                                                                                                               addr1181:
                                                                                                                                                               return;
                                                                                                                                                               addr1173:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1181);
                                                                                                                                                         }
                                                                                                                                                         addr1166:
                                                                                                                                                         _loc2_ = 29;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1145);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1167);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1104);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1145);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1166);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1126);
                                                                                                                                    addr976:
                                                                                                                                 }
                                                                                                                                 §§goto(addr1063);
                                                                                                                              }
                                                                                                                              addr881:
                                                                                                                              this.AddMinionToEggery(MinionDexID.DEX_ID_testing_minion,60,_loc2_);
                                                                                                                              if(_loc4_ || Boolean(_loc2_))
                                                                                                                              {
                                                                                                                                 _loc2_ = 25;
                                                                                                                                 if(!(_loc3_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr903:
                                                                                                                                    this.AddMinionToEggery(MinionDexID.DEX_ID_DogEel_1,5,_loc2_);
                                                                                                                                 }
                                                                                                                                 this.AddMinionToEggery(MinionDexID.DEX_ID_DogEel_2,25,_loc2_);
                                                                                                                                 this.AddMinionToEggery(MinionDexID.DEX_ID_JellyFish_1,5,_loc2_);
                                                                                                                                 this.AddMinionToEggery(MinionDexID.DEX_ID_JellyFish_2,25,_loc2_);
                                                                                                                                 if(!(_loc3_ && Boolean(this)))
                                                                                                                                 {
                                                                                                                                    addr934:
                                                                                                                                    this.AddMinionToEggery(MinionDexID.DEX_ID_Griffen_1,5,_loc2_);
                                                                                                                                    this.AddMinionToEggery(MinionDexID.DEX_ID_Griffen_2,15,_loc2_);
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       this.AddMinionToEggery(MinionDexID.DEX_ID_cheetah_1,5,_loc2_);
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          this.AddMinionToEggery(MinionDexID.DEX_ID_cheetah_2,5,_loc2_);
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             addr964:
                                                                                                                                             this.AddMinionToEggery(MinionDexID.DEX_ID_cheetah_3,5,_loc2_);
                                                                                                                                             addr970:
                                                                                                                                             this.AddMinionToEggery(MinionDexID.DEX_ID_waterHorse_1,5,_loc2_);
                                                                                                                                             §§goto(addr976);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1063);
                                                                                                                                       }
                                                                                                                                       §§goto(addr990);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1016);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1145);
                                                                                                                              }
                                                                                                                              §§goto(addr970);
                                                                                                                           }
                                                                                                                           addr738:
                                                                                                                           this.AddMinionToEggery(MinionDexID.DEX_ID_groundMole_3,35,_loc2_);
                                                                                                                           this.AddMinionToEggery(MinionDexID.DEX_ID_worm_1,5,_loc2_);
                                                                                                                           this.AddMinionToEggery(MinionDexID.DEX_ID_worm_2,5,_loc2_);
                                                                                                                           if(_loc4_ || Boolean(_loc1_))
                                                                                                                           {
                                                                                                                              addr763:
                                                                                                                              this.AddMinionToEggery(MinionDexID.DEX_ID_worm_3,20,_loc2_);
                                                                                                                              this.AddMinionToEggery(MinionDexID.DEX_ID_fire_bear_1,5,_loc2_);
                                                                                                                              this.AddMinionToEggery(MinionDexID.DEX_ID_fire_bear_2,15,_loc2_);
                                                                                                                           }
                                                                                                                           this.AddMinionToEggery(MinionDexID.DEX_ID_tortoise_1,10,_loc2_);
                                                                                                                           §§push(23);
                                                                                                                           if(!(_loc3_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              this.AddMinionToEggery(MinionDexID.DEX_ID_tikiMonkey_1,5,_loc2_);
                                                                                                                              addr802:
                                                                                                                              this.AddMinionToEggery(MinionDexID.DEX_ID_tikiMonkey_2,20,_loc2_);
                                                                                                                              this.AddMinionToEggery(MinionDexID.DEX_ID_ground_plant_1,5,_loc2_);
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 this.AddMinionToEggery(MinionDexID.DEX_ID_ground_plant_2,5,_loc2_);
                                                                                                                                 if(_loc4_ || Boolean(_loc1_))
                                                                                                                                 {
                                                                                                                                    this.AddMinionToEggery(MinionDexID.DEX_ID_ground_plant_3,20,_loc2_);
                                                                                                                                    this.AddMinionToEggery(MinionDexID.DEX_ID_harpy_1,15,_loc2_);
                                                                                                                                    this.AddMinionToEggery(MinionDexID.DEX_ID_holyfox_1,15,_loc2_);
                                                                                                                                    this.AddMinionToEggery(MinionDexID.DEX_ID_raptor_1,5,_loc2_);
                                                                                                                                 }
                                                                                                                                 this.AddMinionToEggery(MinionDexID.DEX_ID_raptor_2,5,_loc2_);
                                                                                                                                 if(_loc4_ || Boolean(_loc1_))
                                                                                                                                 {
                                                                                                                                    addr866:
                                                                                                                                    this.AddMinionToEggery(MinionDexID.DEX_ID_robobull_1,5,_loc2_);
                                                                                                                                    if(_loc4_ || Boolean(this))
                                                                                                                                    {
                                                                                                                                       _loc2_ = 24;
                                                                                                                                       §§goto(addr881);
                                                                                                                                    }
                                                                                                                                    §§goto(addr970);
                                                                                                                                 }
                                                                                                                                 §§goto(addr903);
                                                                                                                              }
                                                                                                                              §§goto(addr1104);
                                                                                                                           }
                                                                                                                           §§goto(addr1174);
                                                                                                                        }
                                                                                                                        §§goto(addr964);
                                                                                                                     }
                                                                                                                     §§goto(addr1145);
                                                                                                                  }
                                                                                                                  §§goto(addr964);
                                                                                                               }
                                                                                                               §§goto(addr1145);
                                                                                                            }
                                                                                                            §§goto(addr1118);
                                                                                                         }
                                                                                                         §§goto(addr510);
                                                                                                      }
                                                                                                      §§goto(addr1016);
                                                                                                   }
                                                                                                   addr668:
                                                                                                   this.AddMinionToEggery(MinionDexID.DEX_ID_iceBird_1,10,_loc2_);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      _loc2_ = 21;
                                                                                                      this.AddMinionToEggery(MinionDexID.DEX_ID_iceTree_1,10,_loc2_);
                                                                                                      addr684:
                                                                                                      this.AddMinionToEggery(MinionDexID.DEX_ID_grassSnake_3,25,_loc2_);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         this.AddMinionToEggery(MinionDexID.DEX_ID_landShark_1,35,_loc2_);
                                                                                                         if(_loc4_ || Boolean(this))
                                                                                                         {
                                                                                                            this.AddMinionToEggery(MinionDexID.DEX_ID_groundAttacker_2,20,_loc2_);
                                                                                                            this.AddMinionToEggery(MinionDexID.DEX_ID_flyingGrassSuperMinion_1,5,_loc2_);
                                                                                                            addr717:
                                                                                                            this.AddMinionToEggery(MinionDexID.DEX_ID_tRex_2,5,_loc2_);
                                                                                                            _loc2_ = 22;
                                                                                                            if(_loc4_ || Boolean(_loc2_))
                                                                                                            {
                                                                                                               addr732:
                                                                                                               this.AddMinionToEggery(MinionDexID.DEX_ID_fire_frog_1,5,_loc2_);
                                                                                                               §§goto(addr738);
                                                                                                            }
                                                                                                            §§goto(addr934);
                                                                                                         }
                                                                                                         §§goto(addr1126);
                                                                                                      }
                                                                                                      §§goto(addr732);
                                                                                                   }
                                                                                                   §§goto(addr717);
                                                                                                }
                                                                                                §§goto(addr1118);
                                                                                             }
                                                                                             §§goto(addr866);
                                                                                          }
                                                                                          §§goto(addr510);
                                                                                       }
                                                                                       §§goto(addr763);
                                                                                    }
                                                                                    §§goto(addr615);
                                                                                 }
                                                                                 §§goto(addr763);
                                                                              }
                                                                              §§goto(addr383);
                                                                           }
                                                                           §§goto(addr1175);
                                                                        }
                                                                        §§goto(addr1145);
                                                                     }
                                                                     §§goto(addr866);
                                                                  }
                                                                  §§goto(addr472);
                                                               }
                                                               §§goto(addr977);
                                                            }
                                                            §§goto(addr1173);
                                                         }
                                                         §§goto(addr597);
                                                      }
                                                      §§goto(addr480);
                                                   }
                                                   §§goto(addr375);
                                                }
                                                §§goto(addr1118);
                                             }
                                             §§goto(addr347);
                                          }
                                          §§goto(addr614);
                                       }
                                       §§goto(addr1118);
                                    }
                                    §§goto(addr328);
                                 }
                                 §§goto(addr317);
                              }
                              §§goto(addr215);
                           }
                           §§goto(addr684);
                        }
                        §§goto(addr347);
                     }
                     §§goto(addr450);
                  }
                  §§goto(addr621);
               }
               §§goto(addr802);
            }
            §§goto(addr480);
         }
         this.AddMinionToEggery(MinionDexID.DEX_ID_healingHorse_1,10,_loc2_);
         this.AddMinionToEggery(MinionDexID.DEX_ID_holyMantris_1,5,_loc2_);
         §§goto(addr668);
      }
      
      private function AddMinionToEggery(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && Boolean(param3)))
         {
            this.m_eggeryMinionsToGetOnFloor[param3].push(param1);
            if(!(_loc4_ && Boolean(param1)))
            {
               this.m_eggeryMinionChancePerFloor[param3].push(param2);
            }
         }
      }
      
      private function SetupStagesArrays() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_statStageIncreaseAmounts = new Vector.<Number>(10);
            this.m_statStageIncreaseAmounts[0] = 1.25;
            this.m_statStageIncreaseAmounts[1] = 1.5;
            this.m_statStageIncreaseAmounts[2] = 1.75;
            this.m_statStageIncreaseAmounts[3] = 2;
            if(!(_loc1_ && _loc2_))
            {
               this.m_statStageIncreaseAmounts[4] = 2.25;
               this.m_statStageIncreaseAmounts[5] = 2.5;
               this.m_statStageIncreaseAmounts[6] = 2.75;
               this.m_statStageIncreaseAmounts[7] = 3;
               this.m_statStageIncreaseAmounts[8] = 3.25;
               this.m_statStageIncreaseAmounts[9] = 3.5;
               addr70:
               if(!_loc1_)
               {
                  this.m_statStageDecreaseAmounts = new Vector.<Number>(10);
                  this.m_statStageDecreaseAmounts[0] = 0.8;
                  if(_loc2_)
                  {
                     this.m_statStageDecreaseAmounts[1] = 0.51;
                     if(!_loc1_)
                     {
                        this.m_statStageDecreaseAmounts[2] = 0.41;
                        if(_loc2_)
                        {
                           this.m_statStageDecreaseAmounts[3] = 0.33;
                           this.m_statStageDecreaseAmounts[4] = 0.26;
                        }
                        this.m_statStageDecreaseAmounts[6] = 0.17;
                        this.m_statStageDecreaseAmounts[7] = 0.15;
                        this.m_statStageDecreaseAmounts[8] = 0.13;
                        §§goto(addr132);
                     }
                  }
                  §§goto(addr132);
               }
               this.m_statStageDecreaseAmounts[5] = 0.21;
            }
            addr132:
            if(!(_loc1_ && _loc2_))
            {
               this.m_statStageDecreaseAmounts[9] = 0.1;
            }
            return;
         }
         §§goto(addr70);
      }
      
      private function SetupTheEnemyStatBonuses() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.m_enemyStatModificationValuesPerFloor = new Vector.<Vector.<Number>>(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + this.NUM_OF_FLOORS_IN_THE_HARD_TOWER);
         }
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc4_ && Boolean(this)))
            {
               if(§§pop() < this.m_enemyStatModificationValuesPerFloor.length)
               {
                  this.m_enemyStatModificationValuesPerFloor[_loc1_] = new Vector.<Number>();
                  if(!_loc4_)
                  {
                     _loc1_++;
                     if(_loc3_)
                     {
                        continue;
                     }
                  }
               }
               break;
            }
            break;
         }
         var _loc2_:* = §§pop();
         while(_loc2_ < this.m_enemyStatModificationValuesPerFloor.length)
         {
            this.AddEnemyStatIncreaseToFloor_FirstTime(_loc2_,0.05);
            _loc2_++;
         }
         this.AddEnemyStatIncreaseToFloor_NewValues(0,0);
         if(!(_loc4_ && Boolean(this)))
         {
            this.AddEnemyStatIncreaseToFloor_NewValues(1,0);
            this.AddEnemyStatIncreaseToFloor_NewValues(2,0);
         }
         this.AddEnemyStatIncreaseToFloor_NewValues(3,0.05);
         if(!(_loc4_ && _loc3_))
         {
            this.AddEnemyStatIncreaseToFloor_NewValues(4,0.05);
            this.AddEnemyStatIncreaseToFloor_NewValues(5,0.05);
            this.AddEnemyStatIncreaseToFloor_NewValues(6,0.05);
            this.AddEnemyStatIncreaseToFloor_NewValues(21,0.05);
            this.AddEnemyStatIncreaseToFloor_NewValues(22,0.052);
            this.AddEnemyStatIncreaseToFloor_NewValues(23,0.054);
            this.AddEnemyStatIncreaseToFloor_NewValues(24,0.056);
            this.AddEnemyStatIncreaseToFloor_NewValues(25,0.06);
            if(!_loc4_)
            {
               this.AddEnemyStatIncreaseToFloor_NewValues(26,0.065);
               this.AddEnemyStatIncreaseToFloor_NewValues(27,0.067);
               this.AddEnemyStatIncreaseToFloor_NewValues(28,0.07);
               this.AddEnemyStatIncreaseToFloor_NewValues(29,0.075);
               if(!_loc4_)
               {
                  this.AddEnemyStatIncreaseToFloor_NewValues(30,0.08);
                  this.AddEnemyStatIncreaseToFloor_FineTuning(31,0.1,0.1,0.12,0.12,0.1);
                  if(!(_loc4_ && _loc2_))
                  {
                     addr179:
                     this.AddEnemyStatIncreaseToFloor_FineTuning(32,0.12,0.12,0.12,0.12,0.12);
                     this.AddEnemyStatIncreaseToFloor_NewValues(33,0.11);
                     this.AddEnemyStatIncreaseToFloor_NewValues(34,0.12);
                     if(_loc3_)
                     {
                        this.AddEnemyStatIncreaseToFloor_NewValues(35,0.1);
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           this.AddEnemyStatIncreaseToFloor_NewValues(36,0.25);
                           this.AddEnemyStatIncreaseToFloor_NewValues(37,0.2);
                           addr216:
                           this.AddEnemyStatIncreaseToFloor_NewValues(38,0.25);
                           this.AddEnemyStatIncreaseToFloor_NewValues(39,0.27);
                           addr224:
                           this.AddEnemyStatIncreaseToFloor_NewValues(40,0.27);
                           if(!_loc4_)
                           {
                              this.AddEnemyStatIncreaseToFloor_NewValues(41,0.27);
                              this.AddEnemyStatIncreaseToFloor_NewValues(42,0.27);
                              addr238:
                              this.AddEnemyStatIncreaseToFloor_NewValues(43,0.32);
                              this.AddEnemyStatIncreaseToFloor_NewValues(44,0.27);
                              if(!_loc4_)
                              {
                                 this.AddEnemyStatIncreaseToFloor_NewValues(45,0.27);
                                 if(!_loc4_)
                                 {
                                    this.AddEnemyStatIncreaseToFloor_NewValues(46,0.29);
                                    this.AddEnemyStatIncreaseToFloor_NewValues(47,0.32);
                                    if(_loc3_)
                                    {
                                       this.AddEnemyStatIncreaseToFloor_NewValues(48,0.33);
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          this.AddEnemyStatIncreaseToFloor_NewValues(49,0.34);
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             this.AddEnemyStatIncreaseToFloor_NewValues(50,0.35);
                                             this.AddEnemyStatIncreaseToFloor_NewValues(51,0.35);
                                             addr294:
                                             this.AddEnemyStatIncreaseToFloor_NewValues(52,0.35);
                                             this.AddEnemyStatIncreaseToFloor_NewValues(53,0.35);
                                             if(_loc3_ || Boolean(this))
                                             {
                                                §§goto(addr309);
                                             }
                                             §§goto(addr319);
                                          }
                                          §§goto(addr294);
                                       }
                                       §§goto(addr309);
                                    }
                                    §§goto(addr294);
                                 }
                                 §§goto(addr323);
                              }
                           }
                           §§goto(addr315);
                        }
                        §§goto(addr238);
                     }
                     §§goto(addr224);
                  }
                  §§goto(addr216);
               }
               §§goto(addr179);
            }
            addr309:
            this.AddEnemyStatIncreaseToFloor_NewValues(54,0.35);
            if(!_loc4_)
            {
               addr315:
               this.AddEnemyStatIncreaseToFloor_NewValues(55,0.37);
               addr319:
               this.AddEnemyStatIncreaseToFloor_NewValues(56,0.37);
               addr323:
               this.AddEnemyStatIncreaseToFloor_NewValues(57,0.37);
               this.AddEnemyStatIncreaseToFloor_NewValues(58,0.37);
            }
            this.AddEnemyStatIncreaseToFloor_NewValues(59,0.37);
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               this.AddEnemyStatIncreaseToFloor_NewValues(60,0.4);
            }
            this.AddEnemyStatIncreaseToFloor_NewValues(61,0.4);
            return;
         }
         §§goto(addr294);
      }
      
      private function AddEnemyStatIncreaseToFloor_FirstTime(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= 5)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_ENERGY] *= 1.1;
                  break;
               }
               break;
            }
            this.m_enemyStatModificationValuesPerFloor[param1].push(param2);
            if(_loc5_)
            {
               _loc3_++;
               if(_loc4_ && Boolean(_loc3_))
               {
                  break;
               }
            }
         }
      }
      
      private function AddEnemyStatIncreaseToFloor_FineTuning(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_HEALTH] = param2;
            if(_loc7_)
            {
               this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_ENERGY] = param3;
               if(_loc7_ || Boolean(this))
               {
                  addr47:
                  this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_ATTACK] = param4;
                  if(!(_loc8_ && Boolean(param3)))
                  {
                     this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_HEALING] = param5;
                     if(_loc7_)
                     {
                        this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_SPEED] = param6;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      private function AddEnemyStatIncreaseToFloor_NewValues(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_HEALTH] = param2;
            if(_loc4_ || Boolean(this))
            {
               this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_ENERGY] = param2 * 1.3;
               if(!_loc3_)
               {
                  this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_ATTACK] = param2;
                  if(!_loc3_)
                  {
                     addr72:
                     this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_HEALING] = param2;
                     if(_loc4_ || Boolean(param1))
                     {
                     }
                     §§goto(addr95);
                  }
               }
               this.m_enemyStatModificationValuesPerFloor[param1][StatType.STAT_SPEED] = param2;
               addr95:
               return;
            }
         }
         §§goto(addr72);
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc4_)
         {
            this.m_typeEffectivenessArray = new Vector.<Vector.<Number>>();
         }
         var _loc1_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(MinionType.NUM_OF_MINION_TYPES);
               if(_loc4_ || Boolean(this))
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(0);
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_ = §§pop();
                        while(true)
                        {
                           §§push(_loc1_);
                           loop2:
                           while(true)
                           {
                              §§push(MinionType.NUM_OF_MINION_TYPES);
                              addr127:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    this.m_typeEffectivenessArray[MinionType.TYPE_ENERGY][MinionType.TYPE_ENERGY] = this.NOT_EFFECTIVE_MODIFIER;
                                    this.m_typeEffectivenessArray[MinionType.TYPE_ENERGY][MinionType.TYPE_EARTH] = this.NOT_EFFECTIVE_MODIFIER;
                                    this.m_typeEffectivenessArray[MinionType.TYPE_ENERGY][MinionType.TYPE_DINO] = this.NOT_EFFECTIVE_MODIFIER;
                                    if(!_loc3_)
                                    {
                                       this.m_typeEffectivenessArray[MinionType.TYPE_ENERGY][MinionType.TYPE_ROBOT] = this.SUPER_EFFECTIVE_MODIFIER;
                                       this.m_typeEffectivenessArray[MinionType.TYPE_ENERGY][MinionType.TYPE_WATER] = this.SUPER_EFFECTIVE_MODIFIER;
                                       if(_loc4_)
                                       {
                                          this.m_typeEffectivenessArray[MinionType.TYPE_ENERGY][MinionType.TYPE_FLYING] = this.SUPER_EFFECTIVE_MODIFIER;
                                          this.m_typeEffectivenessArray[MinionType.TYPE_UNDEAD][MinionType.TYPE_UNDEAD] = this.NOT_EFFECTIVE_MODIFIER;
                                          if(_loc4_)
                                          {
                                             this.m_typeEffectivenessArray[MinionType.TYPE_UNDEAD][MinionType.TYPE_FIRE] = this.NOT_EFFECTIVE_MODIFIER;
                                             this.m_typeEffectivenessArray[MinionType.TYPE_UNDEAD][MinionType.TYPE_DEMONIC] = this.NOT_EFFECTIVE_MODIFIER;
                                             this.m_typeEffectivenessArray[MinionType.TYPE_UNDEAD][MinionType.TYPE_HOLY] = this.NOT_EFFECTIVE_MODIFIER;
                                             this.m_typeEffectivenessArray[MinionType.TYPE_UNDEAD][MinionType.TYPE_PLANT] = this.NOT_EFFECTIVE_MODIFIER;
                                             this.m_typeEffectivenessArray[MinionType.TYPE_UNDEAD][MinionType.TYPE_EARTH] = this.SUPER_EFFECTIVE_MODIFIER;
                                             this.m_typeEffectivenessArray[MinionType.TYPE_UNDEAD][MinionType.TYPE_NORMAL] = this.SUPER_EFFECTIVE_MODIFIER;
                                             this.m_typeEffectivenessArray[MinionType.TYPE_FIRE][MinionType.TYPE_FIRE] = this.NOT_EFFECTIVE_MODIFIER;
                                             this.m_typeEffectivenessArray[MinionType.TYPE_FIRE][MinionType.TYPE_WATER] = this.NOT_EFFECTIVE_MODIFIER;
                                             if(!_loc3_)
                                             {
                                                this.m_typeEffectivenessArray[MinionType.TYPE_FIRE][MinionType.TYPE_DEMONIC] = this.NOT_EFFECTIVE_MODIFIER;
                                                break;
                                             }
                                             §§goto(addr727);
                                          }
                                          addr346:
                                          this.m_typeEffectivenessArray[MinionType.TYPE_WATER][MinionType.TYPE_WATER] = this.NOT_EFFECTIVE_MODIFIER;
                                          this.m_typeEffectivenessArray[MinionType.TYPE_WATER][MinionType.TYPE_HOLY] = this.NOT_EFFECTIVE_MODIFIER;
                                          this.m_typeEffectivenessArray[MinionType.TYPE_WATER][MinionType.TYPE_PLANT] = this.NOT_EFFECTIVE_MODIFIER;
                                          if(!_loc3_)
                                          {
                                             this.m_typeEffectivenessArray[MinionType.TYPE_WATER][MinionType.TYPE_DINO] = this.NOT_EFFECTIVE_MODIFIER;
                                             if(_loc4_)
                                             {
                                                this.m_typeEffectivenessArray[MinionType.TYPE_WATER][MinionType.TYPE_ROBOT] = this.SUPER_EFFECTIVE_MODIFIER;
                                                this.m_typeEffectivenessArray[MinionType.TYPE_WATER][MinionType.TYPE_FIRE] = this.SUPER_EFFECTIVE_MODIFIER;
                                                if(_loc4_)
                                                {
                                                   this.m_typeEffectivenessArray[MinionType.TYPE_WATER][MinionType.TYPE_DEMONIC] = this.SUPER_EFFECTIVE_MODIFIER;
                                                   addr422:
                                                   this.m_typeEffectivenessArray[MinionType.TYPE_WATER][MinionType.TYPE_EARTH] = this.SUPER_EFFECTIVE_MODIFIER;
                                                   this.m_typeEffectivenessArray[MinionType.TYPE_ICE][MinionType.TYPE_FIRE] = this.NOT_EFFECTIVE_MODIFIER;
                                                   if(!_loc3_)
                                                   {
                                                      this.m_typeEffectivenessArray[MinionType.TYPE_ICE][MinionType.TYPE_ICE] = this.NOT_EFFECTIVE_MODIFIER;
                                                      if(!_loc3_)
                                                      {
                                                         this.m_typeEffectivenessArray[MinionType.TYPE_ICE][MinionType.TYPE_TITAN] = this.SUPER_EFFECTIVE_MODIFIER;
                                                         this.m_typeEffectivenessArray[MinionType.TYPE_ICE][MinionType.TYPE_DINO] = this.SUPER_EFFECTIVE_MODIFIER;
                                                         addr476:
                                                         this.m_typeEffectivenessArray[MinionType.TYPE_ICE][MinionType.TYPE_PLANT] = this.SUPER_EFFECTIVE_MODIFIER;
                                                         if(!(_loc3_ && Boolean(_loc1_)))
                                                         {
                                                            this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_UNDEAD] = this.NOT_EFFECTIVE_MODIFIER;
                                                            this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_FIRE] = this.NOT_EFFECTIVE_MODIFIER;
                                                            this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_DEMONIC] = this.NOT_EFFECTIVE_MODIFIER;
                                                            this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_HOLY] = this.SUPER_EFFECTIVE_MODIFIER;
                                                            addr540:
                                                            this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_PLANT] = this.SUPER_EFFECTIVE_MODIFIER;
                                                            this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_NORMAL] = this.SUPER_EFFECTIVE_MODIFIER;
                                                            if(!(_loc3_ && Boolean(_loc2_)))
                                                            {
                                                               this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_UNDEAD] = this.NOT_EFFECTIVE_MODIFIER;
                                                               if(_loc4_)
                                                               {
                                                                  this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_FIRE] = this.NOT_EFFECTIVE_MODIFIER;
                                                                  this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_DEMONIC] = this.NOT_EFFECTIVE_MODIFIER;
                                                                  this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_HOLY] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                  this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_PLANT] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                  if(_loc4_)
                                                                  {
                                                                     this.m_typeEffectivenessArray[MinionType.TYPE_DEMONIC][MinionType.TYPE_NORMAL] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                     this.m_typeEffectivenessArray[MinionType.TYPE_HOLY][MinionType.TYPE_FLYING] = this.NOT_EFFECTIVE_MODIFIER;
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        this.m_typeEffectivenessArray[MinionType.TYPE_HOLY][MinionType.TYPE_HOLY] = this.NOT_EFFECTIVE_MODIFIER;
                                                                     }
                                                                     §§goto(addr837);
                                                                  }
                                                                  this.m_typeEffectivenessArray[MinionType.TYPE_HOLY][MinionType.TYPE_NORMAL] = this.NOT_EFFECTIVE_MODIFIER;
                                                                  this.m_typeEffectivenessArray[MinionType.TYPE_HOLY][MinionType.TYPE_UNDEAD] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                  this.m_typeEffectivenessArray[MinionType.TYPE_HOLY][MinionType.TYPE_DEMONIC] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                  if(!_loc3_)
                                                                  {
                                                                     this.m_typeEffectivenessArray[MinionType.TYPE_HOLY][MinionType.TYPE_TITAN] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                     this.m_typeEffectivenessArray[MinionType.TYPE_EARTH][MinionType.TYPE_UNDEAD] = this.NOT_EFFECTIVE_MODIFIER;
                                                                     this.m_typeEffectivenessArray[MinionType.TYPE_EARTH][MinionType.TYPE_WATER] = this.NOT_EFFECTIVE_MODIFIER;
                                                                     if(!(_loc3_ && Boolean(_loc1_)))
                                                                     {
                                                                        addr727:
                                                                        this.m_typeEffectivenessArray[MinionType.TYPE_EARTH][MinionType.TYPE_EARTH] = this.NOT_EFFECTIVE_MODIFIER;
                                                                        this.m_typeEffectivenessArray[MinionType.TYPE_EARTH][MinionType.TYPE_PLANT] = this.NOT_EFFECTIVE_MODIFIER;
                                                                        if(!_loc3_)
                                                                        {
                                                                           this.m_typeEffectivenessArray[MinionType.TYPE_EARTH][MinionType.TYPE_ENERGY] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                           if(_loc4_ || Boolean(this))
                                                                           {
                                                                              this.m_typeEffectivenessArray[MinionType.TYPE_EARTH][MinionType.TYPE_FIRE] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                              this.m_typeEffectivenessArray[MinionType.TYPE_EARTH][MinionType.TYPE_FLYING] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                              if(_loc4_)
                                                                              {
                                                                                 this.m_typeEffectivenessArray[MinionType.TYPE_EARTH][MinionType.TYPE_DINO] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                                 this.m_typeEffectivenessArray[MinionType.TYPE_PLANT][MinionType.TYPE_ROBOT] = this.NOT_EFFECTIVE_MODIFIER;
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    this.m_typeEffectivenessArray[MinionType.TYPE_PLANT][MinionType.TYPE_FIRE] = this.NOT_EFFECTIVE_MODIFIER;
                                                                                    this.m_typeEffectivenessArray[MinionType.TYPE_PLANT][MinionType.TYPE_PLANT] = this.NOT_EFFECTIVE_MODIFIER;
                                                                                    if(_loc4_ || Boolean(_loc1_))
                                                                                    {
                                                                                       addr837:
                                                                                       this.m_typeEffectivenessArray[MinionType.TYPE_PLANT][MinionType.TYPE_DINO] = this.NOT_EFFECTIVE_MODIFIER;
                                                                                       addr847:
                                                                                       this.m_typeEffectivenessArray[MinionType.TYPE_PLANT][MinionType.TYPE_UNDEAD] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                                       addr857:
                                                                                       this.m_typeEffectivenessArray[MinionType.TYPE_PLANT][MinionType.TYPE_WATER] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                                       this.m_typeEffectivenessArray[MinionType.TYPE_PLANT][MinionType.TYPE_EARTH] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr879:
                                                                                          this.m_typeEffectivenessArray[MinionType.TYPE_FLYING][MinionType.TYPE_ENERGY] = this.NOT_EFFECTIVE_MODIFIER;
                                                                                          this.m_typeEffectivenessArray[MinionType.TYPE_FLYING][MinionType.TYPE_TITAN] = this.NOT_EFFECTIVE_MODIFIER;
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr901:
                                                                                             this.m_typeEffectivenessArray[MinionType.TYPE_FLYING][MinionType.TYPE_WATER] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                                             addr911:
                                                                                             this.m_typeEffectivenessArray[MinionType.TYPE_FLYING][MinionType.TYPE_ICE] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                                             this.m_typeEffectivenessArray[MinionType.TYPE_FLYING][MinionType.TYPE_PLANT] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                                             addr931:
                                                                                             this.m_typeEffectivenessArray[MinionType.TYPE_TITAN][MinionType.TYPE_HOLY] = this.NOT_EFFECTIVE_MODIFIER;
                                                                                             this.m_typeEffectivenessArray[MinionType.TYPE_TITAN][MinionType.TYPE_EARTH] = this.NOT_EFFECTIVE_MODIFIER;
                                                                                             if(_loc4_ || Boolean(_loc2_))
                                                                                             {
                                                                                                §§goto(addr958);
                                                                                             }
                                                                                             §§goto(addr990);
                                                                                          }
                                                                                          §§goto(addr1037);
                                                                                       }
                                                                                       §§goto(addr1061);
                                                                                    }
                                                                                    §§goto(addr879);
                                                                                 }
                                                                                 §§goto(addr931);
                                                                              }
                                                                              §§goto(addr857);
                                                                           }
                                                                           §§goto(addr879);
                                                                        }
                                                                        addr958:
                                                                        this.m_typeEffectivenessArray[MinionType.TYPE_TITAN][MinionType.TYPE_ICE] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                        this.m_typeEffectivenessArray[MinionType.TYPE_TITAN][MinionType.TYPE_TITAN] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                        if(_loc4_)
                                                                        {
                                                                           addr980:
                                                                           this.m_typeEffectivenessArray[MinionType.TYPE_TITAN][MinionType.TYPE_DINO] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                           addr990:
                                                                           this.m_typeEffectivenessArray[MinionType.TYPE_NORMAL][MinionType.TYPE_HOLY] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                           if(_loc4_ || Boolean(_loc2_))
                                                                           {
                                                                              this.m_typeEffectivenessArray[MinionType.TYPE_NORMAL][MinionType.TYPE_TITAN] = this.NOT_EFFECTIVE_MODIFIER;
                                                                              addr1017:
                                                                              this.m_typeEffectivenessArray[MinionType.TYPE_DINO][MinionType.TYPE_ICE] = this.NOT_EFFECTIVE_MODIFIER;
                                                                              this.m_typeEffectivenessArray[MinionType.TYPE_DINO][MinionType.TYPE_EARTH] = this.NOT_EFFECTIVE_MODIFIER;
                                                                              addr1037:
                                                                              this.m_typeEffectivenessArray[MinionType.TYPE_DINO][MinionType.TYPE_ENERGY] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                              if(!(_loc3_ && Boolean(this)))
                                                                              {
                                                                                 addr1061:
                                                                                 this.m_typeEffectivenessArray[MinionType.TYPE_DINO][MinionType.TYPE_PLANT] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                                 this.m_typeEffectivenessArray[MinionType.TYPE_DINO][MinionType.TYPE_ROBOT] = this.SUPER_EFFECTIVE_MODIFIER;
                                                                              }
                                                                           }
                                                                           §§goto(addr1061);
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr931);
                                                                  }
                                                                  §§goto(addr1017);
                                                               }
                                                            }
                                                            §§goto(addr901);
                                                         }
                                                         §§goto(addr911);
                                                      }
                                                      §§goto(addr837);
                                                   }
                                                   §§goto(addr540);
                                                }
                                                §§goto(addr879);
                                             }
                                             §§goto(addr980);
                                          }
                                          §§goto(addr837);
                                       }
                                       §§goto(addr1061);
                                    }
                                    §§goto(addr879);
                                 }
                                 else
                                 {
                                    §§push(0);
                                    if(!(_loc4_ || Boolean(_loc2_)))
                                    {
                                       continue loop2;
                                    }
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!(_loc3_ && Boolean(_loc1_)))
                                          {
                                             break loop0;
                                          }
                                          continue loop2;
                                          addr93:
                                          _loc2_++;
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             continue;
                                          }
                                          §§goto(addr422);
                                       }
                                    }
                                 }
                                 §§goto(addr837);
                              }
                              addr296:
                              this.m_typeEffectivenessArray[MinionType.TYPE_FIRE][MinionType.TYPE_UNDEAD] = this.SUPER_EFFECTIVE_MODIFIER;
                              this.m_typeEffectivenessArray[MinionType.TYPE_FIRE][MinionType.TYPE_PLANT] = this.SUPER_EFFECTIVE_MODIFIER;
                              this.m_typeEffectivenessArray[MinionType.TYPE_FIRE][MinionType.TYPE_ROBOT] = this.SUPER_EFFECTIVE_MODIFIER;
                              this.m_typeEffectivenessArray[MinionType.TYPE_FIRE][MinionType.TYPE_ICE] = this.SUPER_EFFECTIVE_MODIFIER;
                              this.m_typeEffectivenessArray[MinionType.TYPE_WATER][MinionType.TYPE_ENERGY] = this.NOT_EFFECTIVE_MODIFIER;
                              §§goto(addr346);
                           }
                        }
                        addr124:
                     }
                     §§goto(addr76);
                  }
                  else
                  {
                     this.m_typeEffectivenessArray.push(new Vector.<Number>(MinionType.NUM_OF_MINION_TYPES));
                     if(!_loc3_)
                     {
                        _loc1_++;
                        if(_loc4_)
                        {
                           continue;
                        }
                        §§goto(addr837);
                     }
                     else
                     {
                        §§goto(addr476);
                     }
                  }
                  §§goto(addr476);
               }
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!_loc3_)
                     {
                        _loc1_++;
                        if(_loc4_)
                        {
                           §§goto(addr124);
                        }
                        §§goto(addr847);
                     }
                     §§goto(addr901);
                  }
                  else
                  {
                     this.m_typeEffectivenessArray[_loc1_][_loc2_] = 1;
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        §§goto(addr93);
                     }
                  }
                  §§goto(addr296);
               }
               addr118:
            }
            break;
         }
         while(true)
         {
            §§push(MinionType.NUM_OF_MINION_TYPES);
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr118);
            }
            §§goto(addr127);
         }
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc1_:* = false;
         var _loc2_:BaseTopDownLevel = null;
         §§push(Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.m_currLevel is Lobby);
         if(!_loc6_)
         {
            if(§§pop())
            {
               §§push(true);
               if(!_loc6_)
               {
                  _loc1_ = §§pop();
                  addr37:
                  §§push(Singleton.dynamicData.m_currTransitionID);
                  if(!(_loc6_ && _loc1_))
                  {
                     §§push(SpecialRoom.TOWER_FLOOR_SELECT);
                     if(!_loc6_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc5_ || Boolean(_loc2_))
                           {
                              _loc2_ = this.m_specialRooms[0];
                              if(_loc5_ || Boolean(this))
                              {
                                 Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOffTheMiniMap();
                                 addr78:
                                 §§push(!_loc1_);
                                 if(!_loc1_)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§pop();
                                       if(_loc5_ || _loc1_)
                                       {
                                          addr92:
                                          §§push(Singleton.dynamicData);
                                          if(!(_loc6_ && Boolean(_loc2_)))
                                          {
                                             §§push(§§pop().m_currTransitionID);
                                             §§push(SpecialRoom.LOBBY_START);
                                             if(!(_loc6_ && Boolean(this)))
                                             {
                                                addr112:
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(Singleton.dynamicData.m_currTransitionID);
                                                      if(!(_loc6_ && Boolean(this)))
                                                      {
                                                         addr125:
                                                         §§push(§§pop());
                                                         if(_loc5_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            if(_loc5_ || Boolean(this))
                                                            {
                                                               addr146:
                                                               §§push(Singleton.dynamicData.m_currRoomOfTower);
                                                               if(!(_loc6_ && Boolean(_loc3_)))
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  §§push(Singleton.dynamicData);
                                                                  if(_loc5_ || _loc1_)
                                                                  {
                                                                     §§pop().ResetFloorData();
                                                                     §§push(Singleton.dynamicData);
                                                                     §§push(_loc3_);
                                                                     if(_loc5_ || Boolean(this))
                                                                     {
                                                                        §§pop().m_currTransitionID = §§pop();
                                                                        §§push(Singleton.dynamicData);
                                                                        §§push(_loc4_);
                                                                        if(_loc5_ || _loc1_)
                                                                        {
                                                                           §§pop().m_currRoomOfTower = §§pop();
                                                                           §§push(Singleton.dynamicData);
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr199:
                                                                              if(§§pop().m_isAutoSaveOn)
                                                                              {
                                                                                 addr193:
                                                                                 §§push(Singleton.dynamicData);
                                                                              }
                                                                              _loc2_ = this.m_specialRooms[0];
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(Singleton.utility);
                                                                                 if(_loc5_ || Boolean(_loc3_))
                                                                                 {
                                                                                    §§pop().m_soundController.PlaySound("tower_eggeryDoorClosing",1);
                                                                                    if(_loc5_ || Boolean(_loc2_))
                                                                                    {
                                                                                       addr229:
                                                                                       Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOffTheMiniMap();
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr263:
                                                                                          if(_loc2_ == null)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr268:
                                                                                                _loc2_ = this.GetCurrentLevelFromFloorAndRoom(Singleton.dynamicData.m_currFloorOfTower,Singleton.dynamicData.m_currRoomOfTower);
                                                                                                addr278:
                                                                                                this.m_currLevel = _loc2_;
                                                                                             }
                                                                                             return _loc2_;
                                                                                          }
                                                                                          §§goto(addr278);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr268);
                                                                                 }
                                                                              }
                                                                              §§goto(addr229);
                                                                           }
                                                                           §§push(Singleton.dynamicData.m_saveSlot);
                                                                        }
                                                                     }
                                                                     §§pop().SaveAllData(§§pop());
                                                                  }
                                                                  §§goto(addr199);
                                                               }
                                                               else
                                                               {
                                                                  addr239:
                                                                  if(§§pop() == SpecialRoom.LOBBY_ELEVATOR)
                                                                  {
                                                                     _loc2_ = this.m_specialRooms[0];
                                                                     if(!_loc6_)
                                                                     {
                                                                        Singleton.utility.m_screenControllers.m_topDownScreen.m_topDownMovementScreen.TurnOffTheMiniMap();
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr263);
                                                            }
                                                            §§goto(addr193);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr146);
                                                }
                                                else
                                                {
                                                   addr238:
                                                   §§push(Singleton.dynamicData.m_currTransitionID);
                                                }
                                             }
                                             §§goto(addr239);
                                          }
                                          §§goto(addr238);
                                       }
                                    }
                                    §§goto(addr199);
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr78);
                           }
                           §§goto(addr92);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr239);
                  }
                  §§goto(addr125);
               }
               §§goto(addr78);
            }
            §§goto(addr37);
         }
         §§goto(addr112);
      }
      
      public function PreBuildRoomsForFloor(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc4_ || Boolean(this))
            {
               §§push(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
               if(!(_loc3_ && Boolean(param1)))
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc4_)
                     {
                        addr36:
                        §§push(param1);
                        if(!_loc3_)
                        {
                           §§goto(addr48);
                        }
                        §§goto(addr52);
                     }
                  }
                  §§goto(addr52);
               }
               addr48:
               §§push(int(§§pop() - this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER));
               if(!_loc3_)
               {
                  addr52:
                  param1 = §§pop();
                  §§push(0);
               }
               var _loc2_:* = §§pop();
               while(_loc2_ < this.m_normalRooms[param1].length)
               {
                  if(this.m_normalRooms[param1][_loc2_].PreLoadSprites())
                  {
                     if(_loc4_ || Boolean(param1))
                     {
                        this.m_normalRooms[param1][_loc2_].CleanUpSprites();
                        if(_loc3_)
                        {
                           continue;
                        }
                     }
                     break;
                  }
                  _loc2_++;
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               return;
            }
            §§goto(addr52);
         }
         §§goto(addr36);
      }
      
      public function GetCurrentLevelFromFloorAndRoom(param1:int, param2:int) : BaseTopDownLevel
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || Boolean(this))
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc4_)
                     {
                        addr50:
                        §§push(param1);
                        if(_loc4_)
                        {
                           addr57:
                           param1 = §§pop() - this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER;
                        }
                        §§goto(addr57);
                     }
                  }
                  return this.m_normalRooms[param1][param2];
               }
            }
            §§goto(addr57);
         }
         §§goto(addr50);
      }
      
      public function GetRoomForTransitionID(param1:int) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(Singleton.dynamicData.m_currFloorOfTower);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc4_ || Boolean(param1))
            {
               §§push(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
               if(_loc4_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        if(_loc4_ || Boolean(this))
                        {
                           addr47:
                           §§push(int(§§pop() - this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER));
                           if(_loc5_ && _loc3_)
                           {
                           }
                           §§goto(addr65);
                        }
                        _loc2_ = §§pop();
                        addr64:
                        addr65:
                        var _loc3_:* = §§pop();
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc4_)
                           {
                              if(§§pop() < this.m_normalRooms[_loc2_].length)
                              {
                                 §§push(_loc3_);
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    if(§§pop() == Singleton.dynamicData.m_currRoomOfTower)
                                    {
                                       continue;
                                    }
                                    if(!(_loc4_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    if(!this.m_normalRooms[_loc2_][_loc3_].DoesHaveRoomTransitionObject(param1))
                                    {
                                       continue;
                                    }
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc5_)
                                       {
                                          return §§pop();
                                       }
                                       break;
                                    }
                                 }
                                 break;
                              }
                              addr133:
                              break;
                           }
                           break;
                        }
                        return §§pop();
                        §§push(0);
                     }
                  }
                  §§goto(addr64);
               }
            }
            §§goto(addr47);
         }
         §§goto(addr64);
      }
      
      private function SetupLevels() : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 7799
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      private function SetupTextFormats() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.m_onInterfaceBarTextFormat = new TextFormat();
            if(_loc1_ || Boolean(this))
            {
               this.m_onInterfaceBarTextFormat.color = 15461355;
               if(_loc1_)
               {
                  this.m_onInterfaceBarTextFormat.size = 9;
                  if(_loc1_)
                  {
                     §§goto(addr57);
                  }
               }
               §§goto(addr57);
            }
            §§goto(addr63);
         }
         addr57:
         this.m_onInterfaceBarTextFormat.font = "BurbinCasual";
         if(!_loc2_)
         {
            addr63:
            this.m_onInterfaceBarTextFormat.align = TextFormatAlign.CENTER;
         }
      }
      
      public function GetMiniMapDataForCurrFloor() : Vector.<MiniMapDataObject>
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Boolean(this))
         {
            if(Singleton.dynamicData.m_currFloorOfTower > 30)
            {
               if(_loc1_ || Boolean(this))
               {
                  return this.m_miniMapDataObjects[Singleton.dynamicData.m_currFloorOfTower - 31];
               }
            }
         }
         return this.m_miniMapDataObjects[Singleton.dynamicData.m_currFloorOfTower];
      }
      
      public function GetMiniMapScaleForCurrFloor() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(Singleton.dynamicData.m_currFloorOfTower > 30)
            {
               if(_loc1_)
               {
                  §§goto(addr34);
               }
            }
            return this.m_miniMapScales[Singleton.dynamicData.m_currFloorOfTower];
         }
         addr34:
         return this.m_miniMapScales[Singleton.dynamicData.m_currFloorOfTower - 31];
      }
      
      public function GetMiniMapPositionForCurrFloor() : Point
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(Singleton.dynamicData.m_currFloorOfTower > 30)
            {
               if(!(_loc2_ && _loc1_))
               {
                  return this.m_miniMapPositions[Singleton.dynamicData.m_currFloorOfTower - 31];
               }
            }
         }
         return this.m_miniMapPositions[Singleton.dynamicData.m_currFloorOfTower];
      }
      
      public function GetRandomMinionForFloor(param1:int) : OwnedMinion
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:OwnedMinion = null;
         var _loc2_:Boolean = false;
         if(!(_loc10_ && _loc2_))
         {
            §§push(param1);
            if(!(_loc10_ && _loc2_))
            {
               §§push(this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
               if(_loc9_ || Boolean(_loc3_))
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!(_loc10_ && _loc2_))
                     {
                        §§push(param1);
                        if(_loc9_ || Boolean(_loc3_))
                        {
                           addr60:
                           §§push(§§pop() - this.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER);
                           if(_loc9_ || Boolean(param1))
                           {
                              §§push(§§pop());
                              if(_loc9_)
                              {
                                 addr71:
                                 param1 = §§pop();
                                 if(_loc9_)
                                 {
                                    addr74:
                                    _loc2_ = true;
                                    addr76:
                                    §§push(int(Math.random() * 100));
                                 }
                                 §§goto(addr76);
                              }
                              var _loc4_:* = §§pop();
                              var _loc5_:* = 0;
                              var _loc6_:* = 0;
                              var _loc7_:int = 0;
                              loop0:
                              while(true)
                              {
                                 §§push(_loc7_);
                                 while(§§pop() < this.m_eggeryMinionChancePerFloor[param1].length)
                                 {
                                    §§push(_loc5_);
                                    if(_loc9_ || Boolean(param1))
                                    {
                                       §§push(int(§§pop() + this.m_eggeryMinionChancePerFloor[param1][_loc7_]));
                                       if(!_loc10_)
                                       {
                                          _loc5_ = §§pop();
                                          if(_loc9_)
                                          {
                                             §§push(_loc4_);
                                             if(_loc9_)
                                             {
                                                if(§§pop() < _loc5_)
                                                {
                                                   if(_loc9_ || Boolean(this))
                                                   {
                                                      addr130:
                                                      §§push(_loc7_);
                                                      if(!_loc10_)
                                                      {
                                                         addr133:
                                                         §§push(§§pop());
                                                         if(_loc9_)
                                                         {
                                                            addr136:
                                                            _loc6_ = §§pop();
                                                            if(_loc10_ && Boolean(param1))
                                                            {
                                                            }
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr136);
                                                   }
                                                   break;
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr136);
                                          }
                                          §§goto(addr130);
                                       }
                                    }
                                    §§goto(addr133);
                                 }
                                 addr160:
                                 _loc3_ = new OwnedMinion(this.m_eggeryMinionsToGetOnFloor[param1][_loc6_]);
                                 var _loc8_:*;
                                 §§push(_loc8_ = this.m_minionLevelsForFloors[param1] + Math.random() * 3);
                                 if(!_loc10_)
                                 {
                                    if(§§pop() > 60)
                                    {
                                       if(!_loc10_)
                                       {
                                          §§push(60);
                                          if(!_loc10_)
                                          {
                                             addr198:
                                             _loc8_ = §§pop();
                                             if(!_loc10_)
                                             {
                                                addr201:
                                                if(_loc2_)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      addr206:
                                                      _loc8_ = 55;
                                                      addr205:
                                                      if(_loc9_ || Boolean(_loc3_))
                                                      {
                                                         addr214:
                                                         _loc3_.SetLevel(_loc8_);
                                                      }
                                                   }
                                                   return _loc3_;
                                                }
                                                §§goto(addr214);
                                             }
                                             §§goto(addr205);
                                          }
                                          §§goto(addr206);
                                       }
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr198);
                              }
                           }
                           §§goto(addr76);
                        }
                        §§goto(addr71);
                     }
                  }
                  §§goto(addr74);
               }
               §§goto(addr60);
            }
            §§goto(addr71);
         }
         §§goto(addr74);
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
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 7838
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function GetStatStageModificationAmount(param1:int) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(param1);
            §§push(0);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() == §§pop())
               {
                  return 1;
               }
               §§push(param1);
               §§push(0);
               if(_loc2_)
               {
                  if(§§pop() > §§pop())
                  {
                     §§push(param1);
                     §§push(10);
                     if(_loc2_)
                     {
                        §§goto(addr48);
                     }
                     else
                     {
                        addr78:
                        if(§§pop() < §§pop())
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr86:
                              param1 = -10;
                              addr88:
                              §§push(param1);
                              if(_loc2_)
                              {
                                 §§goto(addr91);
                              }
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr88);
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(-10);
                        if(!_loc3_)
                        {
                           §§goto(addr78);
                        }
                        §§goto(addr92);
                     }
                  }
                  §§goto(addr94);
               }
               addr48:
               if(§§pop() > §§pop())
               {
                  §§push(10);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     param1 = §§pop();
                  }
                  else
                  {
                     addr94:
                     param1 = §§pop() * -1;
                     return this.m_statStageDecreaseAmounts[param1 - 1];
                     addr91:
                     addr92:
                  }
               }
               return this.m_statStageIncreaseAmounts[param1 - 1];
            }
            §§goto(addr94);
         }
         §§goto(addr86);
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         var _loc2_:Vector.<int> = new Vector.<int>();
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            loop1:
            while(§§pop() < this.m_eggeryMinionsToGetOnFloor.length)
            {
               §§push(0);
               if(!_loc5_)
               {
                  _loc4_ = §§pop();
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc5_)
                     {
                        break;
                     }
                     if(§§pop() >= this.m_eggeryMinionsToGetOnFloor[_loc3_].length)
                     {
                        if(_loc5_)
                        {
                           break loop1;
                        }
                        continue loop0;
                     }
                     if(this.m_eggeryMinionsToGetOnFloor[_loc3_][_loc4_] == param1)
                     {
                        _loc2_.push(_loc3_ + 1);
                     }
                     _loc4_++;
                  }
               }
            }
            return _loc2_;
         }
      }
      
      public function CalculateEffectivenessModifier(param1:int, param2:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param2);
            if(_loc3_ || Boolean(param2))
            {
               if(§§pop() == MinionType.TYPE_NONE)
               {
                  if(!_loc4_)
                  {
                     §§goto(addr36);
                  }
               }
               return this.m_typeEffectivenessArray[param1][param2];
            }
            §§goto(addr36);
         }
         addr36:
         return 1;
      }
      
      public function CalculateHealingEffectivenessModifier(param1:int, param2:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param2);
         if(!(_loc4_ && _loc3_))
         {
            if(§§pop() == MinionType.TYPE_NONE)
            {
               return 1;
            }
            else
            {
               if(this.m_typeEffectivenessArray[param1][param2] == this.NOT_EFFECTIVE_MODIFIER)
               {
                  if(_loc3_)
                  {
                     §§push(this.SUPER_EFFECTIVE_MODIFIER);
                     if(!_loc4_)
                     {
                        return §§pop();
                     }
                     §§goto(addr74);
                  }
               }
               else if(this.m_typeEffectivenessArray[param1][param2] == this.SUPER_EFFECTIVE_MODIFIER)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr74:
                     return §§pop();
                     §§push(this.NOT_EFFECTIVE_MODIFIER);
                  }
               }
               return this.m_typeEffectivenessArray[param1][param2];
            }
         }
      }
      
      public function CalculateDamageOrHealingAmount(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : Number
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         §§push(param4);
         if(!(_loc11_ && Boolean(param1)))
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         §§push(param1);
         if(!(_loc11_ && Boolean(param3)))
         {
            §§push(param2);
            if(_loc12_)
            {
               §§push(§§pop() * Math.random());
            }
            §§push(§§pop() + §§pop());
            if(!(_loc11_ && Boolean(this)))
            {
               §§push(§§pop());
            }
         }
         var _loc7_:* = §§pop();
         §§push(param3);
         if(!(_loc11_ && Boolean(this)))
         {
            §§push(§§pop());
         }
         var _loc8_:* = §§pop();
         var _loc9_:Number = 1;
         §§push(_loc6_);
         if(_loc12_ || Boolean(param2))
         {
            §§push(3);
            if(!(_loc11_ && Boolean(this)))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc11_ && Boolean(param1)))
               {
                  §§push(5);
                  if(!_loc11_)
                  {
                     addr95:
                     §§push(§§pop() / §§pop());
                     if(_loc12_ || Boolean(param1))
                     {
                        addr104:
                        §§push(§§pop() + 2);
                        if(_loc11_ && Boolean(param1))
                        {
                        }
                        addr113:
                        var _loc10_:*;
                        §§push(_loc10_ = (_loc10_ = §§pop()) * _loc7_);
                        if(_loc12_ || Boolean(this))
                        {
                           §§push((_loc10_ = §§pop() * _loc8_) * _loc9_);
                           if(!(_loc11_ && Boolean(param3)))
                           {
                              addr148:
                              §§push(§§pop());
                              §§push(§§pop());
                              if(!(_loc11_ && Boolean(param1)))
                              {
                                 _loc10_ = §§pop();
                                 _loc10_ = §§pop() / 3000;
                                 §§push(Math.ceil(_loc10_));
                                 §§push(Math.ceil(_loc10_));
                              }
                              _loc10_ = §§pop();
                           }
                           return §§pop();
                        }
                        §§goto(addr148);
                     }
                     §§goto(addr113);
                     §§push(§§pop());
                  }
               }
               §§goto(addr104);
            }
            §§goto(addr95);
         }
         §§goto(addr104);
      }
   }
}
