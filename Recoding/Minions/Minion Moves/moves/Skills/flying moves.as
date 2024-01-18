//flying moves
      private function CreateFlyingMoves() : void
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
         _loc1_ = this.CreateMove("Peck",_loc2_[0],MinionMoveClasses.peck,MinionMoveID.peck_t1,"moveIcon_peck",MinionType.TYPE_FLYING,MinionVisualMoveID.VISUALS_SameAsClass);
         if(_loc8_ || Boolean(_loc1_))
         {
            _loc1_.m_damage = _loc3_[0];
         }
         _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
         if(!(_loc7_ && Boolean(_loc3_)))
         {
            _loc1_.m_damage = _loc3_[1];
         }
         _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
         if(!_loc7_)
         {
            _loc1_.m_damage = _loc3_[2];
         }
         _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
         if(_loc8_ || Boolean(this))
         {
            _loc1_.m_damage = _loc3_[3];
         }
         _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Drill Beak");
         if(_loc8_)
         {
            _loc1_.m_damage = _loc3_[4];
         }
         _loc2_ = new Array(12,20,28,33,45);
         _loc3_ = new Array(40,50,60,70,100);
         _loc1_ = this.CreateMove("Wind Lance",_loc2_[0],MinionMoveClasses.wind_lance,MinionMoveID.wind_lance_t1,"moveIcon_windLance",MinionType.TYPE_FLYING,MinionVisualMoveID.VISUALS_SameAsClass);
         if(!(_loc7_ && Boolean(_loc1_)))
         {
            _loc1_.m_damage = _loc3_[0];
         }
         _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
         if(!(_loc7_ && Boolean(_loc3_)))
         {
            _loc1_.m_damage = _loc3_[1];
         }
         _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
         if(_loc8_ || Boolean(this))
         {
            _loc1_.m_damage = _loc3_[2];
         }
         _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
         if(_loc8_ || Boolean(this))
         {
            _loc1_.m_damage = _loc3_[3];
         }
         _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Wind Puncture");
         if(_loc8_)
         {
            _loc1_.m_damage = _loc3_[4];
            if(!(_loc7_ && Boolean(_loc3_)))
            {
               _loc1_.m_armor = -10;
            }
         }
         _loc2_ = new Array(10,18,25,30,45);
         _loc3_ = new Array(35,45,55,65,100);
         _loc1_ = this.CreateMove("Flurry",_loc2_[0],MinionMoveClasses.flurry,MinionMoveID.flurry_t1,"moveIcon_flurry",MinionType.TYPE_FLYING,MinionVisualMoveID.VISUALS_SameAsClass);
         if(_loc8_)
         {
            _loc1_.m_damage = _loc3_[0];
            if(_loc8_ || Boolean(_loc2_))
            {
               _loc1_.m_hitsRandomTargets = true;
               if(_loc8_ || Boolean(_loc2_))
               {
                  addr342:
                  _loc1_.m_enemiesItHits = 2;
                  if(_loc8_ || Boolean(_loc2_))
                  {
                     _loc1_.m_moveCoolDownTime = 2;
                     if(!_loc7_)
                     {
                        addr357:
                        _loc1_.m_isThereABufferBetweenVisualMovesOnMultipleEnemies = false;
                     }
                  }
                  §§goto(addr357);
               }
               _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  _loc1_.m_damage = _loc3_[1];
               }
               _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
               if(_loc8_)
               {
                  _loc1_.m_damage = _loc3_[2];
               }
               _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
               if(!(_loc7_ && Boolean(_loc1_)))
               {
                  _loc1_.m_damage = _loc3_[3];
               }
               _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Windstorm");
               if(_loc8_)
               {
                  _loc1_.m_damage = _loc3_[4];
               }
               _loc2_ = new Array(30,40,60,75,125);
               _loc3_ = new Array(50,75,100,125,200);
               _loc1_ = this.CreateMove("Hurricane",_loc2_[0],MinionMoveClasses.hurricane,MinionMoveID.hurricane_t1,"moveIcon_hurricane",MinionType.TYPE_FLYING,MinionVisualMoveID.VISUALS_SameAsClass);
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  _loc1_.m_damage = _loc3_[0];
               }
               _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
               if(_loc8_)
               {
                  _loc1_.m_damage = _loc3_[1];
               }
               _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
               if(!_loc7_)
               {
                  _loc1_.m_damage = _loc3_[2];
               }
               _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
               if(!_loc7_)
               {
                  _loc1_.m_damage = _loc3_[3];
               }
               _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Punishing Cyclone");
               if(!_loc7_)
               {
                  _loc1_.m_damage = _loc3_[4];
               }
               _loc2_ = new Array(10,18,25,30,45);
               _loc3_ = new Array(25,30,35,40,40);
               _loc1_ = this.CreateMove("Cutting Wind",_loc2_[0],MinionMoveClasses.cutting_wind,MinionMoveID.cutting_wind_t1,"moveIcon_cuttingWind",MinionType.TYPE_FLYING,MinionVisualMoveID.VISUALS_SameAsClass);
               if(_loc8_)
               {
                  _loc1_.m_damage = _loc3_[0];
                  if(_loc8_)
                  {
                     addr590:
                     _loc1_.m_clearBuffsAndDebuffsChance = 10;
                  }
                  _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                  if(_loc8_ || Boolean(this))
                  {
                     _loc1_.m_damage = _loc3_[1];
                     if(_loc8_)
                     {
                        addr615:
                        _loc1_.m_clearBuffsAndDebuffsChance = 12;
                     }
                     _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                     if(!_loc7_)
                     {
                        _loc1_.m_damage = _loc3_[2];
                        if(!(_loc7_ && Boolean(this)))
                        {
                           addr640:
                           _loc1_.m_clearBuffsAndDebuffsChance = 15;
                        }
                        _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                        if(!_loc7_)
                        {
                           _loc1_.m_damage = _loc3_[3];
                           if(!_loc7_)
                           {
                              _loc1_.m_clearBuffsAndDebuffsChance = 20;
                           }
                        }
                        _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Slicing Blast");
                        if(!(_loc7_ && Boolean(_loc1_)))
                        {
                           _loc1_.m_damage = _loc3_[4];
                           if(!_loc7_)
                           {
                              addr686:
                              _loc1_.m_clearBuffsAndDebuffsChance = 50;
                           }
                           _loc2_ = new Array(10,15,30,40,50);
                           _loc3_ = new Array(1,2,3,2,5);
                           _loc1_ = this.CreateMove("Blow By",_loc2_[0],MinionMoveClasses.blow_by,MinionMoveID.blow_by_t1,"moveIcon_blowBy",MinionType.TYPE_FLYING,MinionVisualMoveID.VISUALS_SameAsClass);
                           if(_loc8_)
                           {
                              _loc1_.m_enemiesItHits = _loc3_[0];
                              if(!(_loc7_ && Boolean(_loc1_)))
                              {
                                 addr738:
                                 _loc1_.m_clearBuffsAndDebuffsChance = 100;
                              }
                              _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                              if(_loc8_)
                              {
                                 _loc1_.m_enemiesItHits = _loc3_[1];
                                 if(_loc8_ || Boolean(_loc1_))
                                 {
                                    addr763:
                                    _loc1_.m_hitsRandomTargets = true;
                                 }
                                 _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                                 if(_loc8_ || Boolean(this))
                                 {
                                    _loc1_.m_enemiesItHits = _loc3_[2];
                                 }
                                 _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                                 if(_loc8_)
                                 {
                                    _loc1_.m_enemiesItHits = _loc3_[3];
                                    if(!(_loc7_ && Boolean(_loc2_)))
                                    {
                                       _loc1_.m_hitsRandomTargets = false;
                                    }
                                 }
                                 _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Punishing Cyclone");
                                 if(_loc8_)
                                 {
                                    _loc1_.m_enemiesItHits = _loc3_[4];
                                 }
                                 _loc2_ = new Array(15,18,25,35,50);
                                 _loc3_ = new Array(20,25,30,35,45);
                                 _loc1_ = this.CreateMove("Volley",_loc2_[0],MinionMoveClasses.volley,MinionMoveID.volley_t1,"moveIcon_volley",MinionType.TYPE_FLYING,MinionVisualMoveID.VISUALS_SameAsClass);
                                 if(_loc8_ || Boolean(_loc2_))
                                 {
                                    _loc1_.m_damage = _loc3_[0];
                                    if(!_loc7_)
                                    {
                                       _loc1_.m_enemiesItHits = 5;
                                       if(_loc8_ || Boolean(_loc2_))
                                       {
                                          _loc1_.m_isThereABufferBetweenVisualMovesOnMultipleEnemies = false;
                                       }
                                    }
                                 }
                                 _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
                                 if(_loc8_ || Boolean(_loc1_))
                                 {
                                    _loc1_.m_damage = _loc3_[1];
                                 }
                                 _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
                                 if(!(_loc7_ && Boolean(_loc1_)))
                                 {
                                    _loc1_.m_damage = _loc3_[2];
                                 }
                                 _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
                                 if(!(_loc7_ && Boolean(this)))
                                 {
                                    _loc1_.m_damage = _loc3_[3];
                                 }
                                 _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Punishing Volley");
                                 if(!(_loc7_ && Boolean(this)))
                                 {
                                    _loc1_.m_damage = _loc3_[4];
                                 }
                                 return;
                              }
                              §§goto(addr763);
                           }
                           §§goto(addr738);
                        }
                        §§goto(addr686);
                     }
                     §§goto(addr640);
                  }
                  §§goto(addr615);
               }
               §§goto(addr590);
            }
            §§goto(addr357);
         }
         §§goto(addr342);
      }