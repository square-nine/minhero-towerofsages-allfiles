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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               this.m_minions = new Vector.<TrainerMinionDataObject>();
               this.m_extraMinionLevels = 0;
               if(_loc3_ || _loc2_)
               {
                  this.m_whatTrainerSaysAtStart_notBeaten = "In hard mode we must fight!";
                  if(!_loc2_)
                  {
                     addr51:
                     this.m_whatTrainerSaysAtStart_alreadyBeaten = "You already beat me!   Retry for three stars?";
                  }
                  addr64:
                  var _loc1_:int = 0;
                  do
                  {
                     if(_loc1_ >= this.m_isModStonesActive.length)
                     {
                        this.m_numOfEnemyShields = 0;
                        this.m_numOfPlayerShields = 0;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           this.m_moveTimeCounter = 0;
                           this.m_moveOnTimer = null;
                           if(_loc3_ || _loc3_)
                           {
                              break;
                           }
                           addr117:
                           this.m_passiveMoveForMoveOnTimer = -99;
                           this.m_numOfExtraOpponentMinions = 0;
                           this.m_extraOpponentMinionID = 0;
                           this.m_extraOpponentMinionLevelModifier = 0;
                           this.m_extraOpponentMinionTalentTree = null;
                        }
                        this.m_numOfExtraPlayerMinions = 0;
                        this.m_extraPlayerMinionID = 0;
                        this.m_extraPlayerMinionLevelModifier = 0;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           this.m_extraPlayerMinionTalentTree = null;
                        }
                        this.m_turnsUntilResurection = -99;
                        return;
                     }
                     this.m_isModStonesActive[_loc1_] = false;
                     _loc1_++;
                  }
                  while(_loc3_);
                  
                  this.m_movePower = 0;
                  §§goto(addr117);
               }
               this.m_whatTrainerSaysAtLose = "You did great!";
               this.m_isModStonesActive = new Vector.<Boolean>(4);
               §§goto(addr64);
            }
            §§goto(addr51);
         }
         §§goto(addr64);
      }
      
      public function AddMod_Shield(param1:int, param2:int = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || Boolean(param2))
         {
            this.m_isModStonesActive[ModStoneTypes.MOD_STONE_SHIELD] = true;
            if(!(_loc4_ && Boolean(param2)))
            {
               this.m_numOfEnemyShields = param1;
               if(!(_loc4_ && Boolean(param2)))
               {
                  addr50:
                  this.m_numOfPlayerShields = param2;
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      public function AddMod_MoveTimer(param1:int, param2:int, param3:int, param4:int = -99) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && Boolean(param1)))
         {
            this.m_isModStonesActive[ModStoneTypes.MOD_STONE_MOVE_TIMER] = true;
            if(!_loc6_)
            {
               this.m_moveOnTimer = Singleton.staticData.GetBaseMinionMove(param1);
               if(_loc5_)
               {
                  this.m_moveTimeCounter = param2;
                  if(!_loc6_)
                  {
                     this.m_movePower = param3;
                     if(_loc5_)
                     {
                     }
                     §§goto(addr63);
                  }
               }
               this.m_passiveMoveForMoveOnTimer = param4;
            }
         }
         addr63:
      }
      
      public function AddMod_ExtraMinions_Opponent(param1:int, param2:int, param3:Array = null, param4:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.m_isModStonesActive[ModStoneTypes.MOD_STONE_EXTRA_MINIONS] = true;
            if(_loc5_)
            {
               this.m_extraOpponentMinionID = param1;
               if(!_loc6_)
               {
                  this.m_numOfExtraOpponentMinions = param2;
                  if(!(_loc6_ && Boolean(this)))
                  {
                     addr45:
                     this.m_extraOpponentMinionLevelModifier = param4;
                     if(_loc6_)
                     {
                     }
                  }
                  §§goto(addr53);
               }
               this.m_extraOpponentMinionTalentTree = param3;
            }
            addr53:
            return;
         }
         §§goto(addr45);
      }
      
      public function AddMod_ExtraMinions_Player(param1:int, param2:int, param3:Array = null, param4:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && Boolean(param2)))
         {
            this.m_isModStonesActive[ModStoneTypes.MOD_STONE_EXTRA_MINIONS] = true;
            if(!_loc5_)
            {
               addr43:
               this.m_extraPlayerMinionID = param1;
               if(_loc6_)
               {
                  this.m_numOfExtraPlayerMinions = param2;
                  if(!_loc5_)
                  {
                     this.m_extraPlayerMinionLevelModifier = param4;
                     if(_loc5_ && Boolean(param1))
                     {
                     }
                     §§goto(addr66);
                  }
                  this.m_extraPlayerMinionTalentTree = param3;
               }
            }
            addr66:
            return;
         }
         §§goto(addr43);
      }
      
      public function AddMod_Resurection(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.m_isModStonesActive[ModStoneTypes.MOD_STONE_RESURECTION] = true;
            if(!(_loc3_ && _loc2_))
            {
               addr40:
               this.m_turnsUntilResurection = param1;
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function IsAtLeastOneModActive() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_isModStonesActive.length)
         {
            if(this.m_isModStonesActive[_loc1_])
            {
               if(_loc2_ || Boolean(this))
               {
                  §§push(true);
                  if(!(_loc3_ && _loc2_))
                  {
                     return §§pop();
                  }
                  addr63:
                  return §§pop();
               }
            }
            else
            {
               _loc1_++;
               if(!_loc2_)
               {
                  break;
               }
            }
         }
         §§goto(addr63);
         §§push(false);
      }
      
      public function IsModActive(param1:int) : Boolean
      {
         return this.m_isModStonesActive[param1];
      }
      
      public function AddMinion(param1:int, param2:Array, param3:int = 1) : TrainerMinionDataObject
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:TrainerMinionDataObject;
         (_loc4_ = new TrainerMinionDataObject()).m_minionID = param1;
         if(!(_loc6_ && Boolean(param1)))
         {
            _loc4_.m_minionRole = param3;
         }
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= param2.length)
            {
               if(!_loc6_)
               {
                  this.m_minions.push(_loc4_);
                  break;
               }
               break;
            }
            _loc4_.m_moves.push(param2[_loc5_]);
            if(!(_loc6_ && Boolean(this)))
            {
               _loc5_++;
               if(!(_loc7_ || Boolean(param1)))
               {
                  break;
               }
            }
         }
         return _loc4_;
      }
      
      public function get m_trainerType() : int
      {
         return this._trainerType;
      }
      
      public function set m_trainerType(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || Boolean(this))
         {
            this._trainerType = param1;
         }
         §§push(param1);
         if(_loc3_ || Boolean(param1))
         {
            var _loc2_:* = §§pop();
            if(TrainerType.NORMAL_TRAINER === _loc2_)
            {
               §§push(0);
            }
            else
            {
               §§push(TrainerType.HARD_TRAINER);
               if(!_loc4_)
               {
                  if(§§pop() === _loc2_)
                  {
                     §§goto(addr284);
                  }
                  else
                  {
                     §§push(TrainerType.EXPERT_TRAINER);
                     if(!_loc4_)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && _loc3_))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_ || Boolean(param1))
                              {
                                 §§push(2);
                                 if(_loc4_)
                                 {
                                    addr230:
                                 }
                                 §§goto(addr284);
                              }
                              else
                              {
                                 addr214:
                                 §§push(5);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§goto(addr284);
                                 }
                                 else
                                 {
                                    addr239:
                                    §§push(_loc2_);
                                    if(!_loc4_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          addr243:
                                          §§push(8);
                                          if(!(_loc3_ || Boolean(this)))
                                          {
                                             addr274:
                                             if(§§pop() === _loc2_)
                                             {
                                                addr276:
                                                §§push(10);
                                                if(_loc3_)
                                                {
                                                   addr279:
                                                }
                                                §§goto(addr284);
                                             }
                                             else
                                             {
                                                addr284:
                                                addr285:
                                                switch(1)
                                                {
                                                   case 0:
                                                      this.m_trainerName = "Student";
                                                      if(!(_loc4_ && Boolean(this)))
                                                      {
                                                         break;
                                                      }
                                                      addr47:
                                                      break;
                                                   case 1:
                                                      this.m_trainerName = "Hard Sage";
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      addr81:
                                                      break;
                                                   case 2:
                                                      this.m_trainerName = "Expert Sage";
                                                      §§goto(addr47);
                                                   case 3:
                                                      this.m_trainerName = "Minor Sage";
                                                      break;
                                                   case 4:
                                                      this.m_trainerName = "Grass Sage";
                                                      if(_loc3_ || Boolean(param1))
                                                      {
                                                         break;
                                                      }
                                                      addr76:
                                                      break;
                                                   case 5:
                                                      this.m_trainerName = "Fire Sage";
                                                      break;
                                                   case 6:
                                                      this.m_trainerName = "Electric Sage";
                                                      if(_loc4_)
                                                      {
                                                         addr110:
                                                         break;
                                                      }
                                                      §§goto(addr76);
                                                      break;
                                                   case 7:
                                                      this.m_trainerName = "Undead Sage";
                                                      §§goto(addr81);
                                                   case 8:
                                                      this.m_trainerName = "Talo Sage";
                                                      break;
                                                   case 9:
                                                      this.m_trainerName = "Daco Sage";
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      addr105:
                                                      break;
                                                   case 10:
                                                      this.m_trainerName = "Grand Sage";
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr105);
                                                      }
                                                      break;
                                                   default:
                                                      this.m_trainerName = "Inner Monologue";
                                                      §§goto(addr110);
                                                }
                                                return;
                                                §§push(11);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr255:
                                          if(TrainerType.TRAINER_GYM_6 === _loc2_)
                                          {
                                             §§push(9);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                addr271:
                                             }
                                             §§goto(addr284);
                                          }
                                          else
                                          {
                                             §§goto(addr274);
                                             §§push(TrainerType.TRAINER_GRAND_SAGE);
                                          }
                                       }
                                       §§goto(addr284);
                                    }
                                    §§goto(addr255);
                                 }
                              }
                              §§goto(addr284);
                           }
                           else
                           {
                              §§push(TrainerType.BOSS_TRAINER);
                              if(_loc3_)
                              {
                                 §§push(_loc2_);
                                 if(!_loc4_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc4_ && Boolean(param1)))
                                       {
                                          §§push(3);
                                          if(!_loc4_)
                                          {
                                             §§goto(addr284);
                                          }
                                          else
                                          {
                                             §§goto(addr279);
                                          }
                                       }
                                       else
                                       {
                                          addr192:
                                          §§push(4);
                                          if(_loc4_ && Boolean(this))
                                          {
                                          }
                                          §§goto(addr284);
                                       }
                                       §§goto(addr284);
                                    }
                                    else
                                    {
                                       §§push(TrainerType.TRAINER_GYM_1);
                                       if(_loc3_)
                                       {
                                          if(§§pop() === _loc2_)
                                          {
                                             if(_loc3_)
                                             {
                                                §§goto(addr192);
                                             }
                                             §§goto(addr284);
                                          }
                                          else
                                          {
                                             addr203:
                                             §§push(TrainerType.TRAINER_GYM_2);
                                             §§push(_loc2_);
                                             if(!_loc4_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc4_ && Boolean(this)))
                                                   {
                                                      §§goto(addr214);
                                                   }
                                                   §§goto(addr243);
                                                }
                                                else
                                                {
                                                   §§push(TrainerType.TRAINER_GYM_3);
                                                   if(_loc3_)
                                                   {
                                                      addr228:
                                                      if(§§pop() === _loc2_)
                                                      {
                                                         §§goto(addr230);
                                                         §§push(6);
                                                      }
                                                      else
                                                      {
                                                         addr234:
                                                         if(TrainerType.TRAINER_GYM_4 === _loc2_)
                                                         {
                                                            addr236:
                                                            §§goto(addr284);
                                                            §§push(7);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr239);
                                                            §§push(TrainerType.TRAINER_GYM_5);
                                                         }
                                                         §§goto(addr284);
                                                      }
                                                      §§goto(addr284);
                                                   }
                                                }
                                                §§goto(addr271);
                                             }
                                             §§goto(addr234);
                                          }
                                       }
                                       §§goto(addr236);
                                    }
                                 }
                                 §§goto(addr228);
                              }
                           }
                           §§goto(addr284);
                        }
                        §§goto(addr255);
                     }
                     §§goto(addr203);
                  }
               }
               §§goto(addr274);
            }
            §§goto(addr284);
         }
         §§goto(addr285);
      }
   }
}
