//passive code      

private function CreatePassiveMoves() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:BaseMinionMove = null;
         if(_loc2_)
         {
            this.m_currMinionMoveClass = MinionMoveClasses.fortitude;
            if(_loc2_ || _loc2_)
            {
               this.m_currFirstMinionMoveID = MinionMoveID.fortitude_t1;
               if(_loc2_ || Boolean(this))
               {
                  addr40:
                  this.m_currMoveIconName = "moveIcon_fortitude";
               }
            }
            _loc1_ = this.PassiveCM(0,"Fortitude",StatType.STAT_HEALTH,10);
            _loc1_ = this.PassiveCM(1,"Fortitude  lv.2",StatType.STAT_HEALTH,15);
            _loc1_ = this.PassiveCM(2,"Fortitude  lv.3",StatType.STAT_HEALTH,20);
            _loc1_ = this.PassiveCM(3,"Fortitude  lv.4",StatType.STAT_HEALTH,30);
            _loc1_ = this.PassiveCM(4,"Fortitude  lv.5",StatType.STAT_HEALTH,40);
            if(_loc2_ || _loc2_)
            {
               this.m_currMinionMoveClass = MinionMoveClasses.perseverance;
               if(!_loc3_)
               {
                  this.m_currFirstMinionMoveID = MinionMoveID.perseverance_t1;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr112:
                     this.m_currMoveIconName = "moveIcon_persaverance";
                  }
               }
               _loc1_ = this.PassiveCM(0,"Perseverance",StatType.STAT_HEALTH,15);
               _loc1_ = this.PassiveCM(1,"Perseverance  lv.2",StatType.STAT_HEALTH,20);
               _loc1_ = this.PassiveCM(2,"Perseverance  lv.3",StatType.STAT_HEALTH,25);
               _loc1_ = this.PassiveCM(3,"Perseverance  lv.4",StatType.STAT_HEALTH,35);
               _loc1_ = this.PassiveCM(4,"Perseverance  lv.5",StatType.STAT_HEALTH,50);
               if(!_loc3_)
               {
                  this.m_currMinionMoveClass = MinionMoveClasses.hulk_inspiration;
                  if(_loc2_)
                  {
                     this.m_currFirstMinionMoveID = MinionMoveID.hulk_inspiration_t1;
                     if(_loc2_ || _loc2_)
                     {
                        this.m_currMoveIconName = "moveIcon_hulkInspiration";
                     }
                  }
               }
               _loc1_ = this.PassiveCM(0,"Hulk Inspiration",StatType.STAT_HEALTH,5,true);
               _loc1_ = this.PassiveCM(1,"Hulk Inspiration  lv.2",StatType.STAT_HEALTH,10,true);
               _loc1_ = this.PassiveCM(2,"Hulk Inspiration  lv.3",StatType.STAT_HEALTH,15,true);
               _loc1_ = this.PassiveCM(3,"Hulk Inspiration  lv.4",StatType.STAT_HEALTH,20,true);
               _loc1_ = this.PassiveCM(4,"Hulk Inspiration  lv.5",StatType.STAT_HEALTH,25,true);
               if(!(_loc3_ && _loc3_))
               {
                  this.m_currMinionMoveClass = MinionMoveClasses.efficiency;
                  if(_loc2_ || Boolean(this))
                  {
                     this.m_currFirstMinionMoveID = MinionMoveID.efficiency_t1;
                     if(_loc3_ && _loc2_)
                     {
                     }
                     addr264:
                     _loc1_ = this.PassiveCM(0,"Efficiency",StatType.STAT_ENERGY,10);
                     _loc1_ = this.PassiveCM(1,"Efficiency  lv.2",StatType.STAT_ENERGY,15);
                     _loc1_ = this.PassiveCM(2,"Efficiency  lv.3",StatType.STAT_ENERGY,20);
                     _loc1_ = this.PassiveCM(3,"Efficiency  lv.4",StatType.STAT_ENERGY,30);
                     _loc1_ = this.PassiveCM(4,"Efficiency  lv.5",StatType.STAT_ENERGY,40);
                     if(!_loc3_)
                     {
                        this.m_currMinionMoveClass = MinionMoveClasses.skillful;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr322:
                           this.m_currFirstMinionMoveID = MinionMoveID.skillful_t1;
                           if(_loc2_)
                           {
                              this.m_currMoveIconName = "moveIcon_skillfull";
                           }
                        }
                        _loc1_ = this.PassiveCM(0,"Skillful",StatType.STAT_ENERGY,15);
                        _loc1_ = this.PassiveCM(1,"Skillful  lv.2",StatType.STAT_ENERGY,20);
                        _loc1_ = this.PassiveCM(2,"Skillful  lv.3",StatType.STAT_ENERGY,25);
                        _loc1_ = this.PassiveCM(3,"Skillful  lv.4",StatType.STAT_ENERGY,35);
                        _loc1_ = this.PassiveCM(4,"Skillful  lv.5",StatType.STAT_ENERGY,50);
                        if(!_loc3_)
                        {
                           this.m_currMinionMoveClass = MinionMoveClasses.energizing_inspiration;
                           if(!_loc3_)
                           {
                              this.m_currFirstMinionMoveID = MinionMoveID.energizing_inspiration_t1;
                              if(_loc3_)
                              {
                              }
                              addr393:
                              _loc1_ = this.PassiveCM(0,"Energizing Inspiration",StatType.STAT_ENERGY,5,true);
                              _loc1_ = this.PassiveCM(1,"Energizing Inspiration  lv.2",StatType.STAT_ENERGY,10,true);
                              _loc1_ = this.PassiveCM(2,"Energizing Inspiration  lv.3",StatType.STAT_ENERGY,15,true);
                              _loc1_ = this.PassiveCM(3,"Energizing Inspiration  lv.4",StatType.STAT_ENERGY,20,true);
                              _loc1_ = this.PassiveCM(4,"Energizing Inspiration  lv.5",StatType.STAT_ENERGY,25,true);
                              if(_loc2_)
                              {
                                 this.m_currMinionMoveClass = MinionMoveClasses.vicious;
                                 if(_loc2_)
                                 {
                                    this.m_currFirstMinionMoveID = MinionMoveID.vicious_t1;
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr462:
                                       this.m_currMoveIconName = "moveIcon_vicious";
                                    }
                                    _loc1_ = this.PassiveCM(0,"Vicious",StatType.STAT_ATTACK,10);
                                    _loc1_ = this.PassiveCM(1,"Vicious  lv.2",StatType.STAT_ATTACK,15);
                                    _loc1_ = this.PassiveCM(2,"Vicious  lv.3",StatType.STAT_ATTACK,20);
                                    _loc1_ = this.PassiveCM(3,"Vicious  lv.4",StatType.STAT_ATTACK,30);
                                    _loc1_ = this.PassiveCM(4,"Vicious  lv.5",StatType.STAT_ATTACK,40);
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       this.m_currMinionMoveClass = MinionMoveClasses.ferocity;
                                       if(_loc2_)
                                       {
                                          addr523:
                                          this.m_currFirstMinionMoveID = MinionMoveID.ferocity_t1;
                                          if(!_loc3_)
                                          {
                                             this.m_currMoveIconName = "moveIcon_ferocity";
                                          }
                                       }
                                       _loc1_ = this.PassiveCM(0,"Ferocity",StatType.STAT_ATTACK,15);
                                       _loc1_ = this.PassiveCM(1,"Ferocity  lv.2",StatType.STAT_ATTACK,20);
                                       _loc1_ = this.PassiveCM(2,"Ferocity  lv.3",StatType.STAT_ATTACK,25);
                                       _loc1_ = this.PassiveCM(3,"Ferocity  lv.4",StatType.STAT_ATTACK,35);
                                       _loc1_ = this.PassiveCM(4,"Ferocity  lv.5",StatType.STAT_ATTACK,50);
                                       if(_loc2_)
                                       {
                                          this.m_currMinionMoveClass = MinionMoveClasses.deadly_inspiration;
                                          if(!_loc3_)
                                          {
                                             this.m_currFirstMinionMoveID = MinionMoveID.deadly_inspiration_t1;
                                             if(!_loc3_)
                                             {
                                                addr591:
                                                this.m_currMoveIconName = "moveIcon_deadlyInspiration";
                                             }
                                          }
                                          _loc1_ = this.PassiveCM(0,"Deadly Inspiration",StatType.STAT_ATTACK,5,true);
                                          _loc1_ = this.PassiveCM(1,"Deadly Inspiration  lv.2",StatType.STAT_ATTACK,10,true);
                                          _loc1_ = this.PassiveCM(2,"Deadly Inspiration  lv.3",StatType.STAT_ATTACK,15,true);
                                          _loc1_ = this.PassiveCM(3,"Deadly Inspiration  lv.4",StatType.STAT_ATTACK,20,true);
                                          _loc1_ = this.PassiveCM(4,"Deadly Inspiration  lv.5",StatType.STAT_ATTACK,25,true);
                                          if(_loc2_ || _loc3_)
                                          {
                                             this.m_currMinionMoveClass = MinionMoveClasses.priest;
                                             if(!_loc3_)
                                             {
                                                this.m_currFirstMinionMoveID = MinionMoveID.priest_t1;
                                                if(_loc2_ || _loc2_)
                                                {
                                                   addr668:
                                                   this.m_currMoveIconName = "moveIcon_priest";
                                                }
                                             }
                                             _loc1_ = this.PassiveCM(0,"Meditation",StatType.STAT_HEALING,10);
                                             _loc1_ = this.PassiveCM(1,"Meditation  lv.2",StatType.STAT_HEALING,15);
                                             _loc1_ = this.PassiveCM(2,"Meditation  lv.3",StatType.STAT_HEALING,20);
                                             _loc1_ = this.PassiveCM(3,"Meditation  lv.4",StatType.STAT_HEALING,30);
                                             _loc1_ = this.PassiveCM(4,"Meditation  lv.5",StatType.STAT_HEALING,40);
                                             if(_loc2_)
                                             {
                                                this.m_currMinionMoveClass = MinionMoveClasses.cleric;
                                                if(!_loc3_)
                                                {
                                                   this.m_currFirstMinionMoveID = MinionMoveID.cleric_t1;
                                                   if(_loc2_)
                                                   {
                                                   }
                                                   addr733:
                                                   _loc1_ = this.PassiveCM(0,"Contemplation",StatType.STAT_HEALING,15);
                                                   _loc1_ = this.PassiveCM(1,"Contemplation  lv.2",StatType.STAT_HEALING,20);
                                                   _loc1_ = this.PassiveCM(2,"Contemplation  lv.3",StatType.STAT_HEALING,25);
                                                   _loc1_ = this.PassiveCM(3,"Contemplation  lv.4",StatType.STAT_HEALING,35);
                                                   _loc1_ = this.PassiveCM(4,"Contemplation  lv.5",StatType.STAT_HEALING,50);
                                                   if(!_loc3_)
                                                   {
                                                      this.m_currMinionMoveClass = MinionMoveClasses.mending_inspiration;
                                                      if(!_loc3_)
                                                      {
                                                         this.m_currFirstMinionMoveID = MinionMoveID.mending_inspiration_t1;
                                                         if(!(_loc3_ && Boolean(this)))
                                                         {
                                                            this.m_currMoveIconName = "moveIcon_mendingInspiration";
                                                         }
                                                      }
                                                   }
                                                   _loc1_ = this.PassiveCM(0,"Mending Inspiration",StatType.STAT_HEALING,5,true);
                                                   _loc1_ = this.PassiveCM(1,"Mending Inspiration  lv.2",StatType.STAT_HEALING,10,true);
                                                   _loc1_ = this.PassiveCM(2,"Mending Inspiration  lv.3",StatType.STAT_HEALING,15,true);
                                                   _loc1_ = this.PassiveCM(3,"Mending Inspiration  lv.4",StatType.STAT_HEALING,20,true);
                                                   _loc1_ = this.PassiveCM(4,"Mending Inspiration  lv.5",StatType.STAT_HEALING,25,true);
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      this.m_currMinionMoveClass = MinionMoveClasses.quickness;
                                                      if(_loc2_ || Boolean(_loc1_))
                                                      {
                                                         this.m_currFirstMinionMoveID = MinionMoveID.quickness_t1;
                                                         if(_loc2_ || Boolean(_loc1_))
                                                         {
                                                            addr879:
                                                            this.m_currMoveIconName = "moveIcon_quickness";
                                                         }
                                                      }
                                                      _loc1_ = this.PassiveCM(0,"Quickness",StatType.STAT_SPEED,10);
                                                      _loc1_ = this.PassiveCM(1,"Quickness  lv.2",StatType.STAT_SPEED,15);
                                                      _loc1_ = this.PassiveCM(2,"Quickness  lv.3",StatType.STAT_SPEED,20);
                                                      _loc1_ = this.PassiveCM(3,"Quickness  lv.4",StatType.STAT_SPEED,30);
                                                      _loc1_ = this.PassiveCM(4,"Quickness  lv.5",StatType.STAT_SPEED,40);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         this.m_currMinionMoveClass = MinionMoveClasses.agility;
                                                         if(_loc2_)
                                                         {
                                                            this.m_currFirstMinionMoveID = MinionMoveID.agility_t1;
                                                            if(!_loc3_)
                                                            {
                                                               addr953:
                                                               this.m_currMoveIconName = "moveIcon_agility";
                                                            }
                                                         }
                                                         _loc1_ = this.PassiveCM(0,"Agility",StatType.STAT_SPEED,15);
                                                         _loc1_ = this.PassiveCM(1,"Agility  lv.2",StatType.STAT_SPEED,20);
                                                         _loc1_ = this.PassiveCM(2,"Agility  lv.3",StatType.STAT_SPEED,25);
                                                         _loc1_ = this.PassiveCM(3,"Agility  lv.4",StatType.STAT_SPEED,35);
                                                         _loc1_ = this.PassiveCM(4,"Agility  lv.5",StatType.STAT_SPEED,50);
                                                         if(_loc2_)
                                                         {
                                                            this.m_currMinionMoveClass = MinionMoveClasses.agile_inspiration;
                                                            if(!_loc3_)
                                                            {
                                                               this.m_currFirstMinionMoveID = MinionMoveID.agile_inspiration_t1;
                                                               if(!_loc3_)
                                                               {
                                                                  addr1015:
                                                                  this.m_currMoveIconName = "moveIcon_agileInspiration";
                                                               }
                                                            }
                                                            _loc1_ = this.PassiveCM(0,"Agile Inspiration",StatType.STAT_SPEED,5,true);
                                                            _loc1_ = this.PassiveCM(1,"Agile Inspiration  lv.2",StatType.STAT_SPEED,10,true);
                                                            _loc1_ = this.PassiveCM(2,"Agile Inspiration  lv.3",StatType.STAT_SPEED,15,true);
                                                            _loc1_ = this.PassiveCM(3,"Agile Inspiration  lv.4",StatType.STAT_SPEED,20,true);
                                                            _loc1_ = this.PassiveCM(4,"Agile Inspiration  lv.5",StatType.STAT_SPEED,25,true);
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                               this.m_currMinionMoveClass = MinionMoveClasses.mirror_skin;
                                                               if(!(_loc3_ && Boolean(this)))
                                                               {
                                                                  this.m_currFirstMinionMoveID = MinionMoveID.mirror_skin_t1;
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                     this.m_currMoveIconName = "moveIcon_mirrorSkin";
                                                                  }
                                                               }
                                                            }
                                                            _loc1_ = this.PassiveCM(0,"Mirror Skin",StatType.STAT_NONE);
                                                            if(!_loc3_)
                                                            {
                                                               _loc1_.m_setReflectDamageAmount = 20;
                                                            }
                                                            _loc1_ = this.PassiveCM(1,"Mirror Skin  lv.2",StatType.STAT_NONE);
                                                            if(!_loc3_)
                                                            {
                                                               _loc1_.m_setReflectDamageAmount = 35;
                                                            }
                                                            _loc1_ = this.PassiveCM(2,"Mirror Skin  lv.3",StatType.STAT_NONE);
                                                            if(_loc2_)
                                                            {
                                                               _loc1_.m_setReflectDamageAmount = 50;
                                                            }
                                                            _loc1_ = this.PassiveCM(3,"Mirror Skin  lv.4",StatType.STAT_NONE);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               _loc1_.m_setReflectDamageAmount = 60;
                                                            }
                                                            _loc1_ = this.PassiveCM(4,"Mirror Skin  lv.5",StatType.STAT_NONE);
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               _loc1_.m_setReflectDamageAmount = 80;
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  addr1182:
                                                                  this.m_currMinionMoveClass = MinionMoveClasses.focus;
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                     addr1193:
                                                                     this.m_currFirstMinionMoveID = MinionMoveID.focus_t1;
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        this.m_currMoveIconName = "moveIcon_focus";
                                                                     }
                                                                  }
                                                                  _loc1_ = this.PassiveCM(0,"Focus",StatType.STAT_NONE);
                                                                  if(!_loc3_)
                                                                  {
                                                                     _loc1_.m_increasedExtraCritChance = 5;
                                                                  }
                                                                  _loc1_ = this.PassiveCM(1,"Focus  lv.2",StatType.STAT_NONE);
                                                                  if(_loc2_)
                                                                  {
                                                                     _loc1_.m_increasedExtraCritChance = 7;
                                                                  }
                                                                  _loc1_ = this.PassiveCM(2,"Focus  lv.3",StatType.STAT_NONE);
                                                                  if(_loc2_)
                                                                  {
                                                                     _loc1_.m_increasedExtraCritChance = 10;
                                                                  }
                                                                  _loc1_ = this.PassiveCM(3,"Focus  lv.4",StatType.STAT_NONE);
                                                                  if(_loc2_)
                                                                  {
                                                                     _loc1_.m_increasedExtraCritChance = 15;
                                                                  }
                                                                  _loc1_ = this.PassiveCM(4,"Focus  lv.5",StatType.STAT_NONE);
                                                                  if(_loc2_)
                                                                  {
                                                                     _loc1_.m_increasedExtraCritChance = 20;
                                                                     if(!(_loc3_ && Boolean(this)))
                                                                     {
                                                                        this.m_currMinionMoveClass = MinionMoveClasses.concentration;
                                                                        if(_loc2_)
                                                                        {
                                                                           addr1285:
                                                                           this.m_currFirstMinionMoveID = MinionMoveID.concentration_t1;
                                                                           if(_loc2_ || Boolean(_loc1_))
                                                                           {
                                                                           }
                                                                           addr1299:
                                                                           _loc1_ = this.PassiveCM(0,"Concentration",StatType.STAT_NONE);
                                                                           if(!_loc3_)
                                                                           {
                                                                              _loc1_.m_increasedExtraCritChance = 7;
                                                                           }
                                                                           _loc1_ = this.PassiveCM(1,"Concentration  lv.2",StatType.STAT_NONE);
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              _loc1_.m_increasedExtraCritChance = 10;
                                                                           }
                                                                           _loc1_ = this.PassiveCM(2,"Concentration  lv.3",StatType.STAT_NONE);
                                                                           if(!(_loc3_ && Boolean(this)))
                                                                           {
                                                                              _loc1_.m_increasedExtraCritChance = 12;
                                                                           }
                                                                           _loc1_ = this.PassiveCM(3,"Concentration  lv.4",StatType.STAT_NONE);
                                                                           if(_loc2_)
                                                                           {
                                                                              _loc1_.m_increasedExtraCritChance = 17;
                                                                           }
                                                                           _loc1_ = this.PassiveCM(4,"Concentration  lv.5",StatType.STAT_NONE);
                                                                           if(!_loc3_)
                                                                           {
                                                                              _loc1_.m_increasedExtraCritChance = 25;
                                                                              if(_loc2_)
                                                                              {
                                                                                 addr1376:
                                                                                 this.m_currMinionMoveClass = MinionMoveClasses.rock_skin;
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    addr1382:
                                                                                    this.m_currFirstMinionMoveID = MinionMoveID.rock_skin_t1;
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       this.m_currMoveIconName = "moveIcon_rockSkin";
                                                                                    }
                                                                                 }
                                                                                 _loc1_ = this.PassiveCM(0,"Rock Skin",StatType.STAT_NONE);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    _loc1_.m_armor = 10 * this.m_armorModRate;
                                                                                 }
                                                                                 _loc1_ = this.PassiveCM(1,"Rock Skin  lv.2",StatType.STAT_NONE);
                                                                                 if(_loc2_ || _loc3_)
                                                                                 {
                                                                                    _loc1_.m_armor = 15 * this.m_armorModRate;
                                                                                 }
                                                                                 _loc1_ = this.PassiveCM(2,"Rock Skin  lv.3",StatType.STAT_NONE);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    _loc1_.m_armor = 20 * this.m_armorModRate;
                                                                                 }
                                                                                 _loc1_ = this.PassiveCM(3,"Rock Skin  lv.4",StatType.STAT_NONE);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    _loc1_.m_armor = 30 * this.m_armorModRate;
                                                                                 }
                                                                                 _loc1_ = this.PassiveCM(4,"Rock Skin  lv.5",StatType.STAT_NONE);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    _loc1_.m_armor = 40 * this.m_armorModRate;
                                                                                    if(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       this.m_currMinionMoveClass = MinionMoveClasses.diamond_skin;
                                                                                       if(_loc2_ || _loc2_)
                                                                                       {
                                                                                          addr1494:
                                                                                          this.m_currFirstMinionMoveID = MinionMoveID.diamond_skin_t1;
                                                                                          if(_loc2_)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr1503);
                                                                                       }
                                                                                       this.m_currMoveIconName = "moveIcon_diamondSkin";
                                                                                    }
                                                                                    addr1503:
                                                                                    _loc1_ = this.PassiveCM(0,"Diamond Skin",StatType.STAT_NONE);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       _loc1_.m_armor = 15 * this.m_armorModRate;
                                                                                    }
                                                                                    _loc1_ = this.PassiveCM(1,"Diamond Skin  lv.2",StatType.STAT_NONE);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       _loc1_.m_armor = 20 * this.m_armorModRate;
                                                                                    }
                                                                                    _loc1_ = this.PassiveCM(2,"Diamond Skin  lv.3",StatType.STAT_NONE);
                                                                                    if(_loc2_ || _loc2_)
                                                                                    {
                                                                                       _loc1_.m_armor = 25 * this.m_armorModRate;
                                                                                    }
                                                                                    _loc1_ = this.PassiveCM(3,"Diamond Skin  lv.4",StatType.STAT_NONE);
                                                                                    if(_loc2_ || _loc3_)
                                                                                    {
                                                                                       _loc1_.m_armor = 35 * this.m_armorModRate;
                                                                                    }
                                                                                    _loc1_ = this.PassiveCM(4,"Diamond Skin  lv.5",StatType.STAT_NONE);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       _loc1_.m_armor = 50 * this.m_armorModRate;
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          this.m_currMinionMoveClass = MinionMoveClasses.diamond_inspiration;
                                                                                          if(_loc3_ && Boolean(_loc1_))
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr1620);
                                                                                       }
                                                                                       this.m_currFirstMinionMoveID = MinionMoveID.diamond_inspiration_t1;
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          this.m_currMoveIconName = "moveIcon_diamondInspiration";
                                                                                       }
                                                                                    }
                                                                                    addr1620:
                                                                                    _loc1_ = this.PassiveCM(0,"Diamond Inspiration",StatType.STAT_NONE,0,true);
                                                                                    if(_loc2_ || _loc3_)
                                                                                    {
                                                                                       _loc1_.m_armor = 5 * this.m_armorModRate;
                                                                                    }
                                                                                    _loc1_ = this.PassiveCM(1,"Diamond Inspiration  lv.2",StatType.STAT_NONE,0,true);
                                                                                    if(_loc2_ || Boolean(_loc1_))
                                                                                    {
                                                                                       _loc1_.m_armor = 10 * this.m_armorModRate;
                                                                                    }
                                                                                    _loc1_ = this.PassiveCM(2,"Diamond Inspiration  lv.3",StatType.STAT_NONE,0,true);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       _loc1_.m_armor = 15 * this.m_armorModRate;
                                                                                    }
                                                                                    _loc1_ = this.PassiveCM(3,"Diamond Inspiration  lv.4",StatType.STAT_NONE,0,true);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       _loc1_.m_armor = 20 * this.m_armorModRate;
                                                                                    }
                                                                                    _loc1_ = this.PassiveCM(4,"Diamond Inspiration  lv.5",StatType.STAT_NONE,0,true);
                                                                                    if(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       _loc1_.m_armor = 25 * this.m_armorModRate;
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          this.m_currMinionMoveClass = MinionMoveClasses.mirror_coating;
                                                                                          if(_loc2_ || Boolean(this))
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr1752);
                                                                                       }
                                                                                       this.m_currFirstMinionMoveID = MinionMoveID.mirror_coating_t1;
                                                                                       if(_loc2_ || _loc3_)
                                                                                       {
                                                                                          this.m_currMoveIconName = "moveIcon_mirrorCoating";
                                                                                       }
                                                                                    }
                                                                                    addr1752:
                                                                                    _loc1_ = this.PassiveCM(0,"Mirror Coating",StatType.STAT_NONE,0,true);
                                                                                    if(_loc2_ || Boolean(this))
                                                                                    {
                                                                                       _loc1_.m_setReflectDamageAmount = 5;
                                                                                    }
                                                                                    _loc1_ = this.PassiveCM(1,"Mirror Coating  lv.2",StatType.STAT_NONE,0,true);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       _loc1_.m_setReflectDamageAmount = 10;
                                                                                    }
                                                                                    _loc1_ = this.PassiveCM(2,"Mirror Coating  lv.3",StatType.STAT_NONE,0,true);
                                                                                    if(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       _loc1_.m_setReflectDamageAmount = 15;
                                                                                    }
                                                                                    _loc1_ = this.PassiveCM(3,"Mirror Coating  lv.4",StatType.STAT_NONE,0,true);
                                                                                    if(_loc2_ || Boolean(this))
                                                                                    {
                                                                                       _loc1_.m_setReflectDamageAmount = 25;
                                                                                    }
                                                                                    _loc1_ = this.PassiveCM(4,"Mirror Coating  lv.5",StatType.STAT_NONE,0,true);
                                                                                    if(_loc2_ || _loc3_)
                                                                                    {
                                                                                       _loc1_.m_setReflectDamageAmount = 32;
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr1494);
                                                                              }
                                                                              §§goto(addr1382);
                                                                           }
                                                                           §§goto(addr1376);
                                                                        }
                                                                        this.m_currMoveIconName = "moveIcon_concentration";
                                                                        §§goto(addr1299);
                                                                     }
                                                                  }
                                                                  §§goto(addr1285);
                                                               }
                                                               §§goto(addr1193);
                                                            }
                                                            §§goto(addr1182);
                                                         }
                                                         §§goto(addr1015);
                                                      }
                                                      §§goto(addr953);
                                                   }
                                                   §§goto(addr879);
                                                }
                                                this.m_currMoveIconName = "moveIcon_cleric";
                                             }
                                             §§goto(addr733);
                                          }
                                          §§goto(addr668);
                                       }
                                       §§goto(addr591);
                                    }
                                    §§goto(addr523);
                                 }
                              }
                              §§goto(addr462);
                           }
                           this.m_currMoveIconName = "moveIcon_energizingInspiration";
                        }
                        §§goto(addr393);
                     }
                     §§goto(addr322);
                  }
                  this.m_currMoveIconName = "moveIcon_efficiency";
               }
               §§goto(addr264);
            }
            §§goto(addr112);
         }
         §§goto(addr40);
      }
      
      private function PassiveCM(param1:int, param2:String, param3:int, param4:int = 0, param5:Boolean = false) : BaseMinionMove
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:BaseMinionMove = null;
         (_loc6_ = new BaseMinionMove()).m_moveID = this.m_currFirstMinionMoveID + param1;
         _loc6_.m_moveClass = this.m_currMinionMoveClass;
         _loc6_.m_moveTier = param1;
         _loc6_.m_visualMoveID = this.m_currMinionMoveVisuals;
         if(!(_loc7_ && Boolean(param2)))
         {
            _loc6_.m_visualDOTMoveID = this.m_currMinionDOTMoveVisuals;
            if(_loc8_)
            {
               _loc6_.m_moveIcon = this.m_currMoveIconName;
            }
            _loc6_.m_moveName = param2;
            _loc6_.m_energyUsed = 0;
         }
         if(param5)
         {
            if(!_loc7_)
            {
               _loc6_.m_isGlobalPassive = true;
               if(!_loc7_)
               {
                  addr81:
                  if(param3 != StatType.STAT_NONE)
                  {
                     if(_loc8_ || Boolean(this))
                     {
                        _loc6_.m_amountOfStatTypeToBuffPercentage = param4;
                        if(!(_loc7_ && Boolean(param3)))
                        {
                           _loc6_.AddStatToBuff(param3);
                           if(!(_loc7_ && Boolean(param3)))
                           {
                              addr119:
                              this.m_allMoves[_loc6_.m_moveID] = _loc6_;
                           }
                        }
                     }
                     return _loc6_;
                  }
               }
            }
            §§goto(addr119);
         }
         else
         {
            _loc6_.m_isPassive = true;
         }
         §§goto(addr81);
      }