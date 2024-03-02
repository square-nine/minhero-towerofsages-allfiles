package Minions
{
   import States.MinionMoveID;
   
   public class BaseTalentTreeContainer
   {
       
      
      public function BaseTalentTreeContainer()
      {
         super();
      }
      
      public function FirePig_fire() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_bolt_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_bolt_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_bolt_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_bash_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_bash_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.fire_bolt_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.inflame_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.inflame_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.inflame_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_bash_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_bash_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.warmth_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.warmth_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.warmth_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.warmth_t4);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.warmth_t5);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.fire_ram_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.fire_bash_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.fire_ram_t5,true);
         return _loc1_;
      }
      
      public function FirePig_electric() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Electric");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.batch_bolt_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.batch_bolt_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.spark_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.spark_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.quickness_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.quickness_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.charge_pass_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.static_pummel_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.agile_inspiration_t1,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.agile_inspiration_t2,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.charge_pass_t2,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.charge_pass_t3,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.charge_pass_t4,true);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.static_pummel_t5,true);
         return _loc1_;
      }
      
      public function FirePig_normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.roar_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.roar_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.roar_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.efficiency_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.efficiency_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.poison_tooth_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.poison_tooth_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.poison_tooth_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.reckless_dash_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.reckless_dash_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.efficiency_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.mirror_skin_t5,true);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.tackle_t5,true);
         return _loc1_;
      }
      
      public function FireBear_fire() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.inflame_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.inflame_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.inflame_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.kindle_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.kindle_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.kindle_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_blast_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_blast_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.sear_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.sear_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.sear_t5);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.warmth_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.warmth_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.wildfire_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.wildfire_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.wildfire_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.fire_bash_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.fire_bash_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t3,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t4,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.fire_bash_t5,true);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.ferocity_t5,true);
         return _loc1_;
      }
      
      public function FireBear_guard() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Guard");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.flare_up_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.flare_up_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_slide_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_slide_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.destabilize_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.destabilize_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.rock_skin_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.rock_skin_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.rock_skin_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.destabilize_t3,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.destabilize_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.earth_barrier_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.rock_skin_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.rock_skin_t5,true);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.destabilize_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.taunt_t5,true);
         return _loc1_;
      }
      
      public function FireBear_normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.claw_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.claw_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.roar_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.roar_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.roar_t4);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.perseverance_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.perseverance_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.perseverance_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.claw_t4,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.claw_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.energizing_inspiration_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.energizing_inspiration_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.crush_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.crush_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.reckless_dash_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.reckless_dash_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.reckless_dash_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.crush_t5,true);
         return _loc1_;
      }
      
      public function Worm_undead() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Undead");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rancid_bite_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rancid_bite_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.slow_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.slow_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.slow_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.rancid_bite_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.rancid_bite_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mud_blast_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mud_blast_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mud_blast_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.tackle_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.infes_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.infes_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.flesh_sacrifice_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.flesh_sacrifice_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.flesh_sacrifice_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.infes_t5,true);
         return _loc1_;
      }
      
      public function Worm_earth() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Earth");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.earth_shield_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.earth_shield_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_blast_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_blast_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_blast_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_blast_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.perseverance_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.perseverance_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.earthquake_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.destabilize_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.destabilize_t2);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.earthquake_t5,true);
         return _loc1_;
      }
      
      public function Worm_normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.skillful_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.skillful_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.skillful_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.mirror_skin_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.reflect_damage_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.reflect_damage_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.reflect_damage_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t4);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t5);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.grind_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.grind_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.poison_tooth_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.poison_tooth_t2);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.grind_t5,true);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.poison_tooth_t5,true);
         return _loc1_;
      }
      
      public function FireFrog_Direct() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Direct");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.warmth_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.warmth_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.flare_up_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.flare_up_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.flare_up_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.priest_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.priest_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.priest_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.warmth_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.warmth_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.flare_up_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.flare_up_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.priest_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.warmth_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.touch_fire_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.touch_fire_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.touch_fire_t5,true);
         return _loc1_;
      }
      
      public function FireFrog_Group() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Group");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.wildfire_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.wildfire_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.wildfire_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.inflame_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.inflame_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_blast_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_blast_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.inflame_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.inflame_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.rock_blast_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.rock_blast_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.fire_shot_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.intense_flame_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.intense_flame_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.intense_flame_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.fire_shot_t5,true);
         return _loc1_;
      }
      
      public function FireFrog_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Inspire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.roar_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.roar_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.roar_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.roar_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.poison_tooth_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.poison_tooth_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.poison_tooth_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.earthy_fortitude_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.earthy_fortitude_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.earthy_fortitude_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.skillful_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.skillful_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.skillful_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.invigorate_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.invigorate_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.crush_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.crush_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.crush_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.skillful_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.skillful_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t3,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.crush_t4,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.energizing_inspiration_t2,true);
         return _loc1_;
      }
      
      public function FireRaptor_Dino() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Dino");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.piercing_charge_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.piercing_charge_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.piercing_charge_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.focused_charge_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.focused_charge_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.prehistoric_bite_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.prehistoric_bite_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.prehistoric_bite_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.focused_charge_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.focused_charge_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.prehistoric_bite_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.reckless_grasp_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.reckless_grasp_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.inner_force_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.inner_force_t2);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.reckless_grasp_t5,true);
         return _loc1_;
      }
      
      public function FireRaptor_Fire() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_ram_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_ram_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_ram_t5);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.evil_eye_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.evil_eye_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.evil_eye_t4);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wildfire_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wildfire_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wildfire_t5);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.inflame_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.inflame_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.inflame_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.fire_bash_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.fire_bash_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.fire_bash_t5);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.concentration_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.concentration_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.concentration_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.inflame_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.fire_blast_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.fire_blast_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.fire_blast_t5,true);
         return _loc1_;
      }
      
      public function FireRaptor_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Energy");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t5);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t5);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t5);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.roar_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.roar_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.roar_t5);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.reflect_damage_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.energize_t4);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.agility_t5,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.reflect_damage_t2,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.reflect_damage_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.reflect_damage_t5,true);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.energize_t5,true);
         return _loc1_;
      }
      
      public function GroundPlant_Healing() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Healing");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.drain_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.drain_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.spore_blast_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.spore_blast_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.drain_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.drain_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.soak_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.soak_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.soak_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.nourish_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.nourish_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.nourish_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.regrowth_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.regrowth_t4);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.priest_t1);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.priest_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.priest_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.nourish_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.nourish_t5,true);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.regrowth_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.priest_t5,true);
         return _loc1_;
      }
      
      public function GroundPlant_Earth() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Earth");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.energize_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.energize_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.earthquake_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.earthquake_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.earthquake_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.chosen_earth_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.chosen_earth_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.taunt_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.taunt_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.destabilize_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.destabilize_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.destabilize_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mud_blast_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mud_blast_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.destabilize_t4,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.mud_blast_t5,true);
         return _loc1_;
      }
      
      public function GroundPlant_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.crush_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.crush_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.poison_ivy_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.poison_ivy_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.poison_ivy_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t4);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.brilliance_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.grassblade_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.grassblade_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.grassblade_t3,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.grassblade_t4,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.tire_t4,true);
         return _loc1_;
      }
      
      public function DemonicCat_Buffs() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Buffs");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.demonic_strike_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.demonic_strike_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tire_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tire_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.demonic_strike_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.demonic_strike_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.tire_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.forceful_heal_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.forceful_heal_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.forceful_heal_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.demonic_strike_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.evil_eye_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.evil_eye_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.demonic_sacrifice_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.demonic_sacrifice_t2);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.evil_eye_t5,true);
         return _loc1_;
      }
      
      public function DemonicCat_Demonic() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Demonic");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_ritual_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_ritual_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.phantom_strike_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.phantom_strike_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.phantom_strike_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.crazed_blast_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t4);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.crazed_blast_t2,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.crazed_blast_t3,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.blood_press_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.blood_press_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.blood_press_t5,true);
         return _loc1_;
      }
      
      public function DemonicCat_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.spike_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.spike_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.spike_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.quickness_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.energize_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.energize_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.energize_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.deadly_inspiration_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t3,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.deadly_inspiration_t2,true);
         return _loc1_;
      }
      
      public function FlyingGrassSuperMinion_Grass() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Grass");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ferocity_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tree_slam_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tree_slam_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tree_slam_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.drain_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.drain_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.drain_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t4,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.serenity_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.serenity_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.serenity_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.drain_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.stone_fall_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.stone_fall_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.spore_blast_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.spore_blast_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t4);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.stone_fall_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.spore_blast_t5,true);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.cleric_t5,true);
         return _loc1_;
      }
      
      public function FlyingGrassSuperMinion_Flying() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Flying");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.thunderstorm_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.thunderstorm_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.thunderstorm_t5);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t5);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.wild_lance_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.skillful_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.skillful_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.hurricane_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.hurricane_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.poison_ivy_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.poison_ivy_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.hurricane_t5,true);
         return _loc1_;
      }
      
      public function FlyingGrassSuperMinion_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.earthy_fortitude_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.earthy_fortitude_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.earthy_fortitude_t5);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.poison_tooth_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.poison_tooth_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.poison_tooth_t5);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.tackle_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.tackle_t5);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.invigorate_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.invigorate_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.reckless_dash_t4);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t3,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.titan_blast_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.titan_blast_t2);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.reckless_dash_t5,true);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.titan_blast_t3,true);
         return _loc1_;
      }
      
      public function GrassGorilla_Grass() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Grass");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.drain_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.drain_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.timber_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.timber_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.timber_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.drain_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.drain_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.bone_crunch_t1);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tree_slam_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tree_slam_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.tree_slam_t5,true);
         return _loc1_;
      }
      
      public function GrassGorilla_Support() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Support");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_slide_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_slide_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_slide_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.fortitude_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.fortitude_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.earthquake_t2,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.taunt_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.taunt_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.fortitude_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.roar_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.roar_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t1);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.hulk_inspiration_t2,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.roar_t5,true);
         return _loc1_;
      }
      
      public function GrassGorilla_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.earth_shield_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.earth_shield_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.earth_shield_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.wild_lance_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.wild_lance_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.wild_lance_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.tackle_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.grind_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.grind_t4);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t3,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t5,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.tackle_t5,true);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.grind_t5,true);
         return _loc1_;
      }
      
      public function GrassSnake_Grass() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Grass");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.poison_ivy_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.poison_ivy_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.poison_ivy_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.drain_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.drain_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.poison_ivy_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.drain_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.razor_vine_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.razor_vine_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.concentration_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.concentration_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.concentration_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.grassblade_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.razor_vine_t4,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.grassblade_t5,true);
         return _loc1_;
      }
      
      public function GrassSnake_Debuffs() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.peck_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.peck_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.fortitude_t4,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.fortitude_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.slow_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.crush_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.blow_by_t1);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.slow_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t2);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.slow_t5,true);
         return _loc1_;
      }
      
      public function GrassSnake_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.quickness_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.quickness_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.spike_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.spike_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.spike_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.poison_tooth_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.poison_tooth_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.invigorate_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.invigorate_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.poison_tooth_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t3,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t3);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.tackle_t5,true);
         return _loc1_;
      }
      
      public function GroundAttacker_Ground() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Ground");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_blast_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_blast_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_blast_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.destabilize_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.earthquake_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.earthquake_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.earthquake_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.rock_blast_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.destabilize_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.stone_fall_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.stone_fall_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.stone_fall_t5,true);
         return _loc1_;
      }
      
      public function GroundAttacker_Mixed() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Mixed");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_press_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_press_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.fire_blast_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.fire_blast_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.pound_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.pound_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.pound_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.efficiency_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.fire_blast_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.piercing_charge_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.piercing_charge_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.efficiency_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.efficiency_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.rancid_bite_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.rancid_bite_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.piercing_charge_t3,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.rancid_bite_t5,true);
         return _loc1_;
      }
      
      public function GroundAttacker_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spike_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spike_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.grind_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.grind_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.grind_t4);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.grind_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t4);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tackle_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t5);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.mirror_skin_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.tackle_t5,true);
         return _loc1_;
      }
      
      public function GroundMole_Damage() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Damage");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_blast_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_blast_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t5);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.earth_shield_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.earth_shield_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.earth_shield_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.rock_blast_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t5);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t5);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.fire_blast_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.fire_blast_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.stone_fall_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.stone_fall_t5,true);
         return _loc1_;
      }
      
      public function GroundMole_Gaurd() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Guard");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.destabilize_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.destabilize_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.taunt_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.taunt_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.taunt_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_bash_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_bash_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.destabilize_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.taunt_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.taunt_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t4);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.rock_skin_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.rock_skin_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.kindle_t1);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.kindle_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.kindle_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.perseverance_t5,true);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.rock_skin_t5,true);
         return _loc1_;
      }
      
      public function GroundMole_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t4);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.concentration_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.concentration_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.concentration_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.fortitude_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.fortitude_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.claw_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t4);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tackle_t1);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tackle_t4);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.mirror_skin_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.tackle_t5,true);
         return _loc1_;
      }
      
      public function HolyMantis_Grass() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Grass");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.nourish_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.nourish_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.nourish_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.priest_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.priest_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.priest_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.razor_vine_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.razor_vine_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.razor_vine_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.razor_vine_t5);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.nourish_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.priest_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.priest_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.regrowth_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.regrowth_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.regrowth_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.swift_mend_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.swift_mend_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.swift_mend_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.swift_mend_t4);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.serenity_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.serenity_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.regrowth_t5,true);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.swift_mend_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.serenity_t5,true);
         return _loc1_;
      }
      
      public function HolyMantis_Holy() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Holy");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.hope_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.hope_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.hope_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.cleric_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.cleric_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.cleric_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.holy_burn_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.holy_burn_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.holy_burn_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.purge_t1,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.cleric_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.cleric_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.brilliance_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.brilliance_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.holy_light_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.holy_light_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.brilliance_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.holy_light_t5,true);
         return _loc1_;
      }
      
      public function HolyMantis_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Inspire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.poison_tooth_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.poison_tooth_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.poison_tooth_t5);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.ice_enclosure_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.ice_enclosure_t2);
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
         _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t5);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.cleanse_darkness_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.cleanse_darkness_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mending_inspiration_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mending_inspiration_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mending_inspiration_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.mending_inspiration_t5,true);
         return _loc1_;
      }
      
      public function IceBird_Ice() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Ice");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.dry_ice_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.dry_ice_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.dry_ice_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.hailstone_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.hailstone_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.hailstone_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.mystic_ice_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.mystic_ice_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.energize_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.energize_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.sleet_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.sleet_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.sleet_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.icy_blast_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.icy_blast_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.sleet_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.icy_blast_t5,true);
         return _loc1_;
      }
      
      public function IceBird_Flying() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Flying");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.volley_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.volley_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wind_lance_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wind_lance_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wind_lance_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.peck_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.peck_t4);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.blow_by_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.blow_by_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.blow_by_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.flurry_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.flurry_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.hurricane_t1);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.hurricane_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.hurricane_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.agility_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.agility_t5,true);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.flurry_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.hurricane_t5,true);
         return _loc1_;
      }
      
      public function IceBird_Reflect() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Shields");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.wild_lance_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.wild_lance_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.wild_lance_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.ice_barrier_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.ice_barrier_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.priest_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.priest_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.priest_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.ice_barrier_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.ice_barrier_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.priest_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t3,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.ice_shield_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.ice_shield_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.ice_enclosure_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.ice_enclosure_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.ice_enclosure_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.ice_shield_t5,true);
         return _loc1_;
      }
      
      public function IceTree_Grass() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Grass");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.razor_vine_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.razor_vine_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.timber_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.timber_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.timber_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.efficiency_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.regrowth_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.regrowth_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.regrowth_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.timber_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.timber_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tree_slam_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tree_slam_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.tree_slam_t5,true);
         return _loc1_;
      }
      
      public function IceTree_Ice() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Ice");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.agility_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.hailstone_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.hailstone_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.hailstone_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.bone_chill_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.bone_chill_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.agility_t4,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.agility_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.ice_enclosure_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.ice_enclosure_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.bone_chill_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.bone_chill_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.sleet_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.sleet_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.bone_chill_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.sleet_t5,true);
         return _loc1_;
      }
      
      public function IceTree_Rock() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Rock");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.reflect_damage_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.reflect_damage_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.destabilize_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.destabilize_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.destabilize_t3,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.destabilize_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.stone_fall_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.stone_fall_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.destabilize_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.stone_fall_t5,true);
         return _loc1_;
      }
      
      public function IceTree_Healing() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Healing");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.destabilize_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.swift_mend_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.swift_mend_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.priest_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.priest_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.priest_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ice_shield_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ice_shield_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ice_shield_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.swift_mend_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.priest_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.ice_shield_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.nourish_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.nourish_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.serenity_t1);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.nourish_t5,true);
         return _loc1_;
      }
      
      public function LandShark_Support() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Support");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reflect_damage_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reflect_damage_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reflect_damage_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.slow_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.slow_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.slow_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.reflect_damage_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.reflect_damage_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.tire_t5,true);
         return _loc1_;
      }
      
      public function LandShark_Mixed() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Mixed");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.focus_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.focus_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.focus_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.soak_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.soak_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.soak_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.pound_t4,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.pound_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.refreshing_wave_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.refreshing_wave_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.refreshing_wave_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.soak_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.soak_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.roar_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.roar_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.roar_t5,true);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.cleric_t5,true);
         return _loc1_;
      }
      
      public function LandShark_Damage() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Damage");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.invigorate_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.invigorate_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.invigorate_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_blast_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_blast_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_blast_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.reckless_dash_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.rock_blast_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.rock_blast_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.focused_charge_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.focused_charge_t2);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.waterjet_t5,true);
         return _loc1_;
      }
      
      public function Racoon_Water() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Water");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.concentration_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.concentration_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.concentration_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.fresh_stream_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.fresh_stream_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.hailstone_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.hailstone_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.fresh_stream_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.hailstone_t3,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.soak_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.soak_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.soak_t5,true);
         return _loc1_;
      }
      
      public function Racoon_Fire() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.touch_fire_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.touch_fire_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.poison_tooth_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.poison_tooth_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.touch_fire_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.touch_fire_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.inflame_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.inflame_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.sear_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.sear_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.fire_blast_t1);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.sear_t5,true);
         return _loc1_;
      }
      
      public function Racoon_Electric() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Electric");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.batch_bolt_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.batch_bolt_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.batch_bolt_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.overload_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.batch_bolt_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.overload_t2,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.spark_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.spark_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.spark_t5,true);
         return _loc1_;
      }
      
      public function TRex_Dino() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Dino");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_grasp_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_grasp_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_grasp_t5);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_ram_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_ram_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_ram_t5);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.crazed_blast_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.crazed_blast_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.crazed_blast_t5);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.demoralizing_charge_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.demoralizing_charge_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.demoralizing_charge_t5);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.inner_force_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.inner_force_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.inner_force_t5,true);
         return _loc1_;
      }
      
      public function TRex_Buffs() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Buffs");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t5);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.inflame_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.inflame_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.inflame_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t5);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.flesh_sacrifice_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.flesh_sacrifice_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.flesh_sacrifice_t5);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.diamond_skin_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.diamond_skin_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.diamond_skin_t5);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.deadly_inspiration_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.deadly_inspiration_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.deadly_inspiration_t5,true);
         return _loc1_;
      }
      
      public function TRex_Debuffs() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.skillful_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.skillful_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.skillful_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.crush_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.crush_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.crush_t5);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.roar_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.roar_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.roar_t5);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.skillful_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_bash_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_bash_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_bash_t5);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.hulk_inspiration_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.hulk_inspiration_t4);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t3,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t5,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t5);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.hulk_inspiration_t5,true);
         return _loc1_;
      }
      
      public function WaterBird_Water() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Water");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fresh_stream_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fresh_stream_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fresh_stream_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.waterjet_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.waterjet_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.rainfall_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.rainfall_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.rainfall_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.ferocity_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.waterjet_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.waterjet_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.soak_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.soak_t4);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.ferocity_t5,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.waterjet_t5,true);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.soak_t5,true);
         return _loc1_;
      }
      
      public function WaterBird_Flying() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Flying");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.cutting_wind_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.cutting_wind_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.peck_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.peck_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.peck_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.focus_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.focus_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.hurricane_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.hurricane_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.flurry_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.flurry_t4);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.hurricane_t3,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.hurricane_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.agility_t5,true);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.flurry_t5,true);
         return _loc1_;
      }
      
      public function WaterBird_Support() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Support");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.invigorate_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.invigorate_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.invigorate_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.ice_shield_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.ice_shield_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.tire_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.tire_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.reflect_damage_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.reflect_damage_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t4);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t5);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.diamond_skin_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.diamond_skin_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.diamond_skin_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.reflect_damage_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.reflect_damage_t5,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t4);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.ice_enclosure_t5,true);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.slow_t5,true);
         return _loc1_;
      }
      
      public function WaterSeal_Water() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Water");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.soak_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.soak_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.soak_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t5);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.energize_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.energize_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.water_slam_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.water_slam_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.water_slam_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.flesh_sacrifice_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.flesh_sacrifice_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.flesh_sacrifice_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.flesh_sacrifice_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.waterjet_t5,true);
         return _loc1_;
      }
      
      public function WaterSeal_Ice() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Ice");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.icy_blast_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.icy_blast_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.ice_shield_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.ice_shield_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.ice_shield_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.icy_blast_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.icy_blast_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ice_shield_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.perseverance_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.hailstone_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.hailstone_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mystic_ice_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mystic_ice_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mystic_ice_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.hailstone_t5,true);
         return _loc1_;
      }
      
      public function WaterSeal_Support() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Support");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_skin_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_skin_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_skin_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.grind_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.grind_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.grind_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.bone_chill_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.bone_chill_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.bone_chill_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.bone_chill_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.bone_chill_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.invigorate_t5,true);
         return _loc1_;
      }
      
      public function WaterGrassHorse_Water() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Water");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.cleric_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.cleric_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.cleric_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rainfall_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rainfall_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rainfall_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.ice_shield_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.ice_shield_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.ice_shield_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.brilliance_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.brilliance_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.rainfall_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t4);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.brilliance_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.overflow_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.overflow_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.water_infusion_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.water_infusion_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.water_infusion_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.overflow_t5,true);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.water_infusion_t5,true);
         return _loc1_;
      }
      
      public function WaterGrassHorse_Grass() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Grass");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.priest_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.priest_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.priest_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.regrowth_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.regrowth_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.regrowth_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.drain_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.drain_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.drain_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.hope_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.hope_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.skillful_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.skillful_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.skillful_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.resurgence_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.resurgence_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.resurgence_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.hope_t3,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.swift_mend_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.swift_mend_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.serenity_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.serenity_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.serenity_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.swift_mend_t5,true);
         return _loc1_;
      }
      
      public function WaterGrassHorse_Damage() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Damage");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.soak_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.soak_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.soak_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.razor_vine_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.razor_vine_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.razor_vine_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.water_slam_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.water_slam_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.water_slam_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.waterjet_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.waterjet_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.waterjet_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.tree_slam_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.tree_slam_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.waterjet_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.spore_blast_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.spore_blast_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.spore_blast_t5,true);
         return _loc1_;
      }
      
      public function Chameleon_Grass() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Grass");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.razor_vine_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.razor_vine_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tree_slam_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tree_slam_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.pound_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.pound_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.pound_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.razor_vine_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.razor_vine_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.tree_slam_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.drain_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.drain_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.grassblade_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.grassblade_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.grassblade_t5,true);
         return _loc1_;
      }
      
      public function Chameleon_Dino() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Dino");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_slide_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_slide_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_slide_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.piercing_charge_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.piercing_charge_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wild_lance_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wild_lance_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wild_lance_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.focus_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.focus_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.focus_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.piercing_charge_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ancient_force_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ancient_force_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ancient_force_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.focus_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.prehistoric_bite_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.prehistoric_bite_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.prehistoric_bite_t5,true);
         return _loc1_;
      }
      
      public function Chameleon_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.slow_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.slow_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.efficiency_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t3,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.tire_t5,true);
         return _loc1_;
      }
      
      public function Harpy_Flying() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Flying");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.peck_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.peck_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.peck_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.hailstone_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.hailstone_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.hailstone_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.blow_by_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.blow_by_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.blow_by_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.volley_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.volley_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.volley_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.blow_by_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.blow_by_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.cutting_wind_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.cutting_wind_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.cutting_wind_t5,true);
         return _loc1_;
      }
      
      public function Harpy_Demonic() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Demonic");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.cleric_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.cleric_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.cleric_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.blood_press_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.blood_press_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.blood_press_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.deathly_energy_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.deathly_energy_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.deathly_energy_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.cleric_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.demonic_sacrifice_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.demonic_sacrifice_t4);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.demonic_sacrifice_t5);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.forceful_heal_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.forceful_heal_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.forceful_heal_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.brilliance_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.brilliance_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.brilliance_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_bargain_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_bargain_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.demonic_bargain_t5,true);
         return _loc1_;
      }
      
      public function Harpy_Fire() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.grind_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.grind_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.grind_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.burn_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.burn_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t4);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t5);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.inflame_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.inflame_t2);
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
         _loc1_.AddMoveToTree(2,2,MinionMoveID.fire_ram_t3,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.fire_ram_t4,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.wildfire_t5,true);
         return _loc1_;
      }
      
      public function HolyFox_Holy() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Holy");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.holy_strike_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.holy_strike_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t4,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.holy_strike_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.holy_strike_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.blow_by_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.blow_by_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.blow_by_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.volley_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.volley_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.cleanse_darkness_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.cleanse_darkness_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.blow_by_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.blow_by_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.cleanse_darkness_t5,true);
         return _loc1_;
      }
      
      public function HolyFox_Fire() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.flare_up_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.flare_up_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wildfire_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wildfire_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wildfire_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.righteous_zeal_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.righteous_zeal_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.righteous_zeal_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.flare_up_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.flare_up_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.sear_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.sear_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.sear_t4);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.intense_flame_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.intense_flame_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.intense_flame_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.sear_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.intense_flame_t5,true);
         return _loc1_;
      }
      
      public function HolyFox_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Inspire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.crusade_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.crusade_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.hope_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.hope_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.hope_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.crusade_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.hope_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.hope_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mending_inspiration_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.mending_inspiration_t3,true);
         return _loc1_;
      }
      
      public function RoboBull_Robot() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Robot");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.cog_fallout_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.cog_fallout_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.metal_shield_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.metal_shield_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.twin_missile_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.twin_missile_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.metal_shield_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.metal_shield_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.twin_missile_t3,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.download_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.download_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.agility_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.download_t5,true);
         return _loc1_;
      }
      
      public function RoboBull_Fire() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_bash_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_bash_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_bash_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.inflame_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.inflame_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.fire_bash_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.fire_blast_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.fire_blast_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.fire_shot_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.fire_shot_t4);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.fire_blast_t3,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t5,true);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.fire_shot_t5,true);
         return _loc1_;
      }
      
      public function RoboBull_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.diamond_skin_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.diamond_skin_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.pound_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.pound_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.grind_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.grind_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.grind_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.diamond_skin_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.diamond_skin_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.pound_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.energize_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.energize_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.diamond_skin_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_coating_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_coating_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.perseverance_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.perseverance_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.perseverance_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.mirror_coating_t5,true);
         return _loc1_;
      }
      
      public function TikiMonkey_Fire() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.burn_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.burn_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.burn_t4);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.inflame_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.inflame_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t4,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.fire_blast_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.fire_blast_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.fire_blast_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.inflame_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.inflame_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.wildfire_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.wildfire_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.wildfire_t4);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.blaze_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.blaze_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.blaze_t5,true);
         return _loc1_;
      }
      
      public function TikiMonkey_Buffs() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Buffs");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mud_blast_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mud_blast_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.warmth_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.warmth_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.warmth_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.earthy_fortitude_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.earthy_fortitude_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.earthy_fortitude_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.warmth_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.earthquake_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.earthquake_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.earthquake_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.platinum_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.platinum_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.chosen_earth_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.chosen_earth_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.hulk_inspiration_t1);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.chosen_earth_t5,true);
         return _loc1_;
      }
      
      public function TikiMonkey_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.skillful_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.skillful_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.skillful_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.lich_burn_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.lich_burn_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.roar_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.roar_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.skillful_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.invigorate_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.invigorate_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.roar_t3,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.invigorate_t3,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.invigorate_t4,true);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.prehistoric_bite_t1);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.prehistoric_bite_t2);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.mirror_skin_t5,true);
         return _loc1_;
      }
      
      public function Tortoise_Armor() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Armor");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.earth_shield_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.earth_shield_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.stonequake_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.stonequake_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t5);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.earth_shield_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.earth_shield_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.ice_enclosure_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.ice_enclosure_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.diamond_skin_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.diamond_skin_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.diamond_skin_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.platinum_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.platinum_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.diamond_skin_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.diamond_skin_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.platinum_t4,true);
         return _loc1_;
      }
      
      public function Tortoise_Health() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Health");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.prehistoric_bite_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.prehistoric_bite_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_blast_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_blast_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_slide_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_slide_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_slide_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.earth_barrier_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.earth_barrier_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.earth_barrier_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_blast_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.fortitude_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.fortitude_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.fortitude_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.perseverance_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.perseverance_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.perseverance_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.fortitude_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.fortitude_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.perseverance_t5,true);
         return _loc1_;
      }
      
      public function Tortoise_Buffs() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Buffs");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crazed_blast_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crazed_blast_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crazed_blast_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.solder_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.solder_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.solder_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.tackle_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.tackle_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.skillful_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t4);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t5);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.hulk_inspiration_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.hulk_inspiration_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.hulk_inspiration_t5,true);
         return _loc1_;
      }
      
      public function AntEater_Robot() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Robot");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.download_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.download_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.cog_fallout_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.cog_fallout_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.alloy_coat_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.alloy_coat_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.download_t3,true);
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
         return _loc1_;
      }
      
      public function AntEater_Electric() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Electric");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spike_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spike_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.spark_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.spark_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.spark_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.quickness_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.quickness_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.overload_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.overload_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.quickness_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.overload_t3,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.charge_pass_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.charge_pass_t3);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.charge_pass_t4,true);
         return _loc1_;
      }
      
      public function AntEater_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Energy");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t4);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.perseverance_t1);
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
         _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.purge_t1);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.invigorate_t5,true);
         return _loc1_;
      }
      
      public function Armadillo_Robot() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Robot");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.platinum_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.platinum_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mud_blast_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mud_blast_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.spike_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.spike_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.spike_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.solder_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.solder_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.solder_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mud_blast_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.twin_missile_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.twin_missile_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.ore_drill_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.ore_drill_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.twin_missile_t3,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.ore_drill_t5,true);
         return _loc1_;
      }
      
      public function Armadillo_Gaurd() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Guard");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.overload_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.overload_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.diamond_skin_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.diamond_skin_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.overload_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.charge_pass_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.charge_pass_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.charge_pass_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.diamond_skin_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.diamond_skin_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.diamond_skin_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.taunt_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.taunt_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.burn_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.burn_t2);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.taunt_t5,true);
         return _loc1_;
      }
      
      public function Armadillo_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.perseverance_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.perseverance_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.perseverance_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.earth_barrier_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.earth_barrier_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.earth_barrier_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t4,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.perseverance_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.tackle_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.tackle_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.destabilize_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.destabilize_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.crush_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.crush_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.crush_t5,true);
         return _loc1_;
      }
      
      public function Cheetah_Electric() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Electric");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.piercing_charge_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.piercing_charge_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.thunderstorm_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.thunderstorm_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.piercing_charge_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.thunderstorm_t3,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.charge_blast_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.charge_blast_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.charge_blast_t5,true);
         return _loc1_;
      }
      
      public function Cheetah_Support() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Support");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.overload_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.overload_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.overload_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.reckless_dash_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.roar_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.roar_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.roar_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.charge_pass_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.charge_pass_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.agility_t5,true);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.stun_t1,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.charge_pass_t5,true);
         return _loc1_;
      }
      
      public function Cheetah_Inspire() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Inspire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.claw_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.claw_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.efficiency_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.claw_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.evil_eye_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.evil_eye_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.tackle_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.tackle_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.agile_inspiration_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.agile_inspiration_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.agile_inspiration_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.static_pummel_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.static_pummel_t2);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.agile_inspiration_t5,true);
         return _loc1_;
      }
      
      public function DC2Guy_DeathCall() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Death Call");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ore_drill_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ore_drill_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ore_drill_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.twin_missile_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.twin_missile_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.twin_missile_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.download_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.download_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.download_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.ferocity_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.ferocity_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.twin_missile_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.download_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.death_call_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.death_call_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.death_call_t5,true);
         return _loc1_;
      }
      
      public function DC2Guy_Debuffs() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_blast_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_blast_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_blast_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.slow_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.slow_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_shot_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_shot_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.fire_shot_t5);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t4);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.slow_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.slow_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.energize_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.energize_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.energize_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.concentration_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.tire_t5,true);
         return _loc1_;
      }
      
      public function DC2Guy_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Inspire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.grind_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.grind_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.grind_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.agility_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.spike_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.spike_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.spike_t5);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.reckless_dash_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.reckless_dash_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.reckless_dash_t5);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.energizing_inspiration_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.energizing_inspiration_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.energizing_inspiration_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.crush_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.crush_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.deadly_inspiration_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.deadly_inspiration_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.deadly_inspiration_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.crush_t5,true);
         return _loc1_;
      }
      
      public function DogEel_Electric() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Electric");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.quickness_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.spark_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.spark_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.quickness_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.quickness_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.static_pummel_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.static_pummel_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.blinding_jolt_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.blinding_jolt_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.blinding_jolt_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.static_pummel_t3,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.static_pummel_t4,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.blinding_jolt_t5,true);
         return _loc1_;
      }
      
      public function DogEel_Demonic() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Demonic");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.madness_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.madness_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.madness_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.demonic_strike_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.demonic_strike_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.bone_chill_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.bone_chill_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.bone_chill_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.demonic_strike_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_force_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_force_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_force_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.blood_ritual_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.blood_ritual_t2);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.demonic_force_t5,true);
         return _loc1_;
      }
      
      public function DogEel_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spike_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spike_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spike_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.pound_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.pound_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.pound_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.spike_t4,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.spike_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.crush_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.crush_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.crush_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t3,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t4,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.mirror_skin_t5,true);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.slow_t5,true);
         return _loc1_;
      }
      
      public function Goo_Undead() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Undead");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.forceful_heal_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.forceful_heal_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.forceful_heal_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.infes_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.infes_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.haunt_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.haunt_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.flesh_sacrifice_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.flesh_sacrifice_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.infes_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.haunt_t3,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.flesh_sacrifice_t3,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.flesh_sacrifice_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.ashen_reminder_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.ashen_reminder_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.ashen_reminder_t5,true);
         return _loc1_;
      }
      
      public function Goo_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wild_lance_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wild_lance_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wild_lance_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.charge_pass_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.charge_pass_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.tackle_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.tackle_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.charge_pass_t3,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.poison_tooth_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.poison_tooth_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t4,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.poison_tooth_t5,true);
         return _loc1_;
      }
      
      public function Goo_DeBuffs() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mud_blast_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mud_blast_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mud_blast_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.tire_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.tire_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.tire_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mud_blast_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.fortitude_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.fortitude_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.fortitude_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.tire_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.tire_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.slow_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.slow_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.fortitude_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.fortitude_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.slow_t5,true);
         return _loc1_;
      }
      
      public function Griffen_Flying() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Flying");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.icy_blast_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.icy_blast_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.wild_lance_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.volley_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.volley_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.ice_shield_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.ice_shield_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.cutting_wind_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.cutting_wind_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.volley_t3,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.cutting_wind_t5,true);
         return _loc1_;
      }
      
      public function Griffen_Electric() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Electric");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.peck_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.peck_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.spark_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.spark_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.reckless_dash_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.reckless_dash_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.reckless_dash_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.spark_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.thunderstorm_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.thunderstorm_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.fire_bolt_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.fire_bolt_t2);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.thunderstorm_t5,true);
         return _loc1_;
      }
      
      public function Griffen_Normal() : MinionTalentTree
      {
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
         _loc1_.AddMoveToTree(0,1,MinionMoveID.focus_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.invigorate_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.tire_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.tire_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.invigorate_t2,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.invigorate_t3,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.agile_inspiration_t2,true);
         return _loc1_;
      }
      
      public function HummingBird_Robot() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Robot");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.batch_bolt_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.batch_bolt_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.cog_fallout_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.cog_fallout_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.batch_bolt_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.batch_bolt_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.cog_fallout_t3,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.steel_spike_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.steel_spike_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.concentration_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.steel_spike_t5,true);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.concentration_t5,true);
         return _loc1_;
      }
      
      public function HummingBird_Flying() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Flying");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.peck_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.peck_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.charge_pass_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.charge_pass_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.blow_by_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.claw_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.blow_by_t2,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.blow_by_t3,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.hurricane_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.hurricane_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.agility_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.agility_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.hurricane_t4,true);
         return _loc1_;
      }
      
      public function HummingBird_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.wild_lance_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.reflect_damage_t3,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.reflect_damage_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_skin_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t2);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.mirror_skin_t5,true);
         return _loc1_;
      }
      
      public function JellyFish_Water() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Water");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.forceful_heal_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.forceful_heal_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.soak_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.soak_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.soak_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.fresh_stream_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.fresh_stream_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.fresh_stream_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.refreshing_wave_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.refreshing_wave_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.refreshing_wave_t5);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.soak_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.soak_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.priest_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.priest_t4);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.priest_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.waterjet_t5,true);
         return _loc1_;
      }
      
      public function JellyFish_Electric() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Electric");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.spark_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.spark_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.spark_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.crazed_blast_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.quickness_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.charge_blast_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.charge_blast_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.overload_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.overload_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.overload_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.charge_blast_t3,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.charge_blast_t4,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.overload_t5,true);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.charge_blast_t5,true);
         return _loc1_;
      }
      
      public function JellyFish_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.wild_lance_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.wild_lance_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.grind_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.grind_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.grind_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.grind_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.grind_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.energize_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.energize_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t3,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.reflect_damage_t2);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.mirror_skin_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.reflect_damage_t3,true);
         return _loc1_;
      }
      
      public function RoboShark_Water() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Water");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.soak_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.soak_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.soak_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.water_slam_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.water_slam_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.soak_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.bone_chill_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.bone_chill_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.bone_chill_t4);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.concentration_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.fresh_stream_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.fresh_stream_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.waterjet_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.waterjet_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.waterjet_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.fresh_stream_t5,true);
         return _loc1_;
      }
      
      public function RoboShark_Gaurd() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Guard");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.taunt_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.taunt_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.taunt_t5);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.steel_spike_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.steel_spike_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.steel_spike_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.spike_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.spike_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.spike_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.metal_mold_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.metal_mold_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.metal_mold_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.steel_spike_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.diamond_skin_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.diamond_skin_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.diamond_skin_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.metal_mold_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.metal_mold_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.solder_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.solder_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.diamond_skin_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.diamond_skin_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.solder_t5,true);
         return _loc1_;
      }
      
      public function RoboShark_Robot() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Robot");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.cog_fallout_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.cog_fallout_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tire_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tire_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t5);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.cog_fallout_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.ferocity_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.download_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.download_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.twin_missile_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.twin_missile_t4);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.ferocity_t5,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.download_t3,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.download_t4,true);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.twin_missile_t5,true);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.download_t5,true);
         return _loc1_;
      }
      
      public function Scorpion_Electric() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Electric");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.charge_pass_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.charge_pass_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.quickness_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.charge_pass_t3,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.overload_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.overload_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.charge_pass_t4,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.overload_t4,true);
         return _loc1_;
      }
      
      public function Scorpion_Ground() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Earth");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_skin_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rock_skin_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_slide_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_slide_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_slide_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.rock_skin_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.rock_skin_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_slide_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.fortitude_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.fortitude_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.fortitude_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.rock_skin_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.rock_throw_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.rock_throw_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.rock_throw_t5,true);
         return _loc1_;
      }
      
      public function Scorpion_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.earthquake_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.earthquake_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.earthquake_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.claw_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.tackle_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.earthquake_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.spike_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t3,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t4,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.spike_t5,true);
         return _loc1_;
      }
      
      public function WaterHorse_Water() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Water");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.reckless_dash_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.soak_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.soak_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.soak_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.hailstone_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.hailstone_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.hailstone_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.soak_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.overflow_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.overflow_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.overflow_t5);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.ferocity_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.coldfront_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.coldfront_t2);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.waterjet_t5,true);
         return _loc1_;
      }
      
      public function WaterHorse_Electric() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Electric");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.spark_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.thunderstorm_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.thunderstorm_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.thunderstorm_t4);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.agility_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.spark_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.concentration_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.concentration_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.agility_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.overload_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.overload_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.overload_t4);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.concentration_t5,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.quickness_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.quickness_t3);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.overload_t5,true);
         return _loc1_;
      }
      
      public function WaterHorse_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.claw_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.claw_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.energize_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.energize_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.claw_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.skillful_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.agile_inspiration_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.agile_inspiration_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.reflect_damage_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mending_inspiration_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mending_inspiration_t2);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.agile_inspiration_t3,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.diamond_skin_t5,true);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.mending_inspiration_t3,true);
         return _loc1_;
      }
      
      public function BatDemon_Fire() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_bash_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_bash_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_bash_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.burn_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.burn_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.burn_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_blast_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_blast_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_blast_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.fire_bash_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.burn_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.sear_t4);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.sear_t5);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.inflame_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.inflame_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.inflame_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.inflame_t4);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.fire_blast_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.intense_flame_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.intense_flame_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.intense_flame_t4);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.intense_flame_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.fire_blast_t5,true);
         return _loc1_;
      }
      
      public function BatDemon_Demonic() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Demonic");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_ritual_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_ritual_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.crazed_blast_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.crazed_blast_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.crazed_blast_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.reckless_dash_t5);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.blood_ritual_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.crazed_blast_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_force_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_force_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t5,true);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.vicious_t3,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.demonic_force_t5,true);
         return _loc1_;
      }
      
      public function BatDemon_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Inspire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t5);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t4);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.agility_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.claw_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.agility_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.deadly_inspiration_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.deadly_inspiration_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.deadly_inspiration_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.deadly_inspiration_t5,true);
         return _loc1_;
      }
      
      public function HolyBell_Fire() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mortify_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mortify_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mortify_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.burn_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.burn_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.burn_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.intense_flame_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.intense_flame_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.vicious_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.wildfire_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.wildfire_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.wildfire_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.intense_flame_t3,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.touch_fire_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.touch_fire_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.touch_fire_t5,true);
         return _loc1_;
      }
      
      public function HolyBell_Holy() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Holy");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ice_shield_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ice_shield_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.cleansing_heal_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.cleansing_heal_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.cleansing_heal_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.penance_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.penance_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.brilliance_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.brilliance_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.brilliance_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.cleansing_heal_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.penance_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.penance_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.hope_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.hope_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.cleric_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.hope_t5,true);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.cleric_t5,true);
         return _loc1_;
      }
      
      public function HolyBell_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Energy");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.flare_up_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.flare_up_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.flare_up_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.blow_by_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.blow_by_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.purge_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.tire_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.tire_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.tire_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.invigorate_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.invigorate_t5,true);
         return _loc1_;
      }
      
      public function Crow_Demonic() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Demonic");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.hailstone_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.hailstone_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.hailstone_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.lich_burn_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.lich_burn_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.burn_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.burn_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.burn_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.lich_burn_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.crazed_blast_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.crazed_blast_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.vicious_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_strike_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_strike_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.evil_eye_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.evil_eye_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.evil_eye_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.demonic_strike_t5,true);
         return _loc1_;
      }
      
      public function Crow_Flying() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Flying");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.wild_lance_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.wild_lance_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.wild_lance_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.cutting_wind_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.cutting_wind_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.volley_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.volley_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.volley_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.cutting_wind_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.quickness_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.blow_by_t1);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.peck_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.peck_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.quickness_t4,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.peck_t5,true);
         return _loc1_;
      }
      
      public function Crow_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t4);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.energize_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.energize_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.efficiency_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.claw_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_coating_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_coating_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_coating_t3,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_coating_t4,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.tire_t5,true);
         return _loc1_;
      }
      
      public function EvilEye_Debuffs() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.coldfront_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.coldfront_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.quickness_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.forceful_heal_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.forceful_heal_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.forceful_heal_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.priest_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.priest_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.priest_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.quickness_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.quickness_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.tire_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.tire_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.tire_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.demoralize_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.demoralize_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.demoralize_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.evil_eye_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.tire_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.evil_eye_t5,true);
         return _loc1_;
      }
      
      public function EvilEye_Demonic() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Demonic");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_ritual_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_ritual_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.wild_lance_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.icy_blast_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.icy_blast_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.blood_ritual_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.demonic_force_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.demonic_force_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.demonic_force_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_strike_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_strike_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_strike_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t4,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.demonic_strike_t5,true);
         return _loc1_;
      }
      
      public function EvilEye_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Mixed");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.flare_up_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.flare_up_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.concentration_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.concentration_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.concentration_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_sacrifice_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_sacrifice_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_sacrifice_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ice_enclosure_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ice_enclosure_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.concentration_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.concentration_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.touch_fire_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.touch_fire_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.spike_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.spike_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.touch_fire_t3,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.touch_fire_t4,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.spike_t5,true);
         return _loc1_;
      }
      
      public function FireGhost_Undead() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Undead");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.phantom_strike_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.phantom_strike_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.phantom_strike_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.focus_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.focus_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.focus_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_force_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_force_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.phantom_strike_t4,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.phantom_strike_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.focus_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.haunt_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.haunt_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.lich_burn_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.lich_burn_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.haunt_t3,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.haunt_t4,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.lich_burn_t5,true);
         return _loc1_;
      }
      
      public function FireGhost_Fire() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Fire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.burn_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.burn_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.burn_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.touch_fire_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.touch_fire_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.intense_flame_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.intense_flame_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.fire_blast_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.fire_blast_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.touch_fire_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.touch_fire_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.flare_up_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.flare_up_t5,true);
         return _loc1_;
      }
      
      public function FireGhost_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.blood_ritual_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.blood_ritual_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.tackle_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.tackle_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.blood_ritual_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.invigorate_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.invigorate_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_coating_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_coating_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_coating_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tire_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.tire_t5,true);
         return _loc1_;
      }
      
      public function HolyStrongMan_Damage() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Holy");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.holy_strike_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.holy_strike_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.holy_strike_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.penance_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.penance_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.penance_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.crush_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.holy_strike_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.penance_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.fire_bash_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.fire_bash_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.fire_bash_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.crusade_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.crusade_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.crusade_t5,true);
         return _loc1_;
      }
      
      public function HolyStrongMan_Darkness() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Darkness");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.madness_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.madness_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.cleric_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.cleric_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.cleric_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_strike_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_strike_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_strike_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.madness_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.madness_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.cleric_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.demonic_sacrifice_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.demonic_sacrifice_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.purge_t1);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_bargain_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.demonic_bargain_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.demonic_sacrifice_t3,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.demonic_sacrifice_t4,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.demonic_bargain_t5,true);
         return _loc1_;
      }
      
      public function HolyStrongMan_Inspire() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Inspire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.efficiency_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.tackle_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.efficiency_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.fortitude_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.fortitude_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.fortitude_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.slow_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.reflect_damage_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.reflect_damage_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.reflect_damage_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.deadly_inspiration_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t3,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.slow_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.deadly_inspiration_t3,true);
         return _loc1_;
      }
      
      public function IceDeer_Ice() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Ice");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ferocity_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.hailstone_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.hailstone_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.hailstone_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.blow_by_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.blow_by_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.blow_by_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t4,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ferocity_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.hailstone_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.bone_chill_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.bone_chill_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.bone_chill_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.sleet_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.sleet_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.bone_chill_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.bone_chill_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.sleet_t5,true);
         return _loc1_;
      }
      
      public function IceDeer_Healing() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Shield");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ice_shield_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ice_shield_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ice_shield_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reckless_dash_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.cleric_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.cleric_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.cleric_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ice_barrier_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.ice_barrier_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.concentration_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.concentration_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.concentration_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.cleric_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.cleric_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.ice_barrier_t3,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.ice_barrier_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.ice_enclosure_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.ice_enclosure_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.ice_enclosure_t5,true);
         return _loc1_;
      }
      
      public function IceDeer_Reflect() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crusade_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crusade_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crusade_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.cleanse_darkness_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.cleanse_darkness_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.cleanse_darkness_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.spike_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.spike_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.spike_t4);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.tire_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.tire_t4);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.reflect_damage_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.reflect_damage_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.reflect_damage_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.mirror_skin_t3,true);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.tire_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.reflect_damage_t5,true);
         return _loc1_;
      }
      
      public function LichBoss_Debuffs() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.haunt_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.haunt_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.invigorate_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.invigorate_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.flesh_sacrifice_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.flesh_sacrifice_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.haunt_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.invigorate_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.skin_trap_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.skin_trap_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.lifeless_touch_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.lifeless_touch_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.demoralize_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.demoralize_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.demoralize_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.lifeless_touch_t5,true);
         return _loc1_;
      }
      
      public function LichBoss_Undead() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Undead");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mortify_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mortify_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mortify_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.infes_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.infes_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.infes_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.mortify_t4,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.mortify_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.phantom_strike_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.phantom_strike_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.phantom_strike_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.lich_burn_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.lich_burn_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.lich_burn_t5,true);
         return _loc1_;
      }
      
      public function LichBoss_Reflect() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Reflect");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.focus_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.bone_chill_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.bone_chill_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.icy_blast_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.icy_blast_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.reflect_damage_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.bone_chill_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.icy_blast_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.icy_blast_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.reflect_damage_t3,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_coating_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.mirror_coating_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.mirror_coating_t4,true);
         return _loc1_;
      }
      
      public function ScareCrow_Demonic() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Demonic");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_ritual_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_ritual_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_strike_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.demonic_strike_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.blood_ritual_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.blood_ritual_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.vicious_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.demonic_sacrifice_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.demonic_sacrifice_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.blood_press_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.blood_press_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.demonic_sacrifice_t3,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.blood_press_t5,true);
         return _loc1_;
      }
      
      public function ScareCrow_Undead() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Undead");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rancid_bite_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rancid_bite_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.rancid_bite_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mortify_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mortify_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.focus_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.mud_blast_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.mud_blast_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mortify_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.focus_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.focus_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mud_blast_t3,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mud_blast_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.infes_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.infes_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.infes_t5,true);
         return _loc1_;
      }
      
      public function ScareCrow_Debuff() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Debuff");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.lifeless_touch_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.lifeless_touch_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.quickness_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.lifeless_touch_t3,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.lifeless_touch_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mirror_skin_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.skin_trap_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.skin_trap_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.slow_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.slow_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.skin_trap_t3,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.slow_t5,true);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.skin_trap_t5,true);
         return _loc1_;
      }
      
      public function SlenderMan_Debuff() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("DOTs");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_press_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.blood_press_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mortify_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mortify_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.efficiency_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.concentration_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mortify_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.mortify_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.efficiency_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.infes_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.infes_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.infes_t5,true);
         return _loc1_;
      }
      
      public function SlenderMan_Undead() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Undead");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.haunt_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.haunt_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.haunt_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.lich_burn_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.lich_burn_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.haunt_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.lich_burn_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.lich_burn_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.rancid_bite_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.rancid_bite_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.rancid_bite_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.flesh_sacrifice_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.flesh_sacrifice_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.rancid_bite_t4,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.rancid_bite_t5,true);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.flesh_sacrifice_t5,true);
         return _loc1_;
      }
      
      public function SlenderMan_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t5);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reflect_damage_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.reflect_damage_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.grind_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.grind_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.slow_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.slow_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.reflect_damage_t3,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.grind_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.grind_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t3,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.crush_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.crush_t3);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.slow_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.crush_t5,true);
         return _loc1_;
      }
      
      public function Tiger_Speed() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Speed");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.quickness_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.quickness_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.quickness_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wild_lance_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wild_lance_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.wild_lance_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.quickness_t4,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.quickness_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.tackle_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.burn_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.burn_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.burn_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.reckless_dash_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.tackle_t5,true);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.burn_t5,true);
         _loc1_.AddMoveToTree(0,3,MinionMoveID.reckless_dash_t4,true);
         return _loc1_;
      }
      
      public function Tiger_Gaurd() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Guard");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fortitude_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.rock_throw_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.taunt_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.fortitude_t4,true);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.fortitude_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t3,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.rock_throw_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.destabilize_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.destabilize_t2);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.chosen_earth_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.chosen_earth_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.destabilize_t3,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.chosen_earth_t5,true);
         return _loc1_;
      }
      
      public function Tiger_Normal() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Normal");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.pound_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.mirror_skin_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.vicious_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.energize_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.energize_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.demoralizing_charge_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.demoralizing_charge_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t4,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.vicious_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.roar_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.roar_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.roar_t4);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.poison_tooth_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.poison_tooth_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.poison_tooth_t5,true);
         return _loc1_;
      }
      
      public function UndeadEel_Water() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Water");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.icy_blast_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.icy_blast_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.icy_blast_t5);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.soak_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.soak_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.ferocity_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.coldfront_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.coldfront_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.coldfront_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.soak_t4,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.soak_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t5,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.coldfront_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.coldfront_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.water_slam_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.water_slam_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.ice_enclosure_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.ice_enclosure_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.ice_enclosure_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.water_slam_t5,true);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.ice_enclosure_t5,true);
         return _loc1_;
      }
      
      public function UndeadEel_Undead() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Undead");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mortify_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mortify_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mortify_t5);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.infes_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.infes_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.infes_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.skillful_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.demoralize_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.demoralize_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.infes_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.flesh_sacrifice_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.flesh_sacrifice_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.flesh_sacrifice_t5);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.demoralize_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.rancid_bite_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.rancid_bite_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.rancid_bite_t5,true);
         return _loc1_;
      }
      
      public function UndeadEel_Inspire() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Inspire");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.poison_tooth_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.poison_tooth_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.poison_tooth_t5);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.tackle_t4);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.reflect_damage_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.reflect_damage_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.reflect_damage_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.invigorate_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.invigorate_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.invigorate_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.tackle_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.perseverance_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.energizing_inspiration_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.energizing_inspiration_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.perseverance_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.energizing_inspiration_t5,true);
         return _loc1_;
      }
      
      public function Titan1_Titan() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Titan");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.kings_rush_t1);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.kings_rush_t2);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.kings_rush_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.claw_t5);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.energizing_inspiration_t1);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.energizing_inspiration_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.energizing_inspiration_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.kings_rush_t5,true);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.reckless_dash_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.reckless_dash_t4);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.reckless_dash_t5);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.dominate_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.dominate_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t4);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.slow_t5);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.titan_slam_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.titan_slam_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.dominate_t3,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.titan_slam_t5,true);
         return _loc1_;
      }
      
      public function Titan1_Water() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Water");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.water_slam_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.water_slam_t4);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.water_slam_t5);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.coldfront_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.coldfront_t4);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.ice_barrier_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.ice_barrier_t4);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.ice_barrier_t5);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.sleet_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.sleet_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.sleet_t5);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.coldfront_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.ferocity_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.deadly_inspiration_t1);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.deadly_inspiration_t2);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.deadly_inspiration_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.waterjet_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.ferocity_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.waterjet_t5,true);
         return _loc1_;
      }
      
      public function Titan1_Earth() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Earth");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_blast_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_blast_t4);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.fire_blast_t5);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.intense_flame_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.intense_flame_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.intense_flame_t5);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_slide_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_slide_t4);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.rock_slide_t5);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.diamond_inspiration_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.diamond_inspiration_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.agility_t5);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.earth_barrier_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.earth_barrier_t4);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.earth_barrier_t5);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.diamond_inspiration_t3,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.diamond_inspiration_t4,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.destabilize_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.destabilize_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.crazed_t1);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.crazed_t2);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.crazed_t3);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.destabilize_t5,true);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.crazed_t4,true);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.crazed_t5,true);
         return _loc1_;
      }
      
      public function Titan2_Titan() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Titan");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t4);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.crush_t5);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.titan_slash_t3);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.titan_slash_t4);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.titan_slash_t5);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.roar_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.roar_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.roar_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.titan_blast_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.titan_blast_t2);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.titan_blast_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.ancient_force_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.ancient_force_t4);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.ancient_force_t5);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.flurry_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.flurry_t4);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.dominate_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.dominate_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.flurry_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.dominate_t5,true);
         return _loc1_;
      }
      
      public function Titan2_Guard() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Guard");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mud_blast_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mud_blast_t4);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.mud_blast_t5);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.perseverance_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.perseverance_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.burn_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.burn_t4);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.burn_t5);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.earth_shield_t3);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.earth_shield_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.earth_shield_t5);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.perseverance_t5,true);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_ram_t3);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_ram_t4);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.fire_ram_t5);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.taunt_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.taunt_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.diamond_skin_t3);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.diamond_skin_t4);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.taunt_t5,true);
         _loc1_.AddMoveToTree(2,3,MinionMoveID.diamond_skin_t5,true);
         return _loc1_;
      }
      
      public function Titan2_Healer() : MinionTalentTree
      {
         var _loc1_:MinionTalentTree = new MinionTalentTree("Healer");
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ice_enclosure_t3);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ice_enclosure_t4);
         _loc1_.AddMoveToTree(0,0,MinionMoveID.ice_enclosure_t5);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.agility_t1);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.agility_t2);
         _loc1_.AddMoveToTree(1,0,MinionMoveID.agility_t4);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.titan_heal_t2);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.titan_heal_t3);
         _loc1_.AddMoveToTree(2,0,MinionMoveID.titan_heal_t4);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.mirror_skin_t1);
         _loc1_.AddMoveToTree(0,1,MinionMoveID.mirror_skin_t2);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.priest_t3);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.priest_t4);
         _loc1_.AddMoveToTree(1,1,MinionMoveID.priest_t5);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.titan_recovery_t1);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.titan_recovery_t2);
         _loc1_.AddMoveToTree(2,1,MinionMoveID.titan_recovery_t3);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t4,true);
         _loc1_.AddMoveToTree(0,2,MinionMoveID.mirror_skin_t5,true);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.titan_light_t3);
         _loc1_.AddMoveToTree(1,2,MinionMoveID.titan_light_t4);
         _loc1_.AddMoveToTree(2,2,MinionMoveID.titan_recovery_t5,true);
         _loc1_.AddMoveToTree(1,3,MinionMoveID.titan_light_t5,true);
         return _loc1_;
      }
      
      public function GetTestTalentTree() : MinionTalentTree
      {
         return new MinionTalentTree("Test");
      }
   }
}
