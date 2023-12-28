package Minions
{
   import States.MinionMoveID;
   
   public class BaseTalentTreeContainer
   {
       
      
      public function BaseTalentTreeContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function FirePig_fire() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         if(_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_bolt_t1);
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_bolt_t2);
               if(_loc2_)
               {
                  addr41:
                  _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_bolt_t3);
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t1);
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t2);
                     if(!_loc3_)
                     {
                        _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t3);
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_bash_t1);
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_bash_t2);
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.fire_bolt_t4,true);
                           if(_loc2_ || _loc3_)
                           {
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.inflame_t1);
                              if(!_loc3_)
                              {
                                 _loc1_.AddMoveToTree(1,1,MinionMoveID.inflame_t2);
                                 _loc1_.AddMoveToTree(1,1,MinionMoveID.inflame_t3);
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr141:
                                    _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_bash_t3,true);
                                 }
                                 _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_bash_t4,true);
                                 if(_loc2_ || Boolean(this))
                                 {
                                    _loc1_.AddMoveToTree(0,2,MinionMoveID.warmth_t1);
                                    addr168:
                                    _loc1_.AddMoveToTree(0,2,MinionMoveID.warmth_t2);
                                    if(!_loc3_)
                                    {
                                       _loc1_.AddMoveToTree(0,2,MinionMoveID.warmth_t3);
                                       if(_loc2_)
                                       {
                                          _loc1_.AddMoveToTree(0,2,MinionMoveID.warmth_t4);
                                          addr190:
                                          _loc1_.AddMoveToTree(0,2,MinionMoveID.warmth_t5);
                                          _loc1_.AddMoveToTree(1,2,MinionMoveID.fire_ram_t3);
                                          addr196:
                                          if(!_loc3_)
                                          {
                                             _loc1_.AddMoveToTree(2,2,MinionMoveID.fire_bash_t5,true);
                                             if(!_loc3_)
                                             {
                                                addr220:
                                                _loc1_.AddMoveToTree(1,3,MinionMoveID.fire_ram_t5,true);
                                             }
                                          }
                                          §§goto(addr220);
                                       }
                                    }
                                    §§goto(addr196);
                                 }
                                 return _loc1_;
                              }
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr220);
                     }
                  }
                  §§goto(addr168);
               }
               §§goto(addr190);
            }
            §§goto(addr41);
         }
         §§goto(addr190);
      }
      
      public function FirePig_electric() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Electric");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.batch_bolt_t1);
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.batch_bolt_t2);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.spark_t3,true);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.spark_t4,true);
            _loc1_.AddMoveToTree(1,1,MinionMoveID.quickness_t4,true);
            _loc1_.AddMoveToTree(1,1,MinionMoveID.quickness_t5,true);
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.AddMoveToTree(2,1,MinionMoveID.charge_pass_t1);
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.static_pummel_t3);
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.agile_inspiration_t1,true);
                  addr135:
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.agile_inspiration_t2,true);
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.charge_pass_t2,true);
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.charge_pass_t3,true);
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.charge_pass_t4,true);
                  }
               }
               §§goto(addr135);
            }
            _loc1_.AddMoveToTree(0,3,MinionMoveID.static_pummel_t5,true);
            return _loc1_;
         }
         §§goto(addr135);
      }
      
      public function FirePig_normal() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.roar_t1);
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.roar_t2);
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.roar_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t1);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t2);
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t3);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.efficiency_t3,true);
                  if(_loc2_)
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.efficiency_t4,true);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.poison_tooth_t1);
                     if(_loc2_)
                     {
                        addr118:
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.poison_tooth_t2);
                        §§goto(addr124);
                     }
                     §§goto(addr167);
                  }
                  §§goto(addr201);
               }
               §§goto(addr175);
            }
            addr124:
            _loc1_.AddMoveToTree(1,1,MinionMoveID.poison_tooth_t3);
            _loc1_.AddMoveToTree(2,1,MinionMoveID.reckless_dash_t4,true);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(2,1,MinionMoveID.reckless_dash_t5,true);
            }
            _loc1_.AddMoveToTree(0,2,MinionMoveID.efficiency_t5,true);
            _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t1);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t2);
               addr167:
               _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t3);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.tackle_t2);
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.tackle_t3);
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.mirror_skin_t5,true);
                  addr201:
                  _loc1_.AddMoveToTree(2,3,MinionMoveID.tackle_t5,true);
                  addr175:
               }
            }
            return _loc1_;
         }
         §§goto(addr118);
      }
      
      public function FireBear_fire() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.inflame_t1);
            if(_loc3_ || _loc3_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.inflame_t2);
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.AddMoveToTree(0,0,MinionMoveID.inflame_t3);
                  if(!_loc2_)
                  {
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.kindle_t1);
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.kindle_t2);
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.AddMoveToTree(1,0,MinionMoveID.kindle_t3);
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_blast_t1);
                     }
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_blast_t2);
                     addr92:
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.sear_t2);
                     if(!_loc2_)
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.sear_t3);
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.sear_t5);
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.warmth_t1);
                           addr132:
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.warmth_t2);
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t1);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr144);
               }
               §§goto(addr92);
            }
            addr144:
            _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t2);
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.AddMoveToTree(0,2,MinionMoveID.wildfire_t1);
               addr163:
               _loc1_.AddMoveToTree(0,2,MinionMoveID.wildfire_t2);
               _loc1_.AddMoveToTree(0,2,MinionMoveID.wildfire_t3);
               _loc1_.AddMoveToTree(1,2,MinionMoveID.fire_bash_t2);
            }
            _loc1_.AddMoveToTree(1,2,MinionMoveID.fire_bash_t3);
            _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t3,true);
            _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t4,true);
            _loc1_.AddMoveToTree(1,3,MinionMoveID.fire_bash_t5,true);
            _loc1_.AddMoveToTree(2,3,MinionMoveID.ferocity_t5,true);
            return _loc1_;
         }
         §§goto(addr132);
      }
      
      public function FireBear_guard() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Guard");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.flare_up_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.flare_up_t2);
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t3);
            if(_loc2_ || _loc3_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_slide_t1);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_slide_t2);
                  if(_loc2_)
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.destabilize_t1);
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.destabilize_t2);
                        if(_loc2_ || Boolean(this))
                        {
                           addr106:
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t4,true);
                           addr113:
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t5,true);
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.rock_skin_t1);
                           if(!_loc3_)
                           {
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.rock_skin_t2);
                              if(!_loc3_)
                              {
                                 _loc1_.AddMoveToTree(2,1,MinionMoveID.rock_skin_t3);
                                 addr142:
                                 _loc1_.AddMoveToTree(0,2,MinionMoveID.destabilize_t3,true);
                                 if(_loc2_)
                                 {
                                    _loc1_.AddMoveToTree(0,2,MinionMoveID.destabilize_t4,true);
                                    §§goto(addr158);
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr187);
                        }
                        addr158:
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.earth_barrier_t3);
                        §§goto(addr164);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr106);
               }
               §§goto(addr187);
            }
            §§goto(addr142);
         }
         addr164:
         _loc1_.AddMoveToTree(2,2,MinionMoveID.rock_skin_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.rock_skin_t5,true);
         if(!_loc3_)
         {
            addr187:
            _loc1_.AddMoveToTree(0,3,MinionMoveID.destabilize_t5,true);
            addr194:
            _loc1_.AddMoveToTree(1,3,MinionMoveID.taunt_t5,true);
         }
         return _loc1_;
      }
      
      public function FireBear_normal() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.claw_t2);
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.claw_t3);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.roar_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.roar_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.roar_t4);
               addr62:
               _loc1_.AddMoveToTree(2,0,MinionMoveID.perseverance_t1);
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.perseverance_t2);
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.perseverance_t3);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.claw_t4,true);
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.claw_t5,true);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.energizing_inspiration_t1);
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.energizing_inspiration_t2);
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t4,true);
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t5,true);
                           addr155:
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t1);
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t2);
                           if(!_loc3_)
                           {
                              addr169:
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t3);
                              if(_loc2_)
                              {
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.crush_t2);
                                 if(_loc2_)
                                 {
                                    addr185:
                                    _loc1_.AddMoveToTree(1,2,MinionMoveID.crush_t3);
                                    if(_loc2_)
                                    {
                                       _loc1_.AddMoveToTree(2,2,MinionMoveID.reckless_dash_t1);
                                       addr199:
                                       _loc1_.AddMoveToTree(2,2,MinionMoveID.reckless_dash_t2);
                                       if(_loc3_ && Boolean(_loc1_))
                                       {
                                       }
                                       addr227:
                                       _loc1_.AddMoveToTree(1,3,MinionMoveID.crush_t5,true);
                                       §§goto(addr234);
                                    }
                                 }
                                 _loc1_.AddMoveToTree(2,2,MinionMoveID.reckless_dash_t3);
                                 if(_loc2_)
                                 {
                                 }
                                 addr234:
                                 return _loc1_;
                              }
                              §§goto(addr227);
                           }
                           §§goto(addr199);
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr199);
                  }
                  §§goto(addr185);
               }
               §§goto(addr169);
            }
            §§goto(addr155);
         }
         §§goto(addr62);
      }
      
      public function Worm_undead() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Undead");
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.rancid_bite_t1);
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.rancid_bite_t2);
               if(_loc3_ || _loc3_)
               {
                  addr47:
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.slow_t1);
                  if(!_loc2_)
                  {
                     §§goto(addr55);
                  }
                  §§goto(addr184);
               }
               §§goto(addr109);
            }
            addr55:
            _loc1_.AddMoveToTree(1,0,MinionMoveID.slow_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.slow_t3);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t3);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.rancid_bite_t3,true);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.rancid_bite_t4,true);
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr109:
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.mud_blast_t1);
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.mud_blast_t2);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.mud_blast_t3);
                     }
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.tackle_t4,true);
                     §§goto(addr143);
                  }
                  §§goto(addr156);
               }
            }
            addr143:
            _loc1_.AddMoveToTree(1,2,MinionMoveID.infes_t3);
            if(_loc3_ || Boolean(_loc1_))
            {
               addr156:
               _loc1_.AddMoveToTree(1,2,MinionMoveID.infes_t4);
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.flesh_sacrifice_t1);
                  if(_loc3_)
                  {
                     addr184:
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.flesh_sacrifice_t2);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.flesh_sacrifice_t3);
                  }
               }
               §§goto(addr184);
            }
            _loc1_.AddMoveToTree(1,3,MinionMoveID.infes_t5,true);
            return _loc1_;
         }
         §§goto(addr47);
      }
      
      public function Worm_earth() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Earth");
         if(_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.earth_shield_t1);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.earth_shield_t2);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_blast_t1);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_blast_t2);
                  if(!_loc2_)
                  {
                     addr51:
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t1);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t2);
                     addr63:
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t3);
                     addr69:
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t1);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t2);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t3);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_blast_t3,true);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_blast_t4,true);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t1);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t2);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t3);
                        if(_loc3_)
                        {
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.perseverance_t4,true);
                           if(!_loc2_)
                           {
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.perseverance_t5,true);
                              if(_loc3_)
                              {
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.earthquake_t4);
                                 _loc1_.AddMoveToTree(2,2,MinionMoveID.destabilize_t1);
                                 addr167:
                                 _loc1_.AddMoveToTree(2,2,MinionMoveID.destabilize_t2);
                                 if(!_loc2_)
                                 {
                                    addr175:
                                    _loc1_.AddMoveToTree(1,3,MinionMoveID.earthquake_t5,true);
                                 }
                                 addr148:
                              }
                              return _loc1_;
                           }
                           §§goto(addr167);
                        }
                        §§goto(addr175);
                     }
                     §§goto(addr167);
                  }
                  §§goto(addr148);
               }
               §§goto(addr63);
            }
            §§goto(addr51);
         }
         §§goto(addr69);
      }
      
      public function Worm_normal() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mirror_skin_t2);
         if(_loc3_ || _loc3_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.skillful_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.skillful_t2);
         }
         _loc1_.AddMoveToTree(1,0,MinionMoveID.skillful_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t1);
         if(_loc3_)
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t4);
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.mirror_skin_t3,true);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.reflect_damage_t1);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.reflect_damage_t2);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.reflect_damage_t3);
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t1);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t2);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3);
                        if(_loc3_)
                        {
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t4);
                           addr147:
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t5);
                           §§goto(addr153);
                        }
                        §§goto(addr219);
                     }
                     addr153:
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t4,true);
                     §§goto(addr160);
                  }
                  §§goto(addr213);
               }
               addr160:
               _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t5,true);
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.grind_t3);
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.grind_t4);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.poison_tooth_t1);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr213:
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.poison_tooth_t2);
                        addr219:
                        _loc1_.AddMoveToTree(1,3,MinionMoveID.grind_t5,true);
                     }
                  }
                  §§goto(addr219);
               }
               _loc1_.AddMoveToTree(2,3,MinionMoveID.poison_tooth_t5,true);
               return _loc1_;
            }
         }
         §§goto(addr147);
      }
      
      public function FireFrog_Direct() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Direct");
         if(_loc3_ || _loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.warmth_t1);
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.warmth_t2);
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.flare_up_t1);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.flare_up_t2);
                  addr64:
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.flare_up_t3);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.priest_t1);
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.priest_t2);
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.priest_t3);
                        addr104:
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.warmth_t3,true);
                     }
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.warmth_t4,true);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.flare_up_t4,true);
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr139);
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr104);
               }
               §§goto(addr139);
            }
            §§goto(addr64);
         }
         addr139:
         _loc1_.AddMoveToTree(1,1,MinionMoveID.flare_up_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.priest_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.warmth_t5,true);
         if(_loc3_ || _loc2_)
         {
            _loc1_.AddMoveToTree(1,2,MinionMoveID.touch_fire_t3);
            addr173:
            _loc1_.AddMoveToTree(1,2,MinionMoveID.touch_fire_t4);
            _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t1);
            addr179:
         }
         _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.touch_fire_t5,true);
         return _loc1_;
      }
      
      public function FireFrog_Group() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Group");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.wildfire_t1);
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.wildfire_t2);
         }
         _loc1_.AddMoveToTree(0,0,MinionMoveID.wildfire_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.inflame_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.inflame_t2);
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_blast_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_blast_t2);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t1);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t2);
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t3);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.inflame_t3,true);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.inflame_t4,true);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.rock_blast_t3,true);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.rock_blast_t4,true);
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t4,true);
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t5,true);
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.fire_shot_t3);
                     if(_loc3_)
                     {
                     }
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.intense_flame_t2);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.intense_flame_t3);
                     §§goto(addr162);
                  }
               }
               _loc1_.AddMoveToTree(2,2,MinionMoveID.intense_flame_t1);
            }
            addr162:
            if(_loc3_ || Boolean(this))
            {
               addr188:
               _loc1_.AddMoveToTree(1,3,MinionMoveID.fire_shot_t5,true);
            }
            return _loc1_;
         }
         §§goto(addr188);
      }
      
      public function FireFrog_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Inspire");
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.roar_t1);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.roar_t2);
               _loc1_.AddMoveToTree(0,0,MinionMoveID.roar_t3);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(0,0,MinionMoveID.roar_t4);
               }
               _loc1_.AddMoveToTree(1,0,MinionMoveID.poison_tooth_t1);
               if(_loc3_ || _loc3_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.poison_tooth_t2);
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.poison_tooth_t3);
                     §§goto(addr81);
                  }
                  §§goto(addr135);
               }
               addr81:
               _loc1_.AddMoveToTree(2,0,MinionMoveID.earthy_fortitude_t1);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.earthy_fortitude_t2);
                  if(_loc3_ || _loc3_)
                  {
                     addr109:
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.earthy_fortitude_t3);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.skillful_t1);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.skillful_t2);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.skillful_t3);
                        addr135:
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.invigorate_t1);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.invigorate_t2);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.crush_t1);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.crush_t2);
                     }
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.crush_t3);
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.skillful_t4,true);
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.skillful_t5,true);
                  }
               }
               _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t3,true);
               _loc1_.AddMoveToTree(2,2,MinionMoveID.crush_t4,true);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.energizing_inspiration_t2,true);
               }
               return _loc1_;
            }
            §§goto(addr109);
         }
         §§goto(addr135);
      }
      
      public function FireRaptor_Dino() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Dino");
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.piercing_charge_t1);
            if(_loc2_ || _loc3_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.piercing_charge_t2);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(0,0,MinionMoveID.piercing_charge_t3);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.focused_charge_t1);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.focused_charge_t2);
                  if(_loc2_ || _loc3_)
                  {
                     addr71:
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.prehistoric_bite_t2);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.prehistoric_bite_t3);
                     if(!_loc3_)
                     {
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.prehistoric_bite_t4);
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t1);
                           if(_loc2_)
                           {
                              addr113:
                              _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t2);
                              if(_loc2_ || _loc2_)
                              {
                                 §§goto(addr126);
                              }
                              §§goto(addr160);
                           }
                           addr126:
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t3);
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.focused_charge_t3,true);
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.focused_charge_t4,true);
                           if(_loc2_ || _loc3_)
                           {
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.prehistoric_bite_t5,true);
                              addr160:
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t5,true);
                              addr167:
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.reckless_grasp_t3);
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.reckless_grasp_t4);
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 _loc1_.AddMoveToTree(2,2,MinionMoveID.inner_force_t1);
                              }
                           }
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.inner_force_t2);
                           if(!_loc3_)
                           {
                              _loc1_.AddMoveToTree(1,3,MinionMoveID.reckless_grasp_t5,true);
                           }
                           §§goto(addr214);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr167);
                  }
                  §§goto(addr160);
               }
               §§goto(addr113);
            }
            §§goto(addr71);
         }
         addr214:
         return _loc1_;
      }
      
      public function FireRaptor_Fire() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_ram_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_ram_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_ram_t5);
         if(_loc3_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.evil_eye_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.evil_eye_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.evil_eye_t4);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.wildfire_t1);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.wildfire_t3);
            }
            _loc1_.AddMoveToTree(2,0,MinionMoveID.wildfire_t5);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.inflame_t1);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.inflame_t2);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.inflame_t3);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.fire_bash_t1);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.fire_bash_t3);
                  if(!_loc2_)
                  {
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.fire_bash_t5);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.concentration_t1);
                        if(!_loc2_)
                        {
                           addr136:
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.concentration_t2);
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.concentration_t3);
                        }
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.inflame_t5,true);
                        §§goto(addr155);
                     }
                     §§goto(addr188);
                  }
                  addr155:
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.fire_blast_t3);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.fire_blast_t4);
                     addr168:
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr188:
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t5,true);
                        addr195:
                        _loc1_.AddMoveToTree(1,3,MinionMoveID.fire_blast_t5,true);
                     }
                     §§goto(addr195);
                  }
                  return _loc1_;
               }
               §§goto(addr188);
            }
            §§goto(addr168);
         }
         §§goto(addr136);
      }
      
      public function FireRaptor_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Energy");
         if(_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t2);
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t5);
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t3);
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t4);
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t5);
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr92:
                           _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t1);
                           if(!_loc2_)
                           {
                              _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t3);
                              addr113:
                              _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t5);
                              _loc1_.AddMoveToTree(0,1,MinionMoveID.roar_t1);
                              addr125:
                              _loc1_.AddMoveToTree(0,1,MinionMoveID.roar_t3);
                              addr131:
                              _loc1_.AddMoveToTree(0,1,MinionMoveID.roar_t5);
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr144:
                                 _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t1);
                                 _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t2);
                              }
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t3);
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.reflect_damage_t1);
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.energize_t4);
                              if(_loc3_)
                              {
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.agility_t5,true);
                                 _loc1_.AddMoveToTree(2,2,MinionMoveID.reflect_damage_t2,true);
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    _loc1_.AddMoveToTree(2,2,MinionMoveID.reflect_damage_t4,true);
                                    if(_loc3_)
                                    {
                                       addr213:
                                       _loc1_.AddMoveToTree(2,2,MinionMoveID.reflect_damage_t5,true);
                                    }
                                    _loc1_.AddMoveToTree(0,3,MinionMoveID.energize_t5,true);
                                    return _loc1_;
                                 }
                              }
                           }
                           §§goto(addr213);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr125);
               }
               §§goto(addr144);
            }
            §§goto(addr113);
         }
         §§goto(addr92);
      }
      
      public function GroundPlant_Healing() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Healing");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.drain_t1);
         if(_loc3_ || _loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.drain_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t2);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.spore_blast_t1);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.spore_blast_t2);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.drain_t3,true);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.drain_t4,true);
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.soak_t1);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.soak_t2);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.soak_t3);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr123);
                  }
                  §§goto(addr155);
               }
               §§goto(addr193);
            }
            addr123:
            _loc1_.AddMoveToTree(2,1,MinionMoveID.nourish_t1);
            _loc1_.AddMoveToTree(2,1,MinionMoveID.nourish_t2);
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.AddMoveToTree(2,1,MinionMoveID.nourish_t3);
               if(_loc3_ || Boolean(this))
               {
                  addr155:
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.regrowth_t3);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.regrowth_t4);
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.priest_t1);
                     }
                     §§goto(addr187);
                  }
                  §§goto(addr213);
               }
               addr187:
               _loc1_.AddMoveToTree(1,2,MinionMoveID.priest_t2);
               addr193:
               _loc1_.AddMoveToTree(1,2,MinionMoveID.priest_t3);
               §§goto(addr199);
            }
            addr199:
            _loc1_.AddMoveToTree(2,2,MinionMoveID.nourish_t4,true);
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.AddMoveToTree(2,2,MinionMoveID.nourish_t5,true);
               addr213:
               if(_loc2_)
               {
               }
               §§goto(addr243);
            }
            _loc1_.AddMoveToTree(0,3,MinionMoveID.regrowth_t5,true);
            _loc1_.AddMoveToTree(1,3,MinionMoveID.priest_t5,true);
            addr243:
            return _loc1_;
         }
         §§goto(addr213);
      }
      
      public function GroundPlant_Earth() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Earth");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.energize_t1);
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.energize_t2);
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t1);
               if(_loc2_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t2);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t3);
                  if(!_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.earthquake_t1);
                     if(_loc2_)
                     {
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.earthquake_t2);
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.earthquake_t3);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t1);
                        if(!_loc3_)
                        {
                           addr89:
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t2);
                           if(!_loc3_)
                           {
                              _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t3);
                              §§goto(addr110);
                           }
                           §§goto(addr206);
                        }
                     }
                     §§goto(addr89);
                  }
                  addr110:
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.chosen_earth_t1);
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.chosen_earth_t2);
                     if(!_loc3_)
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.taunt_t1);
                        if(_loc2_)
                        {
                           §§goto(addr139);
                        }
                     }
                     §§goto(addr158);
                  }
                  addr139:
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.taunt_t2);
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.destabilize_t1);
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr158:
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.destabilize_t2);
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.destabilize_t3);
                  }
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.mud_blast_t3);
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.mud_blast_t4);
                  if(!_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t2);
                     if(_loc2_)
                     {
                        addr199:
                        _loc1_.AddMoveToTree(0,3,MinionMoveID.destabilize_t4,true);
                        addr206:
                        _loc1_.AddMoveToTree(1,3,MinionMoveID.mud_blast_t5,true);
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr158);
            }
            §§goto(addr89);
         }
         §§goto(addr199);
      }
      
      public function GroundPlant_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t2);
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t3);
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t4);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.crush_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.crush_t2);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.poison_ivy_t1);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.poison_ivy_t2);
                  addr72:
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.poison_ivy_t3);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t1);
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t2);
                     if(!_loc2_)
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t4);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.brilliance_t1);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.grassblade_t1);
                        addr124:
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.grassblade_t2);
                        if(_loc3_)
                        {
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t1);
                           if(!(_loc2_ && Boolean(this)))
                           {
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t2);
                           }
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t3);
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t2);
                        }
                        §§goto(addr176);
                     }
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t3);
                     addr176:
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.grassblade_t3,true);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.grassblade_t4,true);
                     _loc1_.AddMoveToTree(1,3,MinionMoveID.tire_t4,true);
                     return _loc1_;
                  }
                  §§goto(addr124);
               }
               §§goto(addr72);
            }
            §§goto(addr124);
         }
         §§goto(addr72);
      }
      
      public function DemonicCat_Buffs() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Buffs");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.demonic_strike_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.demonic_strike_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tire_t1);
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.tire_t2);
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t1);
               if(_loc2_ || _loc2_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t2);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.demonic_strike_t3,true);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.demonic_strike_t4,true);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.tire_t3,true);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.forceful_heal_t1);
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.forceful_heal_t2);
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.forceful_heal_t3);
                        addr130:
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.demonic_strike_t5,true);
                        if(!_loc3_)
                        {
                           §§goto(addr139);
                        }
                        _loc1_.AddMoveToTree(1,3,MinionMoveID.evil_eye_t5,true);
                     }
                     addr139:
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.evil_eye_t2);
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.evil_eye_t3);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.demonic_sacrifice_t1);
                        if(_loc2_ || _loc3_)
                        {
                        }
                        §§goto(addr198);
                     }
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.demonic_sacrifice_t2);
                     if(_loc2_ || Boolean(this))
                     {
                     }
                     §§goto(addr198);
                  }
                  addr198:
                  return _loc1_;
               }
            }
            §§goto(addr139);
         }
         §§goto(addr130);
      }
      
      public function DemonicCat_Demonic() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Demonic");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_ritual_t1);
         if(_loc3_ || Boolean(this))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_ritual_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.phantom_strike_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.phantom_strike_t2);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.phantom_strike_t3);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t1);
                  addr66:
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t2);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.crazed_blast_t1);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t1);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t2);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t4);
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3,true);
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t4,true);
                     if(!_loc2_)
                     {
                        addr121:
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.crazed_blast_t2,true);
                     }
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.crazed_blast_t3,true);
                     if(!_loc2_)
                     {
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.blood_press_t3);
                        addr137:
                     }
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.blood_press_t4);
                     §§goto(addr156);
                  }
                  §§goto(addr137);
               }
               §§goto(addr121);
            }
            addr156:
            _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t5,true);
            _loc1_.AddMoveToTree(1,3,MinionMoveID.blood_press_t5,true);
            return _loc1_;
         }
         §§goto(addr66);
      }
      
      public function DemonicCat_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t1);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t2);
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t3);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.spike_t1);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.spike_t2);
                  if(_loc2_)
                  {
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.spike_t3);
                     addr72:
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t2);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t3);
                     if(_loc2_ || _loc2_)
                     {
                        addr91:
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t4);
                        if(_loc2_)
                        {
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.quickness_t1);
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.quickness_t2);
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.energize_t1);
                           if(_loc3_ && _loc2_)
                           {
                           }
                           addr156:
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t2);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr169:
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.deadly_inspiration_t1);
                              if(!_loc3_)
                              {
                                 addr177:
                                 _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t3,true);
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t4,true);
                                    addr205:
                                    _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t5,true);
                                    if(_loc2_)
                                    {
                                       addr214:
                                       _loc1_.AddMoveToTree(1,3,MinionMoveID.deadly_inspiration_t2,true);
                                    }
                                    return _loc1_;
                                    addr191:
                                 }
                                 §§goto(addr214);
                              }
                              §§goto(addr205);
                           }
                           §§goto(addr177);
                        }
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.energize_t2);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.energize_t3);
                           addr150:
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t1);
                           §§goto(addr156);
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr156);
                  }
                  §§goto(addr169);
               }
               §§goto(addr150);
            }
            §§goto(addr91);
         }
         §§goto(addr72);
      }
      
      public function FlyingGrassSuperMinion_Grass() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Grass");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ferocity_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tree_slam_t1);
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.tree_slam_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.tree_slam_t3);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.drain_t1);
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.drain_t2);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.drain_t3);
               }
               _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t4,true);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t5,true);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.serenity_t1);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.serenity_t2);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.serenity_t3);
                     if(!(_loc2_ && _loc2_))
                     {
                        addr134:
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.drain_t5,true);
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr148);
                        }
                        §§goto(addr192);
                     }
                     addr148:
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.stone_fall_t1);
                     §§goto(addr154);
                  }
                  §§goto(addr168);
               }
               addr154:
               _loc1_.AddMoveToTree(0,2,MinionMoveID.stone_fall_t3);
               _loc1_.AddMoveToTree(1,2,MinionMoveID.spore_blast_t3);
               if(!_loc2_)
               {
                  addr168:
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.spore_blast_t4);
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t1);
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t3);
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t4);
                  _loc1_.AddMoveToTree(0,3,MinionMoveID.stone_fall_t5,true);
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.spore_blast_t5,true);
                  addr192:
                  if(!_loc2_)
                  {
                     _loc1_.AddMoveToTree(2,3,MinionMoveID.cleric_t5,true);
                  }
               }
               return _loc1_;
            }
            §§goto(addr148);
         }
         §§goto(addr134);
      }
      
      public function FlyingGrassSuperMinion_Flying() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Flying");
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.thunderstorm_t1);
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.thunderstorm_t3);
               _loc1_.AddMoveToTree(0,0,MinionMoveID.thunderstorm_t5);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t1);
               }
               _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t2);
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t3);
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr79:
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t1);
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t2);
                        if(!_loc3_)
                        {
                           _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t3);
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t2);
                           if(_loc2_)
                           {
                              addr121:
                              _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t3);
                              if(_loc2_ || Boolean(this))
                              {
                                 _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t5);
                                 addr140:
                                 _loc1_.AddMoveToTree(1,1,MinionMoveID.wild_lance_t5,true);
                                 if(_loc2_)
                                 {
                                    addr149:
                                    _loc1_.AddMoveToTree(2,1,MinionMoveID.skillful_t4,true);
                                    _loc1_.AddMoveToTree(2,1,MinionMoveID.skillful_t5,true);
                                    _loc1_.AddMoveToTree(1,2,MinionMoveID.hurricane_t3);
                                 }
                              }
                              §§goto(addr149);
                           }
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.hurricane_t4);
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.poison_ivy_t2);
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.poison_ivy_t4);
                           §§goto(addr194);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr149);
               }
            }
            addr194:
            _loc1_.AddMoveToTree(1,3,MinionMoveID.hurricane_t5,true);
            return _loc1_;
         }
         §§goto(addr79);
      }
      
      public function FlyingGrassSuperMinion_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.earthy_fortitude_t1);
         if(_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.earthy_fortitude_t3);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.earthy_fortitude_t5);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.poison_tooth_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.poison_tooth_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.poison_tooth_t5);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t3);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.tackle_t4);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.tackle_t5);
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.invigorate_t1);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.invigorate_t2);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t5,true);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.reckless_dash_t4);
                        }
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t3,true);
                        if(!_loc2_)
                        {
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t4,true);
                        }
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.titan_blast_t1);
                     }
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.titan_blast_t2);
                     if(!(_loc2_ && _loc3_))
                     {
                        addr181:
                        _loc1_.AddMoveToTree(0,3,MinionMoveID.reckless_dash_t5,true);
                     }
                     _loc1_.AddMoveToTree(2,3,MinionMoveID.titan_blast_t3,true);
                  }
                  §§goto(addr181);
               }
               return _loc1_;
            }
         }
         §§goto(addr181);
      }
      
      public function GrassGorilla_Grass() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Grass");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.drain_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.drain_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t1);
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.timber_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.timber_t2);
            if(_loc3_ || Boolean(this))
            {
               addr64:
               _loc1_.AddMoveToTree(2,0,MinionMoveID.timber_t3);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.drain_t3,true);
            }
            _loc1_.AddMoveToTree(0,1,MinionMoveID.drain_t4,true);
            if(_loc3_ || _loc2_)
            {
               _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t3,true);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t1);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t2);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t3);
               _loc1_.AddMoveToTree(0,2,MinionMoveID.bone_crunch_t1);
               _loc1_.AddMoveToTree(1,2,MinionMoveID.tree_slam_t3);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.tree_slam_t4);
                  addr137:
               }
               _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t4,true);
               _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t5,true);
               _loc1_.AddMoveToTree(1,3,MinionMoveID.tree_slam_t5,true);
               return _loc1_;
            }
            §§goto(addr137);
         }
         §§goto(addr64);
      }
      
      public function GrassGorilla_Support() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Support");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_slide_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_slide_t2);
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_slide_t3);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t3);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.fortitude_t3,true);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.fortitude_t4,true);
            if(_loc2_ || Boolean(this))
            {
               _loc1_.AddMoveToTree(1,1,MinionMoveID.earthquake_t2,true);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.taunt_t1);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.taunt_t2);
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.fortitude_t5,true);
                  addr129:
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.roar_t3);
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.roar_t4);
                  if(!_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t1);
                  }
                  §§goto(addr165);
               }
               _loc1_.AddMoveToTree(0,3,MinionMoveID.hulk_inspiration_t2,true);
               if(_loc2_)
               {
                  §§goto(addr165);
               }
               addr165:
               _loc1_.AddMoveToTree(1,3,MinionMoveID.roar_t5,true);
               return _loc1_;
            }
         }
         §§goto(addr129);
      }
      
      public function GrassGorilla_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.earth_shield_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.earth_shield_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.earth_shield_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t1);
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t3);
            if(!_loc2_)
            {
               §§goto(addr64);
            }
            §§goto(addr133);
         }
         addr64:
         _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t2);
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t3);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.wild_lance_t1);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.wild_lance_t2);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.wild_lance_t3);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t1);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t2);
               §§goto(addr80);
            }
            §§goto(addr124);
         }
         addr80:
         if(_loc3_ || _loc3_)
         {
            addr124:
            _loc1_.AddMoveToTree(2,1,MinionMoveID.tackle_t4,true);
            if(!_loc2_)
            {
               addr133:
               _loc1_.AddMoveToTree(0,2,MinionMoveID.grind_t3);
            }
            _loc1_.AddMoveToTree(0,2,MinionMoveID.grind_t4);
         }
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t3,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t5,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.tackle_t5,true);
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.AddMoveToTree(0,3,MinionMoveID.grind_t5,true);
         }
         return _loc1_;
      }
      
      public function GrassSnake_Grass() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Grass");
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.poison_ivy_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.poison_ivy_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.poison_ivy_t3);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.drain_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.drain_t2);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t1);
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t2);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t3);
                     if(!_loc2_)
                     {
                        addr94:
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.poison_ivy_t4,true);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.drain_t3,true);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.razor_vine_t2);
                        if(_loc3_ || _loc3_)
                        {
                           addr121:
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.razor_vine_t3);
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.concentration_t1);
                           if(_loc3_)
                           {
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.concentration_t2);
                              if(!_loc2_)
                              {
                                 _loc1_.AddMoveToTree(0,2,MinionMoveID.concentration_t3);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    _loc1_.AddMoveToTree(1,2,MinionMoveID.grassblade_t3);
                                    if(_loc3_)
                                    {
                                       addr171:
                                       _loc1_.AddMoveToTree(2,2,MinionMoveID.razor_vine_t4,true);
                                    }
                                 }
                                 _loc1_.AddMoveToTree(1,3,MinionMoveID.grassblade_t5,true);
                              }
                              §§goto(addr185);
                           }
                        }
                        §§goto(addr171);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr94);
               }
               addr185:
               return _loc1_;
            }
            §§goto(addr121);
         }
         §§goto(addr94);
      }
      
      public function GrassSnake_Debuffs() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         if(_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.peck_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.peck_t2);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t1);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t2);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t3);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.fortitude_t4,true);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.fortitude_t5,true);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.slow_t2);
                  if(!_loc2_)
                  {
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.crush_t4,true);
                  }
               }
               _loc1_.AddMoveToTree(0,2,MinionMoveID.blow_by_t1);
               _loc1_.AddMoveToTree(1,2,MinionMoveID.slow_t4,true);
               _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t1);
               if(_loc3_)
               {
                  addr131:
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t2);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(1,3,MinionMoveID.slow_t5,true);
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr131);
      }
      
      public function GrassSnake_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.quickness_t2);
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.quickness_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.spike_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.spike_t2);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.spike_t3);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.poison_tooth_t2);
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.poison_tooth_t3);
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.invigorate_t1);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.invigorate_t2);
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t1);
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr135:
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t2);
                              if(_loc2_)
                              {
                                 _loc1_.AddMoveToTree(2,1,MinionMoveID.poison_tooth_t5,true);
                                 if(!_loc3_)
                                 {
                                    _loc1_.AddMoveToTree(0,2,MinionMoveID.tackle_t3);
                                 }
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t3,true);
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    §§goto(addr172);
                                 }
                                 §§goto(addr200);
                              }
                           }
                           §§goto(addr200);
                        }
                        addr172:
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t4,true);
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t1);
                        §§goto(addr192);
                     }
                  }
                  addr192:
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t2);
                  if(_loc2_)
                  {
                     addr200:
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t3);
                     _loc1_.AddMoveToTree(0,3,MinionMoveID.tackle_t5,true);
                  }
                  return _loc1_;
               }
               §§goto(addr135);
            }
            §§goto(addr172);
         }
         §§goto(addr200);
      }
      
      public function GroundAttacker_Ground() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Ground");
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_blast_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_blast_t2);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_blast_t3);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.destabilize_t1);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.earthquake_t1);
            }
            _loc1_.AddMoveToTree(2,0,MinionMoveID.earthquake_t2);
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.earthquake_t3);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.rock_blast_t5,true);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.destabilize_t3,true);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t1);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t2);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3);
               _loc1_.AddMoveToTree(1,2,MinionMoveID.stone_fall_t2);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.stone_fall_t3);
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t4,true);
                  if(_loc3_)
                  {
                     addr146:
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t5,true);
                  }
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.stone_fall_t5,true);
               }
               §§goto(addr146);
            }
            return _loc1_;
         }
         §§goto(addr146);
      }
      
      public function GroundAttacker_Mixed() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Mixed");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_press_t1);
         if(_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_press_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.fire_blast_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.fire_blast_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.pound_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.pound_t3);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.pound_t4);
            if(_loc3_ || _loc3_)
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.efficiency_t1);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.efficiency_t2);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.efficiency_t3);
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.fire_blast_t3,true);
                     if(!_loc2_)
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.piercing_charge_t1);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr126:
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.piercing_charge_t2);
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.efficiency_t4,true);
                           addr139:
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.efficiency_t5,true);
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.rancid_bite_t3);
                              if(_loc3_ || _loc2_)
                              {
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.rancid_bite_t4);
                                 addr166:
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr186:
                                    _loc1_.AddMoveToTree(2,2,MinionMoveID.piercing_charge_t3,true);
                                 }
                              }
                              §§goto(addr186);
                           }
                           _loc1_.AddMoveToTree(1,3,MinionMoveID.rancid_bite_t5,true);
                        }
                        return _loc1_;
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr166);
               }
            }
            §§goto(addr126);
         }
         §§goto(addr186);
      }
      
      public function GroundAttacker_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         if(_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.spike_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.spike_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.grind_t1);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.grind_t3);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.grind_t4);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t1);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t3);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t4);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.mirror_skin_t1);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.mirror_skin_t2);
                  addr79:
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.grind_t5,true);
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t5,true);
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t3);
                  }
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t4);
               }
               _loc1_.AddMoveToTree(1,2,MinionMoveID.tackle_t3);
               if(_loc3_ || _loc3_)
               {
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.tackle_t4);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t1);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t3);
                  }
               }
               _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t5);
               _loc1_.AddMoveToTree(0,3,MinionMoveID.mirror_skin_t5,true);
               _loc1_.AddMoveToTree(1,3,MinionMoveID.tackle_t5,true);
            }
            return _loc1_;
         }
         §§goto(addr79);
      }
      
      public function GroundMole_Damage() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Damage");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_blast_t1);
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_blast_t2);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t1);
               if(_loc3_ || _loc2_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t3);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t5);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.earth_shield_t1);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.earth_shield_t2);
                  if(!_loc2_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.earth_shield_t3);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.rock_blast_t3,true);
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t2);
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t3);
                              if(_loc3_ || Boolean(this))
                              {
                                 _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t5);
                              }
                              §§goto(addr206);
                           }
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t1);
                           addr141:
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3);
                           if(_loc3_)
                           {
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t5);
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.fire_blast_t1);
                              if(_loc3_ || _loc2_)
                              {
                                 _loc1_.AddMoveToTree(0,2,MinionMoveID.fire_blast_t2);
                                 addr174:
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.stone_fall_t3);
                                 if(_loc3_ || _loc2_)
                                 {
                                    _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t1);
                                    _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t2);
                                    addr187:
                                    §§goto(addr206);
                                 }
                              }
                           }
                           addr206:
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t4);
                           §§goto(addr212);
                        }
                        addr212:
                        _loc1_.AddMoveToTree(1,3,MinionMoveID.stone_fall_t5,true);
                        return _loc1_;
                     }
                     §§goto(addr187);
                  }
                  §§goto(addr174);
               }
            }
            §§goto(addr141);
         }
         §§goto(addr206);
      }
      
      public function GroundMole_Gaurd() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Guard");
         if(_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.destabilize_t1);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.destabilize_t2);
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.taunt_t1);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.taunt_t2);
                  if(!_loc3_)
                  {
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.taunt_t3);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_bash_t1);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_bash_t2);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.destabilize_t3,true);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.taunt_t4,true);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.taunt_t5,true);
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t3);
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr114:
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t4);
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.rock_skin_t1);
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.rock_skin_t3);
                           addr139:
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.kindle_t1);
                           if(!_loc3_)
                           {
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.kindle_t2);
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.kindle_t3);
                           }
                           §§goto(addr153);
                        }
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.perseverance_t5,true);
                        _loc1_.AddMoveToTree(0,3,MinionMoveID.rock_skin_t5,true);
                     }
                     §§goto(addr153);
                  }
               }
               addr153:
               if(_loc3_ && _loc3_)
               {
               }
               return _loc1_;
            }
            §§goto(addr139);
         }
         §§goto(addr114);
      }
      
      public function GroundMole_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t1);
         if(_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t2);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t2);
               §§goto(addr40);
            }
            §§goto(addr65);
         }
         addr40:
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t3);
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t4);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.concentration_t2);
            addr65:
            _loc1_.AddMoveToTree(2,0,MinionMoveID.concentration_t3);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.concentration_t4);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.fortitude_t1);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.fortitude_t2);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.claw_t5,true);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t1);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t2);
               if(_loc2_ || Boolean(_loc1_))
               {
                  §§goto(addr124);
               }
               §§goto(addr138);
            }
            §§goto(addr124);
         }
         addr124:
         _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t4);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t1);
         if(_loc2_)
         {
            addr138:
            _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t3);
            _loc1_.AddMoveToTree(1,2,MinionMoveID.tackle_t1);
            _loc1_.AddMoveToTree(1,2,MinionMoveID.tackle_t2);
            _loc1_.AddMoveToTree(1,2,MinionMoveID.tackle_t4);
         }
         _loc1_.AddMoveToTree(0,3,MinionMoveID.mirror_skin_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.tackle_t5,true);
         return _loc1_;
      }
      
      public function HolyMantis_Grass() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Grass");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.nourish_t2);
         if(_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.nourish_t3);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.nourish_t4);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.priest_t1);
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.priest_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.priest_t3);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.razor_vine_t1);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.razor_vine_t2);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.razor_vine_t3);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.razor_vine_t5);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.nourish_t5,true);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.priest_t4,true);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.priest_t5,true);
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr127:
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.regrowth_t1);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.regrowth_t2);
                        if(_loc3_)
                        {
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.regrowth_t3);
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.swift_mend_t1);
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.swift_mend_t2);
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.swift_mend_t3);
                           if(_loc3_)
                           {
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.swift_mend_t4);
                              addr173:
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.serenity_t3);
                              if(_loc3_ || _loc2_)
                              {
                                 addr186:
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.serenity_t4);
                                 _loc1_.AddMoveToTree(2,2,MinionMoveID.regrowth_t5,true);
                                 addr206:
                                 _loc1_.AddMoveToTree(0,3,MinionMoveID.swift_mend_t5,true);
                                 if(_loc3_)
                                 {
                                    addr215:
                                    _loc1_.AddMoveToTree(1,3,MinionMoveID.serenity_t5,true);
                                 }
                                 return _loc1_;
                                 addr192:
                              }
                              §§goto(addr215);
                           }
                        }
                        §§goto(addr192);
                     }
                     §§goto(addr186);
                  }
                  §§goto(addr127);
               }
               §§goto(addr206);
            }
            §§goto(addr186);
         }
         §§goto(addr173);
      }
      
      public function HolyMantis_Holy() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Holy");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.hope_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.hope_t2);
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.hope_t4);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.cleric_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.cleric_t2);
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.cleric_t3);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.holy_burn_t1);
                  addr77:
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.holy_burn_t2);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.holy_burn_t4);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.purge_t1,true);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.cleric_t4,true);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.cleric_t5,true);
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.brilliance_t1);
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.brilliance_t2);
                        addr143:
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.holy_light_t3);
                     }
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.holy_light_t4);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.brilliance_t5,true);
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.AddMoveToTree(1,3,MinionMoveID.holy_light_t5,true);
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr143);
            }
         }
         §§goto(addr77);
      }
      
      public function HolyMantis_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Inspire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.poison_tooth_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.poison_tooth_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.poison_tooth_t5);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.ice_enclosure_t1);
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.ice_enclosure_t2);
            if(_loc2_ || Boolean(_loc1_))
            {
               addr57:
               _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t1);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t5);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.cleanse_darkness_t1);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.cleanse_darkness_t2);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.cleanse_darkness_t3);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.tackle_t1);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.tackle_t3);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.tackle_t5);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t1);
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t3);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t5);
                  addr143:
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.cleanse_darkness_t4,true);
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.cleanse_darkness_t5,true);
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.mending_inspiration_t2);
                  if(!_loc3_)
                  {
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.mending_inspiration_t3);
                     if(!_loc3_)
                     {
                        addr180:
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.mending_inspiration_t4);
                        if(!_loc3_)
                        {
                           addr188:
                           _loc1_.AddMoveToTree(1,3,MinionMoveID.mending_inspiration_t5,true);
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr188);
               }
               §§goto(addr180);
            }
            §§goto(addr143);
         }
         §§goto(addr57);
      }
      
      public function IceBird_Ice() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Ice");
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.dry_ice_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.dry_ice_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.dry_ice_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.hailstone_t1);
            if(_loc2_ || Boolean(this))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.hailstone_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.hailstone_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.mystic_ice_t1);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.mystic_ice_t2);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t1);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t2);
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t3);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.energize_t1);
               }
            }
            _loc1_.AddMoveToTree(1,1,MinionMoveID.energize_t2);
            _loc1_.AddMoveToTree(2,1,MinionMoveID.sleet_t1);
            _loc1_.AddMoveToTree(2,1,MinionMoveID.sleet_t2);
            _loc1_.AddMoveToTree(2,1,MinionMoveID.sleet_t3);
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t5,true);
            }
            _loc1_.AddMoveToTree(1,2,MinionMoveID.icy_blast_t3);
            _loc1_.AddMoveToTree(1,2,MinionMoveID.icy_blast_t4);
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.AddMoveToTree(2,2,MinionMoveID.sleet_t5,true);
               if(_loc2_ || Boolean(this))
               {
               }
               §§goto(addr203);
            }
            _loc1_.AddMoveToTree(1,3,MinionMoveID.icy_blast_t5,true);
         }
         addr203:
         return _loc1_;
      }
      
      public function IceBird_Flying() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Flying");
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t2);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t3);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.volley_t1);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.volley_t2);
                  addr59:
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.wind_lance_t1);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.wind_lance_t2);
                  if(_loc2_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.wind_lance_t3);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.peck_t3);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.peck_t4);
                     addr91:
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.blow_by_t1);
                     if(_loc2_)
                     {
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.blow_by_t2);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.blow_by_t3);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t1);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t2);
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t3);
                           if(!_loc3_)
                           {
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.flurry_t2);
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.flurry_t3);
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.hurricane_t1);
                              if(_loc2_ || _loc3_)
                              {
                              }
                              _loc1_.AddMoveToTree(2,2,MinionMoveID.agility_t4,true);
                              addr198:
                              _loc1_.AddMoveToTree(2,2,MinionMoveID.agility_t5,true);
                              addr205:
                              _loc1_.AddMoveToTree(0,3,MinionMoveID.flurry_t5,true);
                              _loc1_.AddMoveToTree(1,3,MinionMoveID.hurricane_t5,true);
                              return _loc1_;
                              addr184:
                           }
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.hurricane_t2);
                           if(_loc2_)
                           {
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.hurricane_t3);
                              §§goto(addr184);
                           }
                           §§goto(addr205);
                        }
                     }
                  }
                  §§goto(addr198);
               }
               §§goto(addr91);
            }
            §§goto(addr59);
         }
         §§goto(addr198);
      }
      
      public function IceBird_Reflect() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Shields");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.wild_lance_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.wild_lance_t2);
         if(_loc3_ || Boolean(this))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.wild_lance_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.ice_barrier_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.ice_barrier_t2);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.priest_t1);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.priest_t2);
                  if(!_loc2_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.priest_t3);
                     if(!_loc2_)
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.mirror_skin_t1);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.mirror_skin_t2);
                        addr101:
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.ice_barrier_t3,true);
                     }
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.ice_barrier_t4,true);
                  }
                  §§goto(addr170);
               }
               _loc1_.AddMoveToTree(2,1,MinionMoveID.priest_t5,true);
               _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t3,true);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.ice_shield_t3);
                  if(_loc3_)
                  {
                     addr139:
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.ice_shield_t4);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.ice_enclosure_t1);
                  }
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.ice_enclosure_t2);
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.ice_enclosure_t3);
                  §§goto(addr170);
               }
               §§goto(addr139);
            }
            addr170:
            _loc1_.AddMoveToTree(1,3,MinionMoveID.ice_shield_t5,true);
            return _loc1_;
         }
         §§goto(addr101);
      }
      
      public function IceTree_Grass() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Grass");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t3);
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t4);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.razor_vine_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.razor_vine_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t2);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t3);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.timber_t1);
               if(!(_loc3_ && _loc3_))
               {
                  addr95:
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.timber_t2);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.timber_t3);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.efficiency_t1);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.efficiency_t2);
                  if(_loc2_)
                  {
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.efficiency_t3);
                  }
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.regrowth_t1);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.regrowth_t2);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.regrowth_t3);
               }
               _loc1_.AddMoveToTree(0,2,MinionMoveID.timber_t4,true);
               _loc1_.AddMoveToTree(0,2,MinionMoveID.timber_t5,true);
               _loc1_.AddMoveToTree(1,2,MinionMoveID.tree_slam_t3);
               §§goto(addr172);
            }
            §§goto(addr95);
         }
         addr172:
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tree_slam_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.tree_slam_t5,true);
         return _loc1_;
      }
      
      public function IceTree_Ice() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Ice");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.agility_t1);
         if(_loc3_ || Boolean(this))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.agility_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.agility_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.hailstone_t1);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.hailstone_t2);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.hailstone_t3);
                  addr66:
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.bone_chill_t1);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.bone_chill_t2);
                  if(!_loc2_)
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.agility_t4,true);
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.agility_t5,true);
                        if(_loc3_ || Boolean(this))
                        {
                           addr115:
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.ice_enclosure_t1);
                           addr121:
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.ice_enclosure_t2);
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.bone_chill_t3,true);
                        }
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.bone_chill_t4,true);
                        if(_loc3_ || _loc3_)
                        {
                           addr148:
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.sleet_t3);
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.sleet_t4);
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              §§goto(addr174);
                           }
                           §§goto(addr183);
                        }
                        addr174:
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.bone_chill_t5,true);
                        if(_loc3_)
                        {
                           addr183:
                           _loc1_.AddMoveToTree(1,3,MinionMoveID.sleet_t5,true);
                        }
                        return _loc1_;
                     }
                     §§goto(addr121);
                  }
               }
               §§goto(addr115);
            }
            §§goto(addr148);
         }
         §§goto(addr66);
      }
      
      public function IceTree_Rock() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Rock");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.reflect_damage_t1);
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.reflect_damage_t2);
            if(_loc3_ || Boolean(this))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t3);
               addr58:
               _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t1);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t2);
                  if(!_loc2_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t3);
                     addr80:
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.destabilize_t1);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.destabilize_t2);
                        if(_loc3_)
                        {
                           addr103:
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t4,true);
                           if(!(_loc2_ && _loc2_))
                           {
                              addr117:
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t5,true);
                              if(_loc3_ || _loc2_)
                              {
                                 _loc1_.AddMoveToTree(0,2,MinionMoveID.destabilize_t3,true);
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    _loc1_.AddMoveToTree(0,2,MinionMoveID.destabilize_t4,true);
                                    addr152:
                                    _loc1_.AddMoveToTree(1,2,MinionMoveID.stone_fall_t2);
                                    _loc1_.AddMoveToTree(1,2,MinionMoveID.stone_fall_t3);
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       _loc1_.AddMoveToTree(1,3,MinionMoveID.destabilize_t5,true);
                                       addr185:
                                       _loc1_.AddMoveToTree(1,3,MinionMoveID.stone_fall_t5,true);
                                    }
                                    §§goto(addr185);
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr185);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr152);
               }
               §§goto(addr103);
            }
            §§goto(addr80);
         }
         §§goto(addr58);
      }
      
      public function IceTree_Healing() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Healing");
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.destabilize_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.swift_mend_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.swift_mend_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.priest_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.priest_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.priest_t3);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.ice_shield_t1);
            if(_loc2_ || Boolean(this))
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.ice_shield_t2);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.ice_shield_t3);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.swift_mend_t3,true);
               }
            }
            _loc1_.AddMoveToTree(2,1,MinionMoveID.priest_t5,true);
            if(_loc2_)
            {
               addr111:
               _loc1_.AddMoveToTree(0,2,MinionMoveID.ice_shield_t4,true);
               _loc1_.AddMoveToTree(1,2,MinionMoveID.nourish_t3);
            }
            _loc1_.AddMoveToTree(1,2,MinionMoveID.nourish_t4);
            _loc1_.AddMoveToTree(2,2,MinionMoveID.serenity_t1);
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.AddMoveToTree(1,3,MinionMoveID.nourish_t5,true);
            }
            return _loc1_;
         }
         §§goto(addr111);
      }
      
      public function LandShark_Support() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Support");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t3);
         if(_loc2_ || _loc3_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.reflect_damage_t1);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.reflect_damage_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.reflect_damage_t3);
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t1);
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t2);
                     if(!_loc3_)
                     {
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t3);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.slow_t1);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.slow_t2);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.slow_t3);
                        if(_loc2_)
                        {
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.reflect_damage_t4,true);
                           addr131:
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.reflect_damage_t5,true);
                           if(_loc2_)
                           {
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t4,true);
                              addr147:
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t5,true);
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t4,true);
                           }
                           §§goto(addr183);
                        }
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t5,true);
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t3);
                        if(!_loc3_)
                        {
                           §§goto(addr183);
                        }
                     }
                     §§goto(addr183);
                  }
                  addr183:
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t4);
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.tire_t5,true);
                  return _loc1_;
               }
               §§goto(addr131);
            }
            §§goto(addr147);
         }
         §§goto(addr131);
      }
      
      public function LandShark_Mixed() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Mixed");
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t2);
         }
         _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.focus_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.focus_t2);
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.focus_t3);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.soak_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.soak_t2);
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.soak_t3);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.pound_t4,true);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.pound_t5,true);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.refreshing_wave_t1);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.refreshing_wave_t2);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.refreshing_wave_t3);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.soak_t4,true);
            }
            _loc1_.AddMoveToTree(2,1,MinionMoveID.soak_t5,true);
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.AddMoveToTree(1,2,MinionMoveID.roar_t3);
               _loc1_.AddMoveToTree(1,2,MinionMoveID.roar_t4);
               if(_loc2_)
               {
                  addr156:
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t1);
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t2);
                     if(_loc2_)
                     {
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t4);
                        §§goto(addr190);
                     }
                  }
               }
               §§goto(addr199);
            }
            addr190:
            _loc1_.AddMoveToTree(1,3,MinionMoveID.roar_t5,true);
            if(!_loc3_)
            {
               addr199:
               _loc1_.AddMoveToTree(2,3,MinionMoveID.cleric_t5,true);
            }
            return _loc1_;
         }
         §§goto(addr156);
      }
      
      public function LandShark_Damage() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Damage");
         if(_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.invigorate_t1);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.invigorate_t2);
               _loc1_.AddMoveToTree(0,0,MinionMoveID.invigorate_t3);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t1);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t2);
                  if(_loc2_)
                  {
                     addr61:
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t3);
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_blast_t1);
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_blast_t2);
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_blast_t3);
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t1);
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t2);
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr132:
                                 _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t3);
                                 _loc1_.AddMoveToTree(1,1,MinionMoveID.reckless_dash_t5,true);
                                 if(!_loc3_)
                                 {
                                    _loc1_.AddMoveToTree(2,1,MinionMoveID.rock_blast_t4,true);
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       _loc1_.AddMoveToTree(2,1,MinionMoveID.rock_blast_t5,true);
                                       if(_loc2_ || Boolean(this))
                                       {
                                          _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t4,true);
                                          if(!_loc3_)
                                          {
                                             _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t5,true);
                                             addr191:
                                             _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t3);
                                             if(_loc3_ && Boolean(this))
                                             {
                                             }
                                             addr230:
                                             _loc1_.AddMoveToTree(2,2,MinionMoveID.focused_charge_t2);
                                             addr236:
                                             _loc1_.AddMoveToTree(1,3,MinionMoveID.waterjet_t5,true);
                                          }
                                          §§goto(addr243);
                                       }
                                       _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t4);
                                       if(_loc2_ || _loc3_)
                                       {
                                          _loc1_.AddMoveToTree(2,2,MinionMoveID.focused_charge_t1);
                                       }
                                       addr243:
                                       return _loc1_;
                                    }
                                    §§goto(addr236);
                                 }
                              }
                           }
                           §§goto(addr191);
                        }
                        §§goto(addr230);
                     }
                     §§goto(addr132);
                  }
               }
               §§goto(addr191);
            }
            §§goto(addr61);
         }
         §§goto(addr191);
      }
      
      public function Racoon_Water() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Water");
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.concentration_t1);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.concentration_t2);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(0,0,MinionMoveID.concentration_t3);
               }
               _loc1_.AddMoveToTree(1,0,MinionMoveID.fresh_stream_t1);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.fresh_stream_t2);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t1);
                  if(_loc2_)
                  {
                     addr64:
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t2);
                     addr70:
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.hailstone_t1);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.hailstone_t2);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.fresh_stream_t3,true);
                     if(!_loc3_)
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t3,true);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t4,true);
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.hailstone_t3,true);
                        }
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.soak_t3);
                        §§goto(addr132);
                     }
                     §§goto(addr146);
                  }
                  addr132:
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.soak_t4);
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t1);
                  if(_loc2_)
                  {
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t2);
                     addr146:
                     if(_loc2_ || _loc2_)
                     {
                     }
                     §§goto(addr172);
                  }
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t3);
                  addr172:
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.soak_t5,true);
                  return _loc1_;
               }
               §§goto(addr70);
            }
            §§goto(addr64);
         }
         §§goto(addr146);
      }
      
      public function Racoon_Fire() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.touch_fire_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.touch_fire_t2);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.poison_tooth_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.poison_tooth_t2);
               if(!(_loc2_ && Boolean(this)))
               {
                  addr59:
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t1);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t2);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.touch_fire_t3,true);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.touch_fire_t4,true);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.inflame_t1);
               }
               _loc1_.AddMoveToTree(1,1,MinionMoveID.inflame_t2);
               addr104:
               _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t3,true);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t4,true);
               _loc1_.AddMoveToTree(1,2,MinionMoveID.sear_t3);
               _loc1_.AddMoveToTree(1,2,MinionMoveID.sear_t4);
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.fire_blast_t1);
                  if(!_loc2_)
                  {
                     addr152:
                     _loc1_.AddMoveToTree(1,3,MinionMoveID.sear_t5,true);
                  }
                  return _loc1_;
               }
               §§goto(addr152);
            }
            §§goto(addr59);
         }
         §§goto(addr104);
      }
      
      public function Racoon_Electric() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Electric");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t3);
         if(_loc3_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.batch_bolt_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.batch_bolt_t2);
            if(!_loc2_)
            {
               addr53:
               _loc1_.AddMoveToTree(1,0,MinionMoveID.batch_bolt_t3);
               if(_loc3_ || _loc2_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t1);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t2);
                     if(!_loc2_)
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.overload_t1);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr102:
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.batch_bolt_t4,true);
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t3,true);
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t4,true);
                           if(_loc3_ || Boolean(this))
                           {
                              addr130:
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.overload_t2,true);
                              if(_loc3_ || Boolean(this))
                              {
                              }
                              addr175:
                              _loc1_.AddMoveToTree(1,3,MinionMoveID.spark_t5,true);
                              §§goto(addr182);
                           }
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.spark_t3);
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.spark_t4);
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.agility_t1);
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.agility_t2);
                        }
                        addr182:
                        return _loc1_;
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr130);
               }
               §§goto(addr102);
            }
            §§goto(addr130);
         }
         §§goto(addr53);
      }
      
      public function TRex_Dino() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Dino");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_grasp_t1);
         if(_loc2_ || _loc2_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_grasp_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_grasp_t5);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_ram_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_ram_t3);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_ram_t5);
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t3,true);
                  if(_loc2_)
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t4,true);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.crazed_blast_t1);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.crazed_blast_t3);
                     if(!_loc3_)
                     {
                        addr119:
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.crazed_blast_t5);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.demoralizing_charge_t1);
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.demoralizing_charge_t3);
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.demoralizing_charge_t5);
                           if(_loc2_ || _loc3_)
                           {
                              addr157:
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t5,true);
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr171:
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.inner_force_t3);
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    _loc1_.AddMoveToTree(1,2,MinionMoveID.inner_force_t4);
                                    addr190:
                                    _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t1);
                                    if(_loc2_)
                                    {
                                       _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t2);
                                       _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t3);
                                       §§goto(addr198);
                                    }
                                 }
                                 §§goto(addr198);
                              }
                              _loc1_.AddMoveToTree(1,3,MinionMoveID.inner_force_t5,true);
                              §§goto(addr198);
                           }
                           §§goto(addr171);
                        }
                        §§goto(addr190);
                     }
                     §§goto(addr198);
                  }
                  §§goto(addr190);
               }
               addr198:
               if(_loc2_ || _loc3_)
               {
               }
               return _loc1_;
            }
            §§goto(addr157);
         }
         §§goto(addr119);
      }
      
      public function TRex_Buffs() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Buffs");
         if(_loc2_ || _loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t1);
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t3);
               _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t5);
               if(!_loc3_)
               {
                  addr52:
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.inflame_t1);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.inflame_t2);
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.inflame_t3);
                  }
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t1);
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t2);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t1);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t3);
                     if(_loc2_)
                     {
                        addr117:
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t5);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.flesh_sacrifice_t1);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.flesh_sacrifice_t3);
                     }
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.flesh_sacrifice_t5);
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t3,true);
                     if(_loc2_)
                     {
                        addr150:
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t4,true);
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.diamond_skin_t1);
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.diamond_skin_t3);
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.diamond_skin_t5);
                           if(_loc2_ || _loc2_)
                           {
                              addr189:
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.deadly_inspiration_t2);
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.deadly_inspiration_t3);
                              _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t5,true);
                              if(!_loc3_)
                              {
                                 addr217:
                                 _loc1_.AddMoveToTree(1,3,MinionMoveID.deadly_inspiration_t5,true);
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr189);
                     }
                     §§goto(addr217);
                  }
                  §§goto(addr150);
               }
               §§goto(addr117);
            }
            §§goto(addr52);
         }
         §§goto(addr189);
      }
      
      public function TRex_Debuffs() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.skillful_t1);
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.skillful_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.skillful_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.crush_t1);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.crush_t3);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.crush_t5);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.roar_t1);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.roar_t3);
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.roar_t5);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.skillful_t5,true);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t1);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t2);
                        if(!_loc2_)
                        {
                           addr121:
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_bash_t1);
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_bash_t3);
                           if(_loc3_)
                           {
                              §§goto(addr135);
                           }
                           §§goto(addr195);
                        }
                        §§goto(addr222);
                     }
                     §§goto(addr121);
                  }
                  addr135:
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_bash_t5);
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.hulk_inspiration_t3);
                  }
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.hulk_inspiration_t4);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t3,true);
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t5,true);
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t1);
                           addr195:
                           if(!_loc2_)
                           {
                              addr210:
                              _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t3);
                              _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t5);
                              addr222:
                              _loc1_.AddMoveToTree(0,3,MinionMoveID.hulk_inspiration_t5,true);
                           }
                        }
                        §§goto(addr222);
                     }
                     §§goto(addr195);
                  }
                  return _loc1_;
               }
               §§goto(addr121);
            }
         }
         §§goto(addr210);
      }
      
      public function WaterBird_Water() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Water");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fresh_stream_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fresh_stream_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fresh_stream_t3);
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.ferocity_t1);
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.ferocity_t2);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.waterjet_t1);
                  if(!_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.waterjet_t2);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.rainfall_t1);
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.rainfall_t2);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.rainfall_t3);
                        if(!_loc3_)
                        {
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.ferocity_t3,true);
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.waterjet_t3,true);
                           }
                           §§goto(addr182);
                        }
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.waterjet_t4,true);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.soak_t3);
                           §§goto(addr153);
                        }
                        addr153:
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.soak_t4);
                        if(_loc3_)
                        {
                        }
                        §§goto(addr182);
                     }
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.ferocity_t5,true);
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§goto(addr182);
                     }
                  }
                  §§goto(addr182);
               }
               §§goto(addr196);
            }
            addr182:
            _loc1_.AddMoveToTree(2,2,MinionMoveID.waterjet_t5,true);
            if(!(_loc3_ && _loc3_))
            {
               addr196:
               _loc1_.AddMoveToTree(0,3,MinionMoveID.soak_t5,true);
            }
            return _loc1_;
         }
         §§goto(addr153);
      }
      
      public function WaterBird_Flying() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Flying");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t1);
         if(_loc2_ || _loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.cutting_wind_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.cutting_wind_t2);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.peck_t2);
               if(_loc2_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.peck_t3);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.peck_t4);
                  addr71:
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.focus_t3,true);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.focus_t5,true);
                  if(!_loc3_)
                  {
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.hurricane_t1);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.hurricane_t2);
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t1);
                        if(!_loc3_)
                        {
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t2);
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t3);
                              if(!(_loc3_ && _loc3_))
                              {
                                 _loc1_.AddMoveToTree(0,2,MinionMoveID.flurry_t3);
                                 if(_loc3_)
                                 {
                                 }
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.hurricane_t3,true);
                                 addr177:
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.hurricane_t4,true);
                                 addr184:
                                 _loc1_.AddMoveToTree(2,2,MinionMoveID.agility_t5,true);
                                 _loc1_.AddMoveToTree(0,3,MinionMoveID.flurry_t5,true);
                                 return _loc1_;
                                 addr163:
                              }
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.flurry_t4);
                              if(_loc2_)
                              {
                                 §§goto(addr163);
                              }
                           }
                        }
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr184);
               }
               §§goto(addr177);
            }
         }
         §§goto(addr71);
      }
      
      public function WaterBird_Support() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Support");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.invigorate_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.invigorate_t2);
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.invigorate_t3);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.ice_shield_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.ice_shield_t2);
               if(_loc3_ || _loc2_)
               {
                  addr60:
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t2);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t3);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t4);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.tire_t1);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.tire_t2);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.reflect_damage_t1);
                  }
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.reflect_damage_t2);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t3);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t4);
                  addr123:
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t5);
               }
               _loc1_.AddMoveToTree(0,2,MinionMoveID.diamond_skin_t1);
               _loc1_.AddMoveToTree(0,2,MinionMoveID.diamond_skin_t2);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.diamond_skin_t3);
                  if(!_loc2_)
                  {
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.reflect_damage_t4,true);
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.reflect_damage_t5,true);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t3);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t4);
                        _loc1_.AddMoveToTree(0,3,MinionMoveID.ice_enclosure_t5,true);
                        if(!_loc2_)
                        {
                           addr195:
                           _loc1_.AddMoveToTree(2,3,MinionMoveID.slow_t5,true);
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr195);
            }
            §§goto(addr123);
         }
         §§goto(addr60);
      }
      
      public function WaterSeal_Water() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Water");
         if(_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.soak_t1);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.soak_t2);
               _loc1_.AddMoveToTree(0,0,MinionMoveID.soak_t3);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t1);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t2);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t4);
                  if(_loc2_)
                  {
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t5);
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.energize_t1);
                        if(_loc2_)
                        {
                           _loc1_.AddMoveToTree(2,0,MinionMoveID.energize_t2);
                           if(_loc2_)
                           {
                              _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t1);
                           }
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t2);
                           if(!_loc3_)
                           {
                              addr117:
                              _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t3);
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.water_slam_t1);
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.water_slam_t2);
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.water_slam_t3);
                              if(!(_loc3_ && _loc3_))
                              {
                                 _loc1_.AddMoveToTree(2,1,MinionMoveID.flesh_sacrifice_t1);
                                 if(_loc2_ || _loc2_)
                                 {
                                    _loc1_.AddMoveToTree(2,1,MinionMoveID.flesh_sacrifice_t2);
                                    if(_loc2_)
                                    {
                                       _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t5,true);
                                       if(!_loc3_)
                                       {
                                          _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t3);
                                          §§goto(addr184);
                                       }
                                       _loc1_.AddMoveToTree(2,2,MinionMoveID.flesh_sacrifice_t5,true);
                                       _loc1_.AddMoveToTree(1,3,MinionMoveID.waterjet_t5,true);
                                    }
                                 }
                              }
                           }
                           §§goto(addr197);
                        }
                     }
                  }
                  §§goto(addr117);
               }
               addr184:
               _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t4);
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.flesh_sacrifice_t4,true);
                  addr197:
                  if(_loc2_)
                  {
                  }
                  §§goto(addr227);
               }
               addr227:
               return _loc1_;
            }
            §§goto(addr117);
         }
         §§goto(addr197);
      }
      
      public function WaterSeal_Ice() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Ice");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t3);
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.icy_blast_t1);
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.icy_blast_t2);
               addr63:
               _loc1_.AddMoveToTree(2,0,MinionMoveID.ice_shield_t1);
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.ice_shield_t2);
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.ice_shield_t3);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t1);
                        if(_loc3_)
                        {
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t2);
                           addr118:
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t3);
                           if(_loc3_)
                           {
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.icy_blast_t3,true);
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.icy_blast_t4,true);
                              if(_loc3_)
                              {
                                 _loc1_.AddMoveToTree(2,1,MinionMoveID.ice_shield_t4,true);
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr156:
                                    _loc1_.AddMoveToTree(0,2,MinionMoveID.perseverance_t5,true);
                                    addr163:
                                    _loc1_.AddMoveToTree(1,2,MinionMoveID.hailstone_t3);
                                    _loc1_.AddMoveToTree(1,2,MinionMoveID.hailstone_t4);
                                    _loc1_.AddMoveToTree(2,2,MinionMoveID.mystic_ice_t1);
                                    addr181:
                                    _loc1_.AddMoveToTree(2,2,MinionMoveID.mystic_ice_t2);
                                    if(_loc3_ || _loc2_)
                                    {
                                       _loc1_.AddMoveToTree(2,2,MinionMoveID.mystic_ice_t3);
                                       if(_loc3_)
                                       {
                                          _loc1_.AddMoveToTree(1,3,MinionMoveID.hailstone_t5,true);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr156);
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr156);
                  }
                  §§goto(addr163);
               }
               §§goto(addr118);
            }
            §§goto(addr181);
         }
         §§goto(addr63);
      }
      
      public function WaterSeal_Support() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Support");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_skin_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_skin_t2);
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_skin_t3);
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.grind_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.grind_t2);
            }
            _loc1_.AddMoveToTree(1,0,MinionMoveID.grind_t3);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t1);
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t2);
               addr83:
               _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t3);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.bone_chill_t1);
               if(_loc3_ || _loc3_)
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.bone_chill_t2);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.bone_chill_t3);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t1);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t2);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t3);
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t1);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t2);
                        if(!_loc2_)
                        {
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t3);
                           addr168:
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.bone_chill_t4,true);
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.bone_chill_t5,true);
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t3);
                              addr195:
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t4);
                              _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t1);
                           }
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t2);
                           if(_loc3_ || Boolean(this))
                           {
                              addr227:
                              _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t3);
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 _loc1_.AddMoveToTree(1,3,MinionMoveID.invigorate_t5,true);
                              }
                           }
                           §§goto(addr247);
                        }
                     }
                     §§goto(addr195);
                  }
                  addr247:
                  return _loc1_;
               }
               §§goto(addr227);
            }
            §§goto(addr168);
         }
         §§goto(addr83);
      }
      
      public function WaterGrassHorse_Water() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Water");
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.cleric_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.cleric_t2);
            if(_loc3_)
            {
               addr40:
               _loc1_.AddMoveToTree(0,0,MinionMoveID.cleric_t4);
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.rainfall_t1);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.rainfall_t2);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.rainfall_t3);
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.ice_shield_t1);
                     if(!_loc2_)
                     {
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.ice_shield_t2);
                        if(!(_loc2_ && _loc3_))
                        {
                           addr99:
                           _loc1_.AddMoveToTree(2,0,MinionMoveID.ice_shield_t3);
                           if(_loc3_ || _loc2_)
                           {
                              _loc1_.AddMoveToTree(0,1,MinionMoveID.brilliance_t1);
                              _loc1_.AddMoveToTree(0,1,MinionMoveID.brilliance_t2);
                              §§goto(addr131);
                           }
                           §§goto(addr174);
                        }
                        addr131:
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.rainfall_t5,true);
                        if(_loc3_)
                        {
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t1);
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t2);
                              if(!_loc2_)
                              {
                                 _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t4);
                                 addr167:
                                 _loc1_.AddMoveToTree(0,2,MinionMoveID.brilliance_t4,true);
                                 addr174:
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.overflow_t3);
                                 if(_loc3_ || Boolean(this))
                                 {
                                    _loc1_.AddMoveToTree(1,2,MinionMoveID.overflow_t4);
                                    if(!_loc2_)
                                    {
                                       _loc1_.AddMoveToTree(2,2,MinionMoveID.water_infusion_t1);
                                       if(!_loc2_)
                                       {
                                          _loc1_.AddMoveToTree(2,2,MinionMoveID.water_infusion_t2);
                                          if(_loc3_)
                                          {
                                          }
                                       }
                                    }
                                    §§goto(addr240);
                                 }
                                 _loc1_.AddMoveToTree(2,2,MinionMoveID.water_infusion_t3);
                                 if(!_loc2_)
                                 {
                                    _loc1_.AddMoveToTree(1,3,MinionMoveID.overflow_t5,true);
                                 }
                              }
                           }
                           §§goto(addr167);
                        }
                        _loc1_.AddMoveToTree(2,3,MinionMoveID.water_infusion_t5,true);
                        §§goto(addr240);
                     }
                     addr240:
                     return _loc1_;
                  }
                  §§goto(addr99);
               }
               §§goto(addr167);
            }
            §§goto(addr99);
         }
         §§goto(addr40);
      }
      
      public function WaterGrassHorse_Grass() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Grass");
         if(_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.priest_t1);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.priest_t2);
               if(_loc2_ || _loc3_)
               {
                  _loc1_.AddMoveToTree(0,0,MinionMoveID.priest_t4);
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.regrowth_t1);
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.regrowth_t2);
                     if(!_loc3_)
                     {
                        _loc1_.AddMoveToTree(1,0,MinionMoveID.regrowth_t3);
                        if(!_loc3_)
                        {
                           addr76:
                           _loc1_.AddMoveToTree(2,0,MinionMoveID.drain_t1);
                           _loc1_.AddMoveToTree(2,0,MinionMoveID.drain_t2);
                           if(_loc2_)
                           {
                              _loc1_.AddMoveToTree(2,0,MinionMoveID.drain_t3);
                              addr103:
                              _loc1_.AddMoveToTree(0,1,MinionMoveID.hope_t1);
                              _loc1_.AddMoveToTree(0,1,MinionMoveID.hope_t2);
                              if(!_loc3_)
                              {
                                 _loc1_.AddMoveToTree(1,1,MinionMoveID.skillful_t1);
                                 if(_loc2_)
                                 {
                                    _loc1_.AddMoveToTree(1,1,MinionMoveID.skillful_t2);
                                    _loc1_.AddMoveToTree(1,1,MinionMoveID.skillful_t3);
                                    addr137:
                                    _loc1_.AddMoveToTree(2,1,MinionMoveID.resurgence_t1);
                                    _loc1_.AddMoveToTree(2,1,MinionMoveID.resurgence_t2);
                                    _loc1_.AddMoveToTree(2,1,MinionMoveID.resurgence_t3);
                                    _loc1_.AddMoveToTree(0,2,MinionMoveID.hope_t3,true);
                                    _loc1_.AddMoveToTree(1,2,MinionMoveID.swift_mend_t3);
                                    _loc1_.AddMoveToTree(1,2,MinionMoveID.swift_mend_t4);
                                    if(_loc2_)
                                    {
                                       _loc1_.AddMoveToTree(2,2,MinionMoveID.serenity_t1);
                                       addr189:
                                       _loc1_.AddMoveToTree(2,2,MinionMoveID.serenity_t2);
                                       if(_loc2_)
                                       {
                                          _loc1_.AddMoveToTree(2,2,MinionMoveID.serenity_t3);
                                       }
                                       addr176:
                                    }
                                    §§goto(addr189);
                                 }
                                 _loc1_.AddMoveToTree(1,3,MinionMoveID.swift_mend_t5,true);
                                 return _loc1_;
                              }
                              §§goto(addr176);
                           }
                        }
                        §§goto(addr137);
                     }
                  }
                  §§goto(addr189);
               }
               §§goto(addr103);
            }
            §§goto(addr76);
         }
         §§goto(addr137);
      }
      
      public function WaterGrassHorse_Damage() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Damage");
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.soak_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.soak_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.soak_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.razor_vine_t1);
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.razor_vine_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.razor_vine_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.water_slam_t1);
               if(_loc3_ || _loc3_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.water_slam_t2);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.water_slam_t3);
                  if(!_loc2_)
                  {
                     addr98:
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.waterjet_t1);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.waterjet_t2);
                     addr110:
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.waterjet_t3);
                     if(!_loc2_)
                     {
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.tree_slam_t1);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.tree_slam_t3);
                     }
                  }
                  §§goto(addr110);
               }
               _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t1);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t2);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3);
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.waterjet_t5,true);
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.spore_blast_t3);
                  if(!_loc2_)
                  {
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.spore_blast_t4);
                  }
               }
               _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t5,true);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.spore_blast_t5,true);
               }
               return _loc1_;
            }
            §§goto(addr110);
         }
         §§goto(addr98);
      }
      
      public function Chameleon_Grass() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Grass");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.razor_vine_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.razor_vine_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tree_slam_t1);
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.tree_slam_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.pound_t2);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.pound_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.pound_t4);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.razor_vine_t3,true);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.razor_vine_t4,true);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.tree_slam_t3,true);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t1);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t2);
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t3);
                     if(_loc3_)
                     {
                     }
                     §§goto(addr129);
                  }
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.drain_t1);
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.drain_t2);
                  addr129:
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.grassblade_t3);
                  §§goto(addr135);
               }
               addr135:
               _loc1_.AddMoveToTree(1,2,MinionMoveID.grassblade_t4);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t4,true);
                  if(!_loc2_)
                  {
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t5,true);
                     addr166:
                     _loc1_.AddMoveToTree(1,3,MinionMoveID.grassblade_t5,true);
                  }
                  §§goto(addr166);
               }
               return _loc1_;
            }
            §§goto(addr129);
         }
         §§goto(addr166);
      }
      
      public function Chameleon_Dino() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Dino");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_slide_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_slide_t2);
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_slide_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.piercing_charge_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.piercing_charge_t2);
         }
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wild_lance_t1);
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.wild_lance_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.wild_lance_t3);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.focus_t1);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.focus_t2);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.focus_t3);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.piercing_charge_t3,true);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.ancient_force_t1);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.ancient_force_t2);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.ancient_force_t3);
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.focus_t4,true);
                     addr150:
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.prehistoric_bite_t3);
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.prehistoric_bite_t4);
                     if(_loc2_)
                     {
                        _loc1_.AddMoveToTree(1,3,MinionMoveID.prehistoric_bite_t5,true);
                     }
                     addr136:
                  }
                  §§goto(addr150);
               }
               return _loc1_;
            }
            §§goto(addr136);
         }
         §§goto(addr150);
      }
      
      public function Chameleon_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t3);
         }
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t4);
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t1);
         }
         _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t3);
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.slow_t1);
            if(_loc2_ || _loc2_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.slow_t2);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t1);
                  §§goto(addr99);
               }
               §§goto(addr118);
            }
            addr99:
            _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t2);
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t3);
               addr118:
               _loc1_.AddMoveToTree(1,1,MinionMoveID.efficiency_t5,true);
               if(_loc2_)
               {
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t3,true);
               }
               _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t2);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t3);
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t4);
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t1);
                  addr154:
               }
               §§goto(addr154);
            }
            _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t2);
            _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t3);
            _loc1_.AddMoveToTree(1,3,MinionMoveID.tire_t5,true);
            return _loc1_;
         }
         §§goto(addr154);
      }
      
      public function Harpy_Flying() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Flying");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.peck_t2);
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.peck_t3);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.peck_t4);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t1);
            if(_loc2_ || _loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t2);
               if(_loc2_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t3);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.hailstone_t1);
                  if(!_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.hailstone_t2);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.hailstone_t3);
                     if(_loc2_)
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.blow_by_t1);
                     }
                     §§goto(addr209);
                  }
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.blow_by_t2);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.blow_by_t3);
                  if(!_loc3_)
                  {
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.vicious_t5,true);
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.volley_t1);
                        if(!(_loc3_ && _loc3_))
                        {
                           addr146:
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.volley_t2);
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.volley_t3);
                              addr165:
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.blow_by_t4,true);
                           }
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.blow_by_t5,true);
                           if(!_loc3_)
                           {
                              addr188:
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.cutting_wind_t3);
                              if(!_loc3_)
                              {
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.cutting_wind_t4);
                              }
                           }
                        }
                        §§goto(addr165);
                     }
                     _loc1_.AddMoveToTree(1,3,MinionMoveID.cutting_wind_t5,true);
                     §§goto(addr209);
                  }
                  §§goto(addr146);
               }
               §§goto(addr165);
            }
            addr209:
            return _loc1_;
         }
         §§goto(addr188);
      }
      
      public function Harpy_Demonic() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Demonic");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.cleric_t1);
         if(_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.cleric_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.cleric_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.blood_press_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.blood_press_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.blood_press_t3);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.deathly_energy_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.deathly_energy_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.deathly_energy_t3);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.cleric_t5,true);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.demonic_sacrifice_t3);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.demonic_sacrifice_t4);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.demonic_sacrifice_t5);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.forceful_heal_t1);
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.forceful_heal_t2);
                  if(_loc2_)
                  {
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.forceful_heal_t3);
                     addr135:
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.brilliance_t1);
                  }
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.brilliance_t2);
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.brilliance_t3);
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_bargain_t3);
                  }
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_bargain_t4);
                  §§goto(addr179);
               }
               §§goto(addr135);
            }
            §§goto(addr179);
         }
         addr179:
         _loc1_.AddMoveToTree(1,3,MinionMoveID.demonic_bargain_t5,true);
         return _loc1_;
      }
      
      public function Harpy_Fire() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.grind_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.grind_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.grind_t4);
         if(_loc2_ || Boolean(this))
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.burn_t1);
            if(_loc2_ || Boolean(this))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.burn_t2);
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t1);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t2);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t3);
                     addr94:
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t4);
                  }
               }
               _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t5);
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.inflame_t1);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.inflame_t2);
                  if(_loc2_ || Boolean(this))
                  {
                     addr139:
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.inflame_t3);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.burn_t3,true);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.burn_t4,true);
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_ram_t1);
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_ram_t2);
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t1);
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t2);
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t3);
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.wildfire_t3);
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.wildfire_t4);
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.fire_ram_t3,true);
                        §§goto(addr222);
                     }
                     §§goto(addr231);
                  }
                  addr222:
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.fire_ram_t4,true);
                  if(!_loc3_)
                  {
                     addr231:
                     _loc1_.AddMoveToTree(1,3,MinionMoveID.wildfire_t5,true);
                  }
                  return _loc1_;
               }
               §§goto(addr139);
            }
            §§goto(addr94);
         }
         §§goto(addr139);
      }
      
      public function HolyFox_Holy() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Holy");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.vicious_t1);
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.vicious_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.vicious_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.holy_strike_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.holy_strike_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t3);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t4);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t4,true);
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t5,true);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.holy_strike_t3,true);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.holy_strike_t4,true);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.blow_by_t1);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.blow_by_t2);
                        if(!_loc2_)
                        {
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.blow_by_t3);
                           if(_loc3_)
                           {
                              addr154:
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.volley_t1);
                              if(_loc2_)
                              {
                              }
                              _loc1_.AddMoveToTree(2,2,MinionMoveID.blow_by_t4,true);
                           }
                           §§goto(addr184);
                        }
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.volley_t2);
                        if(!_loc2_)
                        {
                           addr170:
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.cleanse_darkness_t3);
                        }
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.cleanse_darkness_t4);
                        if(_loc3_)
                        {
                           §§goto(addr184);
                        }
                        §§goto(addr205);
                     }
                     §§goto(addr184);
                  }
                  addr184:
                  if(!(_loc2_ && _loc3_))
                  {
                     addr205:
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.blow_by_t5,true);
                  }
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.cleanse_darkness_t5,true);
                  return _loc1_;
               }
            }
            §§goto(addr154);
         }
         §§goto(addr170);
      }
      
      public function HolyFox_Fire() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t1);
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.flare_up_t1);
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.flare_up_t2);
               addr62:
               _loc1_.AddMoveToTree(2,0,MinionMoveID.wildfire_t1);
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.wildfire_t2);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.wildfire_t3);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.righteous_zeal_t1);
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.righteous_zeal_t2);
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.righteous_zeal_t3);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.flare_up_t3,true);
                     }
                  }
                  §§goto(addr201);
               }
               _loc1_.AddMoveToTree(1,1,MinionMoveID.flare_up_t4,true);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.sear_t2);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.sear_t3);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.sear_t4);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.intense_flame_t2);
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.intense_flame_t3);
                     if(!_loc3_)
                     {
                        addr188:
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.intense_flame_t4);
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.sear_t5,true);
                        §§goto(addr201);
                     }
                  }
                  §§goto(addr201);
               }
               §§goto(addr188);
            }
            addr201:
            _loc1_.AddMoveToTree(1,3,MinionMoveID.intense_flame_t5,true);
            return _loc1_;
         }
         §§goto(addr62);
      }
      
      public function HolyFox_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Inspire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t2);
         if(_loc3_ || _loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t3);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t4);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.crusade_t1);
            if(_loc3_ || _loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.crusade_t2);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t1);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t2);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t3);
            }
            _loc1_.AddMoveToTree(0,1,MinionMoveID.hope_t1);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.hope_t2);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.hope_t3);
            _loc1_.AddMoveToTree(1,1,MinionMoveID.crusade_t3,true);
            _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t4,true);
         }
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.hope_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.hope_t5,true);
         if(_loc3_)
         {
            _loc1_.AddMoveToTree(1,2,MinionMoveID.mending_inspiration_t2);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t1);
               if(_loc3_)
               {
                  addr166:
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t2);
                  if(!_loc2_)
                  {
                     addr174:
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t3);
                     _loc1_.AddMoveToTree(1,3,MinionMoveID.mending_inspiration_t3,true);
                  }
               }
               return _loc1_;
            }
            §§goto(addr166);
         }
         §§goto(addr174);
      }
      
      public function RoboBull_Robot() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Robot");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.cog_fallout_t1);
         if(_loc2_ || Boolean(this))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.cog_fallout_t2);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.metal_shield_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.metal_shield_t2);
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t1);
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t2);
                     if(_loc2_ || Boolean(this))
                     {
                        addr91:
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.twin_missile_t1);
                        addr97:
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.twin_missile_t2);
                        if(!_loc3_)
                        {
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.metal_shield_t3,true);
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.metal_shield_t4,true);
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t3,true);
                        }
                        §§goto(addr148);
                     }
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t4,true);
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.twin_missile_t3,true);
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.download_t3);
                     if(_loc3_)
                     {
                     }
                     §§goto(addr168);
                  }
                  addr148:
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.download_t4);
                  if(_loc2_ || _loc3_)
                  {
                     addr168:
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.agility_t5,true);
                     if(!_loc3_)
                     {
                        _loc1_.AddMoveToTree(1,3,MinionMoveID.download_t5,true);
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr168);
            }
            §§goto(addr91);
         }
         §§goto(addr97);
      }
      
      public function RoboBull_Fire() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_bash_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_bash_t2);
         if(_loc2_ || _loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_bash_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.inflame_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.inflame_t2);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t1);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t2);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.fire_bash_t4,true);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.fire_blast_t1);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.fire_blast_t2);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3,true);
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t4,true);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.fire_shot_t3);
                        if(!_loc3_)
                        {
                           addr133:
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.fire_shot_t4);
                           if(_loc2_ || _loc2_)
                           {
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.fire_blast_t3,true);
                              if(_loc2_)
                              {
                                 _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t5,true);
                              }
                           }
                        }
                        §§goto(addr176);
                     }
                  }
                  _loc1_.AddMoveToTree(0,3,MinionMoveID.fire_shot_t5,true);
                  §§goto(addr176);
               }
            }
            §§goto(addr133);
         }
         addr176:
         return _loc1_;
      }
      
      public function RoboBull_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         if(_loc3_ || _loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.diamond_skin_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.diamond_skin_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.pound_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.pound_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.grind_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.grind_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.grind_t3);
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.diamond_skin_t3,true);
            }
            _loc1_.AddMoveToTree(0,1,MinionMoveID.diamond_skin_t4,true);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(1,1,MinionMoveID.pound_t3,true);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.energize_t1);
            }
         }
         _loc1_.AddMoveToTree(2,1,MinionMoveID.energize_t2);
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.AddMoveToTree(0,2,MinionMoveID.diamond_skin_t5,true);
            _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_coating_t2);
         }
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_coating_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.perseverance_t1);
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.AddMoveToTree(2,2,MinionMoveID.perseverance_t2);
            _loc1_.AddMoveToTree(2,2,MinionMoveID.perseverance_t3);
         }
         _loc1_.AddMoveToTree(1,3,MinionMoveID.mirror_coating_t5,true);
         return _loc1_;
      }
      
      public function TikiMonkey_Fire() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         if(_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.vicious_t1);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.vicious_t2);
               _loc1_.AddMoveToTree(0,0,MinionMoveID.vicious_t3);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.burn_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.burn_t3);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.burn_t4);
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.inflame_t1);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.inflame_t2);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t4,true);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t5,true);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.fire_blast_t1);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.fire_blast_t2);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.fire_blast_t3);
                        addr121:
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.inflame_t3,true);
                     }
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.inflame_t4,true);
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.wildfire_t1);
                        if(_loc3_)
                        {
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.wildfire_t2);
                           if(_loc3_)
                           {
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.wildfire_t4);
                              addr158:
                           }
                        }
                        §§goto(addr158);
                     }
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.blaze_t3);
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.blaze_t4);
                     _loc1_.AddMoveToTree(1,3,MinionMoveID.blaze_t5,true);
                     §§goto(addr190);
                  }
                  §§goto(addr158);
               }
               §§goto(addr121);
            }
         }
         addr190:
         return _loc1_;
      }
      
      public function TikiMonkey_Buffs() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Buffs");
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.mud_blast_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.mud_blast_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.warmth_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.warmth_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.warmth_t3);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t2);
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t3);
               addr80:
               _loc1_.AddMoveToTree(0,1,MinionMoveID.earthy_fortitude_t1);
               if(_loc2_)
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.earthy_fortitude_t2);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.earthy_fortitude_t3);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.warmth_t5,true);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.earthquake_t1);
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.earthquake_t2);
                     if(_loc2_)
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.earthquake_t3);
                        if(!_loc3_)
                        {
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.platinum_t1);
                           if(!_loc3_)
                           {
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.platinum_t2);
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr164:
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.chosen_earth_t3);
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.chosen_earth_t4);
                                 addr170:
                                 if(_loc2_)
                                 {
                                    _loc1_.AddMoveToTree(2,2,MinionMoveID.hulk_inspiration_t1);
                                    if(!_loc3_)
                                    {
                                       _loc1_.AddMoveToTree(1,3,MinionMoveID.chosen_earth_t5,true);
                                    }
                                 }
                              }
                              §§goto(addr170);
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr170);
                  }
               }
            }
            §§goto(addr164);
         }
         §§goto(addr80);
      }
      
      public function TikiMonkey_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t2);
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.skillful_t1);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.skillful_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.skillful_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.lich_burn_t1);
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr77:
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.lich_burn_t2);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.roar_t1);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.roar_t2);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.skillful_t5,true);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.invigorate_t1);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.invigorate_t2);
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.roar_t3,true);
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t3);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t4);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.invigorate_t3,true);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.invigorate_t4,true);
                     addr168:
                     _loc1_.AddMoveToTree(0,3,MinionMoveID.prehistoric_bite_t1);
                  }
                  _loc1_.AddMoveToTree(0,3,MinionMoveID.prehistoric_bite_t2);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(1,3,MinionMoveID.mirror_skin_t5,true);
                  }
                  §§goto(addr189);
               }
               §§goto(addr168);
            }
            addr189:
            return _loc1_;
         }
         §§goto(addr77);
      }
      
      public function Tortoise_Armor() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Armor");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.earth_shield_t1);
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.earth_shield_t2);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.stonequake_t1);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.stonequake_t2);
                  if(!_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t1);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t3);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t5);
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr80:
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.earth_shield_t3,true);
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.earth_shield_t4,true);
                           if(!_loc3_)
                           {
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.ice_enclosure_t1);
                              if(_loc2_)
                              {
                                 _loc1_.AddMoveToTree(1,1,MinionMoveID.ice_enclosure_t2);
                                 addr124:
                                 _loc1_.AddMoveToTree(2,1,MinionMoveID.diamond_skin_t1);
                                 _loc1_.AddMoveToTree(2,1,MinionMoveID.diamond_skin_t2);
                              }
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.diamond_skin_t3);
                              if(_loc2_ || Boolean(this))
                              {
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.platinum_t2);
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    _loc1_.AddMoveToTree(1,2,MinionMoveID.platinum_t3);
                                    if(_loc2_)
                                    {
                                       _loc1_.AddMoveToTree(2,2,MinionMoveID.diamond_skin_t4,true);
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr191:
                                          _loc1_.AddMoveToTree(2,2,MinionMoveID.diamond_skin_t5,true);
                                          addr198:
                                          _loc1_.AddMoveToTree(1,3,MinionMoveID.platinum_t4,true);
                                       }
                                    }
                                    §§goto(addr198);
                                 }
                                 §§goto(addr191);
                              }
                              return _loc1_;
                           }
                           §§goto(addr191);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr191);
                  }
                  §§goto(addr80);
               }
            }
            §§goto(addr124);
         }
         §§goto(addr191);
      }
      
      public function Tortoise_Health() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Health");
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.prehistoric_bite_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.prehistoric_bite_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_blast_t1);
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_blast_t2);
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_slide_t1);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_slide_t2);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_slide_t3);
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.earth_barrier_t1);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.earth_barrier_t2);
                        addr110:
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.earth_barrier_t3);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_blast_t3,true);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.fortitude_t1);
                        if(_loc3_)
                        {
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.fortitude_t2);
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.fortitude_t3);
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr150:
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.perseverance_t2);
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.perseverance_t3);
                           }
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.perseverance_t4);
                           if(!_loc2_)
                           {
                              addr177:
                              _loc1_.AddMoveToTree(2,2,MinionMoveID.fortitude_t4,true);
                           }
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.fortitude_t5,true);
                           §§goto(addr191);
                        }
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr177);
               }
               §§goto(addr110);
            }
            addr191:
            _loc1_.AddMoveToTree(1,3,MinionMoveID.perseverance_t5,true);
            return _loc1_;
         }
         §§goto(addr110);
      }
      
      public function Tortoise_Buffs() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Buffs");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crazed_blast_t1);
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.crazed_blast_t2);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.crazed_blast_t3);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t1);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t2);
                  if(!_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t1);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t2);
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t3);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.solder_t1);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.solder_t2);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.solder_t3);
                        if(!_loc3_)
                        {
                           addr118:
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.tackle_t4,true);
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.tackle_t5,true);
                           if(_loc2_ || _loc3_)
                           {
                              addr139:
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.skillful_t5,true);
                              if(_loc2_ || _loc2_)
                              {
                                 _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t4);
                                 if(!_loc3_)
                                 {
                                    addr161:
                                    _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t5);
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr181:
                                       _loc1_.AddMoveToTree(1,2,MinionMoveID.hulk_inspiration_t3);
                                       addr187:
                                       _loc1_.AddMoveToTree(1,2,MinionMoveID.hulk_inspiration_t4);
                                       addr193:
                                       _loc1_.AddMoveToTree(1,3,MinionMoveID.hulk_inspiration_t5,true);
                                    }
                                    §§goto(addr193);
                                 }
                                 return _loc1_;
                              }
                           }
                           §§goto(addr187);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr181);
                  }
                  §§goto(addr118);
               }
               §§goto(addr181);
            }
            §§goto(addr139);
         }
         §§goto(addr181);
      }
      
      public function AntEater_Robot() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Robot");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.download_t1);
         if(_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.download_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.cog_fallout_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.cog_fallout_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.alloy_coat_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.alloy_coat_t2);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.download_t3,true);
               addr72:
               _loc1_.AddMoveToTree(0,1,MinionMoveID.download_t4,true);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.cog_fallout_t3,true);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t1);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t2);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t3);
               _loc1_.AddMoveToTree(0,2,MinionMoveID.download_t5,true);
               _loc1_.AddMoveToTree(1,2,MinionMoveID.twin_missile_t3);
               _loc1_.AddMoveToTree(1,2,MinionMoveID.twin_missile_t4);
               _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t5,true);
               _loc1_.AddMoveToTree(1,3,MinionMoveID.twin_missile_t5,true);
            }
            return _loc1_;
         }
         §§goto(addr72);
      }
      
      public function AntEater_Electric() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Electric");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spike_t1);
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.spike_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.spark_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.spark_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.spark_t3);
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t1);
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t2);
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t3);
                     if(!_loc2_)
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.quickness_t1);
                        if(_loc3_)
                        {
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.quickness_t2);
                           if(_loc3_)
                           {
                              _loc1_.AddMoveToTree(0,1,MinionMoveID.quickness_t3);
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.overload_t1);
                           }
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.overload_t2);
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t1);
                              if(_loc3_)
                              {
                                 §§goto(addr153);
                              }
                              §§goto(addr194);
                           }
                           _loc1_.AddMoveToTree(2,3,MinionMoveID.charge_pass_t4,true);
                           §§goto(addr194);
                        }
                        §§goto(addr167);
                     }
                     addr153:
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t2);
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t3);
                     if(_loc3_)
                     {
                        addr167:
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.quickness_t4,true);
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.overload_t3,true);
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.charge_pass_t2);
                        addr194:
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.charge_pass_t3);
                        if(_loc2_ && _loc2_)
                        {
                        }
                        §§goto(addr214);
                     }
                     addr214:
                     return _loc1_;
                  }
                  §§goto(addr167);
               }
            }
         }
         §§goto(addr167);
      }
      
      public function AntEater_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Energy");
         if(_loc2_ || Boolean(this))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t3);
            if(!_loc3_)
            {
               addr45:
               _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t3);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  §§goto(addr64);
               }
               §§goto(addr145);
            }
            addr64:
            _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t4);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.perseverance_t1);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.perseverance_t2);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.perseverance_t3);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.energize_t1);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.energize_t2);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.tire_t1);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.tire_t2);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.tire_t3);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_bash_t1);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_bash_t2);
               _loc1_.AddMoveToTree(0,2,MinionMoveID.blow_by_t1);
               addr145:
               _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t2);
               _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t3);
               _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t4);
               _loc1_.AddMoveToTree(2,2,MinionMoveID.purge_t1);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.invigorate_t5,true);
               }
            }
            return _loc1_;
         }
         §§goto(addr45);
      }
      
      public function Armadillo_Robot() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Robot");
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.platinum_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.platinum_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.mud_blast_t1);
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.mud_blast_t2);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.spike_t2);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.spike_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.spike_t4);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.solder_t1);
               if(_loc2_)
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.solder_t2);
                  if(!_loc3_)
                  {
                     addr97:
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.solder_t3);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.mud_blast_t3,true);
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.twin_missile_t1);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr130);
                        }
                        §§goto(addr176);
                     }
                     addr130:
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.twin_missile_t2);
                     §§goto(addr136);
                  }
                  §§goto(addr149);
               }
               addr136:
               _loc1_.AddMoveToTree(1,2,MinionMoveID.ore_drill_t3);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.ore_drill_t4);
                  addr149:
               }
               _loc1_.AddMoveToTree(2,2,MinionMoveID.twin_missile_t3,true);
               if(!(_loc3_ && _loc2_))
               {
                  addr176:
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.ore_drill_t5,true);
               }
               return _loc1_;
            }
         }
         §§goto(addr97);
      }
      
      public function Armadillo_Gaurd() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Guard");
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.overload_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.overload_t2);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t2);
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t3);
                  if(_loc3_)
                  {
                     addr67:
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.diamond_skin_t1);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.diamond_skin_t2);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.overload_t3,true);
                     if(_loc3_)
                     {
                        §§goto(addr95);
                     }
                     §§goto(addr141);
                  }
                  addr95:
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.charge_pass_t1);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.charge_pass_t2);
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.charge_pass_t3);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr127:
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.diamond_skin_t3,true);
                     }
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.diamond_skin_t4,true);
                     addr141:
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.diamond_skin_t5,true);
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.taunt_t3);
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.taunt_t4);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.burn_t1);
                     if(!_loc2_)
                     {
                        addr175:
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.burn_t2);
                     }
                  }
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.taunt_t5,true);
                  return _loc1_;
               }
               §§goto(addr127);
            }
            §§goto(addr67);
         }
         §§goto(addr175);
      }
      
      public function Armadillo_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.perseverance_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.perseverance_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.perseverance_t3);
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t1);
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.earth_barrier_t1);
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.earth_barrier_t2);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.earth_barrier_t3);
                  §§goto(addr101);
               }
               §§goto(addr172);
            }
            §§goto(addr166);
         }
         addr101:
         _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t4,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.tackle_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.tackle_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.destabilize_t1);
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.AddMoveToTree(0,2,MinionMoveID.destabilize_t2);
            addr166:
            _loc1_.AddMoveToTree(1,2,MinionMoveID.crush_t3);
            _loc1_.AddMoveToTree(1,2,MinionMoveID.crush_t4);
            _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t4,true);
            _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t5,true);
            addr172:
         }
         _loc1_.AddMoveToTree(1,3,MinionMoveID.crush_t5,true);
         return _loc1_;
      }
      
      public function Cheetah_Electric() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Electric");
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t2);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t3);
               _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t4);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.piercing_charge_t1);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.piercing_charge_t2);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.thunderstorm_t1);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.thunderstorm_t2);
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t1);
                        if(_loc2_)
                        {
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t2);
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t3);
                           addr112:
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.piercing_charge_t3,true);
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.thunderstorm_t3,true);
                           if(_loc2_ || _loc3_)
                           {
                              §§goto(addr133);
                           }
                        }
                        §§goto(addr170);
                     }
                     addr133:
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t4,true);
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t5,true);
                        if(_loc2_)
                        {
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.charge_blast_t3);
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.charge_blast_t4);
                           if(_loc2_)
                           {
                              addr170:
                              _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t1);
                              if(_loc2_ || Boolean(_loc1_))
                              {
                              }
                              §§goto(addr196);
                           }
                        }
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t2);
                        §§goto(addr196);
                     }
                     addr196:
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t3);
                     _loc1_.AddMoveToTree(1,3,MinionMoveID.charge_blast_t5,true);
                     return _loc1_;
                  }
                  §§goto(addr170);
               }
               §§goto(addr112);
            }
         }
         §§goto(addr170);
      }
      
      public function Cheetah_Support() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Support");
         if(_loc3_ || _loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t1);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t2);
            }
            _loc1_.AddMoveToTree(1,0,MinionMoveID.overload_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.overload_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.overload_t3);
            if(_loc3_ || _loc2_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t1);
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t2);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.reckless_dash_t3,true);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.roar_t1);
                     addr93:
                     if(!_loc2_)
                     {
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.roar_t2);
                        §§goto(addr114);
                     }
                     §§goto(addr166);
                  }
               }
               §§goto(addr114);
            }
            §§goto(addr93);
         }
         addr114:
         _loc1_.AddMoveToTree(1,1,MinionMoveID.roar_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t1);
         if(_loc3_ || _loc3_)
         {
            _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t2);
            _loc1_.AddMoveToTree(1,2,MinionMoveID.charge_pass_t3);
            if(_loc3_ || Boolean(_loc1_))
            {
               addr166:
               _loc1_.AddMoveToTree(1,2,MinionMoveID.charge_pass_t4);
               _loc1_.AddMoveToTree(2,2,MinionMoveID.agility_t5,true);
               §§goto(addr172);
            }
            §§goto(addr193);
         }
         addr172:
         if(_loc3_ || Boolean(_loc1_))
         {
            addr193:
            _loc1_.AddMoveToTree(0,3,MinionMoveID.stun_t1,true);
            _loc1_.AddMoveToTree(1,3,MinionMoveID.charge_pass_t5,true);
         }
         return _loc1_;
      }
      
      public function Cheetah_Inspire() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Inspire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.claw_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.claw_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t1);
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t2);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t3);
               §§goto(addr57);
            }
            §§goto(addr102);
         }
         addr57:
         _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t1);
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t3);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.claw_t5,true);
            _loc1_.AddMoveToTree(1,1,MinionMoveID.evil_eye_t1);
            addr102:
            _loc1_.AddMoveToTree(1,1,MinionMoveID.evil_eye_t2);
         }
         _loc1_.AddMoveToTree(2,1,MinionMoveID.tackle_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.tackle_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.agile_inspiration_t2);
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.AddMoveToTree(1,2,MinionMoveID.agile_inspiration_t3);
            _loc1_.AddMoveToTree(1,2,MinionMoveID.agile_inspiration_t4);
         }
         _loc1_.AddMoveToTree(2,2,MinionMoveID.static_pummel_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.static_pummel_t2);
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.AddMoveToTree(1,3,MinionMoveID.agile_inspiration_t5,true);
         }
         return _loc1_;
      }
      
      public function DC2Guy_DeathCall() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Death Call");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ore_drill_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ore_drill_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ore_drill_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.ferocity_t2);
         if(_loc3_ || _loc2_)
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.twin_missile_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.twin_missile_t2);
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.twin_missile_t3);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.download_t1);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.download_t2);
                  if(!_loc2_)
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.download_t3);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.ferocity_t3,true);
                        §§goto(addr119);
                     }
                     §§goto(addr160);
                  }
               }
               §§goto(addr140);
            }
            §§goto(addr133);
         }
         addr119:
         _loc1_.AddMoveToTree(1,1,MinionMoveID.ferocity_t5,true);
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            addr133:
            _loc1_.AddMoveToTree(2,1,MinionMoveID.twin_missile_t5,true);
            _loc1_.AddMoveToTree(0,2,MinionMoveID.download_t5,true);
            _loc1_.AddMoveToTree(1,2,MinionMoveID.death_call_t3);
            addr160:
            _loc1_.AddMoveToTree(1,2,MinionMoveID.death_call_t4);
            _loc1_.AddMoveToTree(1,3,MinionMoveID.death_call_t5,true);
            addr140:
         }
         return _loc1_;
      }
      
      public function DC2Guy_Debuffs() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_blast_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_blast_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_blast_t3);
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.slow_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.slow_t2);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_shot_t1);
            }
            _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_shot_t3);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_shot_t5);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t1);
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t3);
               }
               _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t4);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.slow_t4,true);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.slow_t5,true);
               addr124:
               _loc1_.AddMoveToTree(2,1,MinionMoveID.energize_t1);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.energize_t2);
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.energize_t3);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.concentration_t5,true);
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t3);
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t4);
                  }
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.tire_t5,true);
               }
            }
            return _loc1_;
         }
         §§goto(addr124);
      }
      
      public function DC2Guy_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Inspire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.grind_t1);
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.grind_t2);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.grind_t4);
               if(!_loc3_)
               {
                  addr47:
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.agility_t1);
                  if(_loc2_)
                  {
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.agility_t2);
                     §§goto(addr61);
                  }
                  §§goto(addr199);
               }
               §§goto(addr92);
            }
            addr61:
            _loc1_.AddMoveToTree(1,0,MinionMoveID.agility_t3);
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.spike_t1);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.spike_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.spike_t5);
               addr92:
               _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t1);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t2);
                  if(!_loc3_)
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t3);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t5,true);
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.reckless_dash_t1);
                        addr141:
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.reckless_dash_t3);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr154);
                        }
                     }
                     §§goto(addr178);
                  }
                  §§goto(addr199);
               }
               §§goto(addr141);
            }
            addr154:
            _loc1_.AddMoveToTree(2,1,MinionMoveID.reckless_dash_t5);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(0,2,MinionMoveID.energizing_inspiration_t1);
               if(_loc2_)
               {
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.energizing_inspiration_t2);
                  if(!_loc3_)
                  {
                     addr178:
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.energizing_inspiration_t3);
                     if(_loc2_)
                     {
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.crush_t3);
                        if(!(_loc3_ && _loc3_))
                        {
                           addr199:
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.crush_t4);
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.deadly_inspiration_t1);
                           if(_loc2_ || Boolean(this))
                           {
                           }
                           §§goto(addr231);
                        }
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.deadly_inspiration_t2);
                        §§goto(addr231);
                     }
                  }
               }
               §§goto(addr244);
            }
            addr231:
            _loc1_.AddMoveToTree(2,2,MinionMoveID.deadly_inspiration_t3);
            if(_loc2_ || Boolean(this))
            {
               addr244:
               _loc1_.AddMoveToTree(1,3,MinionMoveID.crush_t5,true);
               §§goto(addr251);
            }
            addr251:
            return _loc1_;
         }
         §§goto(addr47);
      }
      
      public function DogEel_Electric() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Electric");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.quickness_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t2);
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.spark_t2);
            if(_loc3_ || _loc2_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.spark_t3);
            }
            _loc1_.AddMoveToTree(0,1,MinionMoveID.quickness_t3,true);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.quickness_t4,true);
            _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t3,true);
            _loc1_.AddMoveToTree(2,1,MinionMoveID.static_pummel_t1);
            _loc1_.AddMoveToTree(2,1,MinionMoveID.static_pummel_t2);
            _loc1_.AddMoveToTree(1,2,MinionMoveID.blinding_jolt_t2);
            if(_loc3_ || _loc2_)
            {
               _loc1_.AddMoveToTree(1,2,MinionMoveID.blinding_jolt_t3);
               §§goto(addr128);
            }
            §§goto(addr143);
         }
         addr128:
         _loc1_.AddMoveToTree(1,2,MinionMoveID.blinding_jolt_t4);
         if(_loc3_)
         {
            addr143:
            _loc1_.AddMoveToTree(2,2,MinionMoveID.static_pummel_t3,true);
            _loc1_.AddMoveToTree(2,2,MinionMoveID.static_pummel_t4,true);
         }
         _loc1_.AddMoveToTree(1,3,MinionMoveID.blinding_jolt_t5,true);
         return _loc1_;
      }
      
      public function DogEel_Demonic() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Demonic");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.madness_t1);
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.madness_t2);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.madness_t3);
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.demonic_strike_t1);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.demonic_strike_t2);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr71);
                  }
                  §§goto(addr106);
               }
               §§goto(addr164);
            }
            §§goto(addr114);
         }
         addr71:
         _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t1);
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t2);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.bone_chill_t1);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.bone_chill_t2);
               addr106:
               _loc1_.AddMoveToTree(0,1,MinionMoveID.bone_chill_t3);
               if(_loc2_)
               {
                  addr114:
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.demonic_strike_t3,true);
                  §§goto(addr121);
               }
               §§goto(addr149);
            }
            §§goto(addr143);
         }
         addr121:
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t4,true);
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_force_t2);
            addr143:
            _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_force_t3);
            addr149:
            _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_force_t4);
            if(_loc2_)
            {
               addr164:
               _loc1_.AddMoveToTree(2,2,MinionMoveID.blood_ritual_t1);
               if(_loc2_)
               {
               }
               §§goto(addr178);
            }
            _loc1_.AddMoveToTree(2,2,MinionMoveID.blood_ritual_t2);
         }
         addr178:
         _loc1_.AddMoveToTree(1,3,MinionMoveID.demonic_force_t5,true);
         return _loc1_;
      }
      
      public function DogEel_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spike_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spike_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spike_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t1);
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.pound_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.pound_t2);
            if(_loc2_ || _loc2_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.pound_t3);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.spike_t4,true);
            }
            _loc1_.AddMoveToTree(0,1,MinionMoveID.spike_t5,true);
         }
         _loc1_.AddMoveToTree(1,1,MinionMoveID.crush_t1);
         if(_loc2_)
         {
            _loc1_.AddMoveToTree(1,1,MinionMoveID.crush_t2);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(1,1,MinionMoveID.crush_t3);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t1);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t2);
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t2);
                  if(!_loc3_)
                  {
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t3);
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t4);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t3,true);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t4,true);
                  }
                  §§goto(addr185);
               }
               _loc1_.AddMoveToTree(1,3,MinionMoveID.mirror_skin_t5,true);
            }
         }
         addr185:
         _loc1_.AddMoveToTree(2,3,MinionMoveID.slow_t5,true);
         return _loc1_;
      }
      
      public function Goo_Undead() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Undead");
         if(_loc2_ || _loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.forceful_heal_t1);
         }
         _loc1_.AddMoveToTree(0,0,MinionMoveID.forceful_heal_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.forceful_heal_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.infes_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.infes_t2);
         if(_loc2_ || _loc3_)
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.haunt_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.haunt_t2);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.flesh_sacrifice_t1);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.flesh_sacrifice_t2);
               if(_loc2_ || _loc3_)
               {
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.infes_t3,true);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.haunt_t3,true);
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.flesh_sacrifice_t3,true);
                     if(!_loc3_)
                     {
                        addr132:
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.flesh_sacrifice_t4,true);
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.ashen_reminder_t3);
                        if(!(_loc3_ && _loc3_))
                        {
                           addr159:
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.ashen_reminder_t4);
                           if(!_loc3_)
                           {
                              addr167:
                              _loc1_.AddMoveToTree(1,3,MinionMoveID.ashen_reminder_t5,true);
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr167);
               }
               §§goto(addr159);
            }
            §§goto(addr132);
         }
         §§goto(addr167);
      }
      
      public function Goo_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         if(_loc3_ || _loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t3);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t1);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t2);
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t3);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.wild_lance_t1);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.AddMoveToTree(2,0,MinionMoveID.wild_lance_t2);
                           _loc1_.AddMoveToTree(2,0,MinionMoveID.wild_lance_t3);
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.charge_pass_t1);
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.charge_pass_t2);
                           if(!_loc2_)
                           {
                              addr121:
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.tackle_t4,true);
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.tackle_t5,true);
                              §§goto(addr135);
                           }
                        }
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr162);
               }
               addr135:
               _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t1);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t2);
               if(_loc3_ || _loc3_)
               {
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3);
                  if(_loc3_)
                  {
                     addr162:
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.charge_pass_t3,true);
                     if(_loc3_)
                     {
                        addr171:
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.poison_tooth_t2);
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.poison_tooth_t3);
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t4,true);
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.AddMoveToTree(1,3,MinionMoveID.poison_tooth_t5,true);
                        }
                        addr177:
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr171);
               }
               return _loc1_;
            }
            §§goto(addr171);
         }
         §§goto(addr121);
      }
      
      public function Goo_DeBuffs() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mud_blast_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mud_blast_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mud_blast_t3);
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t2);
            if(_loc3_ || _loc3_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t3);
               if(_loc3_ || _loc2_)
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.tire_t1);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.tire_t2);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.tire_t3);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.mud_blast_t4,true);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.fortitude_t1);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr139:
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.fortitude_t2);
                     if(!_loc2_)
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.fortitude_t3);
                        if(!_loc2_)
                        {
                           addr155:
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.tire_t4,true);
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.tire_t5,true);
                           addr169:
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.slow_t3);
                           if(!(_loc2_ && _loc2_))
                           {
                              addr182:
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.slow_t4);
                              if(!(_loc2_ && _loc3_))
                              {
                                 _loc1_.AddMoveToTree(2,2,MinionMoveID.fortitude_t4,true);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr216:
                                    _loc1_.AddMoveToTree(2,2,MinionMoveID.fortitude_t5,true);
                                    if(_loc2_ && Boolean(_loc1_))
                                    {
                                    }
                                    §§goto(addr237);
                                 }
                                 addr237:
                                 return _loc1_;
                              }
                              §§goto(addr216);
                           }
                           _loc1_.AddMoveToTree(1,3,MinionMoveID.slow_t5,true);
                           §§goto(addr216);
                        }
                        §§goto(addr182);
                     }
                  }
                  §§goto(addr216);
               }
               §§goto(addr169);
            }
            §§goto(addr155);
         }
         §§goto(addr139);
      }
      
      public function Griffen_Flying() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Flying");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t2);
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.icy_blast_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.icy_blast_t2);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t5,true);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.wild_lance_t3,true);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.volley_t1);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.volley_t2);
                  addr99:
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.ice_shield_t1);
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.ice_shield_t2);
               }
               _loc1_.AddMoveToTree(1,2,MinionMoveID.cutting_wind_t3);
               _loc1_.AddMoveToTree(1,2,MinionMoveID.cutting_wind_t4);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.volley_t3,true);
               }
               _loc1_.AddMoveToTree(1,3,MinionMoveID.cutting_wind_t5,true);
            }
            return _loc1_;
         }
         §§goto(addr99);
      }
      
      public function Griffen_Electric() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Electric");
         if(_loc2_ || _loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t2);
            if(_loc2_ || _loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.peck_t2);
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.peck_t3);
                  if(_loc2_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t1);
                     if(!_loc3_)
                     {
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t2);
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t3);
                        addr85:
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.spark_t3,true);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.spark_t4,true);
                        addr106:
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.reckless_dash_t1);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.reckless_dash_t2);
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.reckless_dash_t3);
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t5,true);
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.spark_t5,true);
                              if(_loc2_ || Boolean(this))
                              {
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.thunderstorm_t3);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    _loc1_.AddMoveToTree(1,2,MinionMoveID.thunderstorm_t4);
                                    _loc1_.AddMoveToTree(2,2,MinionMoveID.fire_bolt_t1);
                                    addr191:
                                    _loc1_.AddMoveToTree(2,2,MinionMoveID.fire_bolt_t2);
                                    if(_loc2_)
                                    {
                                    }
                                    addr206:
                                    return _loc1_;
                                    addr172:
                                 }
                                 _loc1_.AddMoveToTree(1,3,MinionMoveID.thunderstorm_t5,true);
                                 §§goto(addr206);
                              }
                           }
                           §§goto(addr191);
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr191);
               }
               §§goto(addr106);
            }
         }
         §§goto(addr85);
      }
      
      public function Griffen_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Inspire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t4);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.fortitude_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.fortitude_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.fortitude_t3);
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(0,1,MinionMoveID.focus_t4,true);
            _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t1);
            _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t2);
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t3);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.invigorate_t1);
               addr124:
               _loc1_.AddMoveToTree(0,2,MinionMoveID.tire_t1);
               if(_loc2_ || _loc3_)
               {
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.tire_t2);
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.agility_t1);
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.agility_t2);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.invigorate_t2,true);
                     if(_loc2_)
                     {
                        addr178:
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.invigorate_t3,true);
                        if(!_loc3_)
                        {
                           addr187:
                           _loc1_.AddMoveToTree(1,3,MinionMoveID.agile_inspiration_t2,true);
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr187);
            }
            §§goto(addr178);
         }
         §§goto(addr124);
      }
      
      public function HummingBird_Robot() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Robot");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.batch_bolt_t1);
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.batch_bolt_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.cog_fallout_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.cog_fallout_t2);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t1);
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t2);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t3);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.batch_bolt_t3,true);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.batch_bolt_t4,true);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.cog_fallout_t3,true);
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t4,true);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr136);
                        }
                        §§goto(addr188);
                     }
                     addr136:
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t5,true);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.steel_spike_t3);
                        addr151:
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.steel_spike_t4);
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t1);
                        if(_loc3_)
                        {
                           addr165:
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t2);
                           if(_loc3_)
                           {
                           }
                           §§goto(addr188);
                        }
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t3);
                        if(_loc3_)
                        {
                           §§goto(addr188);
                        }
                        addr188:
                        _loc1_.AddMoveToTree(1,3,MinionMoveID.steel_spike_t5,true);
                        §§goto(addr195);
                     }
                     addr195:
                     _loc1_.AddMoveToTree(2,3,MinionMoveID.concentration_t5,true);
                     return _loc1_;
                  }
                  §§goto(addr151);
               }
               §§goto(addr188);
            }
         }
         §§goto(addr165);
      }
      
      public function HummingBird_Flying() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Flying");
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.peck_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.peck_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t3);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.charge_pass_t1);
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.charge_pass_t2);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.blow_by_t1);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.claw_t4,true);
                     if(_loc2_)
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t1);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t2);
                     }
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t3);
                  }
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.blow_by_t2,true);
                  if(!_loc3_)
                  {
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.blow_by_t3,true);
                     §§goto(addr134);
                  }
               }
               §§goto(addr176);
            }
            addr134:
            _loc1_.AddMoveToTree(1,2,MinionMoveID.hurricane_t2);
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.AddMoveToTree(1,2,MinionMoveID.hurricane_t3);
            }
            _loc1_.AddMoveToTree(2,2,MinionMoveID.agility_t4,true);
            §§goto(addr167);
         }
         addr167:
         _loc1_.AddMoveToTree(2,2,MinionMoveID.agility_t5,true);
         if(!_loc3_)
         {
            addr176:
            _loc1_.AddMoveToTree(1,3,MinionMoveID.hurricane_t4,true);
         }
         return _loc1_;
      }
      
      public function HummingBird_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         if(_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t1);
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t2);
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr59:
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t3);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t1);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t2);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t3);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t1);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t2);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.wild_lance_t5,true);
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t4,true);
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.reflect_damage_t3,true);
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.reflect_damage_t4,true);
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t2);
                           if(_loc3_ || _loc2_)
                           {
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t3);
                              if(_loc3_ || Boolean(this))
                              {
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t4);
                                 addr180:
                                 _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t1);
                                 if(!_loc2_)
                                 {
                                    addr188:
                                    _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t2);
                                 }
                                 addr201:
                                 return _loc1_;
                                 addr167:
                              }
                              _loc1_.AddMoveToTree(1,3,MinionMoveID.mirror_skin_t5,true);
                              §§goto(addr201);
                           }
                        }
                        §§goto(addr188);
                     }
                     §§goto(addr201);
                  }
               }
               §§goto(addr167);
            }
            §§goto(addr180);
         }
         §§goto(addr59);
      }
      
      public function JellyFish_Water() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Water");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.forceful_heal_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.forceful_heal_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.soak_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.soak_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.soak_t3);
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.fresh_stream_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.fresh_stream_t2);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.fresh_stream_t3);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.refreshing_wave_t1);
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.refreshing_wave_t3);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.refreshing_wave_t5);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.soak_t4,true);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.soak_t5,true);
                     if(!_loc2_)
                     {
                        addr126:
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t1);
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t2);
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t3);
                           §§goto(addr151);
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr213);
                  }
                  addr151:
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.priest_t2);
                  if(!_loc2_)
                  {
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.priest_t4);
                     if(_loc3_)
                     {
                        addr167:
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t2);
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t3);
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t4);
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t4,true);
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t5,true);
                        if(_loc3_ || Boolean(this))
                        {
                           addr213:
                           _loc1_.AddMoveToTree(0,3,MinionMoveID.priest_t5,true);
                        }
                     }
                  }
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.waterjet_t5,true);
                  return _loc1_;
               }
               §§goto(addr126);
            }
         }
         §§goto(addr213);
      }
      
      public function JellyFish_Electric() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Electric");
         if(_loc2_ || Boolean(this))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t2);
            if(_loc2_ || Boolean(_loc1_))
            {
               addr38:
               _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t3);
               if(_loc2_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t1);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t2);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t3);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.spark_t1);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.spark_t2);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.spark_t3);
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.crazed_blast_t1);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.quickness_t4,true);
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.charge_blast_t1);
                     if(!_loc3_)
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.charge_blast_t2);
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr157);
               }
               addr123:
               _loc1_.AddMoveToTree(1,2,MinionMoveID.overload_t2);
               §§goto(addr129);
            }
            addr129:
            _loc1_.AddMoveToTree(1,2,MinionMoveID.overload_t3);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(1,2,MinionMoveID.overload_t4);
               _loc1_.AddMoveToTree(2,2,MinionMoveID.charge_blast_t3,true);
               addr157:
               _loc1_.AddMoveToTree(2,2,MinionMoveID.charge_blast_t4,true);
               _loc1_.AddMoveToTree(1,3,MinionMoveID.overload_t5,true);
               _loc1_.AddMoveToTree(2,3,MinionMoveID.charge_blast_t5,true);
            }
            return _loc1_;
         }
         §§goto(addr38);
      }
      
      public function JellyFish_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.wild_lance_t1);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.wild_lance_t3);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.grind_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.grind_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.grind_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t1);
               if(!_loc3_)
               {
                  addr65:
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t2);
                  addr71:
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t3);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.mirror_skin_t1);
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.mirror_skin_t2);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.grind_t4,true);
                     if(!_loc3_)
                     {
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.grind_t5,true);
                        if(_loc2_)
                        {
                           addr121:
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.energize_t1);
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.energize_t2);
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t3,true);
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t4,true);
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.reflect_damage_t2);
                              if(_loc3_)
                              {
                              }
                              §§goto(addr176);
                           }
                        }
                        _loc1_.AddMoveToTree(0,3,MinionMoveID.mirror_skin_t5,true);
                        §§goto(addr176);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr176);
               }
               addr176:
               _loc1_.AddMoveToTree(1,3,MinionMoveID.reflect_damage_t3,true);
               return _loc1_;
            }
            §§goto(addr71);
         }
         §§goto(addr65);
      }
      
      public function RoboShark_Water() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Water");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.soak_t1);
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.soak_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.soak_t3);
         }
         _loc1_.AddMoveToTree(1,0,MinionMoveID.water_slam_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.water_slam_t2);
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t2);
         }
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.soak_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.bone_chill_t1);
         if(_loc2_)
         {
            _loc1_.AddMoveToTree(1,1,MinionMoveID.bone_chill_t3);
            _loc1_.AddMoveToTree(1,1,MinionMoveID.bone_chill_t4);
            _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t5,true);
            _loc1_.AddMoveToTree(0,2,MinionMoveID.concentration_t3);
            _loc1_.AddMoveToTree(1,2,MinionMoveID.fresh_stream_t3);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(1,2,MinionMoveID.fresh_stream_t4);
               _loc1_.AddMoveToTree(2,2,MinionMoveID.waterjet_t1);
               if(_loc2_)
               {
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.waterjet_t2);
                  if(_loc2_)
                  {
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.waterjet_t3);
                  }
               }
               _loc1_.AddMoveToTree(1,3,MinionMoveID.fresh_stream_t5,true);
            }
         }
         return _loc1_;
      }
      
      public function RoboShark_Gaurd() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Guard");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.taunt_t1);
         if(_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.taunt_t3);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.taunt_t5);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.steel_spike_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.steel_spike_t2);
               if(_loc2_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.steel_spike_t3);
                  if(!_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.spike_t1);
                     if(_loc2_)
                     {
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.spike_t2);
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.spike_t3);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.metal_mold_t1);
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.metal_mold_t2);
                           if(!_loc3_)
                           {
                              _loc1_.AddMoveToTree(0,1,MinionMoveID.metal_mold_t3);
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.steel_spike_t5,true);
                              if(_loc2_ || Boolean(this))
                              {
                                 _loc1_.AddMoveToTree(2,1,MinionMoveID.diamond_skin_t1);
                                 if(!_loc3_)
                                 {
                                    addr138:
                                    _loc1_.AddMoveToTree(2,1,MinionMoveID.diamond_skin_t2);
                                    §§goto(addr144);
                                 }
                              }
                              §§goto(addr173);
                           }
                           §§goto(addr157);
                        }
                        addr144:
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.diamond_skin_t3);
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr157:
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.metal_mold_t4,true);
                           addr164:
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.metal_mold_t5,true);
                           if(!_loc3_)
                           {
                              addr173:
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.solder_t3);
                              if(_loc2_ || _loc3_)
                              {
                              }
                              §§goto(addr192);
                           }
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.solder_t4);
                        }
                        addr192:
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.diamond_skin_t4,true);
                        if(_loc2_ || _loc3_)
                        {
                           addr213:
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.diamond_skin_t5,true);
                           if(_loc2_)
                           {
                              addr222:
                              _loc1_.AddMoveToTree(1,3,MinionMoveID.solder_t5,true);
                           }
                           §§goto(addr229);
                        }
                        addr229:
                        return _loc1_;
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr222);
               }
               §§goto(addr213);
            }
            §§goto(addr164);
         }
         §§goto(addr222);
      }
      
      public function RoboShark_Robot() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Robot");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.cog_fallout_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.cog_fallout_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tire_t1);
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.tire_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t3);
            if(_loc3_ || _loc2_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t5);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.cog_fallout_t4,true);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.ferocity_t1);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.ferocity_t2);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.ferocity_t3);
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr109);
               }
               §§goto(addr156);
            }
            §§goto(addr129);
         }
         addr109:
         _loc1_.AddMoveToTree(2,1,MinionMoveID.download_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.download_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.twin_missile_t3);
         if(_loc3_)
         {
            addr129:
            _loc1_.AddMoveToTree(0,2,MinionMoveID.twin_missile_t4);
            _loc1_.AddMoveToTree(1,2,MinionMoveID.ferocity_t5,true);
            _loc1_.AddMoveToTree(2,2,MinionMoveID.download_t3,true);
            addr156:
            _loc1_.AddMoveToTree(2,2,MinionMoveID.download_t4,true);
            _loc1_.AddMoveToTree(0,3,MinionMoveID.twin_missile_t5,true);
            _loc1_.AddMoveToTree(2,3,MinionMoveID.download_t5,true);
         }
         return _loc1_;
      }
      
      public function Scorpion_Electric() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Electric");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t3);
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t4);
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.charge_pass_t1);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.charge_pass_t2);
               if(_loc2_ || _loc3_)
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t1);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t2);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr113);
                  }
                  §§goto(addr126);
               }
               §§goto(addr151);
            }
            addr113:
            _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t3);
            if(_loc2_ || Boolean(this))
            {
               addr126:
               _loc1_.AddMoveToTree(1,1,MinionMoveID.quickness_t5,true);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.charge_pass_t3,true);
               }
               _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t4,true);
               if(_loc2_)
               {
                  addr151:
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t5,true);
                  §§goto(addr158);
               }
               §§goto(addr191);
            }
            addr158:
            _loc1_.AddMoveToTree(1,2,MinionMoveID.overload_t2);
            _loc1_.AddMoveToTree(1,2,MinionMoveID.overload_t3);
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.AddMoveToTree(2,2,MinionMoveID.charge_pass_t4,true);
               addr191:
               _loc1_.AddMoveToTree(1,3,MinionMoveID.overload_t4,true);
            }
            return _loc1_;
         }
         §§goto(addr151);
      }
      
      public function Scorpion_Ground() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Earth");
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_skin_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_skin_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_slide_t1);
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_slide_t2);
               addr57:
               _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_slide_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t1);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t2);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t3);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.rock_skin_t3,true);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.rock_skin_t4,true);
                     if(!_loc2_)
                     {
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_slide_t4,true);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.fortitude_t1);
                        addr126:
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.fortitude_t2);
                        if(_loc3_)
                        {
                           addr134:
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.fortitude_t3);
                           if(_loc3_)
                           {
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.rock_skin_t5,true);
                           }
                        }
                        §§goto(addr168);
                     }
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.rock_throw_t3);
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.rock_throw_t4);
                     addr168:
                     _loc1_.AddMoveToTree(1,3,MinionMoveID.rock_throw_t5,true);
                     return _loc1_;
                  }
                  §§goto(addr126);
               }
               §§goto(addr134);
            }
            §§goto(addr126);
         }
         §§goto(addr57);
      }
      
      public function Scorpion_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t1);
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.earthquake_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.earthquake_t2);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.earthquake_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t2);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t4);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.tackle_t5,true);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.earthquake_t4,true);
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t1);
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t2);
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t1);
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t2);
                     if(_loc3_ || _loc3_)
                     {
                        addr143:
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t3);
                     }
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.spike_t3);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t3,true);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t4,true);
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr183:
                        _loc1_.AddMoveToTree(1,3,MinionMoveID.spike_t5,true);
                     }
                  }
                  §§goto(addr143);
               }
               return _loc1_;
            }
            §§goto(addr183);
         }
         §§goto(addr143);
      }
      
      public function WaterHorse_Water() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Water");
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t4);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.soak_t1);
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.soak_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.soak_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.hailstone_t1);
               if(_loc2_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.hailstone_t3);
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.hailstone_t4);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t1);
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t2);
                        if(!_loc3_)
                        {
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t3);
                           addr105:
                        }
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.soak_t5,true);
                        if(!_loc3_)
                        {
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.overflow_t1);
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.overflow_t3);
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.overflow_t5);
                        }
                        §§goto(addr215);
                     }
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t4,true);
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t5,true);
                        if(!_loc3_)
                        {
                           §§goto(addr168);
                        }
                        §§goto(addr195);
                     }
                  }
                  addr168:
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t2);
                  if(!_loc3_)
                  {
                     addr176:
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t3);
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t4);
                        addr195:
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.coldfront_t1);
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr215);
                        }
                        §§goto(addr228);
                     }
                  }
                  §§goto(addr215);
               }
               addr215:
               _loc1_.AddMoveToTree(2,2,MinionMoveID.coldfront_t2);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr228:
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.waterjet_t5,true);
               }
               return _loc1_;
            }
            §§goto(addr105);
         }
         §§goto(addr176);
      }
      
      public function WaterHorse_Electric() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Electric");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.thunderstorm_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.thunderstorm_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.thunderstorm_t4);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t3);
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(0,1,MinionMoveID.spark_t5,true);
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.AddMoveToTree(1,1,MinionMoveID.concentration_t1);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.concentration_t3);
               if(_loc2_ || Boolean(this))
               {
                  addr108:
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t4,true);
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t5,true);
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.overload_t2);
                     if(_loc2_)
                     {
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.overload_t3);
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.overload_t4);
                           if(_loc2_ || _loc2_)
                           {
                              addr163:
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.concentration_t5,true);
                              if(_loc2_)
                              {
                                 _loc1_.AddMoveToTree(2,2,MinionMoveID.quickness_t1);
                              }
                              §§goto(addr197);
                           }
                           §§goto(addr191);
                        }
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.quickness_t2);
                     }
                     addr191:
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.quickness_t3);
                  }
                  §§goto(addr197);
               }
               addr197:
               _loc1_.AddMoveToTree(0,3,MinionMoveID.overload_t5,true);
               return _loc1_;
            }
            §§goto(addr163);
         }
         §§goto(addr108);
      }
      
      public function WaterHorse_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.claw_t2);
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.claw_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.energize_t1);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.energize_t2);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t1);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t2);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t3);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.claw_t5,true);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t1);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t2);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t3);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.skillful_t5,true);
                  §§goto(addr105);
               }
            }
            §§goto(addr152);
         }
         addr105:
         _loc1_.AddMoveToTree(0,2,MinionMoveID.agile_inspiration_t1);
         if(_loc2_)
         {
            _loc1_.AddMoveToTree(0,2,MinionMoveID.agile_inspiration_t2);
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.AddMoveToTree(1,2,MinionMoveID.reflect_damage_t4,true);
               _loc1_.AddMoveToTree(2,2,MinionMoveID.mending_inspiration_t1);
            }
            _loc1_.AddMoveToTree(2,2,MinionMoveID.mending_inspiration_t2);
            addr152:
            _loc1_.AddMoveToTree(0,3,MinionMoveID.agile_inspiration_t3,true);
            _loc1_.AddMoveToTree(1,3,MinionMoveID.diamond_skin_t5,true);
            _loc1_.AddMoveToTree(2,3,MinionMoveID.mending_inspiration_t3,true);
         }
         return _loc1_;
      }
      
      public function BatDemon_Fire() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_bash_t1);
         }
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_bash_t2);
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_bash_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.burn_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.burn_t2);
            if(_loc2_ || Boolean(this))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.burn_t3);
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_blast_t1);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_blast_t2);
                  if(_loc2_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_blast_t3);
                     addr109:
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.fire_bash_t5,true);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.burn_t5,true);
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.sear_t4);
                     if(!_loc3_)
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.sear_t5);
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.inflame_t1);
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.inflame_t2);
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.inflame_t3);
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.inflame_t4);
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.fire_blast_t4);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.intense_flame_t1);
                           §§goto(addr180);
                        }
                        §§goto(addr200);
                     }
                  }
                  addr180:
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.intense_flame_t2);
                  if(!(_loc3_ && _loc2_))
                  {
                     addr200:
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.intense_flame_t4);
                     _loc1_.AddMoveToTree(2,3,MinionMoveID.intense_flame_t5,true);
                     if(!_loc3_)
                     {
                        _loc1_.AddMoveToTree(1,3,MinionMoveID.fire_blast_t5,true);
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr109);
      }
      
      public function BatDemon_Demonic() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Demonic");
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_ritual_t1);
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_ritual_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.crazed_blast_t1);
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.crazed_blast_t2);
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr70:
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.crazed_blast_t3);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t1);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t3);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t5);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.blood_ritual_t5,true);
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.crazed_blast_t5,true);
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t1);
                           if(!_loc3_)
                           {
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t2);
                              addr143:
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3);
                              if(_loc2_ || _loc2_)
                              {
                                 addr156:
                                 _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t1);
                                 addr162:
                                 _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t2);
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_force_t3);
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_force_t4);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr187:
                                    _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t5,true);
                                    if(_loc2_ || _loc2_)
                                    {
                                       _loc1_.AddMoveToTree(0,3,MinionMoveID.vicious_t3,true);
                                       if(!_loc3_)
                                       {
                                          addr217:
                                          _loc1_.AddMoveToTree(1,3,MinionMoveID.demonic_force_t5,true);
                                       }
                                    }
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr162);
                           }
                           return _loc1_;
                        }
                        §§goto(addr217);
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr187);
               }
               §§goto(addr162);
            }
            §§goto(addr156);
         }
         §§goto(addr70);
      }
      
      public function BatDemon_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Inspire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t5);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t4);
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t1);
         }
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.agility_t1);
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.AddMoveToTree(0,1,MinionMoveID.agility_t2);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.agility_t3);
         }
         _loc1_.AddMoveToTree(1,1,MinionMoveID.claw_t5,true);
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t1);
            _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t2);
            _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t3);
            _loc1_.AddMoveToTree(0,2,MinionMoveID.agility_t5,true);
            _loc1_.AddMoveToTree(1,2,MinionMoveID.deadly_inspiration_t2);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(1,2,MinionMoveID.deadly_inspiration_t3);
               _loc1_.AddMoveToTree(1,2,MinionMoveID.deadly_inspiration_t4);
               _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t1);
               _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t2);
               if(!_loc2_)
               {
                  addr187:
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t3);
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.deadly_inspiration_t5,true);
               }
            }
            return _loc1_;
         }
         §§goto(addr187);
      }
      
      public function HolyBell_Fire() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mortify_t1);
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.mortify_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.mortify_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t2);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t3);
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.burn_t2);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.burn_t3);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.burn_t4);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.intense_flame_t1);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.intense_flame_t2);
                  addr108:
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.vicious_t4,true);
                  addr77:
               }
               _loc1_.AddMoveToTree(1,1,MinionMoveID.vicious_t5,true);
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.wildfire_t1);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.wildfire_t2);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.wildfire_t3);
                  }
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.intense_flame_t3,true);
               }
               _loc1_.AddMoveToTree(1,2,MinionMoveID.touch_fire_t3);
               _loc1_.AddMoveToTree(1,2,MinionMoveID.touch_fire_t4);
               _loc1_.AddMoveToTree(1,3,MinionMoveID.touch_fire_t5,true);
               return _loc1_;
            }
            §§goto(addr108);
         }
         §§goto(addr77);
      }
      
      public function HolyBell_Holy() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Holy");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ice_shield_t1);
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.ice_shield_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.cleansing_heal_t1);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.cleansing_heal_t2);
            if(_loc3_ || _loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.cleansing_heal_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.penance_t1);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.penance_t2);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.brilliance_t1);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.brilliance_t2);
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.brilliance_t3);
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.cleansing_heal_t4,true);
                     if(_loc3_)
                     {
                        addr123:
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.penance_t3,true);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.penance_t4,true);
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.hope_t3);
                        addr143:
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.hope_t4);
                        §§goto(addr149);
                     }
                     §§goto(addr195);
                  }
                  addr149:
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t1);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t2);
                     if(!_loc2_)
                     {
                        addr165:
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t3);
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t4);
                        if(_loc3_)
                        {
                           _loc1_.AddMoveToTree(1,3,MinionMoveID.hope_t5,true);
                           if(!_loc2_)
                           {
                              addr195:
                              _loc1_.AddMoveToTree(2,3,MinionMoveID.cleric_t5,true);
                           }
                        }
                     }
                     §§goto(addr195);
                  }
                  return _loc1_;
               }
               §§goto(addr143);
            }
            §§goto(addr123);
         }
         §§goto(addr165);
      }
      
      public function HolyBell_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Energy");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.flare_up_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.flare_up_t2);
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.flare_up_t3);
            if(_loc3_ || _loc3_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.blow_by_t1);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.blow_by_t2);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t1);
                  addr71:
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t2);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t3);
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.purge_t1);
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.tire_t1);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.tire_t2);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.tire_t3);
                     }
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t4,true);
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t5,true);
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t2);
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t3);
                        §§goto(addr155);
                     }
                     §§goto(addr181);
                  }
               }
               §§goto(addr175);
            }
            §§goto(addr71);
         }
         addr155:
         if(_loc3_ || _loc2_)
         {
            addr175:
            _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t4);
            addr181:
            _loc1_.AddMoveToTree(1,3,MinionMoveID.invigorate_t5,true);
         }
         return _loc1_;
      }
      
      public function Crow_Demonic() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Demonic");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.hailstone_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.hailstone_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.hailstone_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.lich_burn_t1);
         if(_loc3_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.lich_burn_t2);
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.burn_t1);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.burn_t2);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.burn_t3);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t1);
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t2);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t3);
                        addr98:
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.lich_burn_t3,true);
                           if(!(_loc2_ && _loc2_))
                           {
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.crazed_blast_t1);
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.crazed_blast_t2);
                           }
                        }
                        §§goto(addr204);
                     }
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t4,true);
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_strike_t3);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_strike_t4);
                        if(_loc3_ || _loc3_)
                        {
                           addr178:
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.evil_eye_t1);
                        }
                        §§goto(addr204);
                     }
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.evil_eye_t2);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr204);
                     }
                     §§goto(addr212);
                  }
                  addr204:
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.evil_eye_t3);
                  if(!_loc2_)
                  {
                     addr212:
                     _loc1_.AddMoveToTree(1,3,MinionMoveID.demonic_strike_t5,true);
                     §§goto(addr219);
                  }
                  addr219:
                  return _loc1_;
               }
               §§goto(addr212);
            }
            §§goto(addr98);
         }
         §§goto(addr178);
      }
      
      public function Crow_Flying() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Flying");
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.wild_lance_t1);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.wild_lance_t2);
               _loc1_.AddMoveToTree(0,0,MinionMoveID.wild_lance_t3);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.cutting_wind_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.cutting_wind_t2);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.volley_t1);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.volley_t2);
                  if(!_loc2_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.volley_t3);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t1);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t3);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.cutting_wind_t3,true);
                     §§goto(addr106);
                  }
                  §§goto(addr172);
               }
               §§goto(addr133);
            }
            addr106:
            _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t1);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t2);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t3);
               if(_loc3_ || _loc2_)
               {
                  addr133:
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.blow_by_t1);
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.peck_t3);
                     addr159:
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.peck_t4);
                     addr146:
                  }
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.quickness_t4,true);
                  addr172:
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.peck_t5,true);
                  §§goto(addr179);
               }
               §§goto(addr159);
            }
            addr179:
            return _loc1_;
         }
         §§goto(addr146);
      }
      
      public function Crow_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t3);
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t4);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.energize_t1);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.energize_t2);
            if(_loc3_ || _loc3_)
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.efficiency_t5,true);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.claw_t5,true);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_coating_t1);
               if(_loc3_ || _loc3_)
               {
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_coating_t2);
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t2);
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t3);
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t4);
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_coating_t3,true);
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_coating_t4,true);
                  addr160:
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.tire_t5,true);
               }
            }
            return _loc1_;
         }
         §§goto(addr160);
      }
      
      public function EvilEye_Debuffs() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.coldfront_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.coldfront_t2);
         if(_loc3_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t1);
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t3);
               if(_loc3_ || _loc3_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.forceful_heal_t1);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.forceful_heal_t2);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.forceful_heal_t3);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.priest_t1);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.priest_t2);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.priest_t3);
                        §§goto(addr112);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr174);
               }
               addr112:
               _loc1_.AddMoveToTree(1,1,MinionMoveID.quickness_t4,true);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.quickness_t5,true);
                  if(_loc3_)
                  {
                     addr130:
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.tire_t1);
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.tire_t2);
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.tire_t3);
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.demoralize_t1);
                  }
                  addr174:
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t4,true);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr195);
                  }
                  §§goto(addr209);
               }
               _loc1_.AddMoveToTree(0,2,MinionMoveID.demoralize_t2);
               _loc1_.AddMoveToTree(0,2,MinionMoveID.demoralize_t3);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.evil_eye_t4);
                  §§goto(addr174);
               }
               addr195:
               _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t5,true);
               if(_loc3_ || Boolean(this))
               {
                  addr209:
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.evil_eye_t5,true);
               }
               return _loc1_;
            }
         }
         §§goto(addr130);
      }
      
      public function EvilEye_Demonic() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Demonic");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_ritual_t1);
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_ritual_t2);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t1);
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.icy_blast_t1);
               if(_loc2_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.icy_blast_t2);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.blood_ritual_t3,true);
                  if(_loc2_)
                  {
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.demonic_force_t1);
                     if(!_loc3_)
                     {
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.demonic_force_t2);
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.demonic_force_t3);
                        }
                        §§goto(addr114);
                     }
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_strike_t3);
                     if(!_loc3_)
                     {
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_strike_t4);
                        if(_loc2_)
                        {
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t4,true);
                        }
                        _loc1_.AddMoveToTree(1,3,MinionMoveID.demonic_strike_t5,true);
                     }
                  }
                  §§goto(addr114);
               }
            }
            addr114:
            _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t1);
            §§goto(addr120);
         }
         addr120:
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_strike_t2);
         if(_loc3_ && Boolean(this))
         {
         }
         return _loc1_;
      }
      
      public function EvilEye_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Mixed");
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.flare_up_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.flare_up_t2);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.concentration_t1);
               if(!(_loc2_ && Boolean(this)))
               {
                  addr48:
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.concentration_t2);
                  if(!_loc2_)
                  {
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.concentration_t3);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_sacrifice_t1);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_sacrifice_t2);
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_sacrifice_t3);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.ice_enclosure_t1);
                        if(!_loc2_)
                        {
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.ice_enclosure_t2);
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.concentration_t4,true);
                              addr122:
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.concentration_t5,true);
                              if(!_loc2_)
                              {
                                 _loc1_.AddMoveToTree(2,1,MinionMoveID.touch_fire_t1);
                                 addr137:
                                 _loc1_.AddMoveToTree(2,1,MinionMoveID.touch_fire_t2);
                                 if(!_loc2_)
                                 {
                                    _loc1_.AddMoveToTree(1,2,MinionMoveID.spike_t3);
                                    §§goto(addr151);
                                 }
                              }
                              §§goto(addr194);
                           }
                           §§goto(addr164);
                        }
                        addr151:
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.spike_t4);
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr164:
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.touch_fire_t3,true);
                           if(_loc3_ || _loc2_)
                           {
                              addr185:
                              _loc1_.AddMoveToTree(2,2,MinionMoveID.touch_fire_t4,true);
                              if(!_loc2_)
                              {
                                 addr194:
                                 _loc1_.AddMoveToTree(1,3,MinionMoveID.spike_t5,true);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr122);
               }
               §§goto(addr137);
            }
            §§goto(addr48);
         }
         §§goto(addr122);
      }
      
      public function FireGhost_Undead() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Undead");
         if(_loc2_ || _loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.phantom_strike_t1);
         }
         _loc1_.AddMoveToTree(0,0,MinionMoveID.phantom_strike_t2);
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.phantom_strike_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.focus_t1);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.focus_t2);
               if(_loc2_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.focus_t3);
                  if(!_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_force_t1);
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_force_t2);
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.phantom_strike_t4,true);
                           if(_loc2_ || _loc2_)
                           {
                              addr121:
                              _loc1_.AddMoveToTree(0,1,MinionMoveID.phantom_strike_t5,true);
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.focus_t5,true);
                           }
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.haunt_t1);
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.haunt_t2);
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.lich_burn_t3);
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.lich_burn_t4);
                           addr166:
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.haunt_t3,true);
                        }
                     }
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.haunt_t4,true);
                     addr180:
                     _loc1_.AddMoveToTree(1,3,MinionMoveID.lich_burn_t5,true);
                     §§goto(addr187);
                  }
                  §§goto(addr121);
               }
               addr187:
               return _loc1_;
            }
            §§goto(addr180);
         }
         §§goto(addr166);
      }
      
      public function FireGhost_Fire() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.burn_t2);
         if(_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.burn_t3);
            if(_loc2_ || Boolean(this))
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.burn_t4);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.touch_fire_t1);
               if(_loc2_ || _loc2_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.touch_fire_t2);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.intense_flame_t1);
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.intense_flame_t2);
                     if(_loc2_)
                     {
                        addr85:
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.fire_blast_t1);
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.fire_blast_t2);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr118:
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.touch_fire_t3,true);
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 _loc1_.AddMoveToTree(1,1,MinionMoveID.touch_fire_t4,true);
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t1);
                                    _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t2);
                                    _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t3);
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr171:
                                       _loc1_.AddMoveToTree(1,2,MinionMoveID.flare_up_t3);
                                    }
                                    _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t4,true);
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       addr198:
                                       _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t5,true);
                                    }
                                 }
                              }
                              _loc1_.AddMoveToTree(1,3,MinionMoveID.flare_up_t5,true);
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr198);
               }
               §§goto(addr118);
            }
            §§goto(addr85);
         }
         §§goto(addr171);
      }
      
      public function FireGhost_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t1);
         if(_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t2);
            if(_loc2_ || Boolean(this))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.blood_ritual_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.blood_ritual_t2);
               if(_loc2_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t1);
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t2);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t3);
                     addr85:
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.tackle_t3,true);
                     if(_loc2_)
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.tackle_t4,true);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.blood_ritual_t3,true);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.invigorate_t1);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.invigorate_t2);
                        §§goto(addr120);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr166);
               }
               addr120:
               _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_coating_t1);
               if(_loc2_)
               {
                  addr128:
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_coating_t2);
                  addr134:
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_coating_t3);
               }
               _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t3);
               if(_loc2_ || _loc3_)
               {
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t4);
                  addr166:
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.tire_t5,true);
               }
               return _loc1_;
            }
            §§goto(addr128);
         }
         §§goto(addr85);
      }
      
      public function HolyStrongMan_Damage() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Holy");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.holy_strike_t1);
         if(_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.holy_strike_t2);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.holy_strike_t3);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.penance_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.penance_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.penance_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t1);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t3);
               if(_loc2_ || _loc2_)
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.holy_strike_t5,true);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.penance_t5,true);
                  addr98:
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t1);
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t2);
                     if(_loc2_ || _loc2_)
                     {
                        addr124:
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t3);
                        addr130:
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.fire_bash_t1);
                        if(_loc2_)
                        {
                           addr138:
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.fire_bash_t2);
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.fire_bash_t3);
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.crusade_t3);
                        }
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.crusade_t4);
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t5,true);
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.AddMoveToTree(1,3,MinionMoveID.crusade_t5,true);
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr124);
               }
               §§goto(addr130);
            }
            §§goto(addr138);
         }
         §§goto(addr98);
      }
      
      public function HolyStrongMan_Darkness() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Darkness");
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.madness_t1);
            if(_loc3_ || Boolean(this))
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.madness_t2);
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.cleric_t1);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.cleric_t2);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.cleric_t3);
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_strike_t1);
                     addr78:
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_strike_t2);
                     if(_loc3_ || _loc2_)
                     {
                        addr91:
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_strike_t3);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.madness_t3,true);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.madness_t4,true);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.cleric_t5,true);
                        if(_loc3_ || Boolean(this))
                        {
                           addr132:
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.demonic_sacrifice_t1);
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.demonic_sacrifice_t2);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr158:
                                 _loc1_.AddMoveToTree(0,2,MinionMoveID.purge_t1);
                                 if(_loc3_)
                                 {
                                    addr166:
                                    _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_bargain_t3);
                                    _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_bargain_t4);
                                 }
                                 _loc1_.AddMoveToTree(2,2,MinionMoveID.demonic_sacrifice_t3,true);
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    _loc1_.AddMoveToTree(2,2,MinionMoveID.demonic_sacrifice_t4,true);
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr213:
                                       _loc1_.AddMoveToTree(1,3,MinionMoveID.demonic_bargain_t5,true);
                                    }
                                 }
                                 §§goto(addr213);
                              }
                              return _loc1_;
                           }
                           §§goto(addr158);
                        }
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr91);
               }
               §§goto(addr213);
            }
            §§goto(addr132);
         }
         §§goto(addr78);
      }
      
      public function HolyStrongMan_Inspire() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Inspire");
         if(_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t2);
            if(_loc2_ || Boolean(this))
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t3);
               if(_loc2_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t1);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t3);
                  if(!_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t2);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t3);
                     if(_loc2_)
                     {
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t4);
                        if(_loc2_)
                        {
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.efficiency_t5,true);
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.fortitude_t1);
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 _loc1_.AddMoveToTree(1,1,MinionMoveID.fortitude_t2);
                                 if(_loc2_)
                                 {
                                    _loc1_.AddMoveToTree(1,1,MinionMoveID.fortitude_t3);
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr138:
                                       _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t1);
                                       if(!_loc3_)
                                       {
                                          addr146:
                                          _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t2);
                                       }
                                       addr197:
                                       _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t3,true);
                                    }
                                 }
                                 §§goto(addr204);
                              }
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.reflect_damage_t1);
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.reflect_damage_t2);
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.reflect_damage_t3);
                              if(!(_loc3_ && _loc2_))
                              {
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.deadly_inspiration_t2);
                                 if(_loc3_ && _loc3_)
                                 {
                                 }
                              }
                              §§goto(addr204);
                           }
                           addr204:
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t5,true);
                           _loc1_.AddMoveToTree(1,3,MinionMoveID.deadly_inspiration_t3,true);
                           return _loc1_;
                        }
                        §§goto(addr197);
                     }
                  }
               }
               §§goto(addr138);
            }
            §§goto(addr146);
         }
         §§goto(addr138);
      }
      
      public function IceDeer_Ice() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Ice");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ferocity_t1);
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.ferocity_t2);
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.ferocity_t3);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.hailstone_t1);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.hailstone_t2);
                  if(_loc2_)
                  {
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.hailstone_t3);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.blow_by_t1);
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.blow_by_t2);
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.blow_by_t3);
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t4,true);
                        if(!_loc3_)
                        {
                           addr113:
                           _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t5,true);
                           if(_loc2_)
                           {
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.hailstone_t5,true);
                              §§goto(addr129);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr137);
                  }
                  addr129:
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.bone_chill_t1);
                  if(_loc2_)
                  {
                     addr137:
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.bone_chill_t2);
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.bone_chill_t3);
                     addr149:
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.sleet_t3);
                     addr155:
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.sleet_t4);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.bone_chill_t4,true);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.bone_chill_t5,true);
                     if(!_loc3_)
                     {
                        _loc1_.AddMoveToTree(1,3,MinionMoveID.sleet_t5,true);
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr155);
            }
         }
         §§goto(addr113);
      }
      
      public function IceDeer_Healing() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Shield");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ice_shield_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ice_shield_t2);
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.ice_shield_t3);
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.cleric_t1);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.cleric_t2);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.cleric_t3);
                  if(!_loc2_)
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.ice_barrier_t1);
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.ice_barrier_t2);
                        if(_loc3_ || _loc2_)
                        {
                           addr119:
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.concentration_t1);
                           addr125:
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.concentration_t2);
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.AddMoveToTree(1,1,MinionMoveID.concentration_t3);
                              addr144:
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.cleric_t4,true);
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.cleric_t5,true);
                           }
                           §§goto(addr144);
                        }
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.ice_barrier_t3,true);
                        if(_loc3_)
                        {
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.ice_barrier_t4,true);
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr119);
               }
               addr181:
               _loc1_.AddMoveToTree(1,2,MinionMoveID.ice_enclosure_t3);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.ice_enclosure_t4);
               }
               _loc1_.AddMoveToTree(1,3,MinionMoveID.ice_enclosure_t5,true);
               return _loc1_;
            }
            §§goto(addr144);
         }
         §§goto(addr119);
      }
      
      public function IceDeer_Reflect() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         if(_loc2_ || _loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.crusade_t1);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.crusade_t2);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(0,0,MinionMoveID.crusade_t3);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr54:
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.agility_t1);
                     if(_loc2_)
                     {
                        _loc1_.AddMoveToTree(1,0,MinionMoveID.agility_t2);
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.AddMoveToTree(2,0,MinionMoveID.cleanse_darkness_t1);
                           if(_loc2_)
                           {
                              _loc1_.AddMoveToTree(2,0,MinionMoveID.cleanse_darkness_t2);
                              _loc1_.AddMoveToTree(2,0,MinionMoveID.cleanse_darkness_t3);
                              if(!_loc3_)
                              {
                                 _loc1_.AddMoveToTree(0,1,MinionMoveID.spike_t1);
                                 _loc1_.AddMoveToTree(0,1,MinionMoveID.spike_t2);
                                 addr116:
                                 _loc1_.AddMoveToTree(0,1,MinionMoveID.spike_t4);
                                 addr122:
                                 _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t3,true);
                                 addr129:
                                 _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t5,true);
                              }
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t1);
                              addr142:
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t2);
                           }
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.tire_t2);
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.tire_t4);
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.reflect_damage_t2);
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.reflect_damage_t3);
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.reflect_damage_t4);
                           if(!_loc3_)
                           {
                              addr187:
                              _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t3,true);
                           }
                           _loc1_.AddMoveToTree(0,3,MinionMoveID.tire_t5,true);
                           _loc1_.AddMoveToTree(1,3,MinionMoveID.reflect_damage_t5,true);
                           return _loc1_;
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr122);
               }
               §§goto(addr116);
            }
            §§goto(addr54);
         }
         §§goto(addr187);
      }
      
      public function LichBoss_Debuffs() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         if(_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.haunt_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.haunt_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.invigorate_t1);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.invigorate_t2);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.flesh_sacrifice_t1);
               addr53:
               _loc1_.AddMoveToTree(2,0,MinionMoveID.flesh_sacrifice_t2);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.haunt_t4,true);
               if(_loc3_ || _loc2_)
               {
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.invigorate_t3,true);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.skin_trap_t1);
                  if(!_loc2_)
                  {
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.skin_trap_t2);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.lifeless_touch_t3);
                     }
                  }
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.lifeless_touch_t4);
               }
               _loc1_.AddMoveToTree(2,2,MinionMoveID.demoralize_t1);
               _loc1_.AddMoveToTree(2,2,MinionMoveID.demoralize_t2);
               _loc1_.AddMoveToTree(2,2,MinionMoveID.demoralize_t3);
               _loc1_.AddMoveToTree(1,3,MinionMoveID.lifeless_touch_t5,true);
            }
            return _loc1_;
         }
         §§goto(addr53);
      }
      
      public function LichBoss_Undead() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Undead");
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.mortify_t1);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.mortify_t2);
               _loc1_.AddMoveToTree(0,0,MinionMoveID.mortify_t3);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.infes_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.infes_t2);
               if(!_loc2_)
               {
                  addr60:
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.infes_t3);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t1);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t2);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.mortify_t4,true);
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.mortify_t5,true);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.phantom_strike_t1);
                     if(!_loc2_)
                     {
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.phantom_strike_t2);
                        if(!_loc2_)
                        {
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.phantom_strike_t3);
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr135:
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t3,true);
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t4,true);
                              addr149:
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.lich_burn_t3);
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.lich_burn_t4);
                              if(_loc3_)
                              {
                                 _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t5,true);
                              }
                           }
                           _loc1_.AddMoveToTree(1,3,MinionMoveID.lich_burn_t5,true);
                           return _loc1_;
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr149);
                  }
               }
            }
            §§goto(addr135);
         }
         §§goto(addr60);
      }
      
      public function LichBoss_Reflect() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.bone_chill_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.bone_chill_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.icy_blast_t1);
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.icy_blast_t2);
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t1);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t2);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr103);
                  }
               }
               §§goto(addr112);
            }
         }
         addr103:
         _loc1_.AddMoveToTree(1,1,MinionMoveID.bone_chill_t3,true);
         if(_loc3_)
         {
            addr112:
            _loc1_.AddMoveToTree(2,1,MinionMoveID.icy_blast_t3,true);
            _loc1_.AddMoveToTree(2,1,MinionMoveID.icy_blast_t4,true);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(0,2,MinionMoveID.reflect_damage_t3,true);
               _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_coating_t2);
               _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_coating_t3);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.mirror_coating_t4,true);
               }
            }
         }
         return _loc1_;
      }
      
      public function ScareCrow_Demonic() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Demonic");
         if(_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_ritual_t1);
            if(!(_loc3_ && Boolean(this)))
            {
               addr33:
               _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_ritual_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t2);
               if(!(_loc3_ && _loc2_))
               {
                  addr58:
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t3);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_strike_t1);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_strike_t2);
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.blood_ritual_t3,true);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.blood_ritual_t4,true);
                     if(_loc2_)
                     {
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.vicious_t4,true);
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.vicious_t5,true);
                        }
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.demonic_sacrifice_t1);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.demonic_sacrifice_t2);
                        if(!(_loc3_ && _loc2_))
                        {
                           addr146:
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.blood_press_t3);
                           addr159:
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.blood_press_t4);
                           if(_loc2_)
                           {
                              _loc1_.AddMoveToTree(2,2,MinionMoveID.demonic_sacrifice_t3,true);
                           }
                           _loc1_.AddMoveToTree(1,3,MinionMoveID.blood_press_t5,true);
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr146);
               }
               §§goto(addr159);
            }
            §§goto(addr58);
         }
         §§goto(addr33);
      }
      
      public function ScareCrow_Undead() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Undead");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rancid_bite_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rancid_bite_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rancid_bite_t3);
         if(_loc3_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.mortify_t1);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.mortify_t2);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t1);
               if(_loc3_ || _loc3_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t2);
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t3);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.mud_blast_t1);
                     §§goto(addr98);
                  }
                  §§goto(addr136);
               }
               §§goto(addr163);
            }
            §§goto(addr157);
         }
         addr98:
         _loc1_.AddMoveToTree(0,1,MinionMoveID.mud_blast_t2);
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.AddMoveToTree(1,1,MinionMoveID.mortify_t3,true);
            if(!_loc2_)
            {
               §§goto(addr120);
            }
            §§goto(addr169);
         }
         addr120:
         _loc1_.AddMoveToTree(2,1,MinionMoveID.focus_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.focus_t5,true);
         if(_loc3_)
         {
            addr136:
            _loc1_.AddMoveToTree(0,2,MinionMoveID.mud_blast_t3,true);
            _loc1_.AddMoveToTree(0,2,MinionMoveID.mud_blast_t4,true);
            addr157:
            _loc1_.AddMoveToTree(1,2,MinionMoveID.infes_t3);
            addr163:
            _loc1_.AddMoveToTree(1,2,MinionMoveID.infes_t4);
            addr169:
            _loc1_.AddMoveToTree(1,3,MinionMoveID.infes_t5,true);
         }
         return _loc1_;
      }
      
      public function ScareCrow_Debuff() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.lifeless_touch_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.lifeless_touch_t2);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.mirror_skin_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.mirror_skin_t2);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t1);
               if(_loc2_ || _loc2_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t2);
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t3);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.lifeless_touch_t3,true);
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.lifeless_touch_t4,true);
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr118:
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t3,true);
                           _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t4,true);
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.skin_trap_t1);
                        }
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.skin_trap_t2);
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.slow_t3);
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.slow_t4);
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.skin_trap_t3,true);
                        }
                        _loc1_.AddMoveToTree(1,3,MinionMoveID.slow_t5,true);
                     }
                     §§goto(addr118);
                  }
                  _loc1_.AddMoveToTree(2,3,MinionMoveID.skin_trap_t5,true);
                  §§goto(addr191);
               }
            }
            §§goto(addr118);
         }
         addr191:
         return _loc1_;
      }
      
      public function SlenderMan_Debuff() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("DOTs");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_press_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_press_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mortify_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mortify_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t1);
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t2);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t3);
            if(_loc2_ || _loc2_)
            {
               _loc1_.AddMoveToTree(1,1,MinionMoveID.mortify_t3,true);
            }
            _loc1_.AddMoveToTree(1,1,MinionMoveID.mortify_t4,true);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t4,true);
               if(_loc2_)
               {
                  addr124:
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t5,true);
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.infes_t3);
                  §§goto(addr144);
               }
               §§goto(addr157);
            }
            addr144:
            _loc1_.AddMoveToTree(1,2,MinionMoveID.infes_t4);
            if(!(_loc3_ && Boolean(this)))
            {
               addr157:
               _loc1_.AddMoveToTree(1,3,MinionMoveID.infes_t5,true);
            }
            return _loc1_;
         }
         §§goto(addr124);
      }
      
      public function SlenderMan_Undead() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Undead");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.haunt_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.haunt_t3);
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.haunt_t4);
            if(!(_loc2_ && Boolean(this)))
            {
               addr51:
               _loc1_.AddMoveToTree(1,0,MinionMoveID.lich_burn_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.lich_burn_t2);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t1);
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t2);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t3);
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.haunt_t5,true);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.lich_burn_t3,true);
                  }
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.lich_burn_t4,true);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.rancid_bite_t1);
                     if(_loc3_)
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.rancid_bite_t2);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.rancid_bite_t3);
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.flesh_sacrifice_t3);
                           addr163:
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.flesh_sacrifice_t4);
                           if(_loc3_)
                           {
                              _loc1_.AddMoveToTree(2,2,MinionMoveID.rancid_bite_t4,true);
                           }
                        }
                        §§goto(addr199);
                     }
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.rancid_bite_t5,true);
                     _loc1_.AddMoveToTree(0,3,MinionMoveID.flesh_sacrifice_t5,true);
                     addr199:
                     return _loc1_;
                  }
               }
            }
            §§goto(addr163);
         }
         §§goto(addr51);
      }
      
      public function SlenderMan_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t1);
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t3);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t5);
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.reflect_damage_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.reflect_damage_t2);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.grind_t2);
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.grind_t3);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.slow_t1);
                  if(_loc2_)
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.slow_t2);
                     _loc1_.AddMoveToTree(1,1,MinionMoveID.reflect_damage_t3,true);
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.grind_t4,true);
                     addr117:
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.grind_t5,true);
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t3,true);
                     if(!_loc3_)
                     {
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t4,true);
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr147:
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.crush_t2);
                           if(_loc2_ || Boolean(this))
                           {
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.crush_t3);
                              addr173:
                              _loc1_.AddMoveToTree(0,3,MinionMoveID.slow_t5,true);
                              addr180:
                              _loc1_.AddMoveToTree(1,3,MinionMoveID.crush_t5,true);
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr173);
               }
               §§goto(addr117);
            }
            §§goto(addr147);
         }
         §§goto(addr173);
      }
      
      public function Tiger_Speed() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Speed");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.quickness_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.quickness_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wild_lance_t1);
         if(_loc2_ || _loc3_)
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.wild_lance_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.wild_lance_t3);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.quickness_t4,true);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.quickness_t5,true);
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.AddMoveToTree(1,1,MinionMoveID.tackle_t4,true);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.burn_t1);
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.burn_t2);
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.burn_t3);
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.reckless_dash_t3);
                  addr146:
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.tackle_t5,true);
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.burn_t5,true);
                  _loc1_.AddMoveToTree(0,3,MinionMoveID.reckless_dash_t4,true);
               }
               return _loc1_;
            }
         }
         §§goto(addr146);
      }
      
      public function Tiger_Gaurd() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Guard");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t1);
         if(_loc3_ || _loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t2);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t3);
         }
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t1);
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t2);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t3);
            if(!_loc2_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t4);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.fortitude_t4,true);
               _loc1_.AddMoveToTree(0,1,MinionMoveID.fortitude_t5,true);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t3,true);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t4,true);
               }
               _loc1_.AddMoveToTree(2,1,MinionMoveID.destabilize_t1);
               if(!_loc2_)
               {
                  addr128:
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.destabilize_t2);
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.chosen_earth_t3);
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr154);
                  }
                  §§goto(addr162);
               }
               addr154:
               _loc1_.AddMoveToTree(1,2,MinionMoveID.chosen_earth_t4);
               if(_loc3_)
               {
                  addr162:
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.destabilize_t3,true);
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.chosen_earth_t5,true);
               }
               return _loc1_;
            }
         }
         §§goto(addr128);
      }
      
      public function Tiger_Normal() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t2);
         }
         _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mirror_skin_t3);
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t1);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t2);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t3);
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.energize_t1);
                     if(!_loc3_)
                     {
                        addr107:
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.energize_t2);
                        addr113:
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.demoralizing_charge_t1);
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.demoralizing_charge_t2);
                        addr125:
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t4,true);
                        if(_loc2_)
                        {
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t5,true);
                           if(_loc2_)
                           {
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.roar_t2);
                           }
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.roar_t3);
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.roar_t4);
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.poison_tooth_t3);
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.poison_tooth_t4);
                           addr161:
                           if(_loc3_ && Boolean(_loc1_))
                           {
                           }
                           §§goto(addr194);
                        }
                        _loc1_.AddMoveToTree(1,3,MinionMoveID.poison_tooth_t5,true);
                     }
                     addr194:
                     return _loc1_;
                  }
                  §§goto(addr107);
               }
               §§goto(addr113);
            }
            §§goto(addr161);
         }
         §§goto(addr125);
      }
      
      public function UndeadEel_Water() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Water");
         if(_loc2_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.icy_blast_t1);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.icy_blast_t3);
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.icy_blast_t5);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.soak_t2);
               addr51:
               _loc1_.AddMoveToTree(1,0,MinionMoveID.soak_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t1);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t2);
               if(_loc2_ || _loc3_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t3);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.coldfront_t1);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.coldfront_t2);
               }
               _loc1_.AddMoveToTree(0,1,MinionMoveID.coldfront_t3);
            }
            _loc1_.AddMoveToTree(1,1,MinionMoveID.soak_t4,true);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(1,1,MinionMoveID.soak_t5,true);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t5,true);
               _loc1_.AddMoveToTree(0,2,MinionMoveID.coldfront_t4,true);
               _loc1_.AddMoveToTree(0,2,MinionMoveID.coldfront_t5,true);
            }
            _loc1_.AddMoveToTree(1,2,MinionMoveID.water_slam_t3);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(1,2,MinionMoveID.water_slam_t4);
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.AddMoveToTree(2,2,MinionMoveID.ice_enclosure_t1);
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.ice_enclosure_t2);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.ice_enclosure_t3);
                     _loc1_.AddMoveToTree(1,3,MinionMoveID.water_slam_t5,true);
                     _loc1_.AddMoveToTree(2,3,MinionMoveID.ice_enclosure_t5,true);
                     addr178:
                  }
                  return _loc1_;
               }
            }
            §§goto(addr178);
         }
         §§goto(addr51);
      }
      
      public function UndeadEel_Undead() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Undead");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mortify_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mortify_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mortify_t5);
         if(_loc2_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.infes_t1);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.infes_t2);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.infes_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t1);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t2);
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t3);
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.demoralize_t1);
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.AddMoveToTree(0,1,MinionMoveID.demoralize_t2);
                        addr116:
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.infes_t5,true);
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.flesh_sacrifice_t1);
                           addr136:
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.flesh_sacrifice_t3);
                           if(_loc2_ || _loc3_)
                           {
                              addr149:
                              _loc1_.AddMoveToTree(2,1,MinionMoveID.flesh_sacrifice_t5);
                              _loc1_.AddMoveToTree(0,2,MinionMoveID.demoralize_t5,true);
                              if(_loc2_ || Boolean(this))
                              {
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.rancid_bite_t3);
                                 _loc1_.AddMoveToTree(1,2,MinionMoveID.rancid_bite_t4);
                              }
                           }
                        }
                        _loc1_.AddMoveToTree(1,3,MinionMoveID.rancid_bite_t5,true);
                     }
                     §§goto(addr136);
                  }
                  return _loc1_;
               }
               §§goto(addr149);
            }
            §§goto(addr136);
         }
         §§goto(addr116);
      }
      
      public function UndeadEel_Inspire() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Inspire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.poison_tooth_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.poison_tooth_t3);
         if(_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.poison_tooth_t5);
            if(_loc3_)
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t1);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t3);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t4);
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.reflect_damage_t1);
                     addr74:
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.reflect_damage_t2);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.reflect_damage_t3);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.invigorate_t1);
                  }
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.invigorate_t2);
                  _loc1_.AddMoveToTree(0,1,MinionMoveID.invigorate_t3);
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.tackle_t5,true);
               }
               _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t1);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t2);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t3);
                  §§goto(addr138);
               }
               §§goto(addr146);
            }
            §§goto(addr74);
         }
         addr138:
         _loc1_.AddMoveToTree(1,2,MinionMoveID.energizing_inspiration_t3);
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(1,2,MinionMoveID.energizing_inspiration_t4);
            addr146:
            if(_loc3_ || _loc3_)
            {
               _loc1_.AddMoveToTree(2,2,MinionMoveID.perseverance_t5,true);
            }
            _loc1_.AddMoveToTree(1,3,MinionMoveID.energizing_inspiration_t5,true);
         }
         return _loc1_;
      }
      
      public function Titan1_Titan() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Titan");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.kings_rush_t1);
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.kings_rush_t2);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.kings_rush_t3);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t3);
               if(_loc2_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t4);
                  if(_loc2_)
                  {
                     addr56:
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t5);
                     if(!_loc3_)
                     {
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.energizing_inspiration_t1);
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.energizing_inspiration_t2);
                        if(!(_loc3_ && _loc2_))
                        {
                           addr83:
                           _loc1_.AddMoveToTree(2,0,MinionMoveID.energizing_inspiration_t3);
                           if(_loc2_)
                           {
                              addr91:
                              _loc1_.AddMoveToTree(0,1,MinionMoveID.kings_rush_t5,true);
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 _loc1_.AddMoveToTree(1,1,MinionMoveID.reckless_dash_t3);
                                 if(_loc2_)
                                 {
                                    _loc1_.AddMoveToTree(1,1,MinionMoveID.reckless_dash_t4);
                                    addr126:
                                    _loc1_.AddMoveToTree(1,1,MinionMoveID.reckless_dash_t5);
                                    if(_loc2_ || _loc3_)
                                    {
                                       _loc1_.AddMoveToTree(2,1,MinionMoveID.dominate_t1);
                                       §§goto(addr145);
                                    }
                                    §§goto(addr164);
                                 }
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr126);
                        }
                        addr145:
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.dominate_t2);
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t3);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr164:
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t4);
                           _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t5);
                           if(_loc2_)
                           {
                              addr178:
                              _loc1_.AddMoveToTree(1,2,MinionMoveID.titan_slam_t3);
                              if(_loc2_ || Boolean(_loc1_))
                              {
                              }
                              §§goto(addr211);
                           }
                           _loc1_.AddMoveToTree(1,2,MinionMoveID.titan_slam_t4);
                        }
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.dominate_t3,true);
                        addr211:
                        _loc1_.AddMoveToTree(1,3,MinionMoveID.titan_slam_t5,true);
                        return _loc1_;
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr178);
               }
               §§goto(addr91);
            }
            §§goto(addr56);
         }
         §§goto(addr178);
      }
      
      public function Titan1_Water() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Water");
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.water_slam_t3);
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.water_slam_t4);
               _loc1_.AddMoveToTree(0,0,MinionMoveID.water_slam_t5);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.coldfront_t3);
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.coldfront_t4);
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.ice_barrier_t3);
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.ice_barrier_t4);
                     _loc1_.AddMoveToTree(2,0,MinionMoveID.ice_barrier_t5);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.sleet_t3);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.sleet_t4);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.sleet_t5);
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.AddMoveToTree(1,1,MinionMoveID.coldfront_t5,true);
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t2);
                     }
                  }
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3);
                  if(_loc3_ || Boolean(this))
                  {
                     addr148:
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.deadly_inspiration_t1);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.AddMoveToTree(0,2,MinionMoveID.deadly_inspiration_t2);
                        §§goto(addr167);
                     }
                  }
                  §§goto(addr175);
               }
               addr167:
               _loc1_.AddMoveToTree(0,2,MinionMoveID.deadly_inspiration_t3);
               if(_loc3_)
               {
                  addr175:
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t3);
                  addr181:
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t4);
                  if(_loc2_ && Boolean(this))
                  {
                  }
                  §§goto(addr222);
               }
               _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t5,true);
               if(_loc3_ || _loc2_)
               {
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.waterjet_t5,true);
                  §§goto(addr222);
               }
               addr222:
               return _loc1_;
            }
            §§goto(addr181);
         }
         §§goto(addr148);
      }
      
      public function Titan1_Earth() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Earth");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_blast_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_blast_t4);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_blast_t5);
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.intense_flame_t3);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.intense_flame_t4);
            _loc1_.AddMoveToTree(1,0,MinionMoveID.intense_flame_t5);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_slide_t3);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_slide_t4);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_slide_t5);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.diamond_inspiration_t1);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.diamond_inspiration_t2);
            _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t1);
            if(_loc3_ || _loc3_)
            {
               _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t3);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t5);
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.earth_barrier_t3);
               }
               _loc1_.AddMoveToTree(2,1,MinionMoveID.earth_barrier_t4);
               if(_loc3_)
               {
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.earth_barrier_t5);
                  if(_loc2_)
                  {
                  }
                  addr169:
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.destabilize_t3);
                  _loc1_.AddMoveToTree(1,2,MinionMoveID.destabilize_t4);
                  if(_loc3_)
                  {
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.crazed_t1);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.crazed_t2);
                     if(!(_loc2_ && _loc3_))
                     {
                        addr202:
                        _loc1_.AddMoveToTree(2,2,MinionMoveID.crazed_t3);
                        addr208:
                        _loc1_.AddMoveToTree(1,3,MinionMoveID.destabilize_t5,true);
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.AddMoveToTree(2,3,MinionMoveID.crazed_t4,true);
                           if(!_loc2_)
                           {
                              addr238:
                              _loc1_.AddMoveToTree(2,3,MinionMoveID.crazed_t5,true);
                           }
                           return _loc1_;
                        }
                     }
                  }
                  §§goto(addr238);
               }
               _loc1_.AddMoveToTree(0,2,MinionMoveID.diamond_inspiration_t3,true);
               if(!_loc2_)
               {
                  _loc1_.AddMoveToTree(0,2,MinionMoveID.diamond_inspiration_t4,true);
                  §§goto(addr169);
               }
               §§goto(addr208);
            }
            §§goto(addr169);
         }
         §§goto(addr202);
      }
      
      public function Titan2_Titan() : MinionTalentTree
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Titan");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t4);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t5);
         if(_loc3_ || _loc2_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.titan_slash_t3);
            if(_loc3_ || Boolean(this))
            {
               _loc1_.AddMoveToTree(1,0,MinionMoveID.titan_slash_t4);
               _loc1_.AddMoveToTree(1,0,MinionMoveID.titan_slash_t5);
               if(!_loc2_)
               {
                  §§goto(addr71);
               }
            }
            §§goto(addr147);
         }
         addr71:
         _loc1_.AddMoveToTree(2,0,MinionMoveID.roar_t2);
         if(!_loc2_)
         {
            _loc1_.AddMoveToTree(2,0,MinionMoveID.roar_t3);
            _loc1_.AddMoveToTree(2,0,MinionMoveID.roar_t4);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.titan_blast_t1);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.titan_blast_t2);
            _loc1_.AddMoveToTree(0,1,MinionMoveID.titan_blast_t3);
            _loc1_.AddMoveToTree(1,1,MinionMoveID.ancient_force_t3);
            if(_loc3_ || Boolean(this))
            {
               _loc1_.AddMoveToTree(1,1,MinionMoveID.ancient_force_t4);
               _loc1_.AddMoveToTree(1,1,MinionMoveID.ancient_force_t5);
               _loc1_.AddMoveToTree(2,1,MinionMoveID.flurry_t3);
               addr147:
               _loc1_.AddMoveToTree(2,1,MinionMoveID.flurry_t4);
               if(_loc3_)
               {
                  §§goto(addr155);
               }
            }
            §§goto(addr175);
         }
         addr155:
         _loc1_.AddMoveToTree(1,2,MinionMoveID.dominate_t3);
         if(!(_loc2_ && _loc3_))
         {
            addr175:
            _loc1_.AddMoveToTree(1,2,MinionMoveID.dominate_t4);
            _loc1_.AddMoveToTree(2,2,MinionMoveID.flurry_t5,true);
            _loc1_.AddMoveToTree(1,3,MinionMoveID.dominate_t5,true);
         }
         return _loc1_;
      }
      
      public function Titan2_Guard() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Guard");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mud_blast_t3);
         if(_loc2_ || _loc3_)
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.mud_blast_t4);
            _loc1_.AddMoveToTree(0,0,MinionMoveID.mud_blast_t5);
         }
         _loc1_.AddMoveToTree(1,0,MinionMoveID.perseverance_t2);
         if(!_loc3_)
         {
            _loc1_.AddMoveToTree(1,0,MinionMoveID.perseverance_t3);
            if(!_loc3_)
            {
               _loc1_.AddMoveToTree(2,0,MinionMoveID.burn_t3);
               _loc1_.AddMoveToTree(2,0,MinionMoveID.burn_t4);
               if(!_loc3_)
               {
                  _loc1_.AddMoveToTree(2,0,MinionMoveID.burn_t5);
                  if(_loc2_)
                  {
                     addr81:
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.earth_shield_t3);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.earth_shield_t4);
                     _loc1_.AddMoveToTree(0,1,MinionMoveID.earth_shield_t5);
                  }
                  _loc1_.AddMoveToTree(1,1,MinionMoveID.perseverance_t5,true);
                  if(_loc2_)
                  {
                     _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_ram_t3);
                     if(!_loc3_)
                     {
                        _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_ram_t4);
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_ram_t5);
                        }
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.taunt_t3);
                        _loc1_.AddMoveToTree(1,2,MinionMoveID.taunt_t4);
                        if(_loc2_ || Boolean(this))
                        {
                           addr161:
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.diamond_skin_t3);
                           _loc1_.AddMoveToTree(2,2,MinionMoveID.diamond_skin_t4);
                           if(_loc2_ || _loc3_)
                           {
                              _loc1_.AddMoveToTree(1,3,MinionMoveID.taunt_t5,true);
                              _loc1_.AddMoveToTree(2,3,MinionMoveID.diamond_skin_t5,true);
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr161);
            }
            §§goto(addr81);
         }
         §§goto(addr161);
      }
      
      public function Titan2_Healer() : MinionTalentTree
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MinionTalentTree = new MinionTalentTree("Healer");
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.AddMoveToTree(0,0,MinionMoveID.ice_enclosure_t3);
            if(_loc2_)
            {
               _loc1_.AddMoveToTree(0,0,MinionMoveID.ice_enclosure_t4);
               _loc1_.AddMoveToTree(0,0,MinionMoveID.ice_enclosure_t5);
               if(_loc2_)
               {
                  _loc1_.AddMoveToTree(1,0,MinionMoveID.agility_t1);
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.agility_t2);
                     _loc1_.AddMoveToTree(1,0,MinionMoveID.agility_t4);
                     if(_loc2_)
                     {
                        _loc1_.AddMoveToTree(2,0,MinionMoveID.titan_heal_t2);
                        if(_loc2_)
                        {
                           addr82:
                           _loc1_.AddMoveToTree(2,0,MinionMoveID.titan_heal_t3);
                           if(!(_loc3_ && Boolean(this)))
                           {
                              _loc1_.AddMoveToTree(2,0,MinionMoveID.titan_heal_t4);
                              _loc1_.AddMoveToTree(0,1,MinionMoveID.mirror_skin_t1);
                              _loc1_.AddMoveToTree(0,1,MinionMoveID.mirror_skin_t2);
                              if(_loc2_)
                              {
                                 addr122:
                                 _loc1_.AddMoveToTree(1,1,MinionMoveID.priest_t3);
                                 if(!_loc3_)
                                 {
                                    addr130:
                                    _loc1_.AddMoveToTree(1,1,MinionMoveID.priest_t4);
                                    _loc1_.AddMoveToTree(1,1,MinionMoveID.priest_t5);
                                    if(_loc3_ && _loc2_)
                                    {
                                    }
                                    §§goto(addr176);
                                 }
                                 _loc1_.AddMoveToTree(2,1,MinionMoveID.titan_recovery_t1);
                                 _loc1_.AddMoveToTree(2,1,MinionMoveID.titan_recovery_t2);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§goto(addr168);
                                 }
                              }
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr130);
                  }
                  addr168:
                  _loc1_.AddMoveToTree(2,1,MinionMoveID.titan_recovery_t3);
                  if(!_loc3_)
                  {
                     addr176:
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t4,true);
                     _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t5,true);
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.titan_light_t3);
                     addr203:
                     _loc1_.AddMoveToTree(1,2,MinionMoveID.titan_light_t4);
                     _loc1_.AddMoveToTree(2,2,MinionMoveID.titan_recovery_t5,true);
                     §§goto(addr216);
                  }
                  addr216:
                  _loc1_.AddMoveToTree(1,3,MinionMoveID.titan_light_t5,true);
                  return _loc1_;
               }
               §§goto(addr203);
            }
            §§goto(addr122);
         }
         §§goto(addr82);
      }
      
      public function GetTestTalentTree() : MinionTalentTree
      {
         return new MinionTalentTree("Test");
      }
   }
}
