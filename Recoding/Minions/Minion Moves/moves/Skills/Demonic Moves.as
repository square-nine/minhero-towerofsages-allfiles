//DEmonic Moves
      private function CreateDemonMoves() : void
      {
         var _loc1_:BaseMinionMove = null;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         _loc2_ = new Array(3,10,20,30,50);
         _loc3_ = new Array(2,3,4,5,10);
         _loc4_ = new Array(-1,-2,-3,-4,-6);
         _loc1_ = this.CreateMove("Evil Eye",_loc2_[0],MinionMoveClasses.evil_eye,MinionMoveID.evil_eye_t1,"moveIcon_evilEye",MinionType.TYPE_DEMONIC,MinionVisualMoveID.VISUALS_SameAsClass);
         _loc1_.m_damage = _loc3_[0];
         _loc1_.AddStatToDeBuffFirstTime(StatType.STAT_ATTACK,true,false);
         _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
         _loc1_.m_damage = _loc3_[1];
         _loc1_.m_stagesOfStatTypeToDeBuff = _loc4_[1];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
         _loc1_.m_damage = _loc3_[2];
         _loc1_.m_stagesOfStatTypeToDeBuff = _loc4_[2];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
         _loc1_.m_damage = _loc3_[3];
         _loc1_.m_stagesOfStatTypeToDeBuff = _loc4_[3];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Demonic Stare");
         _loc1_.m_damage = _loc3_[4];
         _loc1_.m_stagesOfStatTypeToDeBuff = _loc4_[4];
         _loc2_ = new Array(10,18,25,30,55);
         _loc3_ = new Array(1,1,1,1,1);
         _loc4_ = new Array(70,90,110,130,150);
         _loc1_ = this.CreateMove("Demonic Bargain",_loc2_[0],MinionMoveClasses.demonic_bargain,MinionMoveID.demonic_bargain_t1,"moveIcon_demonicBargain",MinionType.TYPE_DEMONIC,MinionVisualMoveID.VISUALS_SameAsClass);
         _loc1_.m_healing = _loc3_[0];
         _loc1_.m_additionalRandomHealing = _loc4_[0];
         _loc1_.m_enemiesItHits = 0;
         _loc1_.m_alliesItHits = 1;
         _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
         _loc1_.m_healing = _loc3_[1];
         _loc1_.m_additionalRandomHealing = _loc4_[1];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
         _loc1_.m_healing = _loc3_[2];
         _loc1_.m_additionalRandomHealing = _loc4_[2];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
         _loc1_.m_healing = _loc3_[3];
         _loc1_.m_additionalRandomHealing = _loc4_[3];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Demonic Insight");
         _loc1_.m_healing = _loc3_[4];
         _loc1_.m_additionalRandomHealing = _loc4_[4];
         _loc1_.AddStatToDeBuffFirstTime(StatType.STAT_ENERGY,true,false,1,20);
         _loc2_ = new Array(10,18,25,30,55);
         _loc3_ = new Array(1,1,1,1,1);
         _loc4_ = new Array(110,140,180,220,300);
         _loc1_ = this.CreateMove("Forceful Heal",_loc2_[0],MinionMoveClasses.forceful_heal,MinionMoveID.forceful_heal_t1,"moveIcon_forcefulHeal",MinionType.TYPE_DEMONIC,MinionVisualMoveID.VISUALS_SameAsClass);
         _loc1_.m_healing = _loc3_[0];
         _loc1_.m_additionalRandomHealing = _loc4_[0];
         _loc1_.m_exhaustTime = 1;
         _loc1_.AddStatToBuffFirstTime(StatType.STAT_ATTACK,true,false,1,5);
         _loc1_.m_enemiesItHits = 0;
         _loc1_.m_alliesItHits = 1;
         _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
         _loc1_.m_healing = _loc3_[1];
         _loc1_.m_additionalRandomHealing = _loc4_[1];
         _loc1_.m_chanceToBuff = 10;
         _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
         _loc1_.m_healing = _loc3_[2];
         _loc1_.m_additionalRandomHealing = _loc4_[2];
         _loc1_.m_chanceToBuff = 20;
         _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
         _loc1_.m_healing = _loc3_[3];
         _loc1_.m_additionalRandomHealing = _loc4_[3];
         _loc1_.m_chanceToBuff = 15;
         _loc1_.m_stagesOfStatTypeToBuff = 2;
         _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Forced Repair");
         _loc1_.m_healing = _loc3_[4];
         _loc1_.m_additionalRandomHealing = _loc4_[4];
         _loc1_.m_chanceToBuff = 20;
         _loc2_ = new Array(2,5,10,15,20);
         _loc3_ = new Array(1,1,1,1,1);
         _loc4_ = new Array(110,140,180,220,300);
         _loc1_ = this.CreateMove("Demonic Sacrifice",_loc2_[0],MinionMoveClasses.demonic_sacrifice,MinionMoveID.demonic_sacrifice_t1,"moveIcon_demonicSacrifice",MinionType.TYPE_DEMONIC,MinionVisualMoveID.VISUALS_SameAsClass);
         _loc1_.m_healing = _loc3_[0];
         _loc1_.m_additionalRandomHealing = _loc4_[0];
         _loc1_.m_exhaustTime = 3;
         _loc1_.m_enemiesItHits = 0;
         _loc1_.m_alliesItHits = 5;
         _loc1_.m_isThereABufferBetweenVisualMovesOnMultipleEnemies = false;
         _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
         _loc1_.m_healing = _loc3_[1];
         _loc1_.m_additionalRandomHealing = _loc4_[1];
         _loc1_.m_chanceToBuff = 10;
         _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
         _loc1_.m_healing = _loc3_[2];
         _loc1_.m_additionalRandomHealing = _loc4_[2];
         _loc1_.m_chanceToBuff = 20;
         _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
         _loc1_.m_healing = _loc3_[3];
         _loc1_.m_additionalRandomHealing = _loc4_[3];
         _loc1_.m_chanceToBuff = 15;
         _loc1_.m_stagesOfStatTypeToBuff = 2;
         _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Forced Repair");
         _loc1_.m_healing = _loc3_[4];
         _loc1_.m_additionalRandomHealing = _loc4_[4];
         _loc1_.m_chanceToBuff = 20;
         _loc2_ = new Array(10,15,20,25,30);
         _loc3_ = new Array(1,1,1,1,1);
         _loc4_ = new Array(110,140,180,220,300);
         _loc1_ = this.CreateMove("Madness",_loc2_[0],MinionMoveClasses.madness,MinionMoveID.madness_t1,"moveIcon_madness",MinionType.TYPE_DEMONIC,MinionVisualMoveID.VISUALS_SameAsClass);
         _loc1_.m_healing = _loc3_[0];
         _loc1_.m_additionalRandomHealing = _loc4_[0];
         _loc1_.m_selfDamage = 8;
         _loc1_.m_enemiesItHits = 0;
         _loc1_.m_alliesItHits = 1;
         _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
         _loc1_.m_healing = _loc3_[1];
         _loc1_.m_additionalRandomHealing = _loc4_[1];
         _loc1_.m_selfDamage = 10;
         _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
         _loc1_.m_healing = _loc3_[2];
         _loc1_.m_additionalRandomHealing = _loc4_[2];
         _loc1_.m_selfDamage = 12;
         _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
         _loc1_.m_healing = _loc3_[3];
         _loc1_.m_additionalRandomHealing = _loc4_[3];
         _loc1_.m_selfDamage = 17;
         _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Infernal Madness");
         _loc1_.m_healing = _loc3_[4];
         _loc1_.m_additionalRandomHealing = _loc4_[4];
         _loc1_.m_selfDamage = 28;
         _loc2_ = new Array(5,10,20,25,35);
         _loc3_ = new Array(20,30,35,45,50);
         _loc4_ = new Array(10,15,20,25,50);
         _loc1_ = this.CreateMove("Demonic Strike",_loc2_[0],MinionMoveClasses.demonic_strike,MinionMoveID.demonic_strike_t1,"moveIcon_demonicStrike",MinionType.TYPE_DEMONIC,MinionVisualMoveID.VISUALS_SameAsClass);
         _loc1_.m_damage = _loc3_[0];
         _loc1_.m_additionalRandomDamage = _loc4_[0];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
         _loc1_.m_damage = _loc3_[1];
         _loc1_.m_additionalRandomDamage = _loc4_[1];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
         _loc1_.m_damage = _loc3_[2];
         _loc1_.m_additionalRandomDamage = _loc4_[2];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
         _loc1_.m_damage = _loc3_[3];
         _loc1_.m_additionalRandomDamage = _loc4_[3];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Demonic Slam");
         _loc1_.m_damage = _loc3_[4];
         _loc1_.m_additionalRandomDamage = _loc4_[4];
         _loc2_ = new Array(5,10,20,25,35);
         _loc3_ = new Array(35,45,55,65,90);
         _loc4_ = new Array(15,20,30,40,50);
         _loc1_ = this.CreateMove("Blood Press",_loc2_[0],MinionMoveClasses.blood_press,MinionMoveID.blood_press_t1,"moveIcon_bloodPress",MinionType.TYPE_DEMONIC,MinionVisualMoveID.VISUALS_SameAsClass);
         _loc1_.m_damage = _loc3_[0];
         _loc1_.m_additionalRandomDamage = _loc4_[0];
         _loc1_.m_exhaustTime = 1;
         _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
         _loc1_.m_damage = _loc3_[1];
         _loc1_.m_additionalRandomDamage = _loc4_[1];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
         _loc1_.m_damage = _loc3_[2];
         _loc1_.m_additionalRandomDamage = _loc4_[2];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
         _loc1_.m_damage = _loc3_[3];
         _loc1_.m_additionalRandomDamage = _loc4_[3];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Blood Force");
         _loc1_.m_damage = _loc3_[4];
         _loc1_.m_additionalRandomDamage = _loc4_[4];
         _loc2_ = new Array(5,10,20,25,35);
         _loc3_ = new Array(50,75,100,125,170);
         _loc4_ = new Array(10,15,20,25,50);
         _loc1_ = this.CreateMove("Demonic Force",_loc2_[0],MinionMoveClasses.demonic_force,MinionMoveID.demonic_force_t1,"moveIcon_demonicForce",MinionType.TYPE_DEMONIC,MinionVisualMoveID.VISUALS_SameAsClass);
         _loc1_.m_damage = _loc3_[0];
         _loc1_.m_additionalRandomDamage = _loc4_[0];
         _loc1_.m_exhaustTime = 2;
         _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
         _loc1_.m_damage = _loc3_[1];
         _loc1_.m_additionalRandomDamage = _loc4_[1];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
         _loc1_.m_damage = _loc3_[2];
         _loc1_.m_additionalRandomDamage = _loc4_[2];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
         _loc1_.m_damage = _loc3_[3];
         _loc1_.m_additionalRandomDamage = _loc4_[3];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Demonic Destruction");
         _loc1_.m_damage = _loc3_[4];
         _loc1_.m_additionalRandomDamage = _loc4_[4];
         _loc2_ = new Array(2,5,10,15,20);
         _loc3_ = new Array(5,10,15,20,30);
         _loc4_ = new Array(100,175,250,350,375);
         _loc1_ = this.CreateMove("Crazed Blast",_loc2_[0],MinionMoveClasses.crazed_blast,MinionMoveID.crazed_blast_t1,"moveIcon_crazedBlast",MinionType.TYPE_DEMONIC,MinionVisualMoveID.VISUALS_SameAsClass);
         _loc1_.m_damage = _loc3_[0];
         _loc1_.m_additionalRandomDamage = _loc4_[0];
         _loc1_.m_exhaustTime = 2;
         _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
         _loc1_.m_damage = _loc3_[1];
         _loc1_.m_additionalRandomDamage = _loc4_[1];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
         _loc1_.m_damage = _loc3_[2];
         _loc1_.m_additionalRandomDamage = _loc4_[2];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
         _loc1_.m_damage = _loc3_[3];
         _loc1_.m_additionalRandomDamage = _loc4_[3];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Forced Insanity");
         _loc1_.m_damage = _loc3_[4];
         _loc1_.m_additionalRandomDamage = _loc4_[4];
         _loc1_.AddStatToBuffFirstTime(StatType.STAT_ATTACK,false,true,2);
         _loc2_ = new Array(5,10,20,25,35);
         _loc3_ = new Array(60,85,110,135,180);
         _loc1_ = this.CreateMove("Blood Ritual",_loc2_[0],MinionMoveClasses.blood_ritual,MinionMoveID.blood_ritual_t1,"moveIcon_bloodFusion",MinionType.TYPE_DEMONIC,MinionVisualMoveID.VISUALS_SameAsClass);
         _loc1_.m_DOTDamage = _loc3_[0];
         _loc1_.m_exhaustTime = 3;
         _loc1_ = this.CopyMove(_loc1_,_loc2_[1]);
         _loc1_.m_DOTDamage = _loc3_[1];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[2]);
         _loc1_.m_DOTDamage = _loc3_[2];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[3]);
         _loc1_.m_DOTDamage = _loc3_[3];
         _loc1_ = this.CopyMove(_loc1_,_loc2_[4],"Blood Swap");
         _loc1_.m_DOTDamage = _loc3_[4];
      }