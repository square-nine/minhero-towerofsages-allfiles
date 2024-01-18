//robot moves
private function CreateRobotMoves() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc1_:BaseMinionMove = null;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         _loc2_ = new Array(7,14,21,28,35);
         _loc3_ = new Array(30,40,50,60,90);
         _loc1_ = this.CreateMove("Steel Spike",_loc2_[0],MinionMoveClasses.steel_spike,MinionMoveID.steel_spike_t1,"moveIcon_steelSpike",MinionType.TYPE_ROBOT,MinionVisualMoveID.VISUALS_SameAsClass);
         if(_loc7_ || Boolean(this))
         {
            _loc1_.m_damage = _loc3_[0];
         }
         _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
         if(_loc7_)
         {
            _loc1_.m_damage = _loc3_[1];
         }
         _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
         if(!_loc8_)
         {
            _loc1_.m_damage = _loc3_[2];
         }
         _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
         if(_loc7_ || Boolean(this))
         {
            _loc1_.m_damage = _loc3_[3];
         }
         _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Machine Shaft");
         if(!(_loc8_ && Boolean(this)))
         {
            _loc1_.m_damage = _loc3_[4];
         }
         _loc2_ = new Array(17,30,50,70,100);
         _loc3_ = new Array(20,30,40,50,80);
         _loc1_ = this.CreateMove("Cog Fallout",_loc2_[0],MinionMoveClasses.cog_fallout,MinionMoveID.cog_fallout_t1,"moveIcon_cogFallout",MinionType.TYPE_ROBOT,MinionVisualMoveID.VISUALS_SameAsClass);
         if(!(_loc8_ && Boolean(_loc3_)))
         {
            _loc1_.m_damage = _loc3_[0];
            if(!_loc8_)
            {
               _loc1_.m_enemiesItHits = 3;
               if(_loc7_)
               {
                  _loc1_.m_hitsRandomTargets = true;
                  if(_loc8_)
                  {
                  }
                  addr211:
                  _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                  if(!_loc8_)
                  {
                     _loc1_.m_damage = _loc3_[1];
                  }
                  _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                  if(!(_loc8_ && Boolean(_loc2_)))
                  {
                     _loc1_.m_damage = _loc3_[2];
                  }
                  _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                  if(_loc7_ || Boolean(_loc2_))
                  {
                     _loc1_.m_damage = _loc3_[3];
                  }
                  _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Cog Explosion");
                  if(_loc7_)
                  {
                     _loc1_.m_damage = _loc3_[4];
                  }
                  _loc2_ = new Array(20,35,60,75,95);
                  _loc3_ = new Array(35,45,55,65,90);
                  _loc1_ = this.CreateMove("Twin Missile",_loc2_[0],MinionMoveClasses.twin_missile,MinionMoveID.twin_missile_t1,"moveIcon_twinMissile",MinionType.TYPE_ROBOT,MinionVisualMoveID.VISUALS_SameAsClass);
                  if(!(_loc8_ && Boolean(_loc3_)))
                  {
                     _loc1_.m_damage = _loc3_[0];
                     if(_loc7_ || Boolean(_loc2_))
                     {
                        addr336:
                        _loc1_.m_enemiesItHits = 2;
                     }
                     _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        _loc1_.m_damage = _loc3_[1];
                     }
                     _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                     if(!_loc8_)
                     {
                        _loc1_.m_damage = _loc3_[2];
                     }
                     _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                     if(_loc7_ || Boolean(this))
                     {
                        _loc1_.m_damage = _loc3_[3];
                     }
                     _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Precision Missiles");
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        _loc1_.m_damage = _loc3_[4];
                     }
                     _loc2_ = new Array(7,14,21,28,35);
                     _loc3_ = new Array(25,35,45,55,90);
                     _loc1_ = this.CreateMove("Download",_loc2_[0],MinionMoveClasses.download,MinionMoveID.download_t1,"moveIcon_download",MinionType.TYPE_ROBOT,MinionVisualMoveID.VISUALS_SameAsClass);
                     if(!(_loc8_ && Boolean(_loc2_)))
                     {
                        _loc1_.m_damage = _loc3_[0];
                        if(_loc7_ || Boolean(_loc1_))
                        {
                           addr469:
                           _loc1_.AddStatToBuffFirstTime(StatType.STAT_ATTACK,false,true,1,25);
                        }
                        _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                        if(!(_loc8_ && Boolean(_loc1_)))
                        {
                           _loc1_.m_damage = _loc3_[1];
                           if(_loc7_)
                           {
                              addr499:
                              _loc1_.m_chanceToBuff = 50;
                           }
                           _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                           if(_loc7_)
                           {
                              _loc1_.m_damage = _loc3_[2];
                              if(_loc7_)
                              {
                                 addr519:
                                 _loc1_.m_chanceToBuff = 75;
                              }
                              _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                              if(!(_loc8_ && Boolean(this)))
                              {
                                 _loc1_.m_damage = _loc3_[3];
                                 if(_loc7_)
                                 {
                                    addr544:
                                    _loc1_.m_chanceToBuff = 100;
                                 }
                                 _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Data Transfer");
                                 if(!(_loc8_ && Boolean(_loc1_)))
                                 {
                                    _loc1_.m_damage = _loc3_[4];
                                    if(_loc7_)
                                    {
                                       _loc1_.m_chanceToBuff = 100;
                                    }
                                 }
                                 _loc2_ = new Array(10,18,25,30,45);
                                 _loc3_ = new Array(40,50,60,70,100);
                                 _loc1_ = this.CreateMove("Ore Drill",_loc2_[0],MinionMoveClasses.ore_drill,MinionMoveID.ore_drill_t1,"moveIcon_oreDrill",MinionType.TYPE_ROBOT,MinionVisualMoveID.VISUALS_SameAsClass);
                                 if(_loc7_)
                                 {
                                    _loc1_.m_damage = _loc3_[0];
                                    if(_loc7_ || Boolean(this))
                                    {
                                       _loc1_.m_moveCoolDownTime = 1;
                                    }
                                 }
                                 _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                                 if(!_loc8_)
                                 {
                                    _loc1_.m_damage = _loc3_[1];
                                 }
                                 _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                                 if(!_loc8_)
                                 {
                                    _loc1_.m_damage = _loc3_[2];
                                 }
                                 _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                                 if(!_loc8_)
                                 {
                                    _loc1_.m_damage = _loc3_[3];
                                 }
                                 _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Copper Puncture");
                                 if(!_loc8_)
                                 {
                                    _loc1_.m_damage = _loc3_[4];
                                 }
                                 _loc2_ = new Array(10,15,25,35,55);
                                 _loc3_ = new Array(20,30,40,50,80);
                                 _loc1_ = this.CreateMove("Alloy Coat",_loc2_[0],MinionMoveClasses.alloy_coat,MinionMoveID.alloy_coat_t1,"moveIcon_alloyCoat",MinionType.TYPE_ROBOT,MinionVisualMoveID.VISUALS_SameAsClass);
                                 if(_loc7_)
                                 {
                                    _loc1_.m_damage = _loc3_[0];
                                    if(!_loc8_)
                                    {
                                       _loc1_.m_moveCoolDownTime = 2;
                                       if(!(_loc8_ && Boolean(_loc2_)))
                                       {
                                          _loc1_.m_enemiesItHits = 3;
                                          if(_loc7_ || Boolean(_loc2_))
                                          {
                                             _loc1_.m_hitsRandomTargets = true;
                                             if(_loc7_)
                                             {
                                                addr755:
                                                _loc1_.m_isThereABufferBetweenVisualMovesOnMultipleEnemies = false;
                                             }
                                          }
                                       }
                                       §§goto(addr755);
                                    }
                                    _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                                    if(!(_loc8_ && Boolean(_loc3_)))
                                    {
                                       _loc1_.m_damage = _loc3_[1];
                                    }
                                    _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                                    if(!_loc8_)
                                    {
                                       _loc1_.m_damage = _loc3_[2];
                                    }
                                    _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                                    if(!_loc8_)
                                    {
                                       _loc1_.m_damage = _loc3_[3];
                                    }
                                    _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Metalize");
                                    if(_loc7_ || Boolean(this))
                                    {
                                       _loc1_.m_damage = _loc3_[4];
                                    }
                                    _loc2_ = new Array(9,15,25,35,50);
                                    _loc3_ = new Array(20 * this.m_armorModRate,25 * this.m_armorModRate,30 * this.m_armorModRate,35 * this.m_armorModRate,50 * this.m_armorModRate);
                                    _loc1_ = this.CreateMove("Metal Shield",_loc2_[0],MinionMoveClasses.metal_shield,MinionMoveID.metal_shield_t1,"moveIcon_metalShield",MinionType.TYPE_ROBOT,MinionVisualMoveID.VISUALS_SameAsClass);
                                    if(_loc7_ || Boolean(_loc2_))
                                    {
                                       _loc1_.m_armor = _loc3_[0];
                                       if(!(_loc8_ && Boolean(_loc2_)))
                                       {
                                          _loc1_.m_enemiesItHits = 0;
                                          if(_loc7_)
                                          {
                                          }
                                          addr913:
                                          _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                                          if(!(_loc8_ && Boolean(_loc1_)))
                                          {
                                             _loc1_.m_armor = _loc3_[1];
                                          }
                                          _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                                          if(_loc7_ || Boolean(_loc2_))
                                          {
                                             _loc1_.m_armor = _loc3_[2];
                                          }
                                          _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                                          if(!_loc8_)
                                          {
                                             _loc1_.m_armor = _loc3_[3];
                                          }
                                          _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Solid Plate");
                                          if(!_loc8_)
                                          {
                                             _loc1_.m_armor = _loc3_[4];
                                          }
                                          _loc2_ = new Array(9,15,25,35,50);
                                          _loc3_ = new Array(50 * this.m_armorModRate,60 * this.m_armorModRate,70 * this.m_armorModRate,80 * this.m_armorModRate,90 * this.m_armorModRate);
                                          _loc1_ = this.CreateMove("Platinum",_loc2_[0],MinionMoveClasses.platinum,MinionMoveID.platinum_t1,"moveIcon_platinum",MinionType.TYPE_ROBOT,MinionVisualMoveID.VISUALS_SameAsClass);
                                          if(!_loc8_)
                                          {
                                             _loc1_.m_armor = _loc3_[0];
                                             if(!(_loc8_ && Boolean(_loc1_)))
                                             {
                                                addr1048:
                                                _loc1_.m_overTimeTurnsActive = 2;
                                                if(!(_loc8_ && Boolean(_loc1_)))
                                                {
                                                   addr1058:
                                                   _loc1_.m_moveCoolDownTime = 3;
                                                   if(_loc7_)
                                                   {
                                                      _loc1_.m_enemiesItHits = 0;
                                                      if(_loc7_ || Boolean(_loc3_))
                                                      {
                                                         addr1073:
                                                         _loc1_.m_alliesItHits = 1;
                                                      }
                                                      _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                                                      if(_loc7_)
                                                      {
                                                         _loc1_.m_armor = _loc3_[1];
                                                      }
                                                      _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                                                      if(!_loc8_)
                                                      {
                                                         _loc1_.m_armor = _loc3_[2];
                                                      }
                                                      _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                                                      if(_loc7_)
                                                      {
                                                         _loc1_.m_armor = _loc3_[3];
                                                      }
                                                      _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Titanium");
                                                      if(_loc7_ || Boolean(_loc2_))
                                                      {
                                                         _loc1_.m_armor = _loc3_[4];
                                                      }
                                                      _loc2_ = new Array(8,13,20,25,35);
                                                      _loc3_ = new Array(10 * this.m_armorModRate,15 * this.m_armorModRate,20 * this.m_armorModRate,25 * this.m_armorModRate,30 * this.m_armorModRate);
                                                      _loc1_ = this.CreateMove("Solder",_loc2_[0],MinionMoveClasses.solder,MinionMoveID.solder_t1,"moveIcon_solder",MinionType.TYPE_ROBOT,MinionVisualMoveID.VISUALS_SameAsClass);
                                                      if(!(_loc8_ && Boolean(_loc3_)))
                                                      {
                                                         _loc1_.m_armor = _loc3_[0];
                                                         if(!_loc8_)
                                                         {
                                                            _loc1_.m_overTimeTurnsActive = 5;
                                                            if(_loc7_)
                                                            {
                                                               addr1211:
                                                               _loc1_.m_moveCoolDownTime = 3;
                                                               if(_loc7_ || Boolean(_loc2_))
                                                               {
                                                                  _loc1_.m_enemiesItHits = 0;
                                                                  if(!(_loc8_ && Boolean(_loc2_)))
                                                                  {
                                                                     addr1231:
                                                                     _loc1_.m_alliesItHits = 1;
                                                                  }
                                                                  _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                                                                  if(!(_loc8_ && Boolean(_loc1_)))
                                                                  {
                                                                     _loc1_.m_armor = _loc3_[1];
                                                                  }
                                                                  _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                                                                  if(!_loc8_)
                                                                  {
                                                                     _loc1_.m_armor = _loc3_[2];
                                                                  }
                                                                  _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                                                                  if(_loc7_)
                                                                  {
                                                                     _loc1_.m_armor = _loc3_[3];
                                                                  }
                                                                  _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Steel Binder");
                                                                  if(_loc7_ || Boolean(_loc2_))
                                                                  {
                                                                     _loc1_.m_armor = _loc3_[4];
                                                                  }
                                                                  _loc2_ = new Array(8,13,20,25,35);
                                                                  _loc3_ = new Array(2,1,0,1,0);
                                                                  _loc1_ = this.CreateMove("Metal Mold",_loc2_[0],MinionMoveClasses.metal_mold,MinionMoveID.metal_mold_t1,"moveIcon_metalMold",MinionType.TYPE_ROBOT,MinionVisualMoveID.VISUALS_SameAsClass);
                                                                  if(!_loc8_)
                                                                  {
                                                                     _loc1_.m_moveCoolDownTime = _loc3_[0];
                                                                     _loc1_.AddStatToBuffFirstTime(StatType.STAT_HEALTH,true,false);
                                                                     if(!_loc8_)
                                                                     {
                                                                        _loc1_.AddStatToDeBuffFirstTime(StatType.STAT_ATTACK,true,false);
                                                                        _loc1_.AddStatToDeBuff(StatType.STAT_SPEED);
                                                                     }
                                                                     _loc1_.m_enemiesItHits = 0;
                                                                     if(!(_loc8_ && Boolean(this)))
                                                                     {
                                                                        _loc1_.m_alliesItHits = 1;
                                                                     }
                                                                  }
                                                                  _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                                                                  if(!(_loc8_ && Boolean(_loc3_)))
                                                                  {
                                                                     _loc1_.m_moveCoolDownTime = _loc3_[1];
                                                                  }
                                                                  _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                                                                  if(_loc7_ || Boolean(_loc3_))
                                                                  {
                                                                     _loc1_.m_moveCoolDownTime = _loc3_[2];
                                                                  }
                                                                  _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                                                                  if(!(_loc8_ && Boolean(_loc1_)))
                                                                  {
                                                                     _loc1_.m_moveCoolDownTime = _loc3_[3];
                                                                     if(_loc7_ || Boolean(_loc2_))
                                                                     {
                                                                        _loc1_.m_stagesOfStatTypeToBuff = 2;
                                                                        if(!(_loc8_ && Boolean(_loc2_)))
                                                                        {
                                                                           addr1455:
                                                                           _loc1_.m_stagesOfStatTypeToDeBuff = -2;
                                                                        }
                                                                        _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Metal Construct");
                                                                        if(!_loc8_)
                                                                        {
                                                                           _loc1_.m_moveCoolDownTime = _loc3_[4];
                                                                        }
                                                                        _loc2_ = new Array(20,40,80,110,160);
                                                                        _loc3_ = new Array(35,50,70,90,125);
                                                                        _loc1_ = this.CreateMove("Death Call",_loc2_[0],MinionMoveClasses.death_call,MinionMoveID.death_call_t1,"moveIcon_deathCall",MinionType.TYPE_ROBOT,MinionVisualMoveID.VISUALS_SameAsClass);
                                                                        if(_loc7_)
                                                                        {
                                                                           _loc1_.m_damage = _loc3_[0];
                                                                           if(!_loc8_)
                                                                           {
                                                                              _loc1_.m_enemiesItHits = 3;
                                                                              if(_loc7_ || Boolean(_loc2_))
                                                                              {
                                                                                 addr1528:
                                                                                 _loc1_.m_moveCoolDownTime = 3;
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr1533:
                                                                                    _loc1_.m_isThereABufferBetweenVisualMovesOnMultipleEnemies = false;
                                                                                 }
                                                                              }
                                                                              _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 _loc1_.m_damage = _loc3_[1];
                                                                              }
                                                                              _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                                                                              if(!(_loc8_ && Boolean(_loc1_)))
                                                                              {
                                                                                 _loc1_.m_damage = _loc3_[2];
                                                                              }
                                                                              _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 _loc1_.m_damage = _loc3_[3];
                                                                              }
                                                                              _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Death Call 2");
                                                                              if(_loc7_ || Boolean(_loc1_))
                                                                              {
                                                                                 _loc1_.m_damage = _loc3_[4];
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr1528);
                                                                        }
                                                                        §§goto(addr1533);
                                                                     }
                                                                  }
                                                                  §§goto(addr1455);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr1231);
                                                      }
                                                      §§goto(addr1211);
                                                   }
                                                }
                                                §§goto(addr1073);
                                             }
                                             §§goto(addr1058);
                                          }
                                          §§goto(addr1048);
                                       }
                                       _loc1_.m_alliesItHits = 1;
                                    }
                                    §§goto(addr913);
                                 }
                                 §§goto(addr755);
                              }
                              §§goto(addr544);
                           }
                           §§goto(addr519);
                        }
                        §§goto(addr499);
                     }
                     §§goto(addr469);
                  }
                  §§goto(addr336);
               }
               §§goto(addr211);
            }
            _loc1_.m_isThereABufferBetweenVisualMovesOnMultipleEnemies = false;
         }
         §§goto(addr211);
      }
      