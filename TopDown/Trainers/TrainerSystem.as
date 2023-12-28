package TopDown.Trainers
{
   import Minions.OwnedMinion;
   import States.MinionDexID;
   import States.MinionMoveID;
   import States.TrainerType;
   import Utilities.Singleton;
   
   public class TrainerSystem
   {
       
      
      private var m_trainers:Vector.<Vector.<TrainerDataObject>>;
      
      private var m_extraHardModeModifier:int;
      
      public function TrainerSystem()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            if(_loc2_)
            {
               this.m_trainers = new Vector.<Vector.<TrainerDataObject>>();
            }
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER + Singleton.staticData.NUM_OF_FLOORS_IN_THE_HARD_TOWER)
            {
               if(_loc2_ || _loc3_)
               {
                  addr79:
                  this.m_extraHardModeModifier = Singleton.staticData.NUM_OF_FLOORS_IN_THE_STANDARD_TOWER;
                  break;
               }
               break;
            }
            this.m_trainers[_loc1_] = new Vector.<TrainerDataObject>();
            if(_loc3_)
            {
               break;
            }
            _loc1_++;
            if(_loc2_ || Boolean(this))
            {
               continue;
            }
            §§goto(addr79);
         }
      }
      
      public function CreateFloors() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.CreateFloor1();
            this.CreateFloor2();
            if(!(_loc2_ && _loc1_))
            {
               this.CreateFloor3();
               this.CreateFloor4();
               this.CreateFloor5();
               this.CreateFloor6();
               this.CreateFloor7();
               if(!(_loc2_ && _loc1_))
               {
                  this.CreateFloor8();
                  if(_loc1_ || Boolean(this))
                  {
                     this.CreateFloor9();
                     this.CreateFloor10();
                     if(!(_loc2_ && _loc1_))
                     {
                        this.CreateFloor11();
                        if(_loc1_)
                        {
                           addr67:
                           this.CreateFloor12();
                           this.CreateFloor13();
                           if(_loc1_ || _loc1_)
                           {
                              this.CreateFloor14();
                              if(_loc1_)
                              {
                                 this.CreateFloor15();
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    this.CreateFloor16();
                                    this.CreateFloor17();
                                    addr95:
                                    this.CreateFloor18();
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       this.CreateFloor19();
                                       if(!_loc2_)
                                       {
                                          this.CreateFloor20();
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             this.CreateFloor21();
                                             this.CreateFloor22();
                                             this.CreateFloor23();
                                             if(_loc1_ || _loc1_)
                                             {
                                                this.CreateFloor24();
                                                if(_loc1_)
                                                {
                                                   this.CreateFloor_Boss1();
                                                   if(!_loc2_)
                                                   {
                                                      this.CreateFloor_Boss2();
                                                      if(!_loc2_)
                                                      {
                                                         this.CreateFloor_Boss3();
                                                         addr151:
                                                         this.CreateFloor_Boss4();
                                                         this.CreateFloor_Boss5();
                                                         this.CreateFloor_Boss6();
                                                         if(_loc1_)
                                                         {
                                                            addr159:
                                                            this.CreateFloor_Boss_Grand_Sage();
                                                            this.CreateFloor1_hardMode();
                                                            if(_loc1_)
                                                            {
                                                               addr165:
                                                               this.CreateFloor2_hardMode();
                                                               if(!(_loc2_ && Boolean(this)))
                                                               {
                                                                  this.CreateFloor3_hardMode();
                                                                  §§goto(addr176);
                                                               }
                                                               §§goto(addr198);
                                                            }
                                                            §§goto(addr256);
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                      §§goto(addr271);
                                                   }
                                                   §§goto(addr194);
                                                }
                                                §§goto(addr165);
                                             }
                                             §§goto(addr256);
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr280);
                                    }
                                    §§goto(addr211);
                                 }
                                 §§goto(addr151);
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr198);
                  }
                  §§goto(addr67);
               }
               §§goto(addr184);
            }
            §§goto(addr67);
         }
         addr176:
         this.CreateFloor4_hardMode();
         if(_loc1_)
         {
            this.CreateFloor5_hardMode();
            if(!_loc2_)
            {
               addr184:
               this.CreateFloor6_hardMode();
               if(!_loc2_)
               {
                  this.CreateFloor7_hardMode();
                  if(_loc1_)
                  {
                     this.CreateFloor8_hardMode();
                     addr194:
                     this.CreateFloor9_hardMode();
                     if(!_loc2_)
                     {
                        addr198:
                        this.CreateFloor10_hardMode();
                        this.CreateFloor11_hardMode();
                        if(_loc1_ || _loc1_)
                        {
                           this.CreateFloor12_hardMode();
                           §§goto(addr211);
                        }
                        §§goto(addr256);
                     }
                     addr211:
                     this.CreateFloor13_hardMode();
                     this.CreateFloor14_hardMode();
                     this.CreateFloor15_hardMode();
                     this.CreateFloor16_hardMode();
                     if(!(_loc2_ && _loc2_))
                     {
                        addr226:
                        this.CreateFloor17_hardMode();
                        this.CreateFloor18_hardMode();
                        if(_loc1_ || Boolean(this))
                        {
                           addr237:
                           this.CreateFloor19_hardMode();
                           this.CreateFloor20_hardMode();
                           this.CreateFloor21_hardMode();
                           if(!(_loc2_ && Boolean(this)))
                           {
                              this.CreateFloor22_hardMode();
                              addr252:
                              this.CreateFloor23_hardMode();
                              if(!_loc2_)
                              {
                                 addr256:
                                 this.CreateFloor24_hardMode();
                              }
                              §§goto(addr265);
                           }
                           this.CreateFloor_Boss5_hardMode();
                           addr265:
                           this.CreateFloor_Boss1_hardMode();
                           §§goto(addr267);
                        }
                        §§goto(addr256);
                     }
                     addr267:
                     this.CreateFloor_Boss2_hardMode();
                     if(!_loc2_)
                     {
                        addr271:
                        this.CreateFloor_Boss3_hardMode();
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr280:
                           this.CreateFloor_Boss4_hardMode();
                        }
                        §§goto(addr288);
                     }
                     this.CreateFloor_Boss6_hardMode();
                     this.CreateFloor_Boss_Grand_Sage_hardMode();
                     §§goto(addr288);
                  }
                  §§goto(addr226);
               }
               §§goto(addr252);
            }
            §§goto(addr237);
         }
         addr288:
      }
      
      public function LoadTrianer(param1:int, param2:int) : TrainerDataObject
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:TrainerDataObject = null;
         var _loc5_:OwnedMinion = null;
         var _loc6_:TrainerMinionDataObject = null;
         if(!_loc8_)
         {
            §§push(Singleton.dynamicData);
            if(!_loc8_)
            {
               §§pop().ResetOpponentsMinions();
               §§goto(addr36);
            }
            §§pop().m_currTrainerID = param2;
         }
         addr36:
         if(_loc9_)
         {
            §§push(Singleton.dynamicData);
         }
         var _loc4_:int = 0;
         while(_loc4_ < this.m_trainers[param1].length)
         {
            if(this.m_trainers[param1][_loc4_].m_trainerRoomID == param2)
            {
               if(_loc9_)
               {
                  _loc3_ = this.m_trainers[param1][_loc4_];
                  if(_loc9_ || Boolean(param1))
                  {
                     break;
                  }
                  var _loc7_:int = 0;
                  §§goto(addr86);
               }
               break;
            }
            _loc4_++;
            if(!(_loc9_ || Boolean(_loc3_)))
            {
               break;
            }
         }
         Singleton.dynamicData.m_currTrainerData = _loc3_;
         addr86:
         if(_loc9_)
         {
            for(; _loc7_ < _loc3_.m_minions.length; §§pop().m_opponentsMinions[_loc7_] = _loc5_,_loc7_++)
            {
               _loc6_ = _loc3_.m_minions[_loc7_];
               (_loc5_ = new OwnedMinion(_loc6_.m_minionID,false)).m_trainerType = _loc3_.m_trainerType;
               §§push(Singleton.dynamicData);
               if(_loc8_)
               {
                  continue;
               }
               if(§§pop().m_currFloorOfTower < 31)
               {
                  if(!(_loc8_ && Boolean(this)))
                  {
                     _loc5_.SetLevel(Singleton.staticData.GetTrainerMinionLevelFor(Singleton.dynamicData.m_currFloorOfTower) + _loc3_.m_extraMinionLevels);
                     if(_loc9_ || Boolean(param1))
                     {
                        addr171:
                        Singleton.utility.AutoBuildMovesForMinion(_loc5_,_loc6_.m_moves);
                        _loc5_.CalculateCurrStats();
                     }
                     _loc5_.ReFillHealthAndEnergy();
                     §§push(Singleton.dynamicData);
                     continue;
                  }
                  §§goto(addr171);
               }
               else
               {
                  _loc5_.SetLevel(Singleton.staticData.GetTrainerMinionLevelFor(Singleton.dynamicData.m_currFloorOfTower));
                  if(!(_loc8_ && Boolean(param1)))
                  {
                     §§goto(addr171);
                  }
               }
               §§goto(addr171);
            }
         }
         return _loc3_;
      }
      
      public function GetCurrentTrainer() : TrainerDataObject
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(Singleton.dynamicData.m_currTrainerID == 0)
            {
               if(_loc2_)
               {
                  §§goto(addr30);
               }
            }
            return this.m_trainers[Singleton.dynamicData.m_currFloorOfTower][Singleton.dynamicData.m_currTrainerID - 1];
         }
         addr30:
         return this.m_trainers[Singleton.dynamicData.m_currFloorOfTower][Singleton.dynamicData.m_currTrainerID];
      }
      
      private function AddTrainerToFloor(param1:int, param2:int, param3:int) : TrainerDataObject
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:TrainerDataObject;
         (_loc4_ = new TrainerDataObject()).m_trainerType = param1;
         if(!_loc6_)
         {
            _loc4_.m_trainerRoomID = param3;
            if(_loc5_ || Boolean(param2))
            {
               this.m_trainers[param2].push(_loc4_);
               if(_loc5_)
               {
                  addr47:
                  Singleton.dynamicData.AddTrainerStarCountToFloor(param2);
               }
               return _loc4_;
            }
         }
         §§goto(addr47);
      }
      
      private function CreateFloor1() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 0;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(_loc4_ || Boolean(this))
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Are you a fellow student?  Let\'s head up to the battle arena then.  If you win I\'ll give you a key!";
            if(_loc4_ || _loc3_)
            {
               addr44:
               _loc2_.m_whatTrainerSaysAtLose = "You did fantastic!";
               if(_loc4_ || Boolean(_loc2_))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_1,[]);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr66:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_1,[]);
                     if(!_loc3_)
                     {
                        addr73:
                        _loc2_.m_extraMinionLevels = -3;
                     }
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
                  if(_loc4_)
                  {
                     _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I won\'t give up my key easily!";
                     if(!_loc3_)
                     {
                        addr91:
                        _loc2_.m_whatTrainerSaysAtLose = "You might be good enough to beat my teacher!";
                        if(!_loc3_)
                        {
                           addr96:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_1,[]);
                           if(!_loc3_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_1,[]);
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 _loc2_.m_extraMinionLevels = -2;
                              }
                           }
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                        if(_loc4_ || Boolean(this))
                        {
                           _loc2_.m_whatTrainerSaysAtStart_notBeaten = " Let\'s see if we can learn from one another.";
                           if(_loc4_)
                           {
                              _loc2_.m_whatTrainerSaysAtLose = "That was great!  Here is a key to my teachers door.";
                              if(!_loc3_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_1,[]);
                                 if(!_loc3_)
                                 {
                                    addr157:
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_1,[626,584,599,249,292]);
                                    if(_loc4_)
                                    {
                                       _loc2_.m_extraMinionLevels = -1;
                                    }
                                 }
                              }
                              _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                              if(_loc4_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_1,[]);
                                 if(_loc4_)
                                 {
                                    §§goto(addr189);
                                 }
                                 §§goto(addr196);
                              }
                              addr189:
                              _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_1,[]);
                              if(!_loc3_)
                              {
                                 addr196:
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_1,[]);
                                 if(_loc4_)
                                 {
                                    _loc2_.m_extraMinionLevels = -1;
                                 }
                              }
                              _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                              if(!_loc3_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_1,[]);
                                 if(_loc4_ || Boolean(_loc2_))
                                 {
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_1,[]);
                                    if(!_loc3_)
                                    {
                                       §§goto(addr235);
                                    }
                                    §§goto(addr242);
                                 }
                              }
                              addr235:
                              _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_1,[]);
                              if(!_loc3_)
                              {
                                 addr242:
                                 _loc2_.m_extraMinionLevels = 1;
                              }
                              _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                              if(_loc4_ || Boolean(this))
                              {
                                 _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I am a Sage of Courage.  To be a Grand Sage you must demonstrate the ability to be courageous.";
                                 if(!_loc3_)
                                 {
                                    _loc2_.m_whatTrainerSaysAtLose = "You have demonstrated much courage in that battle, but there is still more to learn.  Here is the first piece of the Courage Sage Seal.  Also, here is a key to the hatchery.";
                                    if(_loc4_)
                                    {
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_1,[626,584,599,249,292]);
                                       if(_loc3_ && Boolean(this))
                                       {
                                       }
                                       §§goto(addr308);
                                    }
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_1,[75,155,89,119,289,165,273]);
                                    if(_loc4_)
                                    {
                                       §§goto(addr308);
                                    }
                                 }
                                 §§goto(addr308);
                              }
                              addr308:
                              _loc2_.m_extraMinionLevels = 0;
                              return;
                           }
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr91);
               }
               §§goto(addr73);
            }
            §§goto(addr66);
         }
         §§goto(addr44);
      }
      
      private function CreateFloor2() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 1;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Each floor has students that are stronger than the previous floors.";
         if(_loc3_)
         {
            _loc2_.m_whatTrainerSaysAtLose = "You are quite strong, my friend!";
            _loc2_.AddMod_Shield(1,1);
            if(!_loc4_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_1,[]);
            }
            _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_1,[]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_1,[80,625,490,486,480,500,241]);
         }
         _loc2_.m_extraMinionLevels = -2;
         //db is here
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
         if(_loc3_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "There wasn\'t much to do after we destroyed the ring...";
            _loc2_.m_whatTrainerSaysAtLose = "You would do well in the fellowship.";
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               addr88:
               _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_1,[]);
               if(!_loc4_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_1,[]);
                  if(_loc3_)
                  {
                     addr102:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_1,[81,155,131,101,216,225,289,89,165,176]);
                  }
               }
               _loc2_.m_extraMinionLevels = -2;
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
               if(!_loc4_)
               {
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "My teacher has taught me well.  I will show you the strength of my birds!";
                  _loc2_.m_whatTrainerSaysAtLose = "I admit they are weak to electric and ground moves.";
                  _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_1,[626,584,599,249,292]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_1,[]);
                  if(_loc3_ || Boolean(this))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_1,[80,625,490,486,480,500,241]);
                     if(_loc3_)
                     {
                        _loc2_.m_extraMinionLevels = -1;
                     }
                  }
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
               if(_loc3_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_1,[]);
                  if(_loc3_)
                  {
                     addr199:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_1,[]);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_1,[]);
                        if(!_loc4_)
                        {
                           addr218:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_1,[]);
                           if(!_loc4_)
                           {
                              _loc2_.m_extraMinionLevels = -1;
                           }
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                        if(_loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_1,[80,155,211,175]);
                           if(!_loc4_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_1,[]);
                              if(_loc3_)
                              {
                                 §§goto(addr256);
                              }
                              §§goto(addr268);
                           }
                        }
                        addr256:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_1,[]);
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr268:
                           _loc2_.m_extraMinionLevels = 0;
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                        _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Courage is the ability to do a difficult thing.  I will test your courage now.";
                        _loc2_.m_whatTrainerSaysAtLose = "You have shown me you understand courage, here is the second piece to the Sage Seal of Courage.";
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           _loc2_.AddMod_Shield(1,1);
                        }
                        _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_1,[75,155,89,119,289,165,273]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_1,[81,155,131,101,216,225,289,89,165,176]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_1,[]);
                        _loc2_.m_extraMinionLevels = 0;
                        return;
                     }
                  }
                  §§goto(addr218);
               }
               §§goto(addr199);
            }
            §§goto(addr102);
         }
         §§goto(addr88);
      }
      
      private function CreateFloor3() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 2;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "My Tatails are so cute...I mean cool!!";
         if(!_loc3_)
         {
            _loc2_.m_whatTrainerSaysAtLose = "How dare you do that to them!!";
            _loc2_.AddMod_Shield(1,1);
            _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_1,[90,450,429,242,422,297,272,286]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_1,[80,584,297,487,225,287,241,270]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_1,[80,4,243,58,25,271,41]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_1,[80,344,273,335,831,276,242,55]);
         }
         _loc2_.m_extraMinionLevels = -2;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Har Har, let\'s see what you\'re made of my lad.";
         _loc2_.m_whatTrainerSaysAtLose = "Lad, you put the hurting on me. Well done!";
         if(_loc4_ || Boolean(_loc1_))
         {
            _loc2_.AddMod_Shield(1,1);
            _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_1,[75,329,302,287,509,141]);
            if(!_loc3_)
            {
               addr131:
               _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_1,[90,450,429,242,422,297,272,286]);
               if(_loc4_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_1,[90,450,129,219,100,650,141,272,421]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_1,[91,450,89,272,288,297,242]);
                  if(_loc4_)
                  {
                  }
                  addr177:
                  _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Electricity is the life of machinery, can you stand up to it?";
                  _loc2_.m_whatTrainerSaysAtLose = "That was a shockingly good battle!";
                  _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_1,[80,343,334,249,297,276]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_1,[85,94,122,248,345,342,356]);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_1,[85,94,122,248,345,342,356]);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_1,[85,94,122,248,345,342,356]);
                  if(!_loc3_)
                  {
                     _loc2_.m_extraMinionLevels = -1;
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                  if(_loc4_ || Boolean(_loc1_))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_1,[80,539,142,558,847,278]);
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_1,[80,564,576,249,572,292]);
                        if(!_loc3_)
                        {
                           addr303:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_1,[]);
                           if(_loc4_)
                           {
                           }
                           §§goto(addr322);
                        }
                        _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_1,[]);
                        if(_loc4_ || Boolean(this))
                        {
                           §§goto(addr322);
                        }
                        addr322:
                        _loc2_.m_extraMinionLevels = -1;
                        _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                        if(!_loc3_)
                        {
                           _loc2_.AddMinion(59,[80,342,330]);
                           if(_loc4_ || Boolean(this))
                           {
                              _loc2_.AddMinion(57,[110,176,155,305]);
                              if(_loc4_)
                              {
                              }
                              §§goto(addr374);
                           }
                           _loc2_.AddMinion(57,[110,176,155,305]);
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              §§goto(addr374);
                           }
                           §§goto(addr384);
                        }
                        addr374:
                        _loc2_.AddMinion(65,[85,880,545,355]);
                        if(_loc4_)
                        {
                           addr384:
                           _loc2_.m_extraMinionLevels = 0;
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                        _loc2_.m_whatTrainerSaysAtStart_notBeaten = "You\'re shaping into quite the trainer.";
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc2_.m_whatTrainerSaysAtLose = "Here is the final piece to the Sage Seal of Courage, you must fight the Grass Sage to have it fused together.";
                           _loc2_.AddMod_Shield(2,2);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_1,[75,595,582,244,369,491,225,211]);
                           if(_loc4_ || Boolean(_loc1_))
                           {
                              §§goto(addr432);
                           }
                           §§goto(addr451);
                        }
                        addr432:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_1,[91,450,89,272,288,297,242]);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_1,[80,155,154,147,270,249,26,243,11]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_1,[626,584,599,249,292]);
                           addr451:
                           if(!_loc3_)
                           {
                              _loc2_.m_extraMinionLevels = 0;
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr303);
               }
               _loc2_.m_extraMinionLevels = -2;
            }
            §§goto(addr177);
         }
         §§goto(addr131);
      }
      
      private function CreateFloor4() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 3;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(!_loc4_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "It\'s a great day for a hike!";
            _loc2_.m_whatTrainerSaysAtLose = "It\'s always a great day for a hike!";
            _loc2_.AddMod_Shield(1,1);
            _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_1,[]);
         }
         _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_1,[]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_1,[]);
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_1,[]);
            if(_loc3_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_1,[]);
               if(_loc3_)
               {
                  addr74:
                  _loc2_.m_extraMinionLevels = -2;
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               if(_loc3_ || Boolean(this))
               {
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "The flowers bloom just as my beauty blooms.";
                  _loc2_.m_whatTrainerSaysAtLose = "It appears your skill blooms as the flowers do.";
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,619,263,517,614,258]);
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_1,[75,595,582,244,369,491,225,211]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_1,[75,489,493,227,582,242]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_1,[80,155,214,179,304,101,296,216]);
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_1,[80,625,494,487,499,244,631]);
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_.m_extraMinionLevels = -1;
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
               if(!_loc4_)
               {
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "One does not simply win a battle.";
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc2_.m_whatTrainerSaysAtLose = "We\'ll I guess one does...";
                     if(!_loc4_)
                     {
                        addr200:
                        _loc2_.AddMod_Shield(2,2);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_2,[75,105,459,421,462,244,156,395]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,499,509,485,520,279]);
                     }
                     _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,435,679,264,671,259,440]);
                     if(_loc3_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,4,243,58,25,271,41]);
                        if(!_loc4_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,344,273,335,831,276,242,55]);
                           addr276:
                           _loc2_.m_extraMinionLevels = -1;
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_1,[80,155,214,179,304,101,296,216]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_1,[80,625,639,632,279,487,241]);
                           if(!(_loc4_ && _loc3_))
                           {
                              addr326:
                              _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_1,[80,539,142,558,847,278]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_1,[80,564,576,249,572,292]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,619,263,517,614,258]);
                              _loc2_.m_extraMinionLevels = -1;
                           }
                           _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_1,[75,155,154,149,167,249,26]);
                           if(_loc3_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_1,[80,155,214,179,304,101,296,216]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_1,[80,564,576,249,572,292]);
                              if(!_loc4_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_1,[410,370,385,249,394,34,574,97]);
                              }
                              _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,435,679,264,671,259,440]);
                              if(_loc3_)
                              {
                                 _loc2_.m_extraMinionLevels = 0;
                              }
                           }
                           _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                           _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I will show you the true strength of the minions you are about to get.";
                           _loc2_.m_whatTrainerSaysAtLose = "Go claim your prize, here is a key to the hatchery.";
                           _loc2_.AddMod_Shield(1,1);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,434,582,249,599,457]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_2,[410,370,385,249,394,34,574,97]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,436,479,259,470,264,670]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_2,[90,450,429,242,422,297,272,286]);
                           _loc2_.m_extraMinionLevels = 0;
                           return;
                        }
                        §§goto(addr326);
                     }
                     §§goto(addr276);
                  }
               }
               §§goto(addr200);
            }
         }
         §§goto(addr74);
      }
      
      private function CreateFloor_Boss1() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 4;
         _loc2_ = this.AddTrainerToFloor(TrainerType.TRAINER_GYM_1,_loc1_,0);
         if(_loc3_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "You have done very well so far, but I will push you to your limits.  For I am Tafel the Grass Sage.";
            _loc2_.m_whatTrainerSaysAtLose = "That was fantastic!!  I award you the Sage Seal of Courage.\n...\nYou can now find random money chests in the Tower.";
         }
         _loc2_.AddMod_Shield(2,2);
         if(_loc3_)
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_1,[410,370,385,249,394,34,574,97]);
            if(!(_loc4_ && _loc3_))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_1,[80,155,154,147,270,249,26,243,11]);
               addr81:
               _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_2,[90,450,429,242,422,297,272,286]);
            }
            _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_1,[75,439,472,259,475,518,275]);
            if(_loc3_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_1,[626,584,599,249,292]);
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc2_.m_extraMinionLevels = 0;
               }
            }
            return;
         }
         §§goto(addr81);
      }
      
      private function CreateFloor5() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 5;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I\'ve got da Vudu mon.";
            _loc2_.m_whatTrainerSaysAtLose = "You killed da Vudu mon!";
            if(_loc3_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_1,[85,0,70,244,27,43,181,856]);
               if(_loc3_ || Boolean(this))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_1,[85,0,204,277,207,220,756,232,105]);
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_1,[75,450,444,227,439,259,320]);
                  }
               }
               addr123:
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "ARE YOU READY FOR THE PAIN!!";
               _loc2_.m_whatTrainerSaysAtLose = "OUCH! I felt the pain on that one...";
               _loc2_.AddMinion(MinionDexID.DEX_ID_worm_1,[86,160,359,363,181,231,100,247]);
               if(_loc3_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_worm_1,[85,160,119,103,249,94,231]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_worm_1,[85,160,119,103,249,94,231]);
                  if(!(_loc4_ && Boolean(this)))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_2,[75,450,184,157,297,286,422,243]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_1,[75,450,415,398,406,437,225,422,243]);
                     _loc2_.m_extraMinionLevels = -1;
                  }
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I\'m burning to battle you!";
                  _loc2_.m_whatTrainerSaysAtLose = "Way to put out my fire.";
                  _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_1,[75,450,444,227,439,259,320]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_1,[75,450,184,157,297,286,422,243]);
                  if(_loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_1,[85,0,70,244,27,43,181,856]);
                     if(_loc3_)
                     {
                     }
                     addr312:
                     _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,584,297,487,225,287,241,270]);
                     if(_loc3_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,4,243,58,25,271,41]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,344,273,335,831,276,242,55]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_2,[80,155,214,179,304,101,296,216]);
                     }
                     _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_1,[75,450,444,227,439,259,320]);
                     if(_loc3_ || Boolean(this))
                     {
                        _loc2_.m_extraMinionLevels = -1;
                     }
                     _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                     if(!_loc4_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_1,[85,0,70,244,27,43,181,856]);
                        if(_loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_1,[85,0,204,277,207,220,756,232,105]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_1,[75,450,444,227,439,259,320]);
                        }
                        _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_1,[80,155,154,147,270,249,26,243,11]);
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_1,[80,155,214,179,304,101,296,216]);
                           addr480:
                           _loc2_.m_extraMinionLevels = 0;
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                        _loc2_.m_whatTrainerSaysAtStart_notBeaten = "A Grand Sage needs passion!  I will test the depth of your passion!";
                        _loc2_.m_whatTrainerSaysAtLose = "You are quite passionate!  Here is a piece of the Seal of Passion!";
                        _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_1,[85,0,70,244,27,43,181,856]);
                        if(!(_loc4_ && _loc3_))
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_1,[85,0,204,277,207,220,756,232,105]);
                           if(_loc3_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_1,[75,450,444,227,439,259,320]);
                              if(_loc3_)
                              {
                                 §§goto(addr547);
                              }
                           }
                           §§goto(addr569);
                        }
                        addr547:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_1,[75,450,184,157,297,286,422,243]);
                        if(!_loc4_)
                        {
                           addr569:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_1,[80,0,104,108,236,214,287]);
                           if(_loc3_ || Boolean(_loc1_))
                           {
                           }
                           §§goto(addr591);
                        }
                        _loc2_.m_extraMinionLevels = 0;
                        addr591:
                        return;
                     }
                     §§goto(addr480);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_1,[75,155,154,149,167,249,26]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_1,[85,0,289,856,230,107,325,277,371]);
                  _loc2_.m_extraMinionLevels = -2;
               }
               §§goto(addr312);
            }
            _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_1,[80,584,297,487,225,287,241,270]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_1,[80,344,273,335,831,276,242,55]);
            _loc2_.m_extraMinionLevels = -2;
         }
         §§goto(addr123);
      }
      
      private function CreateFloor6() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 6;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Ooga booga, ooga booga, ooga booga!!";
         _loc2_.m_whatTrainerSaysAtLose = "Well.....that certainly didn\'t work!";
         _loc2_.AddMod_MoveTimer(MinionMoveID.sear_t1,3,1,MinionMoveID.hulk_inspiration_t3);
         if(!_loc3_)
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_1,[75,0,55,54,259,125,207,232]);
            if(_loc4_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_1,[75,0,59,24,50,127,108]);
               if(_loc4_)
               {
               }
               addr84:
               _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_2,[75,450,184,157,297,286,422,243]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_1,[80,0,14,26,47,249,37]);
               if(!_loc3_)
               {
                  _loc2_.m_extraMinionLevels = -2;
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "One must train very hard to reach the pinnacle.";
               _loc2_.m_whatTrainerSaysAtLose = "You train well, very well.";
               if(_loc4_ || Boolean(_loc1_))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_1,[75,155,364,27,561,226,149,246]);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_1,[80,539,142,558,847,278]);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_1,[80,130,112,289,270,251,576,247]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_1,[75,0,55,54,259,125,207,232]);
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,584,297,487,225,287,241,270]);
               _loc2_.m_extraMinionLevels = -1;
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Hehehehe, what bringggs you here!?";
               _loc2_.m_whatTrainerSaysAtLose = "Arrgh, you\'re too strong! Stay away!";
               _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_1,[80,564,556,244,578,361]);
               if(_loc4_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_1,[80,359,362,852,180,244,270]);
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_1,[80,129,878,288,869,360]);
               if(_loc4_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_1,[535,559,577,490,243,273]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_1,[535,114,21,299,58,491]);
                  if(_loc4_ || _loc3_)
                  {
                     addr296:
                     _loc2_.m_extraMinionLevels = -1;
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_1,[539,511,545,144,872,272]);
                     if(!_loc3_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_1,[535,559,577,490,243,273]);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_2,[535,114,21,299,58,491]);
                           addr356:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_1,[535,114,21,299,58,491]);
                           addr367:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_2,[80,155,214,179,304,101,296,216]);
                           _loc2_.m_extraMinionLevels = -1;
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_1,[75,0,55,54,259,125,207,232]);
                        if(!_loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_1,[75,0,59,24,50,127,108]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_2,[75,450,444,227,439,259,320]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_1,[81,374,393,249,34,297]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_1,[80,0,179,21,160,304,172,214,235]);
                           _loc2_.m_extraMinionLevels = 0;
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                        _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I can see your passion is truely deepening!";
                        _loc2_.m_whatTrainerSaysAtLose = "Excellent!  Here is the second piece of the Sage Seal of Passion!";
                        if(_loc4_)
                        {
                           _loc2_.AddMod_MoveTimer(MinionMoveID.inner_force_t1,12,2,MinionMoveID.deadly_inspiration_t3);
                        }
                        _loc2_.AddMinion(MinionDexID.DEX_ID_chameleon_1,[75,429,457,450,244,229]);
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_2,[75,0,55,54,259,125,207,232]);
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_1,[80,539,142,558,847,278]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_1,[75,0,55,54,259,125,207,232]);
                              §§goto(addr551);
                           }
                           §§goto(addr566);
                        }
                        addr551:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_1,[80,155,214,179,304,101,296,216]);
                        if(!_loc3_)
                        {
                           addr566:
                           _loc2_.m_extraMinionLevels = 0;
                        }
                        return;
                     }
                     §§goto(addr367);
                  }
                  §§goto(addr356);
               }
               §§goto(addr296);
            }
            _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_1,[75,0,64,43,146,244,67]);
         }
         §§goto(addr84);
      }
      
      private function CreateFloor7() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 7;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I\'ll show you how to battle mon.";
            _loc2_.m_whatTrainerSaysAtLose = "Looks like I could learn some pointers from you mon.";
            _loc2_.AddMod_MoveTimer(MinionMoveID.ice_shield_t5,4,1,MinionMoveID.deadly_inspiration_t5);
            if(_loc4_ || Boolean(_loc2_))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_1,[85,0,70,244,27,43,181,856]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_1,[85,0,204,277,207,220,756,232,105]);
               if(_loc3_ && Boolean(_loc2_))
               {
               }
               addr146:
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Welcome to the jungle.";
               if(!_loc3_)
               {
                  _loc2_.m_whatTrainerSaysAtLose = "That wasn\'t very fun.";
                  if(_loc4_ || Boolean(this))
                  {
                     _loc2_.AddMod_MoveTimer(MinionMoveID.meteor_strike_t5,16,2,MinionMoveID.agile_inspiration_t5);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_chameleon_1,[75,429,457,450,244,229]);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_chameleon_1,[75,374,160,121,417,293,456,450]);
                  if(!_loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_1,[85,0,70,244,27,43,181,856]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_2,[80,5,354,343,273,242,12]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_2,[80,5,34,14,242,274,345]);
                     _loc2_.m_extraMinionLevels = -1;
                  }
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = ".................";
               if(_loc4_ || Boolean(this))
               {
                  _loc2_.m_whatTrainerSaysAtLose = "I have broken my vows of silenece to say that was an AMAZING fight!!";
                  _loc2_.AddMod_MoveTimer(MinionMoveID.reflect_damage_t1,3,1,MinionMoveID.mirror_coating_t3);
                  if(_loc4_)
                  {
                     addr274:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_2,[75,0,55,54,259,125,207,232]);
                     if(_loc4_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,440,423,431,259,447,243]);
                        if(_loc4_ || Boolean(_loc1_))
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,104,108,236,214,287]);
                           addr328:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_1,[80,0,14,26,47,249,37]);
                           if(!_loc3_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_worm_1,[86,160,359,363,181,231,100,247]);
                           }
                        }
                        _loc2_.m_extraMinionLevels = -1;
                        _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_harpy_1,[628,645,244,487,657,562]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_harpy_1,[625,544,264,547,697,554]);
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_harpy_1,[625,39,8,290,33,244]);
                        }
                        _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_2,[80,155,214,179,304,101,296,216]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_2,[80,155,154,147,270,249,26,243,11]);
                        if(_loc4_ || _loc3_)
                        {
                           _loc2_.m_extraMinionLevels = -1;
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_2,[75,0,55,54,259,125,207,232]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_2,[81,373,29,34,14,295,247]);
                           if(_loc4_ || _loc3_)
                           {
                              addr490:
                              _loc2_.AddMinion(MinionDexID.DEX_ID_worm_2,[85,160,185,177,214,166,287,230,126]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,214,371,145,219,179,305]);
                              if(_loc4_ || Boolean(_loc1_))
                              {
                                 addr523:
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_2,[75,450,444,227,439,259,320]);
                                 _loc2_.m_extraMinionLevels = 0;
                              }
                              _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                              if(_loc4_)
                              {
                                 _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Passion is what drives our actions!  And the ability to act is vital for a Grand Sage!";
                                 if(_loc4_)
                                 {
                                    addr553:
                                    _loc2_.m_whatTrainerSaysAtLose = "Well done!  Here is the third and final piece of the Sage Seal of Passion!";
                                    if(_loc4_)
                                    {
                                       _loc2_.AddMod_MoveTimer(MinionMoveID.wildfire_t3,5,1,MinionMoveID.energizing_inspiration_t5);
                                       if(_loc4_)
                                       {
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_2,[75,450,444,227,439,259,320]);
                                          if(_loc4_ || Boolean(this))
                                          {
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_2,[75,450,184,157,297,286,422,243]);
                                             if(_loc4_)
                                             {
                                                addr602:
                                                _loc2_.AddMinion(MinionDexID.DEX_ID_worm_1,[86,160,359,363,181,231,100,247]);
                                                if(!_loc3_)
                                                {
                                                   _loc2_.AddMinion(MinionDexID.DEX_ID_worm_2,[85,160,185,177,214,166,287,230,126]);
                                                   addr617:
                                                   if(_loc4_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr654);
                                             }
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_1,[80,0,179,21,160,304,172,214,235]);
                                          }
                                       }
                                       addr654:
                                       _loc2_.m_extraMinionLevels = 0;
                                       return;
                                    }
                                    §§goto(addr617);
                                 }
                                 §§goto(addr602);
                              }
                              §§goto(addr553);
                           }
                           §§goto(addr523);
                        }
                        §§goto(addr490);
                     }
                  }
                  §§goto(addr328);
               }
               §§goto(addr274);
            }
            _loc2_.AddMinion(MinionDexID.DEX_ID_worm_1,[85,160,185,177,214,166,287,230,126]);
            if(_loc4_ || Boolean(this))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_worm_1,[86,160,359,363,181,231,100,247]);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_2,[75,0,55,54,259,125,207,232]);
               }
            }
            _loc2_.m_extraMinionLevels = -2;
         }
         §§goto(addr146);
      }
      
      private function CreateFloor8() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 8;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(!(_loc3_ && Boolean(this)))
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Titoro will bring the heat";
            _loc2_.m_whatTrainerSaysAtLose = "You smothered my Titoro...";
            if(_loc4_)
            {
               _loc2_.AddMod_MoveTimer(MinionMoveID.rainfall_t2,4,1,MinionMoveID.energizing_inspiration_t5);
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_harpy_1,[625,544,264,547,697,554]);
                  if(_loc4_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_harpy_1,[625,39,8,290,33,244]);
                     if(_loc4_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,584,297,487,225,287,241,270]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,344,273,335,831,276,242,55]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_robobull_1,[95,60,249,13,27,277,725]);
                     }
                     addr124:
                     _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
                     _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I\'m sure in my training.";
                     _loc2_.m_whatTrainerSaysAtLose = "...I must work harder it seems...";
                     _loc2_.AddMod_MoveTimer(MinionMoveID.roar_t5,6,1,MinionMoveID.deadly_inspiration_t4);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_2,[80,5,354,343,273,242,12]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_2,[80,5,34,14,242,274,345]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_2,[80,5,89,107,97,289,242]);
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_2,[75,450,444,227,439,259,320]);
                           addr208:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_2,[81,374,393,249,34,297]);
                        }
                        _loc2_.m_extraMinionLevels = -1;
                        _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                        if(!_loc3_)
                        {
                           _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I\'ve got a few tricks up my sleeve mon.";
                           if(_loc4_)
                           {
                              _loc2_.m_whatTrainerSaysAtLose = "Well done mon, I\'ll tell you a trick. When you\'re up against earth minions, remember they are weak against plant, water, and undead moves.";
                              if(!_loc3_)
                              {
                                 _loc2_.AddMod_MoveTimer(MinionMoveID.inner_force_t1,6,2,MinionMoveID.deadly_inspiration_t3);
                                 if(_loc4_)
                                 {
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_worm_2,[86,160,359,363,181,231,100,247]);
                                    addr265:
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_worm_2,[85,160,185,177,214,166,287,230,126]);
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_holyfox_1,[85,0,267,682,275,674,287,226]);
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_worm_1,[85,160,119,103,249,94,231]);
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_holyfox_1,[85,0,69,227,707,244,660]);
                                    if(_loc4_)
                                    {
                                       _loc2_.m_extraMinionLevels = -1;
                                    }
                                 }
                                 _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_holyfox_1,[85,0,69,227,707,244,660]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_holyfox_1,[85,0,267,682,275,674,287,226]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_2,[75,450,184,157,297,286,422,243]);
                                 if(!_loc3_)
                                 {
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_2,[75,450,440,423,431,259,447,243]);
                                    if(_loc4_ || _loc3_)
                                    {
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                                    }
                                    _loc2_.m_extraMinionLevels = -1;
                                 }
                                 _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,70,244,27,43,181,856]);
                                 if(_loc4_)
                                 {
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_2,[75,450,444,227,439,259,320]);
                                 }
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_robobull_1,[95,60,249,13,27,277,725]);
                                 if(_loc4_ || Boolean(this))
                                 {
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_2,[81,374,393,249,34,297]);
                                    if(_loc4_ || Boolean(this))
                                    {
                                       addr485:
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_2,[80,155,214,179,304,101,296,216]);
                                    }
                                    _loc2_.m_extraMinionLevels = 0;
                                    _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                                    _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I will truely test your strength, but the reward is worth it.";
                                    if(_loc4_ || _loc3_)
                                    {
                                       _loc2_.m_whatTrainerSaysAtLose = "Well done!  Go and claim your reward...it is well earned.";
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_holyfox_1,[85,0,267,682,275,674,287,226]);
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_robobull_1,[95,60,249,13,27,277,725]);
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_2,[75,450,184,157,297,286,422,243]);
                                       if(_loc4_ || Boolean(_loc2_))
                                       {
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_2,[75,450,143,101,420,243,403,127]);
                                       }
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_2,[81,370,320,89,279,134,109,431]);
                                       if(_loc4_)
                                       {
                                          _loc2_.m_extraMinionLevels = 0;
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr485);
                              }
                           }
                        }
                        §§goto(addr265);
                     }
                     §§goto(addr208);
                  }
               }
            }
            _loc2_.m_extraMinionLevels = -2;
         }
         §§goto(addr124);
      }
      
      private function CreateFloor_Boss2() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 9;
         _loc2_ = this.AddTrainerToFloor(TrainerType.TRAINER_GYM_2,_loc1_,0);
         if(!(_loc3_ && Boolean(this)))
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I can feel the heat of your passion!  I am the Sage of Fire, I will truely test your passion!";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc2_.m_whatTrainerSaysAtLose = "You\'re passion is stronger than I expected.  Well done!!\n...\nThe Sage Seal of Passion grants you the ability to combine gems.";
               _loc2_.AddMod_MoveTimer(MinionMoveID.slow_t5,6,1,MinionMoveID.agile_inspiration_t4);
               _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_2,[81,373,29,34,14,295,247]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_2,[80,5,354,343,273,242,12]);
               if(_loc4_ || _loc3_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,289,856,230,107,325,277,371]);
                  if(_loc4_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_worm_2,[86,160,359,363,181,231,100,247]);
                     if(_loc3_ && Boolean(_loc1_))
                     {
                     }
                     addr149:
                     _loc2_.m_extraMinionLevels = 0;
                  }
                  §§goto(addr152);
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_chameleon_1,[75,429,457,450,244,229]);
               if(_loc4_)
               {
               }
               addr152:
               return;
            }
         }
         §§goto(addr149);
      }
      
      private function CreateFloor9() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 10;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I calculate that it is highly improbable that you\'ll win this fight.";
         if(!_loc3_)
         {
            _loc2_.m_whatTrainerSaysAtLose = "E=mc squared your good!!";
         }
         _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_2,[85,884,357,840,368,342,246]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_2,[85,94,122,248,345,342,356]);
         if(!_loc3_)
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_2,[85,129,182,144,219]);
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,730,739,725,244,212,11,340]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,348,342,832,270,736,725,242]);
               if(!(_loc3_ && Boolean(this)))
               {
                  addr111:
                  _loc2_.m_extraMinionLevels = -2;
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Prepare to be shredded!";
               if(_loc4_ || _loc3_)
               {
                  _loc2_.m_whatTrainerSaysAtLose = "Looks like you did the shredding.";
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Scorpion_1,[80,341,833,348,244,301,160]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Scorpion_2,[80,341,155,176,304,217,160,272,240]);
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_Scorpion_1,[80,340,114,89,128,287,272]);
               if(!_loc3_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,584,297,487,225,287,241,270]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,4,243,58,25,271,41]);
                  if(!_loc3_)
                  {
                     _loc2_.m_extraMinionLevels = -1;
                  }
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Electricity is so much fun to play with!";
               _loc2_.m_whatTrainerSaysAtLose = "Ouch!  Your skill is shocking.";
               if(_loc4_ || Boolean(_loc1_))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_2,[85,884,357,840,368,342,246]);
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_2,[85,94,122,248,345,342,356]);
                     if(_loc4_)
                     {
                        addr259:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Scorpion_2,[80,341,833,348,244,301,160]);
                        if(_loc4_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Scorpion_2,[80,340,114,89,128,287,272]);
                           if(_loc4_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                           }
                        }
                     }
                     _loc2_.m_extraMinionLevels = -1;
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Scorpion_1,[80,341,833,348,244,301,160]);
                     if(_loc4_)
                     {
                        addr338:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Scorpion_1,[80,340,114,89,128,287,272]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,474,258,467,477,263,670]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_1,[110,179,309,155,5,214,285]);
                           if(_loc4_)
                           {
                              _loc2_.m_extraMinionLevels = -1;
                           }
                        }
                     }
                     _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_2,[80,340,284,227,536,85,351,277,830]);
                     if(!_loc3_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,584,297,487,225,287,241,270]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,4,243,58,25,271,41]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,474,258,467,477,263,670]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                     }
                     _loc2_.m_extraMinionLevels = 0;
                     _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                     _loc2_.m_whatTrainerSaysAtStart_notBeaten = "A Grand Sage needs deep knowledge of minions and the world they live in.";
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        _loc2_.m_whatTrainerSaysAtLose = "I can see the knowledge in your actions.  Here is a piece of the Sage Seal of Knowledge.";
                        _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,474,258,467,477,263,670]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                     }
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_2,[85,884,357,840,368,342,246]);
                     if(_loc4_ || _loc3_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,730,739,725,244,212,11,340]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_2,[85,94,122,248,345,342,356]);
                        _loc2_.m_extraMinionLevels = 0;
                     }
                     return;
                  }
                  §§goto(addr338);
               }
               §§goto(addr259);
            }
         }
         §§goto(addr111);
      }
      
      private function CreateFloor10() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 11;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(_loc4_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "My mom thinks I\'m cool!";
            _loc2_.m_whatTrainerSaysAtLose = "Honestly, that wasn\'t true....sinff";
            _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_tikiMonkey_1,4,[85,0,204,277,207,220,756,232,105],-2);
         }
         _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_groundAttacker_1,2,[75,155,154,149,167,249,26],0);
         if(_loc4_)
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_2,[85,94,122,248,345,342,356]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_2,[85,94,122,248,345,342,356]);
            if(!_loc3_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[112,100,214,86,289,166]);
            }
         }
         _loc2_.m_extraMinionLevels = -2;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Yeah, so, um.  Lets like battle.";
            _loc2_.m_whatTrainerSaysAtLose = "Wow, um, yeah, your like good.";
            _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
            if(!_loc3_)
            {
               addr163:
               _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[340,569,557,248,576,271,155]);
               if(_loc4_ || Boolean(_loc2_))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[113,744,182,756,732,831]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Scorpion_2,[80,341,155,176,304,217,160,272,240]);
                  addr217:
                  _loc2_.m_extraMinionLevels = -1;
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Prepare for a fatality.";
               _loc2_.m_whatTrainerSaysAtLose = "Now that was fatal!";
               if(!_loc3_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,730,739,725,244,212,11,340]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
                  if(!_loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,834,342,334,270,570,231]);
                     if(!_loc3_)
                     {
                        addr275:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,132,117,289,230,342,570,270]);
                        if(_loc4_)
                        {
                        }
                        §§goto(addr318);
                     }
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[113,744,182,756,732,831]);
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc2_.m_extraMinionLevels = -1;
                     }
                  }
                  addr318:
                  _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,539,142,558,847,278]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,130,112,289,270,251,576,247]);
                  if(_loc4_ || _loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[112,100,214,86,289,166]);
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc2_.m_extraMinionLevels = -1;
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,348,342,832,270,736,725,242]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_RoboShark_1,[91,734,726,140,249,739,275]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,474,258,467,477,263,670]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                  _loc2_.m_extraMinionLevels = 0;
                  _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                  if(_loc4_)
                  {
                     _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Your knowledge is growing?  Let\'s see by how much.";
                     if(_loc4_)
                     {
                        _loc2_.m_whatTrainerSaysAtLose = "Your knowledge is top notch!  Here is the second piece of the Sage Seal of Knowledge.";
                        _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_demonic_cat_1,3,[80,539,142,558,847,278],0);
                        if(!_loc3_)
                        {
                           _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_holyfox_1,2,[85,0,891,244,663,719,653],0);
                           addr518:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
                           if(!(_loc3_ && Boolean(_loc2_)))
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
                              §§goto(addr546);
                           }
                        }
                        §§goto(addr584);
                     }
                     §§goto(addr518);
                  }
                  addr546:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[340,569,557,248,576,271,155]);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,474,258,467,477,263,670]);
                     addr584:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                     _loc2_.m_extraMinionLevels = 0;
                  }
                  return;
               }
               §§goto(addr275);
            }
            §§goto(addr217);
         }
         §§goto(addr163);
      }
      
      private function CreateFloor11() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 12;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Time to take you to school.";
         _loc2_.m_whatTrainerSaysAtLose = "Looks like you already know robots are weak to fire, water, electric, and dino moves.";
         _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_Griffen_1,2,[625,281,88,287,327,276,141],-2);
         if(!_loc3_)
         {
            _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_healingHorse_1,2,[75,434,582,249,599,457],-2);
            if(!_loc3_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,730,739,725,244,212,11,340]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,348,342,832,270,736,725,242]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,329,212,142,650,891,227,270]);
            }
         }
         _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[626,643,346,278,726,340,247]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[113,744,182,756,732,831]);
         if(!_loc3_)
         {
            _loc2_.m_extraMinionLevels = -2;
         }
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Ah, there you are.  I\'m glad to see you!";
         _loc2_.m_whatTrainerSaysAtLose = "I enjoy our battles, I feel like I learn so much!";
         if(_loc4_)
         {
            _loc2_.AddMod_Shield(2,2);
            if(_loc4_ || Boolean(_loc2_))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
               if(_loc4_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,129,219,100,650,141,272,421]);
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_2,[75,105,459,421,462,244,156,395]);
               addr200:
               _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_2,[80,625,639,632,279,487,241]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,154,147,270,249,26,243,11]);
               if(_loc4_)
               {
                  _loc2_.m_extraMinionLevels = -1;
               }
            }
            _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "My eyes are aflame for a good fight!";
            _loc2_.m_whatTrainerSaysAtLose = "That burns good!";
            if(_loc4_ || Boolean(_loc1_))
            {
               _loc2_.AddMod_MoveTimer(MinionMoveID.inner_force_t5,6,2,MinionMoveID.agile_inspiration_t2);
               if(_loc4_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,70,244,27,43,181,856]);
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,204,277,207,220,756,232,105]);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,64,43,146,244,67]);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr322:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,14,26,47,249,37]);
                     addr334:
                     _loc2_.m_extraMinionLevels = -1;
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,55,54,259,125,207,232]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,59,24,50,127,108]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_holyfox_1,[85,0,69,227,707,244,660]);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,184,157,297,286,422,243]);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc2_.m_extraMinionLevels = -1;
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,459,451,292,464,165,485,225]);
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,254,241,95,369,214,309,245]);
                     if(!_loc3_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,435,679,264,671,259,440]);
                        if(!_loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                        }
                     }
                  }
                  _loc2_.m_extraMinionLevels = 0;
                  _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "If you have enough knowledge I will grant you the final piece of the Sage Seal of Knowledge.";
                  _loc2_.m_whatTrainerSaysAtLose = "You\'re ready to challenge the Sage of Knowledge, here is the final piece of the Seal.";
                  if(_loc4_)
                  {
                     _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_Goo_1,6,[85,94,122,248,345,342,356],-6);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,348,342,832,270,736,725,242]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[625,724,341,726,249,299]);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                  if(!_loc3_)
                  {
                     _loc2_.m_extraMinionLevels = 0;
                  }
                  return;
               }
               §§goto(addr334);
            }
            §§goto(addr322);
         }
         §§goto(addr200);
      }
      
      private function CreateFloor12() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 13;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(!_loc4_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "The world isn\'t going to science itself!";
            _loc2_.m_whatTrainerSaysAtLose = "Back to science I go then";
            if(_loc3_ || Boolean(_loc2_))
            {
               _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_grassGorilla_2,5,[75,105,459,421,462,244,156,395],-2);
               if(!_loc4_)
               {
                  _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_raptor_3,2,[81,373,29,34,14,295,247],10);
                  addr72:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_2,[80,343,334,249,297,276]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_2,[80,340,349,279,830,107,126,890,225]);
                  addr97:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,649,244,491,655,274,341]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,829,344,274,244]);
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[113,744,182,756,732,831]);
                  }
                  _loc2_.m_extraMinionLevels = -2;
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Tonight I dine on Turtle soup.";
               _loc2_.m_whatTrainerSaysAtLose = "Don\'t you dare say \"Cowabunga dude\"!";
               if(_loc3_ || Boolean(_loc2_))
               {
                  _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_groundMole_1,5,[80,155,214,179,304,101,296,216],-12);
                  _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_demonic_cat_2,3,[80,564,576,249,572,292],-2);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
                  if(!_loc4_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,132,117,289,230,342,570,270]);
                     if(_loc3_ || Boolean(this))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,649,244,491,655,274,341]);
                        if(_loc3_)
                        {
                           addr235:
                           _loc2_.m_extraMinionLevels = -1;
                        }
                     }
                     §§goto(addr235);
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I study what happens when death calls.";
                  if(_loc3_ || _loc3_)
                  {
                     _loc2_.m_whatTrainerSaysAtLose = "It looks like you have caller ID.";
                     if(!_loc4_)
                     {
                        _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_PinkBell_1,3,[5,674,516,713,264,696],-2);
                        if(!_loc4_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_1,[85,884,357,840,368,342,246]);
                           if(_loc3_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_2,[85,94,122,248,345,342,356]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_2,[85,129,182,144,219]);
                           }
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_2,[85,884,357,840,368,342,246]);
                           addr331:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_DC2Guy_1,[76,774,249,734,739,25]);
                           addr342:
                           _loc2_.m_extraMinionLevels = -1;
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                        if(_loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,730,739,725,244,212,11,340]);
                           if(_loc3_ || Boolean(this))
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,348,342,832,270,736,725,242]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_RoboShark_1,[91,590,584,279,597,297,721,726]);
                              if(_loc3_)
                              {
                              }
                              addr415:
                              _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 _loc2_.m_extraMinionLevels = -1;
                              }
                              _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,348,342,832,270,736,725,242]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_3,[80,340,284,227,536,85,351,277,830]);
                              if(!_loc4_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_RoboShark_1,[91,590,584,279,597,297,721,726]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,435,679,264,671,259,440]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                                 if(_loc3_)
                                 {
                                    addr513:
                                    _loc2_.m_extraMinionLevels = 0;
                                 }
                                 _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                                 if(_loc3_ || _loc3_)
                                 {
                                    _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Prepare to be tested.";
                                    if(!_loc4_)
                                    {
                                       _loc2_.m_whatTrainerSaysAtLose = "You have passed with flying colors!";
                                    }
                                    _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_fire_frog_3,2,[75,0,64,43,146,244,67],-1);
                                    _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_iceBird_2,2,[80,625,519,528,259,522,481],-1);
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_RoboShark_1,[91,590,584,279,597,297,721,726]);
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_2,[80,340,349,279,830,107,126,890,225]);
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,4,243,58,25,271,41]);
                                 }
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,619,263,517,614,258]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,649,244,491,655,274,341]);
                                 _loc2_.m_extraMinionLevels = 0;
                                 return;
                              }
                              §§goto(addr513);
                           }
                           _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,474,258,467,477,263,670]);
                        }
                        §§goto(addr415);
                     }
                     §§goto(addr342);
                  }
                  §§goto(addr331);
               }
               §§goto(addr235);
            }
            §§goto(addr97);
         }
         §§goto(addr72);
      }
      
      private function CreateFloor_Boss3() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 14;
         _loc2_ = this.AddTrainerToFloor(TrainerType.TRAINER_GYM_3,_loc1_,0);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "We must ponder metastasis during our skirmish and the reprocussions it has on the axioms of space and destiny. \n...\nIt is the duty of the Electric Sage to test your knowledge.";
         _loc2_.m_whatTrainerSaysAtLose = "You\'re competence is exemplary!\n...\nWith the Sage Seal of Knowledge, you now have the option to pick a second egg in the hatchery.  If you don\'t want your first choice.";
         _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_DogEel_2,2,[340,289,113,126,532,507],-2);
         _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_groundMole_3,2,[80,155,214,179,304,101,296,216],0);
         _loc2_.AddMinion(MinionDexID.DEX_ID_RoboShark_1,[91,590,584,279,597,297,721,726]);
         if(!_loc3_)
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_2,[80,343,334,249,297,276]);
            if(_loc4_)
            {
               addr96:
               _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,730,739,725,244,212,11,340]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_Scorpion_2,[80,340,114,89,128,287,272]);
               _loc2_.m_extraMinionLevels = 0;
            }
            return;
         }
         §§goto(addr96);
      }
      
      private function CreateFloor13() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 15;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Well well, you think you can win?  We\'ll see about that.";
         _loc2_.m_whatTrainerSaysAtLose = "I hate to admit it.  But I guess you might be alright...";
         _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,539,142,558,847,278]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[625,559,857,487,7,243]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[629,647,120,273,297,650,226]);
         if(_loc3_)
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
         }
         _loc2_.m_extraMinionLevels = -2;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "<Sighs>....Prehaps you will be a challenge...";
         if(!_loc4_)
         {
            _loc2_.m_whatTrainerSaysAtLose = "That was, eventful...you have excited me!";
            if(_loc3_ || Boolean(_loc2_))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_1,[539,511,545,144,872,272]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_2,[535,559,577,490,243,273]);
               if(_loc3_)
               {
                  addr143:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_2,[535,114,21,299,58,491]);
                  if(!_loc4_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                     }
                  }
               }
               _loc2_.m_extraMinionLevels = -1;
               addr191:
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Hahahahahahahahahaaaaaaaaa";
               _loc2_.m_whatTrainerSaysAtLose = "..................";
               _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_2,[535,559,577,490,243,273]);
               if(!_loc4_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_2,[535,114,21,299,58,491]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[625,559,857,487,7,243]);
                  if(_loc3_ || _loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[629,647,120,273,297,650,226]);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_worm_2,[85,160,185,177,214,166,287,230,126]);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr287:
                     _loc2_.m_extraMinionLevels = -1;
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_3,[80,340,284,227,536,85,351,277,830]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[340,289,113,126,532,507]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,474,258,467,477,263,670]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                  if(!_loc4_)
                  {
                     _loc2_.m_extraMinionLevels = -1;
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[629,647,120,273,297,650,226]);
                  if(_loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,499,249,489,276,681]);
                     if(!_loc4_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,524,517,264,528,650]);
                        addr409:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,569,579,95,249,242,10,145]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                        if(_loc3_ || Boolean(this))
                        {
                           _loc2_.m_extraMinionLevels = 0;
                        }
                     }
                     _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                     if(!_loc4_)
                     {
                        _loc2_.m_whatTrainerSaysAtStart_notBeaten = "A Grand Sage needs persistence, times will get tough.";
                     }
                     _loc2_.m_whatTrainerSaysAtLose = "Your strength in battle shows your persistence.  Here is the first piece of the Sage Seal of Persistence.";
                     if(!(_loc4_ && Boolean(this)))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[629,647,120,273,297,650,226]);
                        if(!(_loc4_ && _loc3_))
                        {
                           addr486:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[625,144,84,318,645,485,855,5]);
                           if(!(_loc4_ && Boolean(this)))
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_2,[535,559,577,490,243,273]);
                              if(_loc3_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,499,249,489,276,681]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[625,144,84,318,645,485,855,5]);
                                 if(_loc4_)
                                 {
                                 }
                              }
                              §§goto(addr555);
                           }
                           _loc2_.m_extraMinionLevels = 0;
                        }
                        addr555:
                        return;
                     }
                     §§goto(addr486);
                  }
                  §§goto(addr409);
               }
               §§goto(addr287);
            }
            §§goto(addr143);
         }
         §§goto(addr191);
      }
      
      private function CreateFloor14() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 16;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(_loc4_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Have you met my sisters, we\'re of one mind.";
            if(_loc4_ || Boolean(_loc1_))
            {
               addr39:
               _loc2_.m_whatTrainerSaysAtLose = "I just want us to act in unison.";
            }
            _loc2_.AddMod_Resurection(11);
            _loc2_.AddMinion(MinionDexID.DEX_ID_BlueBell_1,[5,329,229,142,650,891]);
            if(!(_loc3_ && _loc3_))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_worm_2,[86,160,359,363,181,231,100,247]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,154,147,270,249,26,243,11]);
               if(!(_loc3_ && _loc3_))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_2,[535,559,577,490,243,273]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_2,[535,114,21,299,58,491]);
                  addr119:
                  _loc2_.m_extraMinionLevels = -2;
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               if(!_loc3_)
               {
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Have you met my sisters, we\'re two times better than most.";
                  _loc2_.m_whatTrainerSaysAtLose = "I\'m the arrogant one, I guess.";
                  if(!_loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_BlueBell_1,[8,59,244,67,851]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,252,227,217,129,132,665]);
                  }
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_FireGhost_1,[5,859,849,294,843]);
               if(!_loc3_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,684,664,669,244,10]);
                  if(_loc4_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_worm_2,[86,160,359,363,181,231,100,247]);
                  }
                  _loc2_.m_extraMinionLevels = -1;
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Have you met my sisters, three is our favorite number.";
               _loc2_.m_whatTrainerSaysAtLose = "We must learn who we are, to find our deepest strength.";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_1,[625,559,857,487,7,243]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[625,144,84,318,645,485,855,5]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_FireGhost_1,[5,144,227,326,86,317,66,845]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_PinkBell_1,[5,674,516,713,264,696]);
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_worm_2,[85,160,185,177,214,166,287,230,126]);
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc2_.m_extraMinionLevels = -1;
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_2,[539,511,545,144,872,272]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_2,[535,559,577,490,243,273]);
                  if(!_loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,499,249,489,276,681]);
                     if(_loc4_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,544,264,533,553,225]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                        if(_loc3_ && Boolean(_loc1_))
                        {
                        }
                        §§goto(addr390);
                     }
                     _loc2_.m_extraMinionLevels = -1;
                  }
               }
               addr390:
               _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
               _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[625,559,857,487,7,243]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[629,647,120,273,297,650,226]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_FireGhost_1,[8,24,58,26,244]);
               if(!_loc3_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,435,679,264,671,259,440]);
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,214,371,145,219,179,305]);
               if(!_loc3_)
               {
                  _loc2_.m_extraMinionLevels = 0;
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Those that face death, face persistence.";
               _loc2_.m_whatTrainerSaysAtLose = "Your persistence is fitting of a Grand Sage.  Here is the second piece of the Sage Seal of Persistence.";
               if(_loc4_ || Boolean(_loc1_))
               {
                  _loc2_.AddMod_Resurection(14);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,539,142,558,847,278]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_1,[80,359,362,852,180,244,270]);
                  if(_loc4_ || _loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_1,[80,564,556,244,578,361]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,252,227,217,129,132,665]);
                     if(!_loc3_)
                     {
                        addr548:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,684,664,669,244,10]);
                     }
                     _loc2_.m_extraMinionLevels = 0;
                     §§goto(addr562);
                  }
                  §§goto(addr548);
               }
               addr562:
               return;
            }
            §§goto(addr119);
         }
         §§goto(addr39);
      }
      
      private function CreateFloor15() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 17;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(_loc4_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I sense doom in this temple.";
            _loc2_.m_whatTrainerSaysAtLose = "You battle well and your heart is strong, but remember that undead minions are weak to fire, holy, and plant moves.";
            _loc2_.AddMod_Resurection(7);
            if(!_loc3_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_1,[80,564,556,244,578,361]);
               if(!_loc3_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_1,[80,359,362,852,180,244,270]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_1,[80,129,878,288,869,360]);
                  if(_loc4_ || Boolean(_loc1_))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_1,[629,647,120,273,297,650,226]);
                     addr95:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_1,[625,559,857,487,7,243]);
                  }
                  _loc2_.m_extraMinionLevels = -2;
                  addr109:
                  _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "ARRRRRRRRRRR hehehe hahaha";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc2_.m_whatTrainerSaysAtLose = "sniff, sniff.......SNIFFFFF";
                     _loc2_.AddMod_Resurection(10);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_2,[80,359,362,852,180,244,270]);
                     if(!(_loc3_ && _loc3_))
                     {
                        addr152:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[843,879,366,866,872,506,490]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[840,859,244,854,847]);
                        if(_loc4_ || Boolean(this))
                        {
                           addr181:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,544,264,533,553,225]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_worm_2,[85,160,185,177,214,166,287,230,126]);
                           _loc2_.m_extraMinionLevels = -1;
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
                        _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Huzzah!  Boy am I ready for a good battle!";
                        if(_loc4_ || Boolean(_loc1_))
                        {
                           _loc2_.m_whatTrainerSaysAtLose = "Double Huzzah!  That was fantastic!";
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              _loc2_.AddMod_Shield(3,3);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,595,582,244,369,491,225,211]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,584,599,249,292]);
                              if(!_loc3_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_2,[75,155,154,149,167,249,26]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,619,263,517,614,258]);
                                 addr278:
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,154,147,270,249,26,243,11]);
                                 }
                              }
                           }
                           _loc2_.m_extraMinionLevels = -1;
                           _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_SlenderMan_1,[840,369,242,364,219,225]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_SlenderMan_1,[840,104,132,215,129,561,226]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[625,559,857,487,7,243]);
                           if(!(_loc3_ && Boolean(this)))
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,544,264,533,553,225]);
                              if(_loc4_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                                 _loc2_.m_extraMinionLevels = -1;
                              }
                           }
                           _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                           if(_loc4_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_2,[410,370,385,249,394,34,574,97]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,584,297,487,225,287,241,270]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,4,243,58,25,271,41]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,436,479,259,470,264,670]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 _loc2_.m_extraMinionLevels = 0;
                              }
                           }
                           _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I will show you the strength of a Cerberus.";
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 _loc2_.m_whatTrainerSaysAtLose = "Your strength is in your minions and in you.";
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    _loc2_.AddMod_Resurection(12);
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[625,559,857,487,7,243]);
                                 }
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[629,647,120,273,297,650,226]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[625,559,857,487,7,243]);
                                 if(_loc4_)
                                 {
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[629,647,120,273,297,650,226]);
                                 }
                              }
                              _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,29,147,14,65,576,570,247]);
                           }
                           _loc2_.m_extraMinionLevels = 0;
                           return;
                        }
                        §§goto(addr278);
                     }
                     §§goto(addr181);
                  }
                  §§goto(addr152);
               }
               §§goto(addr95);
            }
         }
         §§goto(addr109);
      }
      
      private function CreateFloor16() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 18;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Graves, death, bones, fun, lich, redrum, REDRUM";
         _loc2_.m_whatTrainerSaysAtLose = "hahahahahhahahaaaa";
         _loc2_.AddMod_Resurection(13);
         if(_loc4_ || Boolean(this))
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_Tiger_2,[80,105,98,122,274,219,165]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,499,249,489,276,681]);
            if(_loc4_ || _loc3_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_Tiger_2,[80,105,204,177,219,165,155,287,320]);
               addr87:
               _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,524,517,264,528,650]);
               if(!_loc3_)
               {
                  addr100:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,134,279,680,287,144,485]);
                  if(_loc4_ || Boolean(_loc1_))
                  {
                     _loc2_.m_extraMinionLevels = -2;
                  }
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               if(!_loc3_)
               {
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "The bones of my enemies hold much value.";
                  if(_loc4_)
                  {
                     _loc2_.m_whatTrainerSaysAtLose = "I will find others...";
                     _loc2_.AddMod_Resurection(12);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_2,[843,879,366,866,872,506,490]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[840,859,244,854,847]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,499,249,489,276,681]);
                     if(_loc4_)
                     {
                     }
                     addr210:
                     _loc2_.m_extraMinionLevels = -1;
                     _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                     if(_loc4_ || _loc3_)
                     {
                        _loc2_.m_whatTrainerSaysAtStart_notBeaten = "There is peace in the graves, a deep silience.";
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           _loc2_.m_whatTrainerSaysAtLose = "There is peace in battle as well.";
                           if(!_loc3_)
                           {
                              _loc2_.AddMod_Resurection(11);
                              if(_loc4_)
                              {
                                 addr248:
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_Tiger_2,[80,105,98,122,274,219,165]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_PinkBell_1,[5,674,516,713,264,696]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[77,589,249,494,524,852]);
                                 if(_loc4_)
                                 {
                                 }
                                 addr294:
                                 _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[625,559,857,487,7,243]);
                                 if(_loc4_)
                                 {
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_Tiger_2,[80,105,98,122,274,219,165]);
                                    if(_loc4_ || Boolean(_loc2_))
                                    {
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,499,249,489,276,681]);
                                       if(_loc4_ || Boolean(this))
                                       {
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,569,579,95,249,242,10,145]);
                                          if(!_loc3_)
                                          {
                                             addr367:
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                                             if(!(_loc3_ && Boolean(_loc2_)))
                                             {
                                                addr386:
                                                _loc2_.m_extraMinionLevels = -1;
                                             }
                                             _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                                             if(_loc4_ || Boolean(this))
                                             {
                                                _loc2_.AddMinion(MinionDexID.DEX_ID_PinkBell_1,[5,674,516,713,264,696]);
                                                _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,569,579,95,249,242,10,145]);
                                                if(_loc4_ || _loc3_)
                                                {
                                                   _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[77,589,249,494,524,852]);
                                                   if(_loc4_)
                                                   {
                                                      _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,524,517,264,528,650]);
                                                   }
                                                   addr473:
                                                   _loc2_.m_extraMinionLevels = 0;
                                                   _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                                                   if(_loc4_)
                                                   {
                                                      _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Battle shows the extent of our persistence.  It is easy to see a Grand Sage\'s persistence.";
                                                      _loc2_.m_whatTrainerSaysAtLose = "You have the making of a Grand Sage, here is the final piece of the Sage Seal of Persistence.";
                                                      _loc2_.AddMod_Resurection(10);
                                                      if(_loc4_)
                                                      {
                                                         addr497:
                                                         _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,499,249,489,276,681]);
                                                         if(_loc4_ || Boolean(this))
                                                         {
                                                            _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[77,238,89,214,232,369]);
                                                         }
                                                         _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,29,147,14,65,576,570,247]);
                                                         if(_loc4_ || Boolean(_loc1_))
                                                         {
                                                            _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,524,517,264,528,650]);
                                                            _loc2_.m_extraMinionLevels = 0;
                                                         }
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr497);
                                                }
                                                _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                                             }
                                             §§goto(addr473);
                                          }
                                       }
                                       §§goto(addr367);
                                    }
                                    §§goto(addr386);
                                 }
                                 §§goto(addr367);
                              }
                           }
                           _loc2_.m_extraMinionLevels = -1;
                           §§goto(addr294);
                        }
                     }
                     §§goto(addr248);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,524,517,264,528,650]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                  }
               }
               §§goto(addr210);
            }
            §§goto(addr100);
         }
         §§goto(addr87);
      }
      
      private function CreateFloor_Boss4() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 19;
         _loc2_ = this.AddTrainerToFloor(TrainerType.TRAINER_GYM_4,_loc1_,0);
         if(_loc4_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Da Undead Sage welcomes ya!  I\'ll test your persistence, ya dig?";
            if(!(_loc3_ && _loc3_))
            {
               _loc2_.m_whatTrainerSaysAtLose = "Your persistence is strong mon!!\n...\nThe undead Sage Seal grants you the abiltiy to find random gem chests.";
               if(_loc4_ || _loc3_)
               {
                  _loc2_.AddMod_Resurection(12);
                  if(_loc4_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[85,0,70,244,27,43,181,856]);
                     addr74:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,524,517,264,528,650]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_SlenderMan_1,[840,104,132,215,129,561,226]);
                     if(_loc4_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[625,559,857,487,7,243]);
                        if(_loc4_ || Boolean(_loc1_))
                        {
                           _loc2_.m_extraMinionLevels = 0;
                        }
                     }
                  }
               }
               §§goto(addr74);
            }
            return;
         }
         §§goto(addr74);
      }
      
      private function CreateFloor17() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 20;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(!_loc3_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Hey!  I\'ve heard a lot of really good things about you!";
            _loc2_.m_whatTrainerSaysAtLose = "The rumors are true, you\'re amazing!";
            _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,129,219,100,650,141,272,421]);
            if(_loc4_)
            {
               addr64:
               _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_2,[80,625,494,487,499,244,631]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,439,472,259,475,518,275]);
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
               }
               _loc2_.m_extraMinionLevels = -2;
            }
            _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
            if(_loc4_)
            {
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Water is the essence of life, and life is a beautiful thing.";
               _loc2_.m_whatTrainerSaysAtLose = "There is beauty in battle as well.";
               if(_loc4_)
               {
                  addr129:
                  _loc2_.AddMod_Shield(1,1);
                  _loc2_.AddMod_MoveTimer(MinionMoveID.sear_t5,3,1,MinionMoveID.hulk_inspiration_t3);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,584,297,487,225,287,241,270]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,4,243,58,25,271,41]);
                  if(_loc4_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,344,273,335,831,276,242,55]);
                     if(_loc4_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,619,263,517,614,258]);
                        if(_loc4_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,154,147,270,249,26,243,11]);
                           if(_loc3_)
                           {
                           }
                           addr215:
                           _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                           if(_loc4_ || _loc3_)
                           {
                              _loc2_.m_whatTrainerSaysAtStart_notBeaten = "The forest is place of inspiration to me.";
                              if(_loc4_ || _loc3_)
                              {
                                 _loc2_.m_whatTrainerSaysAtLose = "It is clear you know the forest, but did you know plant types are weak to fire, ice, flying, demonic, and dino moves.";
                                 _loc2_.AddMod_Shield(3,3);
                                 if(_loc4_ || Boolean(_loc2_))
                                 {
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
                                    if(_loc4_ || Boolean(this))
                                    {
                                       addr272:
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,130,112,289,270,251,576,247]);
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,584,599,249,292]);
                                    }
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,580,639,294,279,247,595]);
                                    if(!_loc3_)
                                    {
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,580,639,294,279,247,595]);
                                       _loc2_.m_extraMinionLevels = -1;
                                       addr331:
                                       _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,580,129,516,81,141,131,646,277]);
                                       if(!_loc3_)
                                       {
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_2,[80,625,635,292,277,644,487,242]);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,439,472,259,475,518,275]);
                                             addr400:
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                                             _loc2_.m_extraMinionLevels = -1;
                                          }
                                          _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                                          if(!_loc3_)
                                          {
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,584,599,249,292]);
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                addr443:
                                                _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,580,639,294,279,247,595]);
                                                if(_loc4_ || Boolean(_loc2_))
                                                {
                                                   _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                                                   _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_2,[75,155,364,27,561,226,149,246]);
                                                   if(_loc4_ || Boolean(_loc2_))
                                                   {
                                                      _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
                                                      addr506:
                                                      _loc2_.m_extraMinionLevels = 0;
                                                   }
                                                   _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                                                   _loc2_.m_whatTrainerSaysAtStart_notBeaten = "All Grand Sages have a sense of serenity to them.";
                                                   _loc2_.m_whatTrainerSaysAtLose = "Your serenity is more intense than mine.  Here is the first piece of the Sage Seal of Serenity.";
                                                   _loc2_.AddMod_Shield(1,1);
                                                   _loc2_.AddMod_Resurection(12);
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
                                                      _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[91,450,89,272,288,297,242]);
                                                      _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[91,450,89,272,288,297,242]);
                                                   }
                                                   _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,435,679,264,671,259,440]);
                                                   _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                                                   _loc2_.m_extraMinionLevels = 0;
                                                   return;
                                                }
                                             }
                                             §§goto(addr506);
                                          }
                                          §§goto(addr443);
                                       }
                                       §§goto(addr400);
                                    }
                                 }
                                 §§goto(addr331);
                              }
                              §§goto(addr272);
                           }
                           §§goto(addr331);
                        }
                        _loc2_.m_extraMinionLevels = -1;
                     }
                  }
               }
               §§goto(addr215);
            }
            §§goto(addr129);
         }
         §§goto(addr64);
      }
      
      private function CreateFloor18() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 21;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Fresh Air is just one of my favorite things!";
         if(!_loc4_)
         {
            _loc2_.m_whatTrainerSaysAtLose = "A good battle is another one of my favorite things!";
            _loc2_.AddMod_Shield(1,1);
            if(!(_loc4_ && _loc3_))
            {
               _loc2_.AddMod_MoveTimer(MinionMoveID.rainfall_t4,4,2,MinionMoveID.hulk_inspiration_t4);
               _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_2,[75,155,154,149,167,249,26]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_landShark_1,[75,109,584,607,264,130]);
               if(!(_loc4_ && Boolean(this)))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_landShark_1,[75,109,584,607,264,130]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_landShark_1,[75,599,149,244,582]);
                  if(!(_loc4_ && Boolean(_loc1_)))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                     addr124:
                     _loc2_.m_extraMinionLevels = -2;
                  }
                  §§goto(addr124);
               }
            }
            _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
            if(_loc3_ || Boolean(this))
            {
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I find peace in water.";
               _loc2_.m_whatTrainerSaysAtLose = "Your mastery of water is excellent, you seem to know it\'s weak to electric, plant, and flying moves.";
               if(_loc3_)
               {
                  _loc2_.AddMod_Shield(2,2);
                  if(!(_loc4_ && Boolean(_loc1_)))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,595,582,244,369,491,225,211]);
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,489,493,227,582,242]);
                     }
                     addr217:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,459,451,292,464,165,485,225]);
                     if(_loc3_ || Boolean(this))
                     {
                        _loc2_.m_extraMinionLevels = -1;
                        addr240:
                        _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                        _loc2_.m_whatTrainerSaysAtStart_notBeaten = "YOU SHALL NOT PASS";
                        if(!_loc4_)
                        {
                           _loc2_.m_whatTrainerSaysAtLose = "Well...maybe you will.";
                           _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_landShark_1,[75,109,584,607,264,130]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_landShark_1,[75,599,149,244,582]);
                        }
                        _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_2,[75,105,459,421,462,244,156,395]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_2,[75,105,119,89,225,289,421,121]);
                        _loc2_.m_extraMinionLevels = -1;
                        _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,224,109,289,12,234]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_2,[75,105,459,421,462,244,156,395]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_2,[75,105,119,89,225,289,421,121]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
                        if(_loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                           if(_loc3_ || Boolean(this))
                           {
                              _loc2_.m_extraMinionLevels = -1;
                           }
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_flyingGrassSuperMinion_1,[87,434,249,457,154,827]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_2,[75,155,154,149,167,249,26]);
                        if(_loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_2,[75,155,364,27,561,226,149,246]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,436,479,259,470,264,670]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                        }
                        _loc2_.m_extraMinionLevels = 0;
                        _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                        _loc2_.m_whatTrainerSaysAtStart_notBeaten = "A demonstration of serenity is inner peace.";
                        _loc2_.m_whatTrainerSaysAtLose = "I have seen your inner peace.  Here is another piece of the Sage Seal of Serenity.";
                        _loc2_.AddMinion(MinionDexID.DEX_ID_landShark_1,[75,599,149,244,582]);
                        if(!_loc4_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
                           if(!(_loc4_ && Boolean(_loc1_)))
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,619,263,517,614,258]);
                              if(!_loc4_)
                              {
                                 addr561:
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,154,147,270,249,26,243,11]);
                                 if(_loc4_)
                                 {
                                 }
                                 §§goto(addr580);
                              }
                              _loc2_.m_extraMinionLevels = 0;
                           }
                           addr580:
                           return;
                        }
                        §§goto(addr561);
                     }
                     §§goto(addr240);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_3,[75,155,154,149,167,249,26]);
                  §§goto(addr217);
               }
               §§goto(addr240);
            }
            §§goto(addr217);
         }
         §§goto(addr124);
      }
      
      private function CreateFloor19() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 22;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Let\'s do this, it\'s GO TIME!!";
         _loc2_.m_whatTrainerSaysAtLose = "....that was STELLAR!!";
         _loc2_.AddMod_MoveTimer(MinionMoveID.wildfire_t5,5,1,MinionMoveID.energizing_inspiration_t5);
         _loc2_.AddMod_Shield(3,3);
         if(_loc4_ || _loc3_)
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,354,343,273,242,12]);
            if(_loc4_ || Boolean(_loc1_))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,34,14,242,274,345]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,55,54,259,125,207,232]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,59,24,50,127,108]);
               if(_loc4_ || Boolean(this))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
               }
               _loc2_.m_extraMinionLevels = -2;
            }
         }
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
         if(_loc4_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Fire is my passion!";
            _loc2_.m_whatTrainerSaysAtLose = "Although fire is strong it is also weak to water and earth.";
            _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_Armadillo_1,5,[110,179,309,155,5,214,285],-2);
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_harpy_1,2,[625,39,8,290,33,244],-2);
               _loc2_.AddMod_MoveTimer(MinionMoveID.rainfall_t5,4,1,MinionMoveID.deadly_inspiration_t3);
               _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,70,244,27,43,181,856]);
               if(_loc4_ || Boolean(_loc2_))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,70,244,27,43,181,856]);
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr230:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,184,157,297,286,422,243]);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,440,423,431,259,447,243]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,14,26,47,249,37]);
               }
               _loc2_.m_extraMinionLevels = -1;
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "You are no match for Flamator, I will show you true power.";
               _loc2_.m_whatTrainerSaysAtLose = "I have been the one shown power.";
               _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,204,277,207,220,756,232,105]);
               if(_loc4_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,55,54,259,125,207,232]);
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_3,[81,370,320,89,279,134,109,431]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[86,160,359,363,181,231,100,247]);
               if(!_loc3_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                  if(_loc4_)
                  {
                     addr365:
                     _loc2_.m_extraMinionLevels = -1;
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                  if(!_loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,595,582,244,369,491,225,211]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_holyfox_1,[85,0,69,227,707,244,660]);
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_holyfox_1,[85,0,267,682,275,674,287,226]);
                        addr423:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,440,423,431,259,447,243]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                     }
                     _loc2_.m_extraMinionLevels = -1;
                     _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,70,244,27,43,181,856]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,289,856,230,107,325,277,371]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_robobull_1,[95,739,279,725,732,247,10]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,444,227,439,259,320]);
                     if(!_loc3_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,757,179,309,146,370,217]);
                        if(!_loc3_)
                        {
                           addr528:
                           _loc2_.m_extraMinionLevels = 0;
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                        _loc2_.m_whatTrainerSaysAtStart_notBeaten = "A Grand Sage must balance serenity and passion, it is one of the true tests of a Grand Sage.";
                        _loc2_.m_whatTrainerSaysAtLose = "Your passion is a complement to your serenity.  Here is the third piece to the Sage Seal of Serenity.";
                        if(_loc4_)
                        {
                           _loc2_.AddMod_MoveTimer(MinionMoveID.inner_force_t1,6,2,MinionMoveID.agile_inspiration_t3);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[86,160,359,363,181,231,100,247]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              addr589:
                              _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,64,43,146,244,67]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,444,227,439,259,320]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,354,343,273,242,12]);
                              if(!_loc3_)
                              {
                                 _loc2_.m_extraMinionLevels = 0;
                              }
                           }
                           return;
                        }
                        §§goto(addr589);
                     }
                     §§goto(addr528);
                  }
                  §§goto(addr423);
               }
               §§goto(addr365);
            }
         }
         §§goto(addr230);
      }
      
      private function CreateFloor20() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 23;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "My fire will blast you to pieces!";
         _loc2_.m_whatTrainerSaysAtLose = "The heat of your passion is strong.";
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.AddMod_Resurection(9);
            if(_loc3_)
            {
               _loc2_.AddMod_MoveTimer(MinionMoveID.meteor_strike_t5,17,2,MinionMoveID.agile_inspiration_t5);
               if(_loc3_)
               {
                  addr54:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,70,244,27,43,181,856]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,204,277,207,220,756,232,105]);
                  if(!_loc4_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,289,856,230,107,325,277,371]);
                     addr97:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,55,54,259,125,207,232]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                     _loc2_.m_extraMinionLevels = -2;
                  }
                  §§goto(addr97);
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "You look like a challeging trainer mon.";
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc2_.m_whatTrainerSaysAtLose = "I was right mon, you are quite the challenge!";
                     _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_fire_frog_3,2,[75,0,64,43,146,244,67],-1);
                     _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_iceBird_2,2,[80,625,519,528,259,522,481],-1);
                     _loc2_.AddMod_MoveTimer(MinionMoveID.ice_barrier_t3,5,1,MinionMoveID.deadly_inspiration_t2);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,489,493,227,582,242]);
                        addr209:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,444,227,439,259,320]);
                        if(!_loc4_)
                        {
                           addr223:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,184,157,297,286,422,243]);
                        }
                        _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,143,101,420,243,403,127]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                        _loc2_.m_extraMinionLevels = -1;
                        _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           _loc2_.m_whatTrainerSaysAtStart_notBeaten = "In training minions it is important to know their strengths and their weaknesses.";
                           _loc2_.m_whatTrainerSaysAtLose = "An example is that dino minions are weak to ice, earth, robot, and titan attacks.";
                           if(_loc3_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_chameleon_1,[75,429,457,450,244,229]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_chameleon_1,[75,374,160,121,417,293,456,450]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,444,227,439,259,320]);
                           }
                           _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,440,423,431,259,447,243]);
                           if(!(_loc4_ && _loc3_))
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                              addr364:
                              _loc2_.m_extraMinionLevels = -1;
                           }
                           _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,354,343,273,242,12]);
                           if(_loc3_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,34,14,242,274,345]);
                              if(!_loc4_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[86,160,359,363,181,231,100,247]);
                              }
                              _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,119,103,249,94,231]);
                              if(_loc3_)
                              {
                                 addr430:
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                                 _loc2_.m_extraMinionLevels = -1;
                              }
                              _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,34,14,242,274,345]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_robobull_1,[95,739,279,725,732,247,10]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[87,160,357,363,367,146,195,212]);
                              if(_loc3_ || Boolean(this))
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_3,[81,370,320,89,279,134,109,431]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,214,371,145,219,179,305]);
                                 if(_loc3_)
                                 {
                                    _loc2_.m_extraMinionLevels = 0;
                                 }
                              }
                              _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                              if(!_loc4_)
                              {
                                 _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I will push your serenity to it\'s limit!";
                                 _loc2_.m_whatTrainerSaysAtLose = "Your serenity is powerful!  Here is final piece to the Sage Seal of Serenity.";
                                 _loc2_.AddMod_MoveTimer(MinionMoveID.evil_eye_t1,5,1,MinionMoveID.deadly_inspiration_t4);
                                 if(_loc3_)
                                 {
                                    _loc2_.AddMod_Shield(1,1);
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,34,14,242,274,345]);
                                 }
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,89,107,97,289,242]);
                                 if(!(_loc4_ && Boolean(_loc2_)))
                                 {
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,55,54,259,125,207,232]);
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,440,423,431,259,447,243]);
                                 }
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                    _loc2_.m_extraMinionLevels = 0;
                                 }
                              }
                              return;
                           }
                           §§goto(addr430);
                        }
                        §§goto(addr364);
                     }
                  }
                  §§goto(addr223);
               }
               §§goto(addr209);
            }
            §§goto(addr97);
         }
         §§goto(addr54);
      }
      
      private function CreateFloor_Boss5() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 24;
         _loc2_ = this.AddTrainerToFloor(TrainerType.TRAINER_GYM_5,_loc1_,0);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "One must have respect for life, if one want\'s serenity.  I am the Talo Sage, let us test your respect for life.";
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc2_.m_whatTrainerSaysAtLose = "Your respect for life is strong, it is with great pleasure I award you the talo Sage Seal.\n...\nWith the talo Sage seal you have received a super strong gem.";
            if(!(_loc3_ && _loc3_))
            {
               _loc2_.AddMod_MoveTimer(MinionMoveID.meteor_strike_t5,19,2,MinionMoveID.agile_inspiration_t5);
               _loc2_.AddMod_Shield(1,1);
            }
            _loc2_.AddMinion(MinionDexID.DEX_ID_flyingGrassSuperMinion_1,[87,430,249,424,264,232]);
            if(!(_loc3_ && _loc3_))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_3,[75,155,154,149,167,249,26]);
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,584,599,249,292]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,499,509,485,520,279]);
               }
            }
         }
         _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,89,272,288,297,242]);
         _loc2_.m_extraMinionLevels = 0;
      }
      
      private function CreateFloor21() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 25;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I\'m going to use science to win this battle!";
         _loc2_.m_whatTrainerSaysAtLose = "Awwwwwww, you were too strong!";
         _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_holyfox_1,2,[85,0,891,244,663,719,653],0);
         _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_cheetah_1,3,[80,343,334,249,297,276],0);
         if(!_loc4_)
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[625,724,341,726,249,299]);
            if(_loc3_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[626,643,346,278,726,340,247]);
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_3,[85,884,357,840,368,342,246]);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_3,[85,94,122,248,345,342,356]);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[113,744,182,756,732,831]);
                  _loc2_.m_extraMinionLevels = -2;
               }
            }
         }
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Like, oh, my gosh!  We should, like, totally be best friends forever!";
         if(!(_loc4_ && Boolean(this)))
         {
            _loc2_.m_whatTrainerSaysAtLose = "Ughh, my bff would, like, never do that to me!!";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc2_.AddMod_Shield(3,1);
               _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_3,[80,343,334,249,297,276]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_3,[80,340,284,227,536,85,351,277,830]);
               if(_loc3_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
                  if(!_loc4_)
                  {
                     addr209:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,834,342,334,270,570,231]);
                     if(!(_loc4_ && Boolean(_loc1_)))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,580,639,294,279,247,595]);
                        if(_loc3_ || _loc3_)
                        {
                           addr247:
                           _loc2_.m_extraMinionLevels = -1;
                        }
                     }
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I, like, uh, love racoons!";
                  _loc2_.m_whatTrainerSaysAtLose = "It\'s like not fair, you must know that normal type are weak against undead and demonic moves.";
                  if(_loc3_)
                  {
                     _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_healingHorse_1,1,[75,474,258,467,477,263,670],0);
                     _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_healingHorse_1,1,[75,474,258,467,477,263,670],0);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,584,297,487,225,287,241,270]);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,4,243,58,25,271,41]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,344,273,335,831,276,242,55]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,459,451,292,464,165,485,225]);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,489,493,227,582,242]);
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc2_.m_extraMinionLevels = -1;
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,730,739,725,244,212,11,340]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,348,342,832,270,736,725,242]);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
                     if(!_loc4_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,474,258,467,477,263,670]);
                     }
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                     _loc2_.m_extraMinionLevels = -1;
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[625,724,341,726,249,299]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[626,643,346,278,726,340,247]);
                  if(!(_loc4_ && Boolean(this)))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_waterHorse_1,[111,834,279,299,272,340]);
                     if(!_loc4_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,474,258,467,477,263,670]);
                     }
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,214,371,145,219,179,305]);
                  if(!_loc4_)
                  {
                     _loc2_.m_extraMinionLevels = 0;
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Sanctity is the most important atribute of a Grand Sage.";
                  _loc2_.m_whatTrainerSaysAtLose = "You demonstrate a great deal of sanctity in your actions.  Here is the first piece to the Sage Seal of Sanctity.";
                  if(_loc3_)
                  {
                     _loc2_.AddMod_Resurection(11);
                     if(_loc3_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[625,724,341,726,249,299]);
                        if(!_loc4_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,834,342,334,270,570,231]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,132,117,289,230,342,570,270]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,474,258,467,477,263,670]);
                           addr619:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                           if(_loc3_)
                           {
                              _loc2_.m_extraMinionLevels = 0;
                           }
                        }
                        §§goto(addr619);
                     }
                     return;
                  }
                  §§goto(addr619);
               }
            }
            §§goto(addr209);
         }
         §§goto(addr247);
      }
      
      private function CreateFloor22() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 26;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I\'m so excited...it\'s like an energy in the air!";
         if(!_loc4_)
         {
            _loc2_.m_whatTrainerSaysAtLose = "You deflated my excitement, but only a little!";
            _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_raptor_1,6,[81,374,393,249,34,297],-8);
         }
         _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,439,472,259,475,518,275]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
         _loc2_.m_extraMinionLevels = -2;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Electricity is a very interesting phenomenon.";
         if(!_loc4_)
         {
            _loc2_.m_whatTrainerSaysAtLose = "You seem to know the weakness of electricity, earth and dino moves.";
         }
         _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_3,[85,884,357,840,368,342,246]);
         if(_loc3_)
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_3,[85,884,357,840,368,342,246]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_3,[85,884,357,840,368,342,246]);
            if(!_loc4_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_3,[85,94,122,248,345,342,356]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_DC2Guy_1,[76,774,249,734,739,25]);
               _loc2_.m_extraMinionLevels = -1;
            }
         }
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
         if(_loc3_ || _loc3_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Prepare yourself for a K.O.";
         }
         _loc2_.m_whatTrainerSaysAtLose = "It is I that have been knocked out...";
         _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[625,289,124,133,126,346]);
         if(!_loc4_)
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[112,100,214,86,289,166]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_3,[85,884,357,840,368,342,246]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_3,[85,94,122,248,345,342,356]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_3,[85,884,357,840,368,342,246]);
            _loc2_.m_extraMinionLevels = -1;
         }
         _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
         _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[340,569,557,248,576,271,155]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,439,472,259,475,518,275]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,214,371,145,219,179,305]);
         }
         _loc2_.m_extraMinionLevels = -1;
         _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
         if(_loc3_)
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
            if(!(_loc4_ && _loc3_))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,834,342,334,270,570,231]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_RoboShark_1,[91,764,179,769,309]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,436,479,259,470,264,670]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,757,179,309,146,370,217]);
               _loc2_.m_extraMinionLevels = 0;
            }
         }
         _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Always have Sanctity on you mind.";
         if(_loc3_)
         {
            _loc2_.m_whatTrainerSaysAtLose = "That was excellent, well done!  Here is the second piece to the Sage Seal of Sanctity.";
            _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_Crow_1,5,[629,647,120,273,297,650,226],0);
            if(!(_loc4_ && Boolean(this)))
            {
               _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_raptor_1,7,[81,374,393,249,34,297],0);
               if(_loc3_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[340,569,557,248,576,271,155]);
                  if(_loc3_ || Boolean(this))
                  {
                     addr491:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,757,179,309,146,370,217]);
                  §§goto(addr531);
               }
               §§goto(addr491);
            }
         }
         addr531:
         _loc2_.m_extraMinionLevels = 0;
      }
      
      private function CreateFloor23() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 27;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Ha har, Halloween is my favorite day...";
         _loc2_.m_whatTrainerSaysAtLose = "...it feels like you stole a bag of candy from me...you meanie!";
         if(_loc3_ || Boolean(this))
         {
            _loc2_.AddMod_Resurection(12);
            if(_loc3_ || Boolean(this))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_FireGhost_1,[5,859,849,294,843]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_FireGhost_1,[8,24,58,26,244]);
               if(_loc3_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,564,556,244,578,361]);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                  }
                  addr122:
                  _loc2_.m_extraMinionLevels = -2;
                  _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                  if(!(_loc4_ && Boolean(_loc1_)))
                  {
                     _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I show you the force of the underworld!";
                     if(_loc3_)
                     {
                        _loc2_.m_whatTrainerSaysAtLose = "It appears you know demon minions are weak to water and holy attacks.";
                        if(_loc3_ || Boolean(this))
                        {
                           _loc2_.AddMod_MoveTimer(MinionMoveID.fire_ram_t5,4,1,MinionMoveID.hulk_inspiration_t2);
                           if(!_loc4_)
                           {
                              addr165:
                              _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_2,[539,511,545,144,872,272]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_2,[535,559,577,490,243,273]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_2,[535,114,21,299,58,491]);
                              addr198:
                              _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[841,318,507,490,132,327,866]);
                           }
                           §§goto(addr198);
                        }
                        _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                        if(!(_loc4_ && Boolean(_loc1_)))
                        {
                           _loc2_.m_extraMinionLevels = -1;
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
                        _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I see a victory in future, but who\'s I am not sure of...";
                        _loc2_.m_whatTrainerSaysAtLose = "It is clear now, you are the victor.";
                        _loc2_.AddMod_Shield(3,2);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,684,664,669,244,10]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,684,664,669,244,10]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_BlueBell_1,[8,59,244,67,851]);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_FireGhost_1,[5,859,849,294,843]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_FireGhost_1,[5,144,227,326,86,317,66,845]);
                           _loc2_.m_extraMinionLevels = -1;
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,684,664,669,244,10]);
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,564,556,244,578,361]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_BlueBell_1,[8,59,244,67,851]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_PinkBell_1,[5,674,516,713,264,696]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                           _loc2_.m_extraMinionLevels = -1;
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,499,249,489,276,681]);
                        if(!_loc4_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,569,579,95,249,242,10,145]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,254,233,89,287,127]);
                        }
                        _loc2_.AddMinion(MinionDexID.DEX_ID_PinkBell_1,[5,674,516,713,264,696]);
                        if(_loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                        }
                        _loc2_.m_extraMinionLevels = 0;
                        _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                        _loc2_.m_whatTrainerSaysAtStart_notBeaten = "To reach the highest level of sanctity one must have a pure soul.";
                        _loc2_.m_whatTrainerSaysAtLose = "Your soul is pure, this I feel.  Here\'s the third piece to the Sage Seal of Sanctity";
                        _loc2_.AddMod_Resurection(8);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[840,859,244,854,847]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[840,859,244,854,847]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,359,362,852,180,244,270]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,359,362,852,180,244,270]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,359,362,852,180,244,270]);
                        if(!(_loc4_ && _loc3_))
                        {
                           _loc2_.m_extraMinionLevels = 0;
                        }
                        return;
                     }
                  }
                  §§goto(addr165);
               }
            }
            _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,359,362,852,180,244,270]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
            if(_loc4_ && Boolean(this))
            {
            }
         }
         §§goto(addr122);
      }
      
      private function CreateFloor24() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 28;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(_loc3_ || Boolean(this))
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Ah hahahaha!  Let\'s see if we can put a smile on that face!";
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               _loc2_.m_whatTrainerSaysAtLose = "Eh hehehe, looks like the jokes on me!!  Hahahaha!";
               _loc2_.AddMod_Shield(3,3);
               if(_loc4_)
               {
               }
               addr93:
               _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_3,[629,647,120,273,297,650,226]);
               if(_loc3_ || Boolean(_loc2_))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_3,[625,559,857,487,7,243]);
                  if(!_loc4_)
                  {
                     _loc2_.m_extraMinionLevels = -2;
                  }
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I sense...death...";
               if(!(_loc4_ && Boolean(_loc1_)))
               {
                  _loc2_.m_whatTrainerSaysAtLose = "...it appears the victory is yours.";
                  _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,499,249,489,276,681]);
                  if(!_loc4_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,524,517,264,528,650]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,524,517,264,528,650]);
                     addr184:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[840,859,244,854,847]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                  }
                  _loc2_.m_extraMinionLevels = -1;
                  _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                  if(!_loc4_)
                  {
                     _loc2_.m_whatTrainerSaysAtStart_notBeaten = "In darkness you must find the light.";
                     _loc2_.m_whatTrainerSaysAtLose = "You fight well, for that I give you a tip.  When fighting holy minions use demonic or normal moves.";
                     if(_loc3_)
                     {
                        _loc2_.AddMod_Resurection(13);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[843,879,366,866,872,506,490]);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr249:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,359,362,852,180,244,270]);
                           if(_loc3_ || _loc3_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,359,362,852,180,244,270]);
                              addr268:
                           }
                           _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,544,264,533,553,225]);
                           if(!_loc4_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                              if(_loc3_)
                              {
                              }
                              addr319:
                              _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[625,559,857,487,7,243]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_2,[629,647,120,273,297,650,226]);
                              if(!(_loc4_ && _loc3_))
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_PinkBell_1,[5,674,516,713,264,696]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,499,249,489,276,681]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                                 if(!_loc4_)
                                 {
                                    addr394:
                                    _loc2_.m_extraMinionLevels = -1;
                                 }
                                 _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[841,318,507,490,132,327,866]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[77,238,89,214,232,369]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,569,579,95,249,242,10,145]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,619,263,517,614,258]);
                                 if(!_loc4_)
                                 {
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,214,371,145,219,179,305]);
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       _loc2_.m_extraMinionLevels = 0;
                                    }
                                 }
                                 _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                                 if(!_loc4_)
                                 {
                                    _loc2_.m_whatTrainerSaysAtStart_notBeaten = "You are close to a Grand Sage and it is easy to see.";
                                    _loc2_.m_whatTrainerSaysAtLose = "The road ahead is tough, but I feel you are ready.  Here is the final piece to the Sage Seal of Sanctity.";
                                    if(!(_loc4_ && Boolean(_loc2_)))
                                    {
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_PinkBell_1,[5,674,516,713,264,696]);
                                       if(!_loc4_)
                                       {
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_SlenderMan_1,[844,359,853,227,361]);
                                       }
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[840,859,244,854,847]);
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,684,664,669,244,10]);
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                                          if(_loc3_)
                                          {
                                          }
                                       }
                                       §§goto(addr576);
                                    }
                                    _loc2_.m_extraMinionLevels = 0;
                                 }
                                 addr576:
                                 return;
                              }
                              §§goto(addr394);
                           }
                           _loc2_.m_extraMinionLevels = -1;
                        }
                        §§goto(addr319);
                     }
                     §§goto(addr249);
                  }
                  §§goto(addr268);
               }
               §§goto(addr184);
            }
            _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,29,147,14,65,576,570,247]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_SlenderMan_1,[844,359,853,227,361]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_SlenderMan_1,[840,369,242,364,219,225]);
            if(_loc4_ && Boolean(this))
            {
            }
         }
         §§goto(addr93);
      }
      
      private function CreateFloor_Boss6() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 29;
         _loc2_ = this.AddTrainerToFloor(TrainerType.TRAINER_GYM_6,_loc1_,0);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "There is deep power in sanctity, and I will show it to you.  For I am the Daco Sage.";
         _loc2_.m_whatTrainerSaysAtLose = "Your sanctity is apparent, your victory is well earned.\n...\nThe Sanctity Sage Seal grants you the option to pick a third choice in the hatchery.";
         _loc2_.AddMod_Shield(1,1);
         _loc2_.AddMod_Resurection(12);
         if(_loc4_ || Boolean(this))
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,569,579,95,249,242,10,145]);
            if(_loc4_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[840,859,244,854,847]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,524,517,264,528,650]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,252,227,217,129,132,665]);
               addr120:
               _loc2_.m_extraMinionLevels = 0;
            }
            return;
         }
         §§goto(addr120);
      }
      
      private function CreateFloor_Boss_Grand_Sage() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         var _loc1_:int = 30;
         _loc2_ = this.AddTrainerToFloor(TrainerType.TRAINER_GRAND_SAGE,_loc1_,0);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "This is excellent!!  I knew you\'d make it to the top, let\'s see your full strength!";
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.m_whatTrainerSaysAtLose = "It has been a long while since I\'ve enjoyed a battle that much. Well done!  You are now a Grand Sage, go and claim your Titan.  It waits for you in the lobby...";
            if(!_loc4_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,757,179,309,146,370,217]);
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_holyfox_1,[85,0,267,682,275,674,287,226]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_3,[80,343,334,249,297,276]);
                  if(_loc3_ || Boolean(this))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,595,582,244,369,491,225,211]);
                     addr118:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                     _loc2_.m_extraMinionLevels = 0;
                     addr98:
                  }
                  §§goto(addr118);
               }
               return;
            }
            §§goto(addr118);
         }
         §§goto(addr98);
      }
      
      private function CreateFloor1_hardMode() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Time to find out the depth of your skill, but I think you\'ll do great!";
         _loc2_.m_whatTrainerSaysAtLose = "I knew it, you did fantastic!";
         _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
            if(_loc3_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
               addr86:
               _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_2,[75,105,459,421,462,244,156,395]);
               if(!_loc4_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_2,[75,105,459,421,462,244,156,395]);
                  if(!_loc4_)
                  {
                     _loc2_.m_extraMinionLevels = -3;
                  }
               }
            }
            _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
            if(_loc3_)
            {
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I heard you\'re pretty good, we\'ll see about that.";
               _loc2_.m_whatTrainerSaysAtLose = "So the rumors are true!";
               _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,459,451,292,464,165,485,225]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,459,451,292,464,165,485,225]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
            }
            _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,499,509,485,520,279]);
            if(_loc3_ || _loc3_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,499,509,485,520,279]);
               if(_loc3_)
               {
                  addr205:
                  _loc2_.m_extraMinionLevels = -2;
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Hi there!  Let\'s have a battle?";
               _loc2_.m_whatTrainerSaysAtLose = "Thanks, that was fun!";
               _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
               if(_loc3_ || _loc1_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
                  if(!_loc4_)
                  {
                     addr270:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,129,219,100,650,141,272,421]);
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,129,219,100,650,141,272,421]);
                        if(!(_loc4_ && _loc3_))
                        {
                           addr319:
                           _loc2_.m_extraMinionLevels = -1;
                        }
                     }
                     _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                     if(_loc3_ || _loc3_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,434,582,249,599,457]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,434,582,249,599,457]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,434,582,249,599,457]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_2,[75,105,459,421,462,244,156,395]);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr390:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_2,[75,105,459,421,462,244,156,395]);
                           _loc2_.m_extraMinionLevels = -1;
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                        if(_loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,254,241,95,369,214,309,245]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,224,109,289,12,234]);
                           if(!(_loc4_ && Boolean(this)))
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                              if(_loc3_ || _loc1_)
                              {
                                 addr482:
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                                 _loc2_.m_extraMinionLevels = 1;
                              }
                           }
                           _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                           _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I\'d like to test your skill in combat.";
                           if(!(_loc4_ && _loc1_))
                           {
                              _loc2_.m_whatTrainerSaysAtLose = "Well done!  Here is a key to the hatchery.";
                              if(_loc3_ || _loc1_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_flyingGrassSuperMinion_1,[87,430,249,424,264,232]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_flyingGrassSuperMinion_1,[87,434,249,457,154,827]);
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_flyingGrassSuperMinion_1,[87,644,234,297,249,275]);
                                    addr573:
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,436,479,259,470,264,670]);
                                    _loc2_.m_extraMinionLevels = 0;
                                 }
                                 return;
                              }
                           }
                           §§goto(addr573);
                        }
                        §§goto(addr482);
                     }
                     §§goto(addr390);
                  }
                  §§goto(addr319);
               }
               §§goto(addr270);
            }
            §§goto(addr205);
         }
         §§goto(addr86);
      }
      
      private function CreateFloor2_hardMode() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         §§push(1);
         if(_loc3_ || Boolean(_loc2_))
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Battling is like adventuring, it tests who you are.";
         if(!_loc4_)
         {
            _loc2_.m_whatTrainerSaysAtLose = "You are quite strong, my friend.";
            _loc2_.AddMinion(MinionDexID.DEX_ID_landShark_1,[75,144,134,129,272]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_landShark_1,[75,109,584,607,264,130]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_landShark_1,[75,599,149,244,582]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_landShark_1,[75,599,149,244,582]);
         }
         _loc2_.AddMinion(MinionDexID.DEX_ID_landShark_1,[75,599,149,244,582]);
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            _loc2_.m_extraMinionLevels = -2;
         }
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "There wasn\'t much to do after we destroyed the ring...";
         if(_loc3_ || _loc1_)
         {
            _loc2_.m_whatTrainerSaysAtLose = "You would do well in the fellowship.";
            _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,595,582,244,369,491,225,211]);
         }
         _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,489,493,227,582,242]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,595,582,244,369,491,225,211]);
         if(_loc3_ || _loc3_)
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,329,302,287,509,141]);
            if(!_loc4_)
            {
               addr197:
               _loc2_.m_extraMinionLevels = -2;
            }
            _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I will show you the strength of my jelly fish!";
            _loc2_.m_whatTrainerSaysAtLose = "Ahhhhh!";
            if(!(_loc4_ && _loc1_))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
               if(!_loc4_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,834,342,334,270,570,231]);
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
                     if(_loc3_ || _loc1_)
                     {
                        addr276:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,834,342,334,270,570,231]);
                        if(_loc3_ || _loc1_)
                        {
                           addr295:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,132,117,289,230,342,570,270]);
                        }
                        _loc2_.m_extraMinionLevels = -1;
                     }
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                  if(!_loc4_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_RoboShark_1,[91,590,584,279,597,297,721,726]);
                     if(_loc3_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_RoboShark_1,[91,590,584,279,597,297,721,726]);
                        if(_loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_landShark_1,[75,599,149,244,582]);
                           if(!(_loc4_ && _loc1_))
                           {
                              addr368:
                              _loc2_.AddMinion(MinionDexID.DEX_ID_RoboShark_1,[91,764,179,769,309]);
                              if(_loc3_ || _loc3_)
                              {
                                 addr385:
                                 _loc2_.m_extraMinionLevels = -1;
                              }
                           }
                           §§goto(addr385);
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                        if(_loc3_ || _loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_waterHorse_1,[111,595,488,584,249,278]);
                           if(_loc3_ || _loc3_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_waterHorse_1,[111,595,488,584,249,278]);
                              if(_loc3_)
                              {
                                 addr434:
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_waterHorse_1,[111,834,279,299,272,340]);
                                 if(!_loc4_)
                                 {
                                    _loc2_.m_extraMinionLevels = 0;
                                 }
                              }
                           }
                           _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                           _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Let us battle and test your skill.";
                           if(_loc3_ || Boolean(_loc2_))
                           {
                              _loc2_.m_whatTrainerSaysAtLose = "Here is a key for your skill in combat.";
                              _loc2_.AddMinion(MinionDexID.DEX_ID_waterHorse_1,[111,595,488,584,249,278]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_RoboShark_1,[91,590,584,279,597,297,721,726]);
                              if(!_loc4_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,489,493,227,582,242]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_landShark_1,[75,599,149,244,582]);
                                 _loc2_.m_extraMinionLevels = 0;
                                 addr507:
                              }
                              return;
                           }
                           §§goto(addr507);
                        }
                        §§goto(addr434);
                     }
                     §§goto(addr368);
                  }
                  §§goto(addr385);
               }
               §§goto(addr276);
            }
            §§goto(addr295);
         }
         §§goto(addr197);
      }
      
      private function CreateFloor3_hardMode() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         §§push(2);
         if(!_loc3_)
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.AddMod_Shield(3,3);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "My minions are so cute...I mean cool!!";
         if(_loc4_)
         {
            _loc2_.m_whatTrainerSaysAtLose = "How dare you do that to them!!";
            _loc2_.AddMod_Shield(1,1);
            _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_2,[80,625,494,487,499,244,631]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_2,[80,625,635,292,277,644,487,242]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_2,[80,625,639,632,279,487,241]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_2,[80,625,519,528,259,522,481]);
            if(!_loc3_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_2,[80,625,639,632,279,487,241]);
               if(_loc4_ || _loc1_)
               {
                  addr119:
                  _loc2_.m_extraMinionLevels = -2;
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Har Har, let\'s see what you\'re made of my lad.";
               _loc2_.m_whatTrainerSaysAtLose = "Lad, you put the hurting on me. Well done!";
               if(!(_loc3_ && _loc3_))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,584,599,249,292]);
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr160);
                  }
                  §§goto(addr200);
               }
               addr160:
               _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,580,639,294,279,247,595]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,580,129,516,81,141,131,646,277]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,580,639,294,279,247,595]);
               if(_loc4_)
               {
                  addr200:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,580,639,294,279,247,595]);
                  if(_loc4_ || _loc3_)
                  {
                     _loc2_.m_extraMinionLevels = -2;
                  }
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
               if(!_loc3_)
               {
                  _loc2_.AddMod_Shield(3,3);
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Electricity is the life of machinery, can you stand up to it?";
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     _loc2_.m_whatTrainerSaysAtLose = "That was a shockingly good battle!";
                     _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[625,724,341,726,249,299]);
                     §§goto(addr260);
                  }
                  §§goto(addr279);
               }
               addr260:
               _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[626,643,346,278,726,340,247]);
               if(_loc4_ || _loc1_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[625,289,124,133,126,346]);
                  addr279:
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[626,643,346,278,726,340,247]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[626,643,346,278,726,340,247]);
                     _loc2_.m_extraMinionLevels = -1;
                  }
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
               if(_loc4_ || _loc3_)
               {
                  _loc2_.AddMod_Shield(3,3);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,649,244,491,655,274,341]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,829,344,274,244]);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,649,244,491,655,274,341]);
                  }
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,829,344,274,244]);
               _loc2_.m_extraMinionLevels = -1;
               _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  _loc2_.AddMod_Shield(3,3);
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_flyingGrassSuperMinion_1,[87,430,249,424,264,232]);
                     if(_loc4_ || _loc3_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_flyingGrassSuperMinion_1,[87,434,249,457,154,827]);
                        if(_loc4_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_flyingGrassSuperMinion_1,[87,644,234,297,249,275]);
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc2_.m_extraMinionLevels = 0;
                           }
                        }
                     }
                  }
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
               _loc2_.AddMod_Shield(2,2);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "You\'re shaping into quite the trainer.";
               if(_loc4_)
               {
                  _loc2_.m_whatTrainerSaysAtLose = "Here is a key to the hatchery.";
                  if(_loc4_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_3,[625,559,857,487,7,243]);
                     if(_loc4_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_3,[629,647,120,273,297,650,226]);
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           §§goto(addr536);
                        }
                        §§goto(addr551);
                     }
                  }
                  addr536:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_3,[625,144,84,318,645,485,855,5]);
                  if(_loc4_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_3,[629,647,120,273,297,650,226]);
                     addr551:
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_3,[629,647,120,273,297,650,226]);
                  if(!_loc3_)
                  {
                     _loc2_.m_extraMinionLevels = 0;
                  }
                  §§goto(addr587);
               }
               addr587:
               return;
            }
         }
         §§goto(addr119);
      }
      
      private function CreateFloor4_hardMode() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         §§push(3);
         if(!_loc3_)
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "It\'s a great day for a hike!";
            _loc2_.m_whatTrainerSaysAtLose = "It\'s always a great day for a hike!";
            if(_loc4_ || Boolean(_loc2_))
            {
               _loc2_.AddMod_Shield(2,2);
               if(_loc4_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,439,472,259,475,518,275]);
                     addr91:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,389,249,394,243,95]);
                     if(_loc4_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                        if(_loc4_)
                        {
                           addr120:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_3,[75,155,154,149,167,249,26]);
                           if(!(_loc3_ && Boolean(_loc2_)))
                           {
                              addr139:
                              _loc2_.m_extraMinionLevels = -2;
                           }
                           _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
                           if(_loc4_ || _loc3_)
                           {
                              _loc2_.m_whatTrainerSaysAtStart_notBeaten = "The flowers bloom just as my beauty blooms.";
                              _loc2_.m_whatTrainerSaysAtLose = "It appears your skill blooms as the flowers do.";
                              _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,619,263,517,614,258]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,434,582,249,599,457]);
                              if(_loc4_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,434,582,249,599,457]);
                                 if(_loc4_ || Boolean(_loc2_))
                                 {
                                    addr205:
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_2,[80,625,494,487,499,244,631]);
                                    if(_loc4_ || Boolean(this))
                                    {
                                       addr237:
                                       _loc2_.m_extraMinionLevels = -1;
                                    }
                                 }
                                 _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                                 _loc2_.m_whatTrainerSaysAtStart_notBeaten = "One does not simply win a battle.";
                                 if(!(_loc3_ && Boolean(_loc2_)))
                                 {
                                    _loc2_.m_whatTrainerSaysAtLose = "We\'ll I guess one does...";
                                    if(_loc4_)
                                    {
                                       _loc2_.AddMod_Shield(2,2);
                                       if(_loc4_)
                                       {
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,435,679,264,671,259,440]);
                                          addr282:
                                       }
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,434,582,249,599,457]);
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,344,273,335,831,276,242,55]);
                                       _loc2_.m_extraMinionLevels = -1;
                                    }
                                    _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_2,[80,625,639,632,279,487,241]);
                                    if(_loc4_ || _loc3_)
                                    {
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_2,[80,625,639,632,279,487,241]);
                                       if(!_loc3_)
                                       {
                                          addr395:
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
                                          if(_loc4_)
                                          {
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,619,263,517,614,258]);
                                             if(_loc3_ && Boolean(this))
                                             {
                                             }
                                             §§goto(addr429);
                                          }
                                          _loc2_.m_extraMinionLevels = -1;
                                       }
                                       addr429:
                                       _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_3,[75,155,154,149,167,249,26]);
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
                                       if(!_loc3_)
                                       {
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,435,679,264,671,259,440]);
                                          if(_loc4_)
                                          {
                                             _loc2_.m_extraMinionLevels = 0;
                                          }
                                       }
                                       _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                                       if(_loc4_ || Boolean(_loc2_))
                                       {
                                          _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I will show you the true strength of the minions you are about to get.";
                                          if(_loc4_)
                                          {
                                             §§goto(addr525);
                                          }
                                          §§goto(addr591);
                                       }
                                       addr525:
                                       _loc2_.m_whatTrainerSaysAtLose = "Go claim your prize, here is a key to the hatchery.";
                                       if(_loc4_ || _loc1_)
                                       {
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,434,582,249,599,457]);
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,436,479,259,470,264,670]);
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
                                          addr591:
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
                                       }
                                       _loc2_.m_extraMinionLevels = 0;
                                       return;
                                    }
                                    §§goto(addr395);
                                 }
                                 §§goto(addr282);
                              }
                              §§goto(addr205);
                           }
                           §§goto(addr237);
                        }
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr139);
               }
            }
            §§goto(addr120);
         }
         §§goto(addr91);
      }
      
      private function CreateFloor_Boss1_hardMode() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         §§push(4);
         if(!_loc4_)
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.TRAINER_GYM_1,_loc1_,0);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "You have done very well so far, but I will push you to your limits.  For I am Tafel the Grass Sage.";
         _loc2_.m_whatTrainerSaysAtLose = "That was fantastic!!  I award you the grass Sage Seal.\n...\nYou can now find random money chests in the Tower.";
         _loc2_.AddMod_Shield(2,2);
         _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
         if(_loc3_ || _loc3_)
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_flyingGrassSuperMinion_1,[87,434,249,457,154,827]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,580,639,294,279,247,595]);
         }
         _loc2_.m_extraMinionLevels = 0;
      }
      
      private function CreateFloor5_hardMode() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         §§push(5);
         if(_loc3_ || _loc1_)
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(_loc3_ || Boolean(_loc2_))
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I\'ve got da Vudu mon.";
            _loc2_.m_whatTrainerSaysAtLose = "You killed da Vudu mon!";
            _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,354,343,273,242,12]);
            if(!(_loc4_ && _loc1_))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,34,14,242,274,345]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,34,14,242,274,345]);
            }
            _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,34,14,242,274,345]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
            if(!_loc4_)
            {
               addr121:
               _loc2_.m_extraMinionLevels = -2;
            }
            _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
            if(_loc3_ || _loc3_)
            {
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "ARE YOU READY FOR THE PAIN!!";
               if(_loc3_ || Boolean(this))
               {
                  _loc2_.m_whatTrainerSaysAtLose = "OUCH! I felt the pain on that one...";
                  _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,289,856,230,107,325,277,371]);
                  if(!_loc4_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,289,856,230,107,325,277,371]);
                     if(_loc3_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,289,856,230,107,325,277,371]);
                        addr198:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,289,856,230,107,325,277,371]);
                        if(!(_loc4_ && _loc1_))
                        {
                           addr219:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,289,856,230,107,325,277,371]);
                           if(_loc3_ || _loc3_)
                           {
                              addr240:
                              _loc2_.m_extraMinionLevels = -1;
                           }
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                        _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I\'m burning to battle you!";
                        _loc2_.m_whatTrainerSaysAtLose = "Way to put out my fire.";
                        _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,59,24,50,127,108]);
                        if(_loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,64,43,146,244,67]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,59,24,50,127,108]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,64,43,146,244,67]);
                        }
                        _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                        if(_loc3_ || Boolean(this))
                        {
                           _loc2_.m_extraMinionLevels = -2;
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                        if(!(_loc4_ && _loc3_))
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_robobull_1,[95,739,279,725,732,247,10]);
                           if(_loc3_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_robobull_1,[95,60,249,13,27,277,725]);
                              if(_loc3_)
                              {
                                 addr380:
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_robobull_1,[95,739,279,725,732,247,10]);
                                 if(!_loc4_)
                                 {
                                    addr394:
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_robobull_1,[95,60,249,13,27,277,725]);
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       addr413:
                                       _loc2_.m_extraMinionLevels = -1;
                                    }
                                    _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                                    if(_loc3_)
                                    {
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_3,[81,374,393,249,34,297]);
                                       if(_loc3_ || _loc3_)
                                       {
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_3,[81,373,29,34,14,295,247]);
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr463:
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_3,[81,374,393,249,34,297]);
                                             if(!_loc4_)
                                             {
                                                _loc2_.m_extraMinionLevels = 0;
                                             }
                                          }
                                       }
                                       _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                                       _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Let\'s see what you\'re made of!";
                                       _loc2_.m_whatTrainerSaysAtLose = "Well done, here is a key to the hatchery.";
                                       if(_loc3_ || Boolean(_loc2_))
                                       {
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_3,[81,373,29,34,14,295,247]);
                                          if(!(_loc4_ && Boolean(_loc2_)))
                                          {
                                             addr519:
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_robobull_1,[95,60,249,13,27,277,725]);
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,64,43,146,244,67]);
                                             if(!_loc4_)
                                             {
                                                _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,70,244,27,43,181,856]);
                                             }
                                          }
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,34,14,242,274,345]);
                                          _loc2_.m_extraMinionLevels = 0;
                                          return;
                                       }
                                       §§goto(addr519);
                                    }
                                    §§goto(addr463);
                                 }
                                 §§goto(addr413);
                              }
                           }
                           §§goto(addr394);
                        }
                        §§goto(addr380);
                     }
                     §§goto(addr219);
                  }
                  §§goto(addr240);
               }
               §§goto(addr219);
            }
            §§goto(addr198);
         }
         §§goto(addr121);
      }
      
      private function CreateFloor6_hardMode() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         §§push(6);
         if(!_loc3_)
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(_loc4_ || _loc1_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Ooga booga, ooga booga, ooga booga!!";
            _loc2_.m_whatTrainerSaysAtLose = "Well.....that certainly didn\'t work!";
            _loc2_.AddMod_MoveTimer(MinionMoveID.sear_t1,3,1,MinionMoveID.hulk_inspiration_t3);
            _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,154,147,270,249,26,243,11]);
            if(!(_loc3_ && Boolean(this)))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,154,147,270,249,26,243,11]);
               if(_loc4_ || _loc3_)
               {
                  addr96:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,154,147,270,249,26,243,11]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,154,147,270,249,26,243,11]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,154,147,270,249,26,243,11]);
                  if(_loc4_)
                  {
                     _loc2_.m_extraMinionLevels = -2;
                  }
               }
            }
            _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "One must train very hard to reach the pinnacle.";
            _loc2_.m_whatTrainerSaysAtLose = "You train well, very well.";
            _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,154,147,270,249,26,243,11]);
            if(!_loc3_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,154,147,270,249,26,243,11]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[87,160,357,363,367,146,195,212]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,14,26,47,249,37]);
               if(!(_loc3_ && _loc3_))
               {
                  addr219:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_3,[75,155,154,149,167,249,26]);
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc2_.m_extraMinionLevels = -1;
                  }
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
               if(_loc4_ || Boolean(this))
               {
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Hehehehe, what bringggs you here!?";
                  _loc2_.m_whatTrainerSaysAtLose = "Arrgh, you\'re too strong! Stay away!";
                  _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,119,103,249,94,231]);
                  if(_loc4_)
                  {
                     addr276:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,119,103,249,94,231]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,119,103,249,94,231]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,119,103,249,94,231]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[87,160,357,363,367,146,195,212]);
                     if(_loc4_ || Boolean(this))
                     {
                        _loc2_.m_extraMinionLevels = -1;
                     }
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,1,14,26,40,249,213]);
                     if(_loc4_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,1,14,26,40,249,213]);
                     }
                     _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,1,14,26,40,249,213]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,1,14,26,40,249,213]);
                     if(_loc4_ || Boolean(this))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,1,14,26,40,249,213]);
                        if(_loc3_ && Boolean(_loc2_))
                        {
                        }
                        §§goto(addr436);
                     }
                     _loc2_.m_extraMinionLevels = -1;
                  }
                  addr436:
                  _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                  if(_loc4_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,214,371,145,219,179,305]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,224,572,762,249,179,521]);
                     if(_loc4_ || _loc1_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,214,371,145,219,179,305]);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr496:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,757,179,309,146,370,217]);
                        }
                        _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,757,179,309,146,370,217]);
                        _loc2_.m_extraMinionLevels = 0;
                        §§goto(addr523);
                     }
                     §§goto(addr496);
                  }
                  addr523:
                  _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I can see your strength is truely deepening, I\'m looking forward to the challenge.";
                  if(!_loc3_)
                  {
                     _loc2_.m_whatTrainerSaysAtLose = "Excellent!  Here is your key to the hatchery.";
                     if(!_loc3_)
                     {
                        _loc2_.AddMod_MoveTimer(MinionMoveID.inner_force_t1,12,2,MinionMoveID.deadly_inspiration_t3);
                        §§goto(addr549);
                     }
                     §§goto(addr600);
                  }
                  addr549:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_3,[75,155,154,149,167,249,26]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_3,[75,155,364,27,561,226,149,246]);
                  if(_loc4_ || _loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_3,[75,155,89,119,289,165,273]);
                     if(_loc4_ || _loc1_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_3,[75,155,154,149,167,249,26]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_3,[75,155,364,27,561,226,149,246]);
                        addr600:
                     }
                  }
                  _loc2_.m_extraMinionLevels = 0;
                  return;
               }
               §§goto(addr276);
            }
            §§goto(addr219);
         }
         §§goto(addr96);
      }
      
      private function CreateFloor7_hardMode() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         §§push(7);
         if(!_loc4_)
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(_loc3_ || _loc1_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I\'ll show you how to battle mon.";
            _loc2_.m_whatTrainerSaysAtLose = "Looks like I could learn some pointers from you mon.";
            if(_loc3_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,214,371,145,219,179,305]);
               addr59:
               _loc2_.AddMinion(MinionDexID.DEX_ID_chameleon_1,[75,374,160,121,417,293,456,450]);
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr79:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_chameleon_1,[75,374,160,121,417,293,456,450]);
                  if(_loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_chameleon_1,[75,374,160,121,417,293,456,450]);
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_chameleon_1,[75,374,160,121,417,293,456,450]);
                        if(!_loc4_)
                        {
                           addr129:
                           _loc2_.m_extraMinionLevels = -2;
                        }
                     }
                     §§goto(addr129);
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
                  if(_loc3_ || _loc1_)
                  {
                     _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Welcome to the jungle.";
                     _loc2_.m_whatTrainerSaysAtLose = "That wasn\'t very fun.";
                     if(!_loc4_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,214,371,145,219,179,305]);
                     }
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                     if(_loc3_ || Boolean(this))
                     {
                        addr226:
                        _loc2_.m_extraMinionLevels = -1;
                     }
                     _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                     if(_loc3_ || _loc1_)
                     {
                        _loc2_.m_whatTrainerSaysAtStart_notBeaten = ".................";
                        if(_loc3_)
                        {
                           _loc2_.m_whatTrainerSaysAtLose = "I have broken my vows of silenece to say that was an AMAZING fight!!";
                           _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                           if(_loc3_ || _loc1_)
                           {
                              addr294:
                              _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,440,423,431,259,447,243]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,440,423,431,259,447,243]);
                           }
                           _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,440,423,431,259,447,243]);
                           §§goto(addr333);
                        }
                        §§goto(addr294);
                     }
                     addr333:
                     _loc2_.m_extraMinionLevels = -1;
                     _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_flyingGrassSuperMinion_1,[87,644,234,297,249,275]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_flyingGrassSuperMinion_1,[87,644,234,297,249,275]);
                     if(!_loc4_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_flyingGrassSuperMinion_1,[87,430,249,424,264,232]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,440,423,431,259,447,243]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,440,423,431,259,447,243]);
                     }
                     _loc2_.m_extraMinionLevels = -1;
                     _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_3,[81,374,393,249,34,297]);
                        if(!_loc4_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_3,[81,374,393,249,34,297]);
                           if(!(_loc4_ && Boolean(_loc2_)))
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_3,[81,374,393,249,34,297]);
                              if(_loc3_)
                              {
                              }
                              §§goto(addr480);
                           }
                           _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_3,[81,374,393,249,34,297]);
                           if(!_loc4_)
                           {
                              §§goto(addr480);
                           }
                        }
                        §§goto(addr480);
                     }
                     addr480:
                     _loc2_.m_extraMinionLevels = 0;
                     _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                     _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I\'ve heard good things about you, let\'s put that to the test.";
                     if(_loc3_ || _loc1_)
                     {
                        _loc2_.m_whatTrainerSaysAtLose = "I\'m not disappointed, that was a fine fight!";
                        _loc2_.AddMinion(MinionDexID.DEX_ID_chameleon_1,[75,374,160,121,417,293,456,450]);
                        if(!_loc4_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_chameleon_1,[75,374,160,121,417,293,456,450]);
                           if(_loc3_ || Boolean(this))
                           {
                              addr539:
                              _loc2_.AddMinion(MinionDexID.DEX_ID_chameleon_1,[75,374,160,121,417,293,456,450]);
                           }
                           _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_3,[81,374,393,249,34,297]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_3,[81,374,393,249,34,297]);
                           _loc2_.m_extraMinionLevels = 0;
                           §§goto(addr584);
                        }
                        §§goto(addr539);
                     }
                     addr584:
                     return;
                  }
                  §§goto(addr226);
               }
               §§goto(addr129);
            }
            §§goto(addr79);
         }
         §§goto(addr59);
      }
      
      private function CreateFloor8_hardMode() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         §§push(8);
         if(_loc3_ || Boolean(_loc2_))
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(_loc3_ || _loc3_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "My minions will bring the heat";
            if(_loc3_ || Boolean(_loc2_))
            {
               _loc2_.m_whatTrainerSaysAtLose = "You smothered my minions...";
               if(!(_loc4_ && Boolean(this)))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                  addr90:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_2,[75,105,459,421,462,244,156,395]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
               _loc2_.m_extraMinionLevels = -2;
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I\'m sure in my training.";
               _loc2_.m_whatTrainerSaysAtLose = "...I must work harder it seems...";
               _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
               if(_loc3_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_worm_2,[85,160,185,177,214,166,287,230,126]);
                  if(_loc3_ || Boolean(this))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,440,423,431,259,447,243]);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,440,423,431,259,447,243]);
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     _loc2_.m_extraMinionLevels = -1;
                  }
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I\'ve got a few tricks up my sleeve mon.";
                  _loc2_.m_whatTrainerSaysAtLose = "Well done mon, I\'ll tell you a trick. When you\'re up against earth minions, remember they are weak against plant, water, and undead moves.";
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Tiger_2,[80,105,204,177,219,165,155,287,320]);
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_Tiger_2,[80,105,204,177,219,165,155,287,320]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_Tiger_2,[80,105,204,177,219,165,155,287,320]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,34,14,242,274,345]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,34,14,242,274,345]);
               _loc2_.m_extraMinionLevels = -1;
               _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
               _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
               if(_loc3_ || _loc1_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr380:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                     if(_loc3_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                           addr431:
                           _loc2_.m_extraMinionLevels = -1;
                        }
                        §§goto(addr431);
                     }
                     _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                        if(!(_loc4_ && _loc3_))
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[112,100,214,86,289,166]);
                           if(!_loc4_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,329,212,142,650,891,227,270]);
                              if(_loc3_)
                              {
                                 addr508:
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,329,212,142,650,891,227,270]);
                                 if(_loc4_)
                                 {
                                 }
                                 addr526:
                                 _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                                 if(_loc3_ || Boolean(this))
                                 {
                                    _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I will truely test your strength, but the reward is worth it.";
                                    if(_loc3_)
                                    {
                                       _loc2_.m_whatTrainerSaysAtLose = "Well done!  Go and claim your reward...it is well earned.";
                                       if(!_loc4_)
                                       {
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,214,371,145,219,179,305]);
                                          if(!(_loc4_ && _loc1_))
                                          {
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,224,572,762,249,179,521]);
                                             addr582:
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,439,472,259,475,518,275]);
                                             addr614:
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                                             addr627:
                                             _loc2_.m_extraMinionLevels = 0;
                                          }
                                          return;
                                       }
                                       §§goto(addr627);
                                    }
                                    §§goto(addr614);
                                 }
                                 §§goto(addr582);
                              }
                              §§goto(addr526);
                           }
                           _loc2_.m_extraMinionLevels = 0;
                           §§goto(addr526);
                        }
                     }
                     §§goto(addr508);
                  }
                  §§goto(addr431);
               }
               §§goto(addr380);
            }
         }
         §§goto(addr90);
      }
      
      private function CreateFloor_Boss2_hardMode() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         §§push(9);
         if(!_loc4_)
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.TRAINER_GYM_2,_loc1_,0);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "You look tough...but we\'ll soon see just how tough.  I am the Sage of Fire, let us test your strength.";
         _loc2_.m_whatTrainerSaysAtLose = "You\'re tougher than I expected.  Well done!!\n...\nThe fire Sage Seal grants you the ability to combine gems.";
         _loc2_.AddMod_MoveTimer(MinionMoveID.ice_shield_t5,4,1,MinionMoveID.deadly_inspiration_t5);
         _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_3,[81,373,29,34,14,295,247]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_robobull_1,[95,60,249,13,27,277,725]);
         if(_loc3_ || Boolean(this))
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_holyfox_1,[85,0,267,682,275,674,287,226]);
            if(_loc3_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_harpy_1,[628,645,244,487,657,562]);
               if(_loc3_ || Boolean(_loc2_))
               {
               }
               §§goto(addr141);
            }
            _loc2_.m_extraMinionLevels = 0;
         }
         addr141:
      }
      
      private function CreateFloor9_hardMode() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         §§push(10);
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I calculate that it is highly improbable that you\'ll win this fight.";
         _loc2_.m_whatTrainerSaysAtLose = "E=mc squared your good!!";
         _loc2_.AddMod_Resurection(7);
         _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_3,[80,343,334,249,297,276]);
         if(!(_loc3_ && _loc3_))
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_3,[80,340,349,279,830,107,126,890,225]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_3,[80,343,334,249,297,276]);
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               addr97:
               _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_3,[80,340,349,279,830,107,126,890,225]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_3,[80,340,284,227,536,85,351,277,830]);
               if(!_loc3_)
               {
                  addr127:
                  _loc2_.m_extraMinionLevels = -2;
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               if(!(_loc3_ && _loc3_))
               {
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Prepare to be shredded!";
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr155:
                     _loc2_.m_whatTrainerSaysAtLose = "Looks like you did the shredding.";
                     _loc2_.AddMod_Resurection(8);
                     if(_loc4_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Scorpion_3,[80,341,833,348,244,301,160]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Scorpion_3,[80,341,833,348,244,301,160]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Scorpion_3,[80,341,833,348,244,301,160]);
                        addr199:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Scorpion_3,[80,340,114,89,128,287,272]);
                        if(_loc4_ || Boolean(this))
                        {
                           addr218:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Scorpion_3,[80,341,155,176,304,217,160,272,240]);
                        }
                        _loc2_.m_extraMinionLevels = -1;
                        _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                        if(!_loc3_)
                        {
                           _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Electricity is so much fun to play with!";
                           _loc2_.m_whatTrainerSaysAtLose = "Ouch!  Your skill is shocking.";
                           _loc2_.AddMod_Resurection(6);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
                              if(_loc4_ || _loc1_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[340,569,557,248,576,271,155]);
                              }
                              addr331:
                              _loc2_.m_extraMinionLevels = -1;
                              _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                              _loc2_.AddMod_Resurection(8);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,834,342,334,270,570,231]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,132,117,289,230,342,570,270]);
                              if(_loc4_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,834,342,334,270,570,231]);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,834,342,334,270,570,231]);
                                    if(_loc3_)
                                    {
                                    }
                                    addr418:
                                    _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       _loc2_.AddMod_Resurection(8);
                                       if(!_loc3_)
                                       {
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_waterHorse_1,[111,595,488,584,249,278]);
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_waterHorse_1,[111,834,279,299,272,340]);
                                             if(_loc3_)
                                             {
                                             }
                                             §§goto(addr487);
                                          }
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_waterHorse_1,[111,834,279,299,272,340]);
                                          if(_loc4_ || _loc1_)
                                          {
                                             addr487:
                                             _loc2_.m_extraMinionLevels = 0;
                                             §§goto(addr490);
                                          }
                                          addr490:
                                          _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                                          if(!_loc3_)
                                          {
                                             _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Let us test your skill.";
                                             _loc2_.m_whatTrainerSaysAtLose = "Your is skill is improving, well done!";
                                             if(_loc4_ || Boolean(this))
                                             {
                                                _loc2_.AddMod_Resurection(7);
                                                _loc2_.AddMinion(MinionDexID.DEX_ID_waterHorse_1,[111,834,279,299,272,340]);
                                                _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,834,342,334,270,570,231]);
                                                _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
                                             }
                                          }
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_3,[80,343,334,249,297,276]);
                                          if(!_loc3_)
                                          {
                                             _loc2_.m_extraMinionLevels = 0;
                                          }
                                          return;
                                       }
                                    }
                                    §§goto(addr487);
                                 }
                                 _loc2_.m_extraMinionLevels = -1;
                              }
                              §§goto(addr418);
                           }
                           _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[340,289,113,126,532,507]);
                        }
                        §§goto(addr331);
                     }
                     §§goto(addr218);
                  }
                  §§goto(addr199);
               }
               §§goto(addr155);
            }
            §§goto(addr127);
         }
         §§goto(addr97);
      }
      
      private function CreateFloor10_hardMode() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         §§push(11);
         if(_loc3_)
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(!_loc4_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "My mom thinks I\'m cool!";
            if(_loc3_)
            {
               _loc2_.m_whatTrainerSaysAtLose = "Honestly, that wasn\'t true....sinff";
               _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_AntEater_1,4,[80,730,739,725,244,212,11,340],0);
               _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_raptor_1,1,[81,373,29,34,14,295,247],0);
               if(!(_loc4_ && Boolean(this)))
               {
                  addr78:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
                  if(_loc3_ || _loc1_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[112,100,214,86,289,166]);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        addr125:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[112,100,214,86,289,166]);
                     }
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[112,100,214,86,289,166]);
                     _loc2_.m_extraMinionLevels = -2;
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Yeah, so, um.  Lets like battle.";
                  _loc2_.m_whatTrainerSaysAtLose = "Wow, um, yeah, your like good.";
                  _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_LichBoss_1,8,[841,318,507,490,132,327,866],0);
                  _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_iceBird_1,1,[80,625,519,528,259,522,481],0);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                  if(_loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                     if(_loc3_ || _loc1_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                     }
                  }
                  _loc2_.m_extraMinionLevels = -1;
                  _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Prepare for a fatality.";
                  _loc2_.m_whatTrainerSaysAtLose = "Now that was fatal!";
                  _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_SlenderMan_1,6,[840,369,242,364,219,225],0);
                  if(_loc3_)
                  {
                     _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_HolyStrongGuy_1,2,[76,684,664,669,244,10],0);
                     if(_loc3_ || Boolean(this))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,730,739,725,244,212,11,340]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
                        if(!_loc4_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,834,342,334,270,570,231]);
                           if(!(_loc4_ && _loc1_))
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,132,117,289,230,342,570,270]);
                              addr359:
                              _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[113,744,182,756,732,831]);
                           }
                           _loc2_.m_extraMinionLevels = -1;
                        }
                     }
                     _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                     if(_loc3_ || Boolean(this))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,539,142,558,847,278]);
                        if(_loc3_ || _loc3_)
                        {
                           addr406:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr424);
                           }
                           §§goto(addr456);
                        }
                        addr424:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,130,112,289,270,251,576,247]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                        if(_loc3_ || _loc1_)
                        {
                           addr456:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[112,100,214,86,289,166]);
                        }
                        _loc2_.m_extraMinionLevels = -1;
                        _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                        if(_loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,348,342,832,270,736,725,242]);
                           if(!(_loc4_ && _loc3_))
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_RoboShark_1,[91,734,726,140,249,739,275]);
                              if(!_loc4_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,474,258,467,477,263,670]);
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_1,[110,179,309,155,5,214,285]);
                                    if(_loc4_ && Boolean(_loc2_))
                                    {
                                    }
                                    §§goto(addr565);
                                 }
                              }
                              _loc2_.m_extraMinionLevels = 0;
                           }
                        }
                        addr565:
                        _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                        _loc2_.m_whatTrainerSaysAtStart_notBeaten = "It is time to test your battle prowess.";
                        if(_loc3_ || _loc1_)
                        {
                           _loc2_.m_whatTrainerSaysAtLose = "Your skill is top notch!";
                           _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_demonic_cat_1,6,[80,539,142,558,847,278],0);
                           _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_JellyFish_1,3,[75,599,584,244,341],0);
                           if(!(_loc4_ && _loc1_))
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
                              if(!(_loc4_ && _loc1_))
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
                              }
                              _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[340,569,557,248,576,271,155]);
                              if(_loc3_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,474,258,467,477,263,670]);
                                 if(_loc3_ || Boolean(this))
                                 {
                                 }
                              }
                              §§goto(addr698);
                           }
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                        }
                        addr698:
                        _loc2_.m_extraMinionLevels = 0;
                        return;
                     }
                     §§goto(addr406);
                  }
                  §§goto(addr359);
               }
               §§goto(addr125);
            }
         }
         §§goto(addr78);
      }
      
      private function CreateFloor11_hardMode() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         §§push(12);
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(!_loc3_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Time to take you to school.";
            if(!(_loc3_ && _loc1_))
            {
               _loc2_.m_whatTrainerSaysAtLose = "Looks like you already know robots are weak to fire, water, electric, and dino moves.";
            }
         }
         _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[625,724,341,726,249,299]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[625,724,341,726,249,299]);
         if(!_loc3_)
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[625,724,341,726,249,299]);
            if(_loc4_ || _loc1_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[626,643,346,278,726,340,247]);
               if(_loc4_)
               {
               }
               addr122:
               _loc2_.m_extraMinionLevels = -2;
               addr125:
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               if(_loc4_)
               {
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Ah, there you are.  I\'m glad to see you!";
                  _loc2_.m_whatTrainerSaysAtLose = "I enjoy our battles, I feel like I learn so much!";
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                  }
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[112,100,214,86,289,166]);
               _loc2_.m_extraMinionLevels = -1;
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
               if(_loc4_)
               {
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "My eyes are aflame for a good fight!";
                  _loc2_.m_whatTrainerSaysAtLose = "That burns good!";
                  _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,730,739,725,244,212,11,340]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,730,739,725,244,212,11,340]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,730,739,725,244,212,11,340]);
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,348,342,832,270,736,725,242]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,329,212,142,650,891,227,270]);
               if(_loc4_)
               {
                  _loc2_.m_extraMinionLevels = -1;
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
               if(_loc4_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_robobull_1,[95,739,279,725,732,247,10]);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr320:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_robobull_1,[95,60,249,13,27,277,725]);
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        addr339:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_robobull_1,[95,319,309,75,320,212,41,10]);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr359:
                           _loc2_.m_extraMinionLevels = -1;
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_RoboShark_1,[91,590,584,279,597,297,721,726]);
                        if(_loc4_ || _loc1_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_RoboShark_1,[91,764,179,769,309]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_RoboShark_1,[91,734,726,140,249,739,275]);
                           if(!_loc3_)
                           {
                              addr414:
                              _loc2_.AddMinion(MinionDexID.DEX_ID_RoboShark_1,[91,734,726,140,249,739,275]);
                           }
                           _loc2_.AddMinion(MinionDexID.DEX_ID_RoboShark_1,[91,734,726,140,249,739,275]);
                           if(_loc4_)
                           {
                              _loc2_.m_extraMinionLevels = 0;
                           }
                           _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                           if(!_loc3_)
                           {
                              _loc2_.m_whatTrainerSaysAtStart_notBeaten = "The two of us shall battle to test our skill.";
                              if(_loc4_)
                              {
                                 addr458:
                                 _loc2_.m_whatTrainerSaysAtLose = "That was a grand fight, well done!";
                              }
                              _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_Goo_1,14,[85,94,122,248,345,342,356],0);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,348,342,832,270,736,725,242]);
                              if(_loc4_ || _loc3_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[625,724,341,726,249,299]);
                              }
                              _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                              _loc2_.m_extraMinionLevels = 0;
                              return;
                           }
                           §§goto(addr458);
                        }
                        §§goto(addr414);
                     }
                     §§goto(addr359);
                  }
                  §§goto(addr339);
               }
               §§goto(addr320);
            }
            _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[625,289,124,133,126,346]);
            if(_loc4_)
            {
               §§goto(addr122);
            }
            §§goto(addr125);
         }
         §§goto(addr122);
      }
      
      private function CreateFloor12_hardMode() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         §§push(13);
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "The world isn\'t going to science itself!";
         if(_loc4_)
         {
            _loc2_.m_whatTrainerSaysAtLose = "Back to science I go then";
            _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_Armadillo_1,6,[112,100,214,86,289,166],0);
            _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_raptor_3,2,[81,373,29,34,14,295,247],10);
            if(!(_loc3_ && _loc1_))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_2,[80,343,334,249,297,276]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_2,[80,340,349,279,830,107,126,890,225]);
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,649,244,491,655,274,341]);
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,829,344,274,244]);
                     if(_loc4_)
                     {
                     }
                     addr157:
                     _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
                     _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Tonight I dine on Turtle soup.";
                     _loc2_.m_whatTrainerSaysAtLose = "Don\'t you dare say \"Cowabunga dude\"!";
                     _loc2_.AddMod_MoveTimer(MinionMoveID.reflect_damage_t3,2,1,MinionMoveID.mirror_coating_t1);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
                     if(_loc4_ || _loc1_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,649,244,491,655,274,341]);
                        if(_loc4_ || _loc1_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,281,88,287,327,276,141]);
                           if(_loc4_)
                           {
                              addr239:
                              _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 addr257:
                                 _loc2_.m_extraMinionLevels = -1;
                              }
                           }
                           _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                           _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I study what happens when death calls.";
                           if(_loc4_)
                           {
                              _loc2_.m_whatTrainerSaysAtLose = "It looks like you have caller ID.";
                              if(!(_loc3_ && _loc3_))
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,132,117,289,230,342,570,270]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,132,117,289,230,342,570,270]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,132,117,289,230,342,570,270]);
                                 addr296:
                                 if(_loc4_)
                                 {
                                    addr331:
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,132,117,289,230,342,570,270]);
                                    if(_loc4_ || Boolean(_loc2_))
                                    {
                                       addr351:
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_DC2Guy_1,[76,774,249,734,739,25]);
                                    }
                                    _loc2_.m_extraMinionLevels = -1;
                                    _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                                    if(!_loc3_)
                                    {
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[841,318,507,490,132,327,866]);
                                       if(_loc4_ || Boolean(_loc2_))
                                       {
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[841,318,507,490,132,327,866]);
                                          if(_loc4_ || Boolean(this))
                                          {
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[841,318,507,490,132,327,866]);
                                             if(_loc4_ || Boolean(this))
                                             {
                                                addr432:
                                                _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[841,318,507,490,132,327,866]);
                                                if(_loc4_)
                                                {
                                                   _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                                                }
                                             }
                                             _loc2_.m_extraMinionLevels = -1;
                                             _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                                             if(_loc4_ || _loc1_)
                                             {
                                                _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,584,599,249,292]);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,580,639,294,279,247,595]);
                                                   if(_loc4_)
                                                   {
                                                      _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,580,129,516,81,141,131,646,277]);
                                                      if(_loc4_)
                                                      {
                                                         addr523:
                                                         _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[625,580,127,516,326,134,307,524,214]);
                                                         if(!_loc3_)
                                                         {
                                                            addr539:
                                                            _loc2_.m_extraMinionLevels = 0;
                                                         }
                                                      }
                                                      _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                                                      _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Prepare to be tested.";
                                                      if(!_loc3_)
                                                      {
                                                         _loc2_.m_whatTrainerSaysAtLose = "You have passed with flying colors!";
                                                         _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
                                                         _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
                                                         _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
                                                         _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
                                                         _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
                                                         if(!_loc3_)
                                                         {
                                                            _loc2_.m_extraMinionLevels = 0;
                                                         }
                                                      }
                                                      return;
                                                   }
                                                }
                                                §§goto(addr539);
                                             }
                                             §§goto(addr523);
                                          }
                                       }
                                    }
                                    §§goto(addr432);
                                 }
                                 §§goto(addr351);
                              }
                              §§goto(addr331);
                           }
                           §§goto(addr296);
                        }
                        §§goto(addr239);
                     }
                     §§goto(addr257);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[113,744,182,756,732,831]);
                  addr154:
                  _loc2_.m_extraMinionLevels = -2;
               }
               §§goto(addr157);
            }
         }
         §§goto(addr154);
      }
      
      private function CreateFloor_Boss3_hardMode() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         §§push(14);
         if(_loc3_)
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.TRAINER_GYM_3,_loc1_,0);
         if(_loc3_ || _loc1_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "We must ponder metastasis during our skirmish and the reprocussions it has on the axioms of space and destiny. \n...\nIt is the duty of the Electric Sage.";
            _loc2_.m_whatTrainerSaysAtLose = "You\'re competence is exemplary!\n...\nWith the electric Sage Seal, you now have the option to pick a second egg in the hatchery.  If you don\'t want your first choice.";
            _loc2_.AddMinion(MinionDexID.DEX_ID_RoboShark_1,[91,590,584,279,597,297,721,726]);
            if(!(_loc4_ && _loc3_))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_3,[80,343,334,249,297,276]);
               if(_loc3_ || Boolean(_loc2_))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_AntEater_2,[80,730,739,725,244,212,11,340]);
                  if(_loc3_ || _loc1_)
                  {
                  }
                  §§goto(addr149);
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[112,100,214,86,289,166]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_waterHorse_1,[111,834,279,299,272,340]);
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr146:
                  _loc2_.m_extraMinionLevels = 0;
               }
            }
            addr149:
            return;
         }
         §§goto(addr146);
      }
      
      private function CreateFloor13_hardMode() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         §§push(15);
         if(_loc3_)
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Well well, you think you can win?  We\'ll see about that.";
         _loc2_.m_whatTrainerSaysAtLose = "I hate to admit it.  But I guess you might be alright...";
         _loc2_.AddMod_Resurection(5);
         _loc2_.AddMinion(MinionDexID.DEX_ID_SlenderMan_1,[844,359,853,227,361]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_SlenderMan_1,[844,359,853,227,361]);
         if(_loc3_)
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_SlenderMan_1,[844,359,853,227,361]);
            if(!_loc4_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_SlenderMan_1,[844,359,853,227,361]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_SlenderMan_1,[844,359,853,227,361]);
               if(_loc3_)
               {
                  addr97:
                  _loc2_.m_extraMinionLevels = -2;
               }
            }
            _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
            if(!_loc4_)
            {
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "<Sighs>....Prehaps you will be a challenge...";
               _loc2_.m_whatTrainerSaysAtLose = "That was, eventful...you have excited me!";
               if(_loc3_ || _loc1_)
               {
                  _loc2_.AddMod_MoveTimer(MinionMoveID.inner_force_t5,4,2,MinionMoveID.deadly_inspiration_t1);
                  if(_loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,564,556,244,578,361]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,359,362,852,180,244,270]);
                     addr156:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,129,878,288,869,360]);
                     if(_loc3_ || Boolean(this))
                     {
                        addr174:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,564,556,244,578,361]);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr192:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                        }
                        _loc2_.m_extraMinionLevels = -1;
                        _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                        if(_loc3_)
                        {
                           _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Hahahahahahahahahaaaaaaaaa";
                           if(_loc3_ || Boolean(_loc2_))
                           {
                              _loc2_.m_whatTrainerSaysAtLose = "..................";
                              _loc2_.AddMod_Resurection(5);
                              if(_loc3_)
                              {
                                 addr237:
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,564,556,244,578,361]);
                                 if(_loc4_ && _loc3_)
                                 {
                                 }
                                 addr274:
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,359,362,852,180,244,270]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,359,362,852,180,244,270]);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    §§goto(addr312);
                                 }
                                 §§goto(addr330);
                              }
                              _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,359,362,852,180,244,270]);
                              if(_loc3_ || Boolean(_loc2_))
                              {
                                 §§goto(addr274);
                              }
                              addr312:
                              _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,129,878,288,869,360]);
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 addr330:
                                 _loc2_.m_extraMinionLevels = -1;
                              }
                              _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[843,879,366,866,872,506,490]);
                              if(!_loc4_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[840,859,244,854,847]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[841,318,507,490,132,327,866]);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                                    if(_loc3_)
                                    {
                                    }
                                    §§goto(addr417);
                                 }
                                 _loc2_.m_extraMinionLevels = -1;
                              }
                              addr417:
                              _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[77,589,249,494,524,852]);
                              if(_loc3_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[77,589,249,494,524,852]);
                                 if(!_loc4_)
                                 {
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[77,589,249,494,524,852]);
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[77,364,359,874,854,94]);
                                 }
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[77,238,89,214,232,369]);
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    _loc2_.m_extraMinionLevels = 0;
                                 }
                              }
                              _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                              if(_loc3_)
                              {
                                 _loc2_.m_whatTrainerSaysAtStart_notBeaten = "We shall try and deepen your skill.";
                                 _loc2_.m_whatTrainerSaysAtLose = "Your growth is fantasic!";
                                 if(!(_loc4_ && Boolean(_loc2_)))
                                 {
                                    _loc2_.AddMod_Resurection(6);
                                    if(_loc3_ || _loc1_)
                                    {
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_3,[629,647,120,273,297,650,226]);
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_3,[625,144,84,318,645,485,855,5]);
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[77,589,249,494,524,852]);
                                       if(_loc3_)
                                       {
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[77,589,249,494,524,852]);
                                          if(_loc3_ || Boolean(_loc2_))
                                          {
                                          }
                                          §§goto(addr604);
                                       }
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                                    }
                                 }
                              }
                              addr604:
                              _loc2_.m_extraMinionLevels = 0;
                              return;
                           }
                        }
                        §§goto(addr237);
                     }
                     §§goto(addr192);
                  }
                  §§goto(addr156);
               }
               §§goto(addr174);
            }
            §§goto(addr156);
         }
         §§goto(addr97);
      }
      
      private function CreateFloor14_hardMode() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         §§push(16);
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Have you met my sisters, we\'re of one mind.";
         _loc2_.m_whatTrainerSaysAtLose = "I just want us to act in unison.";
         _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,499,249,489,276,681]);
         if(_loc4_)
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,499,249,489,276,681]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,499,249,489,276,681]);
            if(_loc4_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,524,517,264,528,650]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,214,371,145,219,179,305]);
               if(_loc4_)
               {
               }
               addr109:
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Have you met my sisters, we\'re two times better than most.";
               if(!_loc3_)
               {
                  _loc2_.m_whatTrainerSaysAtLose = "I\'m the arrogant one, I guess.";
                  _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_2,[80,625,494,487,499,244,631]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_2,[80,625,494,487,499,244,631]);
                  if(_loc4_ || _loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_2,[80,625,494,487,499,244,631]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,214,371,145,219,179,305]);
                  }
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_2,[80,625,639,632,279,487,241]);
               _loc2_.m_extraMinionLevels = -1;
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Have you met my sisters, three is our favorite number.";
                  if(_loc4_ || _loc1_)
                  {
                     _loc2_.m_whatTrainerSaysAtLose = "We must learn who we are, to find our deepest strength.";
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,459,451,292,464,165,485,225]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,459,451,292,464,165,485,225]);
                        if(!(_loc3_ && _loc1_))
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,459,451,292,464,165,485,225]);
                           addr283:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                           if(_loc4_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_waterHorse_1,[111,834,279,299,272,340]);
                           }
                           _loc2_.m_extraMinionLevels = -1;
                           addr263:
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,595,582,244,369,491,225,211]);
                        if(_loc4_ || _loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,489,493,227,582,242]);
                           if(_loc4_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,329,302,287,509,141]);
                           }
                           _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,489,493,227,582,242]);
                        }
                        _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,489,493,227,582,242]);
                        _loc2_.m_extraMinionLevels = -1;
                        _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,649,244,491,655,274,341]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,649,244,491,655,274,341]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,649,244,491,655,274,341]);
                        if(_loc4_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,829,344,274,244]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,281,88,287,327,276,141]);
                        }
                        _loc2_.m_extraMinionLevels = 0;
                        _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                        _loc2_.m_whatTrainerSaysAtStart_notBeaten = "In death there can be new life, let us battle.";
                        _loc2_.m_whatTrainerSaysAtLose = "It is as I say, well done.";
                        if(!(_loc3_ && _loc1_))
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,499,249,489,276,681]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_2,[80,625,494,487,499,244,631]);
                           if(_loc4_ || _loc3_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,459,451,292,464,165,485,225]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,489,493,227,582,242]);
                              §§goto(addr542);
                           }
                           §§goto(addr556);
                        }
                        addr542:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,649,244,491,655,274,341]);
                        if(!_loc3_)
                        {
                           addr556:
                           _loc2_.m_extraMinionLevels = 0;
                        }
                        return;
                     }
                  }
                  §§goto(addr263);
               }
               §§goto(addr283);
            }
            _loc2_.m_extraMinionLevels = -2;
         }
         §§goto(addr109);
      }
      
      private function CreateFloor15_hardMode() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         §§push(17);
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I sense doom in this temple.";
         _loc2_.m_whatTrainerSaysAtLose = "You battle well and your heart is strong, but remember that undead minions are weak to fire, holy, and plant moves.";
         _loc2_.AddMod_Resurection(7);
         _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_3,[625,559,857,487,7,243]);
         if(_loc4_)
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_3,[625,559,857,487,7,243]);
            if(_loc4_ || _loc3_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_3,[629,647,120,273,297,650,226]);
               if(!(_loc3_ && _loc3_))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_3,[625,559,857,487,7,243]);
                  if(_loc3_)
                  {
                  }
                  addr122:
                  _loc2_.m_extraMinionLevels = -2;
                  _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "ARRRRRRRRRRR hehehe hahaha";
                  _loc2_.m_whatTrainerSaysAtLose = "sniff, sniff.......SNIFFFFF";
                  _loc2_.AddMod_Resurection(10);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_3,[539,511,545,144,872,272]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_3,[539,511,545,144,872,272]);
                  if(_loc4_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_3,[535,559,577,490,243,273]);
                     if(!_loc3_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_3,[535,114,21,299,58,491]);
                     }
                     _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                  }
                  _loc2_.m_extraMinionLevels = -1;
                  _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Huzzah!  Boy am I ready for a good battle!";
                     _loc2_.m_whatTrainerSaysAtLose = "Double Huzzah!  That was fantastic!";
                     _loc2_.AddMod_Shield(3,1);
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
                        if(!_loc3_)
                        {
                           addr252:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
                           if(!_loc3_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
                              if(_loc4_ || _loc1_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,130,112,289,270,251,576,247]);
                                 if(_loc3_)
                                 {
                                 }
                                 §§goto(addr319);
                              }
                           }
                           _loc2_.m_extraMinionLevels = -1;
                        }
                     }
                     addr319:
                     _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                     _loc2_.AddMod_Resurection(4);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_harpy_1,[628,645,244,487,657,562]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_harpy_1,[628,645,244,487,657,562]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_harpy_1,[628,645,244,487,657,562]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_harpy_1,[628,645,244,487,657,562]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                     _loc2_.m_extraMinionLevels = -1;
                     _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                     if(!_loc3_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,569,579,95,249,242,10,145]);
                     }
                     _loc2_.m_extraMinionLevels = 0;
                     _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                     _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I will show you the strength of a Cerberus.";
                     _loc2_.m_whatTrainerSaysAtLose = "Your strength is in your minions and in you.";
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        _loc2_.AddMod_Resurection(12);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,569,579,95,249,242,10,145]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,569,579,95,249,242,10,145]);
                        if(!_loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,569,579,95,249,242,10,145]);
                        }
                     }
                     _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,254,233,89,287,127]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,29,147,14,65,576,570,247]);
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        _loc2_.m_extraMinionLevels = 0;
                     }
                     return;
                  }
                  §§goto(addr252);
               }
               §§goto(addr122);
            }
            _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_3,[629,647,120,273,297,650,226]);
         }
         §§goto(addr122);
      }
      
      private function CreateFloor16_hardMode() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         §§push(18);
         if(_loc3_)
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Graves, death, bones, fun, lich, redrum, REDRUM";
         if(_loc3_ || _loc3_)
         {
            _loc2_.m_whatTrainerSaysAtLose = "hahahahahhahahaaaa";
         }
         _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_BlueBell_1,9,[8,59,244,67,851],0);
         _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_harpy_1,2,[625,39,8,290,33,244],0);
         _loc2_.AddMinion(MinionDexID.DEX_ID_BlueBell_1,[8,59,244,67,851]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_BlueBell_1,[8,59,244,67,851]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_BlueBell_1,[8,59,244,67,851]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_PinkBell_1,[5,674,516,713,264,696]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_PinkBell_1,[5,674,516,713,264,696]);
         _loc2_.m_extraMinionLevels = -2;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "The bones of my enemies hold much value.";
         _loc2_.m_whatTrainerSaysAtLose = "I will find others...";
         _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_worm_3,3,[85,160,185,177,214,166,287,230,126],0);
         if(!(_loc4_ && Boolean(this)))
         {
            _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_EvilEye_3,2,[539,511,545,144,872,272],0);
            if(!(_loc4_ && Boolean(this)))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,436,479,259,470,264,670]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,435,679,264,671,259,440]);
               if(_loc3_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,436,479,259,470,264,670]);
                  addr220:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,435,679,264,671,259,440]);
                  if(_loc3_)
                  {
                     addr234:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,435,269,521,90,717,264,670]);
                     if(!_loc4_)
                     {
                        _loc2_.m_extraMinionLevels = -1;
                     }
                  }
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "There is peace in the graves, a deep silience.";
               _loc2_.m_whatTrainerSaysAtLose = "There is peace in battle as well.";
               _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_Griffen_2,2,[625,829,344,274,244],0);
               _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_Crow_3,4,[625,559,857,487,7,243],0);
               _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,649,244,491,655,274,341]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,829,344,274,244]);
               if(!(_loc4_ && _loc1_))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,649,244,491,655,274,341]);
                  if(!_loc4_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,829,344,274,244]);
                     addr351:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,281,88,287,327,276,141]);
                  }
                  _loc2_.m_extraMinionLevels = -1;
                  _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_HolyStrongGuy_1,5,[76,684,664,669,244,10],0);
                     if(!_loc4_)
                     {
                        _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_demonic_cat_2,2,[80,564,576,249,572,292],0);
                        if(!_loc4_)
                        {
                           addr411:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,684,664,669,244,10]);
                           if(_loc3_ || Boolean(this))
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,684,664,669,244,10]);
                           }
                           §§goto(addr451);
                        }
                        _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,684,664,669,244,10]);
                        addr451:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,544,264,533,553,225]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,252,227,217,129,132,665]);
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           _loc2_.m_extraMinionLevels = -1;
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                        _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_holyfox_1,11,[85,0,69,227,707,244,660],0);
                        _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_BatDemon_1,1,[1,569,579,95,249,242,10,145],0);
                        if(_loc3_ || _loc1_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_holyfox_1,[85,0,69,227,707,244,660]);
                           if(_loc3_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_holyfox_1,[85,0,69,227,707,244,660]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_holyfox_1,[85,0,891,244,663,719,653]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_holyfox_1,[85,0,69,227,707,244,660]);
                              if(_loc3_ || _loc3_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_holyfox_1,[85,0,267,682,275,674,287,226]);
                              }
                           }
                        }
                        _loc2_.m_extraMinionLevels = 0;
                        _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                        _loc2_.m_whatTrainerSaysAtStart_notBeaten = "We shall battle to test ourselves.";
                        _loc2_.m_whatTrainerSaysAtLose = "For your victory, I will give you a tip.  When fighting ice minions use fire, flying, robot, or titan moves.";
                        _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_HolyStrongGuy_1,5,[76,684,664,669,244,10],0);
                        _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_harpy_1,2,[628,645,244,487,657,562],0);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_holyfox_1,[85,0,69,227,707,244,660]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,684,664,669,244,10]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Griffen_2,[625,649,244,491,655,274,341]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,436,479,259,470,264,670]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_BlueBell_1,[8,59,244,67,851]);
                        _loc2_.m_extraMinionLevels = 0;
                        return;
                     }
                  }
                  §§goto(addr411);
               }
               §§goto(addr351);
            }
            §§goto(addr234);
         }
         §§goto(addr220);
      }
      
      private function CreateFloor_Boss4_hardMode() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         §§push(19);
         if(!_loc4_)
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.TRAINER_GYM_4,_loc1_,0);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Da Undead Sage welcomes ya!  Your battle is strong here, ya dig?";
         if(!(_loc4_ && _loc1_))
         {
            _loc2_.m_whatTrainerSaysAtLose = "Your battle is strong mon!!\n...\nThe undead Sage Seal grants you the abiltiy to find random gem chests.";
            _loc2_.AddMod_Resurection(10);
         }
         _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[85,0,70,244,27,43,181,856]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
         if(_loc3_ || Boolean(_loc2_))
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,524,517,264,528,650]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,569,579,95,249,242,10,145]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
            if(!(_loc4_ && _loc1_))
            {
               _loc2_.m_extraMinionLevels = 0;
            }
         }
      }
      
      private function CreateFloor17_hardMode() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         §§push(20);
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(_loc4_ || Boolean(this))
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Hey!  I\'ve heard a lot of really good things about you!";
            _loc2_.m_whatTrainerSaysAtLose = "The rumors are true, you\'re amazing!";
            if(_loc4_ || _loc1_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
               if(!_loc3_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,129,219,100,650,141,272,421]);
                  if(_loc3_ && _loc3_)
                  {
                  }
                  addr118:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     _loc2_.m_extraMinionLevels = -2;
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Water is the essence of life, and life is a beautiful thing.";
                     if(!_loc3_)
                     {
                        _loc2_.m_whatTrainerSaysAtLose = "There is beauty in battle as well.";
                        _loc2_.AddMod_Shield(1,1);
                        if(!_loc3_)
                        {
                           _loc2_.AddMod_MoveTimer(MinionMoveID.sear_t5,2,2,MinionMoveID.hulk_inspiration_t1);
                        }
                        _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,584,297,487,225,287,241,270]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,4,243,58,25,271,41]);
                        if(!(_loc3_ && _loc1_))
                        {
                           addr210:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,344,273,335,831,276,242,55]);
                           if(_loc4_ || _loc1_)
                           {
                              addr230:
                              _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,619,263,517,614,258]);
                              if(_loc4_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,154,147,270,249,26,243,11]);
                              }
                           }
                           _loc2_.m_extraMinionLevels = -1;
                           _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                           _loc2_.m_whatTrainerSaysAtStart_notBeaten = "The forest is place of inspiration to me.";
                           _loc2_.m_whatTrainerSaysAtLose = "It is clear you know the forest, but did you know plant types are weak to fire, ice, flying, demonic, and dino moves.";
                           _loc2_.AddMod_Shield(3,3);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,130,112,289,270,251,576,247]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,584,599,249,292]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,580,639,294,279,247,595]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,580,639,294,279,247,595]);
                           _loc2_.m_extraMinionLevels = -1;
                           _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,580,129,516,81,141,131,646,277]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_2,[80,625,635,292,277,644,487,242]);
                           if(_loc4_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,439,472,259,475,518,275]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 _loc2_.m_extraMinionLevels = -1;
                              }
                           }
                           _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,584,599,249,292]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,580,639,294,279,247,595]);
                           if(_loc4_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
                                 if(_loc4_)
                                 {
                                    addr509:
                                    _loc2_.m_extraMinionLevels = 0;
                                 }
                              }
                              _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                              if(!_loc3_)
                              {
                                 _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I look forward to our battle.";
                                 if(_loc4_ || _loc3_)
                                 {
                                    _loc2_.m_whatTrainerSaysAtLose = "You\'re not one to disappoint, that was great!";
                                    if(_loc4_ || Boolean(_loc2_))
                                    {
                                       _loc2_.AddMod_Shield(2,2);
                                       if(!_loc3_)
                                       {
                                          addr548:
                                          _loc2_.AddMod_Resurection(8);
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
                                          if(_loc4_)
                                          {
                                             addr566:
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[91,450,89,272,288,297,242]);
                                             if(_loc4_)
                                             {
                                             }
                                             §§goto(addr613);
                                          }
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[91,450,89,272,288,297,242]);
                                          if(_loc4_)
                                          {
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,435,679,264,671,259,440]);
                                          }
                                       }
                                       §§goto(addr613);
                                    }
                                    §§goto(addr548);
                                 }
                                 addr613:
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[81,155,131,101,216,225,289,89,165,176]);
                                 _loc2_.m_extraMinionLevels = 0;
                                 return;
                              }
                              §§goto(addr566);
                           }
                           §§goto(addr509);
                        }
                     }
                     §§goto(addr230);
                  }
                  §§goto(addr210);
               }
            }
            _loc2_.AddMinion(MinionDexID.DEX_ID_iceBird_2,[80,625,494,487,499,244,631]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,439,472,259,475,518,275]);
         }
         §§goto(addr118);
      }
      
      private function CreateFloor18_hardMode() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         §§push(21);
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Fresh Air is just one of my favorite things!";
         if(!_loc3_)
         {
            _loc2_.m_whatTrainerSaysAtLose = "A good battle is another one of my favorite things!";
         }
         _loc2_.AddMod_Shield(1,1);
         if(!_loc3_)
         {
            _loc2_.AddMod_MoveTimer(MinionMoveID.water_infusion_t5,2,2,MinionMoveID.hulk_inspiration_t1);
            _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_3,[75,155,154,149,167,249,26]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_landShark_1,[75,109,584,607,264,130]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_landShark_1,[75,109,584,607,264,130]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_landShark_1,[75,599,149,244,582]);
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
               if(!(_loc3_ && Boolean(this)))
               {
                  addr131:
                  _loc2_.m_extraMinionLevels = -2;
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               if(_loc4_ || _loc3_)
               {
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I find peace in water.";
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     _loc2_.m_whatTrainerSaysAtLose = "Your mastery of water is excellent, you seem to know it\'s weak to electric, plant, and flying moves.";
                     if(!_loc3_)
                     {
                        _loc2_.AddMod_Shield(2,2);
                        if(!_loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,595,582,244,369,491,225,211]);
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,489,493,227,582,242]);
                           }
                           §§goto(addr228);
                        }
                     }
                     _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_3,[75,155,154,149,167,249,26]);
                     if(_loc4_)
                     {
                        §§goto(addr228);
                     }
                     addr228:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,459,451,292,464,165,485,225]);
                     §§goto(addr241);
                  }
                  addr241:
                  _loc2_.m_extraMinionLevels = -1;
                  _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "YOU SHALL NOT PASS";
                  _loc2_.m_whatTrainerSaysAtLose = "Well...maybe you will.";
                  _loc2_.AddMod_Resurection(5);
                  if(_loc4_ || Boolean(this))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_landShark_1,[75,109,584,607,264,130]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_landShark_1,[75,599,149,244,582]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_2,[75,105,459,421,462,244,156,395]);
                     if(!_loc3_)
                     {
                        §§goto(addr324);
                     }
                     §§goto(addr339);
                  }
                  addr324:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_2,[75,105,119,89,225,289,421,121]);
                  if(_loc4_)
                  {
                     addr339:
                     _loc2_.m_extraMinionLevels = -1;
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                  if(_loc4_ || _loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,224,109,289,12,234]);
                     if(_loc4_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_2,[75,105,459,421,462,244,156,395]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_grassGorilla_2,[75,105,119,89,225,289,421,121]);
                        §§goto(addr397);
                     }
                     §§goto(addr437);
                  }
                  addr397:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,429,242,422,297,272,286]);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                     if(!(_loc3_ && _loc3_))
                     {
                        addr437:
                        _loc2_.m_extraMinionLevels = -1;
                     }
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                  if(!(_loc3_ && _loc1_))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_flyingGrassSuperMinion_1,[87,434,249,457,154,827]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_3,[75,155,154,149,167,249,26]);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_3,[75,155,364,27,561,226,149,246]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_holyMantris_1,[80,436,479,259,470,264,670]);
                  if(_loc4_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,214,179,304,101,296,216]);
                  }
                  _loc2_.m_extraMinionLevels = 0;
                  _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "To battle and find victory is a thing of excellence.";
                  if(_loc4_)
                  {
                     _loc2_.m_whatTrainerSaysAtLose = "Your excellence is evident.";
                     _loc2_.AddMod_Shield(3,1);
                     if(!_loc3_)
                     {
                        §§goto(addr543);
                     }
                     §§goto(addr598);
                  }
                  addr543:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_waterHorse_1,[111,834,279,299,272,340]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
                  if(!_loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
                     addr598:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_groundMole_3,[80,155,154,147,270,249,26,243,11]);
                  }
                  _loc2_.m_extraMinionLevels = 0;
                  return;
               }
               §§goto(addr228);
            }
         }
         §§goto(addr131);
      }
      
      private function CreateFloor19_hardMode() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TrainerDataObject = null;
         §§push(22);
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(!_loc3_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Let\'s do this, it\'s GO TIME!!";
            if(_loc4_ || _loc3_)
            {
               _loc2_.m_whatTrainerSaysAtLose = "....that was STELLAR!!";
               _loc2_.AddMod_MoveTimer(MinionMoveID.wildfire_t5,5,1,MinionMoveID.energizing_inspiration_t5);
               if(!_loc3_)
               {
                  addr63:
                  _loc2_.AddMod_Shield(3,3);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,354,343,273,242,12]);
               }
            }
            _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,34,14,242,274,345]);
            if(_loc4_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,55,54,259,125,207,232]);
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,59,24,50,127,108]);
                  if(!(_loc3_ && _loc1_))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                     addr146:
                     _loc2_.m_extraMinionLevels = -2;
                  }
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Fire is my passion!";
               if(_loc4_)
               {
                  _loc2_.m_whatTrainerSaysAtLose = "Although fire is strong it is also weak to water and earth.";
                  _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_Armadillo_2,4,[110,179,309,155,5,214,285],-2);
                  if(_loc4_ || Boolean(this))
                  {
                     _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_harpy_1,2,[625,39,8,290,33,244],-2);
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        _loc2_.AddMod_MoveTimer(MinionMoveID.refreshing_wave_t5,4,2,MinionMoveID.deadly_inspiration_t5);
                        addr214:
                        _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,70,244,27,43,181,856]);
                     }
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,70,244,27,43,181,856]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,184,157,297,286,422,243]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,440,423,431,259,447,243]);
                     if(_loc4_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,14,26,47,249,37]);
                        addr280:
                        _loc2_.m_extraMinionLevels = -1;
                     }
                     _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                     _loc2_.m_whatTrainerSaysAtStart_notBeaten = "You are no match for Flamator, I will show you true power.";
                     _loc2_.m_whatTrainerSaysAtLose = "I have been the one shown power.";
                     _loc2_.AddMod_Resurection(5);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,204,277,207,220,756,232,105]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,55,54,259,125,207,232]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_3,[81,370,320,89,279,134,109,431]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[86,160,359,363,181,231,100,247]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,1,14,26,40,249,213]);
                     _loc2_.m_extraMinionLevels = -1;
                     _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                     if(_loc4_ || _loc1_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,595,582,244,369,491,225,211]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,329,302,287,509,141]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_flyingGrassSuperMinion_1,[87,644,234,297,249,275]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,440,423,431,259,447,243]);
                     }
                     _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                     if(_loc4_ || _loc3_)
                     {
                        _loc2_.m_extraMinionLevels = -1;
                     }
                     _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                     if(!(_loc3_ && _loc1_))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,70,244,27,43,181,856]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,289,856,230,107,325,277,371]);
                        if(!(_loc3_ && _loc1_))
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_robobull_1,[95,739,279,725,732,247,10]);
                        }
                        _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,444,227,439,259,320]);
                        if(_loc4_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,757,179,309,146,370,217]);
                           _loc2_.m_extraMinionLevels = 0;
                        }
                     }
                     _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                     _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I shall do my best in our battle, I don\'t think you\'ll be disappointed.";
                     _loc2_.m_whatTrainerSaysAtLose = "Your best is better than mine!";
                     _loc2_.AddMod_MoveTimer(MinionMoveID.inner_force_t5,3,2,MinionMoveID.agile_inspiration_t5);
                     if(_loc4_ || _loc3_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[86,160,359,363,181,231,100,247]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,64,43,146,244,67]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,444,227,439,259,320]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,354,343,273,242,12]);
                        _loc2_.m_extraMinionLevels = 0;
                     }
                     return;
                  }
                  §§goto(addr214);
               }
               §§goto(addr280);
            }
            §§goto(addr146);
         }
         §§goto(addr63);
      }
      
      private function CreateFloor20_hardMode() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         §§push(23);
         if(!(_loc4_ && _loc1_))
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(_loc3_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "My fire will blast you to pieces!";
            _loc2_.m_whatTrainerSaysAtLose = "The heat of your passion is strong.";
            _loc2_.AddMod_Resurection(5);
            _loc2_.AddMod_MoveTimer(MinionMoveID.meteor_strike_t5,9,2,MinionMoveID.agile_inspiration_t5);
            _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,70,244,27,43,181,856]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,204,277,207,220,756,232,105]);
            if(!_loc4_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_tikiMonkey_2,[85,0,289,856,230,107,325,277,371]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,55,54,259,125,207,232]);
            }
            _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               _loc2_.m_extraMinionLevels = -2;
            }
         }
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "You look like a challeging trainer mon.";
         if(_loc3_)
         {
            _loc2_.m_whatTrainerSaysAtLose = "I was right mon, you are quite the challenge!";
            _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_fire_frog_3,2,[75,0,64,43,146,244,67],-1);
            if(_loc3_ || _loc3_)
            {
               addr173:
               _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_iceBird_2,2,[80,625,519,528,259,522,481],-1);
               _loc2_.AddMod_MoveTimer(MinionMoveID.ice_barrier_t4,4,1,MinionMoveID.deadly_inspiration_t2);
               if(_loc3_ || Boolean(this))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_waterSeal_2,[75,489,493,227,582,242]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,444,227,439,259,320]);
                  if(_loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,184,157,297,286,422,243]);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,143,101,420,243,403,127]);
                  if(_loc4_)
                  {
                  }
                  addr274:
                  _loc2_.m_extraMinionLevels = -1;
                  _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "In training minions it is important to know their strengths and their weaknesses.";
                  _loc2_.m_whatTrainerSaysAtLose = "An example is that dino minions are weak to ice, earth, robot, and titan attacks.";
                  if(!_loc4_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_chameleon_1,[75,144,229,127,287,131]);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_chameleon_1,[75,144,229,127,287,131]);
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr336:
                           _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,143,101,420,243,403,127]);
                        }
                     }
                     _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,143,101,420,243,403,127]);
                     if(_loc3_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                        if(!_loc4_)
                        {
                           addr380:
                           _loc2_.m_extraMinionLevels = -1;
                        }
                        _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,34,14,242,274,345]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                        if(_loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                           if(_loc3_ || _loc3_)
                           {
                              addr468:
                              _loc2_.m_extraMinionLevels = -1;
                           }
                           _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,34,14,242,274,345]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_robobull_1,[95,739,279,725,732,247,10]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[87,160,357,363,367,146,195,212]);
                           if(!_loc4_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_raptor_3,[81,370,320,89,279,134,109,431]);
                              if(_loc3_ || _loc3_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                                 if(_loc3_)
                                 {
                                 }
                                 addr557:
                                 _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                                 _loc2_.m_whatTrainerSaysAtStart_notBeaten = "We shall test our strength and find out who is stronger.";
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    _loc2_.m_whatTrainerSaysAtLose = "Your skill is unmatched!";
                                    if(_loc3_)
                                    {
                                       _loc2_.AddMod_MoveTimer(MinionMoveID.evil_eye_t1,3,1,MinionMoveID.deadly_inspiration_t4);
                                       addr588:
                                       _loc2_.AddMod_Shield(1,1);
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,34,14,242,274,345]);
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_fire_pig_3,[80,5,89,107,97,289,242]);
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_fire_frog_3,[75,0,55,54,259,125,207,232]);
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_ground_plant_3,[75,450,440,423,431,259,447,243]);
                                    }
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                                    _loc2_.m_extraMinionLevels = 0;
                                    return;
                                 }
                                 §§goto(addr588);
                              }
                              _loc2_.m_extraMinionLevels = 0;
                           }
                           §§goto(addr557);
                        }
                        §§goto(addr468);
                     }
                     §§goto(addr380);
                  }
                  §§goto(addr336);
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
               if(_loc3_ || Boolean(_loc2_))
               {
               }
            }
            §§goto(addr274);
         }
         §§goto(addr173);
      }
      
      private function CreateFloor_Boss5_hardMode() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         §§push(24);
         if(!_loc4_)
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.TRAINER_GYM_5,_loc1_,0);
         if(!_loc4_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "One must have respect for life, if one want\'s to master combat.  I am the Talo Sage, let us test your respect for life.";
         }
         _loc2_.m_whatTrainerSaysAtLose = "Your respect for life is strong, it is with great pleasure I award you the talo Sage Seal.\n...\nWith the talo Sage seal you have received a super strong gem.";
         _loc2_.AddMod_MoveTimer(MinionMoveID.meteor_strike_t5,9,2,MinionMoveID.agile_inspiration_t5);
         _loc2_.AddMod_Shield(3,3);
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_flyingGrassSuperMinion_1,[87,430,249,424,264,232]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_groundAttacker_3,[75,155,154,149,167,249,26]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,584,599,249,292]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_waterHorse_1,[111,834,279,299,272,340]);
            if(!(_loc4_ && Boolean(this)))
            {
               §§goto(addr124);
            }
            §§goto(addr143);
         }
         addr124:
         _loc2_.AddMinion(MinionDexID.DEX_ID_grassSnake_3,[90,450,89,272,288,297,242]);
         if(!(_loc4_ && Boolean(this)))
         {
            addr143:
            _loc2_.m_extraMinionLevels = 0;
         }
      }
      
      private function CreateFloor21_hardMode() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TrainerDataObject = null;
         §§push(25);
         if(!(_loc4_ && _loc1_))
         {
            §§push(int(§§pop() + this.m_extraHardModeModifier));
         }
         var _loc1_:* = §§pop();
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I\'m going to use science to win this battle!";
         _loc2_.m_whatTrainerSaysAtLose = "Awwwwwww, you were too strong!";
         _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_holyfox_1,4,[85,0,891,244,663,719,653],0);
         _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_cheetah_3,1,[80,340,284,227,536,85,351,277,830],0);
         if(_loc3_)
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[625,724,341,726,249,299]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[626,643,346,278,726,340,247]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_2,[85,884,357,840,368,342,246]);
            if(_loc3_ || Boolean(this))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_2,[85,94,122,248,345,342,356]);
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr136:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
               }
               _loc2_.m_extraMinionLevels = -2;
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Like, oh, my gosh!  We should, like, totally be best friends forever!";
               _loc2_.m_whatTrainerSaysAtLose = "Ughh, my bff would, like, never do that to me!!";
               if(!(_loc4_ && Boolean(this)))
               {
                  _loc2_.AddMod_Shield(2,1);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_3,[80,343,334,249,297,276]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_cheetah_3,[80,340,284,227,536,85,351,277,830]);
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,834,342,334,270,570,231]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,580,639,294,279,247,595]);
               if(!(_loc4_ && _loc1_))
               {
                  _loc2_.m_extraMinionLevels = -1;
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I, like, uh, love racoons!";
               _loc2_.m_whatTrainerSaysAtLose = "It\'s like not fair, you must know that normal type are weak against undead and demonic moves.";
               if(_loc3_)
               {
                  _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_racoon_2,7,[80,4,243,58,25,271,41],0);
                  if(!_loc4_)
                  {
                     _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_healingHorse_1,1,[75,474,258,467,477,263,670],0);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,584,297,487,225,287,241,270]);
                     if(!_loc4_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,4,243,58,25,271,41]);
                        if(_loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,344,273,335,831,276,242,55]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,344,273,335,831,276,242,55]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_racoon_2,[80,344,273,335,831,276,242,55]);
                           if(_loc3_)
                           {
                              addr368:
                              _loc2_.m_extraMinionLevels = -1;
                           }
                           _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[112,100,214,86,289,166]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[112,100,214,86,289,166]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_demonic_cat_2,[80,564,576,249,572,292]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,434,582,249,599,457]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                           if(!_loc4_)
                           {
                              _loc2_.m_extraMinionLevels = -1;
                           }
                           _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[625,724,341,726,249,299]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[626,643,346,278,726,340,247]);
                           if(!(_loc4_ && Boolean(this)))
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_waterHorse_1,[111,834,279,299,272,340]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,474,258,467,477,263,670]);
                              if(_loc3_ || _loc3_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,214,371,145,219,179,305]);
                              }
                           }
                           _loc2_.m_extraMinionLevels = 0;
                           _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                           _loc2_.m_whatTrainerSaysAtStart_notBeaten = "You are getting close to the Grand Sage, let\'s see if you are ready for the challenge.";
                           _loc2_.m_whatTrainerSaysAtLose = "The fight with the Grand Sage will be tough but, in my opinion you\'re close to being ready!";
                           _loc2_.AddMod_Resurection(7);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_HummingBird_1,[625,724,341,726,249,299]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,834,342,334,270,570,231]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,132,117,289,230,342,570,270]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_healingHorse_1,[75,474,258,467,477,263,670]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                           if(_loc3_ || _loc3_)
                           {
                              _loc2_.m_extraMinionLevels = 0;
                           }
                           return;
                        }
                     }
                  }
               }
               §§goto(addr368);
            }
         }
         §§goto(addr136);
      }
      
      private function CreateFloor22_hardMode() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:TrainerDataObject = null;
         if(!_loc3_)
         {
            §§push(26);
            if(_loc4_ || Boolean(_loc1_))
            {
               §§push(int(§§pop() + this.m_extraHardModeModifier));
            }
            _loc1_ = §§pop();
         }
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I\'m so excited...it\'s like an energy in the air!";
         if(_loc4_)
         {
            _loc2_.m_whatTrainerSaysAtLose = "You deflated my excitement, but only a little!";
            if(_loc4_)
            {
               _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_raptor_2,6,[81,374,393,249,34,297],-8);
               _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
               if(_loc4_ || Boolean(this))
               {
                  addr83:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,439,472,259,475,518,275]);
                  if(!_loc3_)
                  {
                     addr97:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                     addr109:
                     _loc2_.m_extraMinionLevels = -2;
                  }
                  _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Electricity is a very interesting phenomenon.";
                  if(_loc4_)
                  {
                     _loc2_.m_whatTrainerSaysAtLose = "You seem to know the weakness of electricity, earth and dino moves.";
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                  if(_loc4_ || _loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                     if(_loc4_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                        if(!_loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_DC2Guy_1,[76,774,249,734,739,25]);
                           if(_loc4_)
                           {
                           }
                           addr191:
                           _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
                           _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Prepare yourself for a K.O.";
                           if(!_loc3_)
                           {
                              _loc2_.m_whatTrainerSaysAtLose = "It is I that have been knocked out...";
                           }
                           _loc2_.AddMod_Resurection(3);
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_3,[85,884,357,840,368,342,246]);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_3,[85,884,357,840,368,342,246]);
                              if(_loc4_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_3,[85,884,357,840,368,342,246]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_3,[85,94,122,248,345,342,356]);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_Goo_3,[85,884,357,840,368,342,246]);
                                    addr274:
                                 }
                                 _loc2_.m_extraMinionLevels = -1;
                              }
                              _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                              _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,214,371,145,219,179,305]);
                              if(!_loc3_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_waterBird_3,[626,580,639,294,279,247,595]);
                                 if(_loc4_ || _loc3_)
                                 {
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,439,472,259,475,518,275]);
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_iceTree_2,[75,439,472,259,475,518,275]);
                                    if(_loc4_)
                                    {
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,214,371,145,219,179,305]);
                                       if(_loc4_)
                                       {
                                          addr377:
                                          _loc2_.m_extraMinionLevels = -1;
                                       }
                                    }
                                    _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                                    if(_loc4_ || _loc3_)
                                    {
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,834,342,334,270,570,231]);
                                       if(!(_loc3_ && Boolean(_loc1_)))
                                       {
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_RoboShark_1,[91,734,726,140,249,739,275]);
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,214,371,145,219,179,305]);
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,757,179,309,146,370,217]);
                                       }
                                       _loc2_.m_extraMinionLevels = 0;
                                    }
                                    _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                                    if(!_loc3_)
                                    {
                                       _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Push yourself to the limit in our battle.";
                                       if(_loc4_)
                                       {
                                          _loc2_.m_whatTrainerSaysAtLose = "That was excellent, well done!";
                                          if(!_loc3_)
                                          {
                                             addr483:
                                             _loc2_.AddMod_ExtraMinions_Opponent(MinionDexID.DEX_ID_Crow_2,4,[629,647,120,273,297,650,226],0);
                                             _loc2_.AddMod_ExtraMinions_Player(MinionDexID.DEX_ID_raptor_3,2,[81,374,393,249,34,297],0);
                                          }
                                          _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[340,569,557,248,576,271,155]);
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_JellyFish_2,[75,599,584,244,341]);
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_DogEel_2,[342,839,155,273,248,555]);
                                             addr568:
                                             _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,757,179,309,146,370,217]);
                                          }
                                          _loc2_.m_extraMinionLevels = 0;
                                          return;
                                       }
                                       §§goto(addr568);
                                    }
                                    §§goto(addr483);
                                 }
                              }
                              §§goto(addr377);
                           }
                           §§goto(addr274);
                        }
                     }
                     _loc2_.m_extraMinionLevels = -1;
                  }
                  §§goto(addr191);
               }
               §§goto(addr109);
            }
            §§goto(addr83);
         }
         §§goto(addr97);
      }
      
      private function CreateFloor23_hardMode() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:TrainerDataObject = null;
         if(_loc4_ || _loc3_)
         {
            §§push(27);
            if(!_loc3_)
            {
               §§push(int(§§pop() + this.m_extraHardModeModifier));
            }
            _loc1_ = §§pop();
         }
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Ha har, Halloween is my favorite day...";
            _loc2_.m_whatTrainerSaysAtLose = "...it feels like you stole a bag of candy from me...you meanie!";
            _loc2_.AddMod_Resurection(8);
            _loc2_.AddMinion(MinionDexID.DEX_ID_FireGhost_1,[5,859,849,294,843]);
            _loc2_.AddMinion(MinionDexID.DEX_ID_FireGhost_1,[8,24,58,26,244]);
            if(_loc4_ || Boolean(_loc1_))
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,564,556,244,578,361]);
            }
         }
         _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,359,362,852,180,244,270]);
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
         }
         _loc2_.m_extraMinionLevels = -2;
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I show you the force of the underworld!";
         if(_loc4_ || _loc3_)
         {
            _loc2_.m_whatTrainerSaysAtLose = "It appears you know demon minions are weak to water and holy attacks.";
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               _loc2_.AddMod_MoveTimer(MinionMoveID.fire_ram_t5,2,1,MinionMoveID.hulk_inspiration_t1);
               if(_loc4_ || Boolean(_loc1_))
               {
                  addr175:
                  _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_3,[539,511,545,144,872,272]);
                  if(_loc4_ || _loc3_)
                  {
                     addr193:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_3,[535,559,577,490,243,273]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_EvilEye_3,[535,114,21,299,58,491]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[841,318,507,490,132,327,866]);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
                  if(_loc4_)
                  {
                     _loc2_.m_extraMinionLevels = -1;
                  }
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               if(_loc4_)
               {
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I see a victory in future, but who\'s I am not sure of...";
                  _loc2_.m_whatTrainerSaysAtLose = "It is clear now, you are the victor.";
                  if(_loc4_ || _loc3_)
                  {
                     _loc2_.AddMod_Shield(2,1);
                  }
                  _loc2_.AddMod_Resurection(5);
                  if(_loc4_ || Boolean(_loc1_))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,684,664,669,244,10]);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,684,664,669,244,10]);
                  if(!_loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_BlueBell_1,[8,59,244,67,851]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_FireGhost_1,[5,859,849,294,843]);
                     if(_loc4_ || _loc3_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_FireGhost_1,[5,144,227,326,86,317,66,845]);
                     }
                  }
               }
               _loc2_.m_extraMinionLevels = -1;
               _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
               _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,684,664,669,244,10]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,564,556,244,578,361]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_BlueBell_1,[8,59,244,67,851]);
               if(!_loc3_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_PinkBell_1,[5,674,516,713,264,696]);
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
               _loc2_.m_extraMinionLevels = -1;
               _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
               _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,254,233,89,287,127]);
               _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,569,579,95,249,242,10,145]);
               if(!_loc3_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                  if(_loc4_)
                  {
                     _loc2_.m_extraMinionLevels = 0;
                  }
               }
               _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
               if(_loc4_ || _loc3_)
               {
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "We must allow each battle to push us to new heights.";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc2_.m_whatTrainerSaysAtLose = "Your strength has grown even taller.";
                     if(_loc4_ || _loc3_)
                     {
                        _loc2_.AddMod_Resurection(4);
                        if(_loc4_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[840,859,244,854,847]);
                           if(_loc4_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[840,859,244,854,847]);
                              if(_loc4_ || Boolean(this))
                              {
                                 addr577:
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,359,362,852,180,244,270]);
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,359,362,852,180,244,270]);
                                 addr608:
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_Scarecrow_3,[80,359,362,852,180,244,270]);
                                 if(_loc4_ || Boolean(_loc2_))
                                 {
                                    _loc2_.m_extraMinionLevels = 0;
                                 }
                                 addr589:
                              }
                           }
                           return;
                        }
                        §§goto(addr608);
                     }
                     §§goto(addr577);
                  }
               }
               §§goto(addr589);
            }
            §§goto(addr175);
         }
         §§goto(addr193);
      }
      
      private function CreateFloor24_hardMode() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:TrainerDataObject = null;
         if(_loc4_ || _loc3_)
         {
            §§push(28);
            if(_loc4_)
            {
               §§push(int(§§pop() + this.m_extraHardModeModifier));
            }
            _loc1_ = §§pop();
         }
         _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,1);
         if(_loc4_)
         {
            _loc2_.m_whatTrainerSaysAtStart_notBeaten = "Ah hahahaha!  Let\'s see if we can put a smile on that face!";
            if(!_loc3_)
            {
               _loc2_.m_whatTrainerSaysAtLose = "Eh hehehe, looks like the jokes on me!!  Hahahaha!";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc2_.AddMod_Shield(3,3);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,29,147,14,65,576,570,247]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_SlenderMan_1,[844,359,853,227,361]);
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_SlenderMan_1,[840,369,242,364,219,225]);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_3,[629,647,120,273,297,650,226]);
               }
               addr127:
               _loc2_.m_extraMinionLevels = -2;
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,2);
               if(!_loc3_)
               {
                  _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I sense...death...";
                  _loc2_.m_whatTrainerSaysAtLose = "...it appears the victory is yours.";
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[77,238,89,214,232,369]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[77,238,89,214,232,369]);
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,524,517,264,528,650]);
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[840,859,244,854,847]);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
               }
               _loc2_.m_extraMinionLevels = -1;
               _loc2_ = this.AddTrainerToFloor(TrainerType.NORMAL_TRAINER,_loc1_,3);
               _loc2_.m_whatTrainerSaysAtStart_notBeaten = "In darkness you must find the light.";
               _loc2_.m_whatTrainerSaysAtLose = "You fight well, for that I give you a tip.  When fighting holy minions use demonic or normal moves.";
               if(!_loc3_)
               {
                  _loc2_.AddMod_Resurection(10);
                  if(_loc4_)
                  {
                     _loc2_.AddMod_MoveTimer(MinionMoveID.reflect_damage_t3,3,1,MinionMoveID.mirror_coating_t3);
                     if(!_loc3_)
                     {
                        _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[843,879,366,866,872,506,490]);
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Tiger_2,[80,105,98,122,274,219,165]);
                        if(_loc4_)
                        {
                        }
                        addr325:
                        _loc2_.m_extraMinionLevels = -1;
                        addr328:
                        _loc2_ = this.AddTrainerToFloor(TrainerType.HARD_TRAINER,_loc1_,4);
                        _loc2_.AddMod_Resurection(3);
                        if(_loc4_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_3,[625,559,857,487,7,243]);
                           _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_3,[629,647,120,273,297,650,226]);
                           if(_loc4_)
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_PinkBell_1,[5,674,516,713,264,696]);
                           }
                           _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,499,249,489,276,681]);
                        }
                        _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_3,[629,647,120,273,297,650,226]);
                        _loc2_.m_extraMinionLevels = -1;
                        _loc2_ = this.AddTrainerToFloor(TrainerType.EXPERT_TRAINER,_loc1_,5);
                        if(!_loc3_)
                        {
                           _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[841,318,507,490,132,327,866]);
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[77,238,89,214,232,369]);
                              if(!_loc3_)
                              {
                                 _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,569,579,95,249,242,10,145]);
                                 if(_loc4_ || _loc3_)
                                 {
                                    addr465:
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_tortoise_1,[75,214,371,145,219,179,305]);
                                    if(_loc3_)
                                    {
                                    }
                                 }
                                 §§goto(addr482);
                              }
                              _loc2_.m_extraMinionLevels = 0;
                              addr482:
                              _loc2_ = this.AddTrainerToFloor(TrainerType.BOSS_TRAINER,_loc1_,6);
                              if(_loc4_ || Boolean(_loc1_))
                              {
                                 _loc2_.m_whatTrainerSaysAtStart_notBeaten = "I want to help prepare you for the challenges you are soon to face.";
                                 if(_loc4_)
                                 {
                                    _loc2_.m_whatTrainerSaysAtLose = "The road ahead is tough, but I feel you are ready.";
                                    _loc2_.AddMod_Shield(3,1);
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_SlenderMan_1,[844,359,853,227,361]);
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_SlenderMan_1,[844,359,853,227,361]);
                                    if(_loc4_)
                                    {
                                       addr531:
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_SlenderMan_1,[844,359,853,227,361]);
                                       _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[77,238,89,214,232,369]);
                                    }
                                    _loc2_.AddMinion(MinionDexID.DEX_ID_fire_bear_2,[80,0,179,21,160,304,172,214,235]);
                                    _loc2_.m_extraMinionLevels = 0;
                                    §§goto(addr576);
                                 }
                                 §§goto(addr531);
                              }
                              addr576:
                              return;
                           }
                        }
                        §§goto(addr465);
                     }
                  }
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Tiger_2,[80,105,94,244,286,88,120,6]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_HolyStrongGuy_1,[76,544,264,533,553,225]);
                  _loc2_.AddMinion(MinionDexID.DEX_ID_Armadillo_2,[110,179,309,155,5,214,285]);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr325);
                  }
                  §§goto(addr328);
               }
               §§goto(addr325);
            }
            _loc2_.AddMinion(MinionDexID.DEX_ID_Crow_3,[625,559,857,487,7,243]);
         }
         §§goto(addr127);
      }
      
      private function CreateFloor_Boss6_hardMode() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:TrainerDataObject = null;
         if(_loc3_ || _loc3_)
         {
            §§push(29);
            if(_loc3_ || _loc3_)
            {
               §§push(int(§§pop() + this.m_extraHardModeModifier));
            }
            _loc1_ = §§pop();
         }
         _loc2_ = this.AddTrainerToFloor(TrainerType.TRAINER_GYM_6,_loc1_,0);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "There is deep power in death, and I will show it to you.  For I am the Daco Sage.";
         if(_loc3_)
         {
            _loc2_.m_whatTrainerSaysAtLose = "There is great power in life as well, your victory is well earned.\n...\nThe daco Sage Seal grants you the option to pick a third choice in the hatchery.";
            _loc2_.AddMod_Shield(3,1);
            if(_loc3_ || _loc3_)
            {
               _loc2_.AddMod_Resurection(8);
               if(!_loc4_)
               {
                  _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,569,579,95,249,242,10,145]);
                  if(_loc3_)
                  {
                     _loc2_.AddMinion(MinionDexID.DEX_ID_LichBoss_3,[840,859,244,854,847]);
                     addr102:
                     _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[77,238,89,214,232,369]);
                     _loc2_.AddMinion(MinionDexID.DEX_ID_IceDeer_1,[490,524,517,264,528,650]);
                  }
                  §§goto(addr149);
               }
               _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[77,589,249,494,524,852]);
               if(_loc3_ || _loc3_)
               {
               }
               §§goto(addr149);
            }
            addr149:
            _loc2_.m_extraMinionLevels = 0;
            return;
         }
         §§goto(addr102);
      }
      
      private function CreateFloor_Boss_Grand_Sage_hardMode() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:TrainerDataObject = null;
         if(!_loc3_)
         {
            §§push(30);
            if(_loc4_)
            {
               §§push(int(§§pop() + this.m_extraHardModeModifier));
            }
            _loc1_ = §§pop();
         }
         _loc2_ = this.AddTrainerToFloor(TrainerType.TRAINER_GRAND_SAGE,_loc1_,0);
         _loc2_.m_whatTrainerSaysAtStart_notBeaten = "This is excellent!!  I knew you\'d make it to the top, let\'s see your full strength!";
         _loc2_.m_whatTrainerSaysAtLose = "It has been a long while since I\'ve enjoyed a battle that much. Well done!  You are now a Grand Master, go and claim your Titan.  It waits for you in the lobby...";
         _loc2_.AddMinion(MinionDexID.DEX_ID_worm_3,[85,160,185,177,214,166,287,230,126]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_BatDemon_1,[1,254,233,89,287,127]);
         _loc2_.AddMinion(MinionDexID.DEX_ID_waterHorse_1,[111,834,279,299,272,340]);
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc2_.AddMinion(MinionDexID.DEX_ID_UndeadEel_1,[77,589,249,494,524,852]);
            if(!_loc3_)
            {
               _loc2_.AddMinion(MinionDexID.DEX_ID_tRex_3,[410,370,385,249,394,34,574,97]);
            }
         }
         _loc2_.m_extraMinionLevels = 0;
      }
   }
}
