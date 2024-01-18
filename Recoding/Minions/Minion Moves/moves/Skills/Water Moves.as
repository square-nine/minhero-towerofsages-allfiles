//water moves
      private function CreateWaterMoves() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc1_:BaseMinionMove = null;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         _loc2_ = new Array(10,18,25,30,45);
         _loc3_ = new Array(35,45,55,65,100);
         _loc1_ = this.CreateMove("Soak",_loc2_[0],MinionMoveClasses.soak,MinionMoveID.soak_t1,"moveIcon_soak",MinionType.TYPE_WATER,MinionVisualMoveID.VISUALS_SameAsClass);
         if(!_loc7_)
         {
            _loc1_.m_damage = _loc3_[0];
         }
         _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
         if(!(_loc7_ && Boolean(_loc2_)))
         {
            _loc1_.m_damage = _loc3_[1];
         }
         _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
         if(!(_loc7_ && Boolean(_loc1_)))
         {
            _loc1_.m_damage = _loc3_[2];
         }
         _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
         if(!(_loc7_ && Boolean(_loc1_)))
         {
            _loc1_.m_damage = _loc3_[3];
         }
         _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Drench");
         if(_loc8_ || Boolean(this))
         {
            _loc1_.m_damage = _loc3_[4];
         }
         _loc2_ = new Array(12,20,28,35,50);
         _loc3_ = new Array(35,45,55,65,100);
         _loc4_ = new Array(5,10,15,20,25);
         _loc1_ = this.CreateMove("Water Slam",_loc2_[0],MinionMoveClasses.water_slam,MinionMoveID.water_slam_t1,"moveIcon_waterSlam",MinionType.TYPE_WATER,MinionVisualMoveID.VISUALS_SameAsClass);
         if(_loc8_)
         {
            _loc1_.m_damage = _loc3_[0];
            if(_loc8_ || Boolean(_loc3_))
            {
               addr213:
               _loc1_.AddStatToBuffFirstTime(StatType.STAT_ENERGY,false,true,1,5);
               if(_loc8_)
               {
                  addr223:
                  _loc1_.m_energyPercentageRestored = 5;
               }
               _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
               if(_loc8_)
               {
                  _loc1_.m_damage = _loc3_[1];
                  if(!_loc7_)
                  {
                     _loc1_.m_chanceToBuff = _loc4_[1];
                  }
               }
               _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
               if(!_loc7_)
               {
                  _loc1_.m_damage = _loc3_[2];
                  if(!_loc7_)
                  {
                     addr265:
                     _loc1_.m_chanceToBuff = _loc4_[2];
                  }
                  _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                  if(!_loc7_)
                  {
                     _loc1_.m_damage = _loc3_[3];
                     if(!_loc7_)
                     {
                        _loc1_.m_chanceToBuff = _loc4_[3];
                     }
                  }
                  _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Water Bash");
                  if(_loc8_ || Boolean(this))
                  {
                     _loc1_.m_damage = _loc3_[4];
                     if(!(_loc7_ && Boolean(_loc3_)))
                     {
                        addr320:
                        _loc1_.m_chanceToBuff = _loc4_[4];
                     }
                     _loc2_ = new Array(12,20,28,35,50);
                     _loc3_ = new Array(25,35,45,55,70);
                     _loc4_ = new Array(10,20,30,40,50);
                     _loc1_ = this.CreateMove("Fresh Stream",_loc2_[0],MinionMoveClasses.fresh_stream,MinionMoveID.fresh_stream_t1,"moveIcon_freshStream",MinionType.TYPE_WATER,MinionVisualMoveID.VISUALS_SameAsClass);
                     if(!(_loc7_ && Boolean(_loc3_)))
                     {
                        _loc1_.m_damage = _loc3_[0];
                        if(_loc8_)
                        {
                           addr383:
                           _loc1_.AddStatToBuffFirstTime(StatType.STAT_ENERGY,false,true,1,10);
                           if(_loc8_)
                           {
                              addr393:
                              _loc1_.m_energyPercentageRestored = 20;
                           }
                           _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                           if(!_loc7_)
                           {
                              _loc1_.m_damage = _loc3_[1];
                              if(_loc8_ || Boolean(this))
                              {
                                 addr418:
                                 _loc1_.m_chanceToBuff = _loc4_[1];
                              }
                              _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                              if(!(_loc7_ && Boolean(_loc1_)))
                              {
                                 _loc1_.m_damage = _loc3_[2];
                                 if(_loc8_)
                                 {
                                    _loc1_.m_chanceToBuff = _loc4_[2];
                                 }
                              }
                              _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                              if(!_loc7_)
                              {
                                 _loc1_.m_damage = _loc3_[3];
                                 if(_loc8_)
                                 {
                                    _loc1_.m_chanceToBuff = _loc4_[3];
                                 }
                              }
                              _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Fresh River");
                              if(!(_loc7_ && Boolean(_loc1_)))
                              {
                                 _loc1_.m_damage = _loc3_[4];
                                 if(_loc8_ || Boolean(_loc2_))
                                 {
                                    _loc1_.m_chanceToBuff = _loc4_[4];
                                    if(_loc8_ || Boolean(_loc3_))
                                    {
                                       addr512:
                                       _loc1_.m_energyPercentageRestored = 35;
                                    }
                                 }
                                 _loc2_ = new Array(20,40,60,75,125);
                                 _loc3_ = new Array(40,60,75,100,150);
                                 _loc4_ = new Array(1,1,2,2,3);
                                 _loc1_ = this.CreateMove("Water Jet",_loc2_[0],MinionMoveClasses.waterjet,MinionMoveID.waterjet_t1,"moveIcon_waterJet",MinionType.TYPE_WATER,MinionVisualMoveID.VISUALS_SameAsClass);
                                 if(!_loc7_)
                                 {
                                    _loc1_.m_damage = _loc3_[0];
                                    if(!(_loc7_ && Boolean(this)))
                                    {
                                       _loc1_.AddStatToBuffFirstTime(StatType.STAT_SPEED,false,true,1);
                                    }
                                 }
                                 _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                                 if(_loc8_)
                                 {
                                    _loc1_.m_damage = _loc3_[1];
                                    if(_loc8_)
                                    {
                                       _loc1_.m_stagesOfStatTypeToBuff = _loc4_[1];
                                    }
                                 }
                                 _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                                 if(!_loc7_)
                                 {
                                    _loc1_.m_damage = _loc3_[2];
                                    if(_loc8_ || Boolean(_loc3_))
                                    {
                                       addr624:
                                       _loc1_.m_stagesOfStatTypeToBuff = _loc4_[2];
                                    }
                                    _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                                    if(_loc8_ || Boolean(this))
                                    {
                                       _loc1_.m_damage = _loc3_[3];
                                       if(!_loc7_)
                                       {
                                          _loc1_.m_stagesOfStatTypeToBuff = _loc4_[3];
                                       }
                                    }
                                    _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Aqua Jet");
                                    if(_loc8_ || Boolean(this))
                                    {
                                       _loc1_.m_damage = _loc3_[4];
                                       if(!_loc7_)
                                       {
                                          _loc1_.m_stagesOfStatTypeToBuff = _loc4_[4];
                                       }
                                    }
                                    _loc2_ = new Array(6,12,20,28,40);
                                    _loc3_ = new Array(10,15,20,25,35);
                                    _loc1_ = this.CreateMove("Rainfall",_loc2_[0],MinionMoveClasses.rainfall,MinionMoveID.rainfall_t1,"moveIcon_rainfall",MinionType.TYPE_WATER,MinionVisualMoveID.VISUALS_SameAsClass);
                                    if(_loc8_)
                                    {
                                       _loc1_.m_healing = _loc3_[0];
                                       if(_loc8_)
                                       {
                                          _loc1_.m_alliesItHits = 5;
                                          if(_loc8_)
                                          {
                                             _loc1_.m_enemiesItHits = 0;
                                             if(_loc8_)
                                             {
                                             }
                                             addr748:
                                             _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                                             if(_loc8_ || Boolean(this))
                                             {
                                                _loc1_.m_healing = _loc3_[1];
                                             }
                                             _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                                             if(!(_loc7_ && Boolean(_loc3_)))
                                             {
                                                _loc1_.m_healing = _loc3_[2];
                                             }
                                             _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                                             if(!(_loc7_ && Boolean(_loc1_)))
                                             {
                                                _loc1_.m_healing = _loc3_[3];
                                             }
                                             _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Cleansing Rain");
                                             if(!(_loc7_ && Boolean(_loc3_)))
                                             {
                                                _loc1_.m_healing = _loc3_[4];
                                             }
                                             _loc2_ = new Array(25,40,75,100,125);
                                             _loc3_ = new Array(30,40,50,60,80);
                                             _loc1_ = this.CreateMove("Refreshing Wave",_loc2_[0],MinionMoveClasses.refreshing_wave,MinionMoveID.refreshing_wave_t1,"moveIcon_refreshingWave",MinionType.TYPE_WATER,MinionVisualMoveID.VISUALS_SameAsClass);
                                             if(!(_loc7_ && Boolean(this)))
                                             {
                                                _loc1_.m_healing = _loc3_[0];
                                                if(_loc8_)
                                                {
                                                   _loc1_.m_alliesItHits = 5;
                                                   if(_loc8_)
                                                   {
                                                      _loc1_.m_enemiesItHits = 0;
                                                      if(_loc8_ || Boolean(_loc1_))
                                                      {
                                                      }
                                                      addr896:
                                                      _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                                                      if(!_loc7_)
                                                      {
                                                         _loc1_.m_healing = _loc3_[1];
                                                      }
                                                      _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                                                      if(_loc8_)
                                                      {
                                                         _loc1_.m_healing = _loc3_[2];
                                                      }
                                                      _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                                                      if(!(_loc7_ && Boolean(_loc2_)))
                                                      {
                                                         _loc1_.m_healing = _loc3_[3];
                                                      }
                                                      _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Deep Soak");
                                                      if(!(_loc7_ && Boolean(_loc3_)))
                                                      {
                                                         _loc1_.m_healing = _loc3_[4];
                                                      }
                                                      _loc2_ = new Array(50,80,150,200,250);
                                                      _loc3_ = new Array(60,80,100,120,160);
                                                      _loc1_ = this.CreateMove("Water Infusion",_loc2_[0],MinionMoveClasses.water_infusion,MinionMoveID.water_infusion_t1,"moveIcon_waterInfusion",MinionType.TYPE_WATER,MinionVisualMoveID.VISUALS_SameAsClass);
                                                      if(_loc8_ || Boolean(_loc3_))
                                                      {
                                                         _loc1_.m_healing = _loc3_[0];
                                                         if(!(_loc7_ && Boolean(_loc1_)))
                                                         {
                                                            _loc1_.m_alliesItHits = 5;
                                                            if(_loc8_)
                                                            {
                                                               addr1026:
                                                               _loc1_.m_enemiesItHits = 0;
                                                               if(_loc8_ || Boolean(this))
                                                               {
                                                                  addr1036:
                                                                  _loc1_.m_isThereABufferBetweenVisualMovesOnMultipleEnemies = false;
                                                               }
                                                            }
                                                            _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                                                            if(_loc8_ || Boolean(_loc1_))
                                                            {
                                                               _loc1_.m_healing = _loc3_[1];
                                                            }
                                                            _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                                                            if(_loc8_ || Boolean(_loc3_))
                                                            {
                                                               _loc1_.m_healing = _loc3_[2];
                                                            }
                                                            _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                                                            if(_loc8_)
                                                            {
                                                               _loc1_.m_healing = _loc3_[3];
                                                            }
                                                            _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Pure Infusion");
                                                            if(!_loc7_)
                                                            {
                                                               _loc1_.m_healing = _loc3_[4];
                                                            }
                                                            _loc2_ = new Array(12,24,40,55,80);
                                                            _loc3_ = new Array(30,40,50,60,80);
                                                            _loc1_ = this.CreateMove("Overflow",_loc2_[0],MinionMoveClasses.overflow,MinionMoveID.overflow_t1,"moveIcon_overflow",MinionType.TYPE_WATER,MinionVisualMoveID.VISUALS_SameAsClass);
                                                            if(_loc8_)
                                                            {
                                                               _loc1_.m_healing = _loc3_[0];
                                                               if(_loc8_ || Boolean(_loc3_))
                                                               {
                                                                  addr1159:
                                                                  _loc1_.m_alliesItHits = 3;
                                                                  if(_loc8_ || Boolean(this))
                                                                  {
                                                                     addr1169:
                                                                     _loc1_.m_hitsRandomTargets = true;
                                                                     if(_loc8_)
                                                                     {
                                                                        _loc1_.m_enemiesItHits = 0;
                                                                        if(_loc8_ || Boolean(_loc3_))
                                                                        {
                                                                           _loc1_.m_isThereABufferBetweenVisualMovesOnMultipleEnemies = false;
                                                                        }
                                                                     }
                                                                  }
                                                                  _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                                                                  if(!_loc7_)
                                                                  {
                                                                     _loc1_.m_healing = _loc3_[1];
                                                                  }
                                                                  _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                                                                  if(!(_loc7_ && Boolean(this)))
                                                                  {
                                                                     _loc1_.m_healing = _loc3_[2];
                                                                  }
                                                                  _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                                                                  if(!_loc7_)
                                                                  {
                                                                     _loc1_.m_healing = _loc3_[3];
                                                                  }
                                                                  _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Cascade");
                                                                  if(!_loc7_)
                                                                  {
                                                                     _loc1_.m_healing = _loc3_[4];
                                                                  }
                                                                  _loc2_ = new Array(12,20,35,50,80);
                                                                  _loc3_ = new Array(15,20,25,30,35);
                                                                  _loc1_ = this.CreateMove("Watergize",_loc2_[0],MinionMoveClasses.watergize,MinionMoveID.watergize_t1,"moveIcon_energize",MinionType.TYPE_WATER,MinionVisualMoveID.VISUALS_SameAsClass);
                                                                  _loc1_.m_healing = _loc3_[0];
                                                                  if(_loc8_ || Boolean(this))
                                                                  {
                                                                     _loc1_.m_alliesItHits = 3;
                                                                  }
                                                                  _loc1_.m_hitsRandomTargets = true;
                                                                  if(_loc8_)
                                                                  {
                                                                     _loc1_.m_enemiesItHits = 0;
                                                                     if(_loc8_ || Boolean(_loc2_))
                                                                     {
                                                                        _loc1_.AddStatToBuffFirstTime(StatType.STAT_ENERGY,true,false,1,10);
                                                                        _loc1_.m_energyPercentageRestored = 10;
                                                                        addr1329:
                                                                        _loc1_.m_isThereABufferBetweenVisualMovesOnMultipleEnemies = false;
                                                                     }
                                                                     _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                                                                     if(_loc8_)
                                                                     {
                                                                        _loc1_.m_healing = _loc3_[1];
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr1349:
                                                                           _loc1_.m_chanceToBuff = 15;
                                                                        }
                                                                        _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                                                                        if(!_loc7_)
                                                                        {
                                                                           _loc1_.m_healing = _loc3_[2];
                                                                           if(!(_loc7_ && Boolean(_loc1_)))
                                                                           {
                                                                              _loc1_.m_chanceToBuff = 20;
                                                                           }
                                                                        }
                                                                        _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                                                                        if(_loc8_)
                                                                        {
                                                                           _loc1_.m_healing = _loc3_[3];
                                                                           if(_loc8_ || Boolean(this))
                                                                           {
                                                                              _loc1_.m_chanceToBuff = 30;
                                                                           }
                                                                        }
                                                                        _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Empowering Water");
                                                                        if(_loc8_)
                                                                        {
                                                                           _loc1_.m_healing = _loc3_[4];
                                                                           if(_loc8_ || Boolean(_loc3_))
                                                                           {
                                                                              _loc1_.m_chanceToBuff = 50;
                                                                           }
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr1349);
                                                                  }
                                                                  §§goto(addr1329);
                                                               }
                                                               §§goto(addr1169);
                                                            }
                                                            §§goto(addr1159);
                                                         }
                                                         §§goto(addr1036);
                                                      }
                                                      §§goto(addr1026);
                                                   }
                                                   _loc1_.m_isThereABufferBetweenVisualMovesOnMultipleEnemies = false;
                                                }
                                             }
                                             §§goto(addr896);
                                          }
                                          §§goto(addr748);
                                       }
                                       _loc1_.m_isThereABufferBetweenVisualMovesOnMultipleEnemies = false;
                                    }
                                    §§goto(addr748);
                                 }
                                 §§goto(addr624);
                              }
                              §§goto(addr512);
                           }
                           §§goto(addr418);
                        }
                        §§goto(addr393);
                     }
                     §§goto(addr383);
                  }
                  §§goto(addr320);
               }
               §§goto(addr265);
            }
            §§goto(addr223);
         }
         §§goto(addr213);
      }