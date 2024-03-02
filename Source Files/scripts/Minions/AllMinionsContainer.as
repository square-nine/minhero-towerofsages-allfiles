package Minions
{
   import States.ExpGainRates;
   import States.MinionDexID;
   import States.MinionMoveID;
   import States.MinionType;
   import Utilities.Singleton;
   
   public class AllMinionsContainer
   {
       
      
      private var m_allMinions:Vector.<BaseMinion>;
      
      public function AllMinionsContainer()
      {
         super();
         this.m_allMinions = new Vector.<BaseMinion>(MinionDexID.TOTAL_NUM_OF_MINIONS);
         this.FirePig_stage1();
         this.FirePig_stage2();
         this.FirePig_stage3();
         this.FireBear_stage1();
         this.FireBear_stage2();
         this.GrassGorilla_stage1();
         this.GrassGorilla_stage2();
         this.FlyingGrassSuperMinion_stage1();
         this.GrassSnake_stage1();
         this.GrassSnake_stage2();
         this.GrassSnake_stage3();
         this.FireFrog_stage1();
         this.FireFrog_stage2();
         this.FireFrog_stage3();
         this.FireDino_stage1();
         this.FireDino_stage2();
         this.FireDino_stage3();
         this.EarthPlant_stage1();
         this.EarthPlant_stage2();
         this.EarthPlant_stage3();
         this.Worm_stage1();
         this.Worm_stage2();
         this.Worm_stage3();
         this.DemonicCat_stage1();
         this.DemonicCat_stage2();
         this.HolyMantis_stage1();
         this.IceTree_stage1();
         this.IceTree_stage2();
         this.IceBird_stage1();
         this.IceBird_stage2();
         this.GroundMole_stage1();
         this.GroundMole_stage2();
         this.GroundMole_stage3();
         this.GroundAttacker_stage1();
         this.GroundAttacker_stage2();
         this.GroundAttacker_stage3();
         this.LandShark_stage1();
         this.Racoon_stage1();
         this.Racoon_stage2();
         this.TRex_stage1();
         this.TRex_stage2();
         this.TRex_stage3();
         this.WaterBird_stage1();
         this.WaterBird_stage2();
         this.WaterBird_stage3();
         this.WaterSeal_stage1();
         this.WaterSeal_stage2();
         this.Chameleon_stage1();
         this.Harpy_stage1();
         this.HolyFox_stage1();
         this.RoboBull_stage1();
         this.TikiMonkey_stage1();
         this.TikiMonkey_stage2();
         this.Tortoise_stage1();
         this.WaterGrassHorse_stage1();
         this.AntEater_stage1();
         this.AntEater_stage2();
         this.Armadillo_stage1();
         this.Armadillo_stage2();
         this.Cheetah_stage1();
         this.Cheetah_stage2();
         this.Cheetah_stage3();
         this.DeathCall2Robot_stage1();
         this.DogEel_stage1();
         this.DogEel_stage2();
         this.Goo_stage1();
         this.Goo_stage2();
         this.Goo_stage3();
         this.Griffen_stage1();
         this.Griffen_stage2();
         this.HummingBird_stage1();
         this.JellyFish_stage1();
         this.JellyFish_stage2();
         this.RoboShark_stage1();
         this.Scorpion_stage1();
         this.Scorpion_stage2();
         this.Scorpion_stage3();
         this.WaterHorse_stage1();
         this.BatDemon_stage1();
         this.BlueBell_stage1();
         this.PinkBell_stage1();
         this.Crow_stage1();
         this.Crow_stage2();
         this.Crow_stage3();
         this.EvilEye_stage1();
         this.EvilEye_stage2();
         this.EvilEye_stage3();
         this.FireGhost_stage1();
         this.HolyStrongGuy_stage1();
         this.IceDeer_stage1();
         this.LichBoss_stage1();
         this.LichBoss_stage2();
         this.LichBoss_stage3();
         this.ScareCrow_stage1();
         this.ScareCrow_stage2();
         this.ScareCrow_stage3();
         this.SlenderMan_stage1();
         this.Tiger_stage1();
         this.Tiger_stage2();
         this.UndeadEel_stage1();
         this.Titan1_stage1();
         this.Titan2_stage1();
         this.BattleMod_stage1();
         this.BattleMod_stage2();
         this.BattleMod_stage3();
         this.CreateTestingMinion();
      }
      
      private function CM(param1:int, param2:String, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:int, param10:int = 0) : BaseMinion
      {
         var _loc11_:BaseMinion;
         (_loc11_ = new BaseMinion()).m_minionDexID = param1;
         _loc11_.m_minionBattleSprite = param3;
         _loc11_.m_baseMinionName = param2;
         _loc11_.m_baseHealth = param4;
         _loc11_.m_baseEnergy = param5;
         _loc11_.m_baseAttack = param6;
         _loc11_.m_baseHealing = param7;
         _loc11_.m_baseSpeed = param8;
         _loc11_.m_minionType1 = param9;
         _loc11_.m_minionType2 = param10;
         this.m_allMinions[param1] = _loc11_;
         return _loc11_;
      }
      
      public function GetBaseMinion(param1:int) : BaseMinion
      {
         return this.m_allMinions[param1];
      }
      
      private function BatDemon_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_BatDemon_1,"Cerberus","demonicBatDog",65,45,90,35,75,MinionType.TYPE_DEMONIC,MinionType.TYPE_FIRE);
         _loc1_.m_minionIconPositioningX = 3;
         _loc1_.m_minionIconPositioningY = -27;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.sear_t2);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.fire_blast_t1,MinionMoveID.demonic_force_t1,MinionMoveID.deadly_inspiration_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.BatDemon_Fire();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.BatDemon_Demonic();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.BatDemon_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function BlueBell_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_BlueBell_1,"Destrabell","holyBlueBell",45,45,65,45,45,MinionType.TYPE_HOLY,MinionType.TYPE_FIRE);
         _loc1_.m_minionIconPositioningX = 23;
         _loc1_.m_minionIconPositioningY = -14;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.burn_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.touch_fire_t1,MinionMoveID.hope_t1,MinionMoveID.invigorate_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.HolyBell_Fire();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.HolyBell_Holy();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.HolyBell_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function PinkBell_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_PinkBell_1,"Healabell","holyPinkBell",45,45,45,65,45,MinionType.TYPE_HOLY,MinionType.TYPE_FIRE);
         _loc1_.m_minionIconPositioningX = 23;
         _loc1_.m_minionIconPositioningY = -14;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.burn_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.touch_fire_t1,MinionMoveID.hope_t1,MinionMoveID.invigorate_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.HolyBell_Fire();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.HolyBell_Holy();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.HolyBell_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Crow_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_Crow_1,"Egcrow","undeadCrow1",35,40,45,25,35,MinionType.TYPE_DEMONIC,MinionType.TYPE_FLYING);
         _loc1_.m_minionIconPositioningX = 19;
         _loc1_.m_minionIconPositioningY = 14;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_EASY;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.m_evolutionLevel = 35;
         _loc1_.AddStartingMove(MinionMoveID.peck_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.demonic_strike_t1,MinionMoveID.peck_t2,MinionMoveID.tire_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Crow_Demonic();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Crow_Flying();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Crow_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Crow_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_Crow_2,"Skulcrow","undeadCrow2",40,55,60,35,65,MinionType.TYPE_DEMONIC,MinionType.TYPE_FLYING);
         _loc1_.m_minionIconPositioningX = 15;
         _loc1_.m_minionIconPositioningY = 8;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 49;
         _loc1_.AddStartingMove(MinionMoveID.peck_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.demonic_strike_t1,MinionMoveID.peck_t2,MinionMoveID.tire_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Crow_Demonic();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Crow_Flying();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Crow_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Crow_stage3() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_Crow_3,"Krobone","undeadCrow3",55,70,75,45,70,MinionType.TYPE_DEMONIC,MinionType.TYPE_FLYING);
         _loc1_.m_minionIconPositioningX = 15;
         _loc1_.m_minionIconPositioningY = 8;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.peck_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.demonic_strike_t1,MinionMoveID.peck_t2,MinionMoveID.tire_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Crow_Demonic();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Crow_Flying();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Crow_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function EvilEye_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_EvilEye_1,"Leeru","demonicEyeball1",15,35,45,35,50,MinionType.TYPE_DEMONIC);
         _loc1_.m_minionIconPositioningX = -5;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_EASY;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.m_evolutionLevel = 34;
         _loc1_.AddStartingMove(MinionMoveID.evil_eye_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.evil_eye_t2,MinionMoveID.demonic_strike_t1,MinionMoveID.spike_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.EvilEye_Debuffs();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.EvilEye_Demonic();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.EvilEye_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function EvilEye_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_EvilEye_2,"Duleer","demonicEyeball2",25,45,65,50,70,MinionType.TYPE_DEMONIC);
         _loc1_.m_minionIconPositioningX = 4;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_EASY;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 47;
         _loc1_.AddStartingMove(MinionMoveID.evil_eye_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.evil_eye_t2,MinionMoveID.demonic_strike_t1,MinionMoveID.spike_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.EvilEye_Debuffs();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.EvilEye_Demonic();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.EvilEye_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function EvilEye_stage3() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_EvilEye_3,"Leerpo","demonicEyeball3",35,55,70,65,85,MinionType.TYPE_DEMONIC);
         _loc1_.m_minionIconPositioningX = 4;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_EASY;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.evil_eye_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.evil_eye_t2,MinionMoveID.demonic_strike_t1,MinionMoveID.spike_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.EvilEye_Debuffs();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.EvilEye_Demonic();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.EvilEye_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function FireGhost_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_FireGhost_1,"Banesha","fireMage",45,65,60,40,55,MinionType.TYPE_UNDEAD,MinionType.TYPE_FIRE);
         _loc1_.m_minionIconPositioningX = 21;
         _loc1_.m_minionIconPositioningY = -6;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.burn_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.lich_burn_t1,MinionMoveID.flare_up_t1,MinionMoveID.tire_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireGhost_Undead();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireGhost_Fire();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireGhost_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function HolyStrongGuy_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_HolyStrongGuy_1,"Saintifi","undeadWarrior",60,50,75,75,60,MinionType.TYPE_HOLY);
         _loc1_.m_minionIconPositioningX = 11;
         _loc1_.m_minionIconPositioningY = 1;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.pound_t2);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.crusade_t1,MinionMoveID.demonic_bargain_t1,MinionMoveID.deadly_inspiration_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.HolyStrongMan_Damage();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.HolyStrongMan_Darkness();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.HolyStrongMan_Inspire();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function IceDeer_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_IceDeer_1,"Frostag","iceStag",25,55,70,65,70,MinionType.TYPE_ICE);
         _loc1_.m_minionIconPositioningX = -15;
         _loc1_.m_minionIconPositioningY = -15;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.icy_blast_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.sleet_t1,MinionMoveID.ice_enclosure_t1,MinionMoveID.reflect_damage_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.IceDeer_Ice();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.IceDeer_Healing();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.IceDeer_Reflect();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function LichBoss_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_LichBoss_1,"Kel\'ba","undeadLich1",25,35,60,30,35,MinionType.TYPE_UNDEAD);
         _loc1_.m_minionIconPositioningX = 24;
         _loc1_.m_minionIconPositioningY = -6;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.m_evolutionLevel = 25;
         _loc1_.AddStartingMove(MinionMoveID.haunt_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.lifeless_touch_t1,MinionMoveID.lich_burn_t1,MinionMoveID.mirror_coating_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.LichBoss_Debuffs();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.LichBoss_Undead();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.LichBoss_Reflect();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function LichBoss_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_LichBoss_2,"Kel\'ten","undeadLich2",35,40,75,40,40,MinionType.TYPE_UNDEAD);
         _loc1_.m_minionIconPositioningX = 15;
         _loc1_.m_minionIconPositioningY = -6;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 50;
         _loc1_.AddStartingMove(MinionMoveID.haunt_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.lifeless_touch_t1,MinionMoveID.lich_burn_t1,MinionMoveID.mirror_coating_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.LichBoss_Debuffs();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.LichBoss_Undead();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.LichBoss_Reflect();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function LichBoss_stage3() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_LichBoss_3,"Kel\'Tuzar","undeadLich3",45,50,95,50,45,MinionType.TYPE_UNDEAD);
         _loc1_.m_minionIconPositioningX = 2;
         _loc1_.m_minionIconPositioningY = 8;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.haunt_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.lifeless_touch_t1,MinionMoveID.lich_burn_t1,MinionMoveID.mirror_coating_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.LichBoss_Debuffs();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.LichBoss_Undead();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.LichBoss_Reflect();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function ScareCrow_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_Scarecrow_1,"Pumcin","undeadScarecrow1",35,45,35,30,35,MinionType.TYPE_DEMONIC,MinionType.TYPE_UNDEAD);
         _loc1_.m_minionIconPositioningX = 21;
         _loc1_.m_minionIconPositioningY = 0;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_EASY;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.m_evolutionLevel = 35;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.blood_press_t1,MinionMoveID.infes_t1,MinionMoveID.slow_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.ScareCrow_Demonic();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.ScareCrow_Undead();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.ScareCrow_Debuff();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function ScareCrow_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_Scarecrow_2,"Scaredrow","undeadScarecrow2",50,65,45,40,45,MinionType.TYPE_DEMONIC,MinionType.TYPE_UNDEAD);
         _loc1_.m_minionIconPositioningX = 19;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 47;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.blood_press_t1,MinionMoveID.infes_t1,MinionMoveID.slow_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.ScareCrow_Demonic();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.ScareCrow_Undead();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.ScareCrow_Debuff();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function ScareCrow_stage3() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_Scarecrow_3,"Scaredoom","undeadScarecrow3",65,75,70,50,55,MinionType.TYPE_DEMONIC,MinionType.TYPE_UNDEAD);
         _loc1_.m_minionIconPositioningX = 19;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.blood_press_t1,MinionMoveID.infes_t1,MinionMoveID.slow_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.ScareCrow_Demonic();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.ScareCrow_Undead();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.ScareCrow_Debuff();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function SlenderMan_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_SlenderMan_1,"Biomez","undeadGolem",75,70,45,45,30,MinionType.TYPE_UNDEAD);
         _loc1_.m_minionIconPositioningX = 16;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.haunt_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.infes_t1,MinionMoveID.flesh_sacrifice_t1,MinionMoveID.crush_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.SlenderMan_Debuff();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.SlenderMan_Undead();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.SlenderMan_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Tiger_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_Tiger_1,"Ticub","normalTiger1",40,45,40,35,50,MinionType.TYPE_NORMAL);
         _loc1_.m_minionIconPositioningX = 4;
         _loc1_.m_minionIconPositioningY = -8;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 17;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.AddStartingMove(MinionMoveID.roar_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.reckless_dash_t1,MinionMoveID.chosen_earth_t2,MinionMoveID.poison_tooth_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Tiger_Speed();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Tiger_Gaurd();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Tiger_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Tiger_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_Tiger_2,"Tigertan","normalTiger2",60,65,60,45,70,MinionType.TYPE_NORMAL);
         _loc1_.m_minionIconPositioningX = 9;
         _loc1_.m_minionIconPositioningY = 5;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.AddStartingMove(MinionMoveID.roar_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.reckless_dash_t1,MinionMoveID.chosen_earth_t2,MinionMoveID.poison_tooth_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Tiger_Speed();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Tiger_Gaurd();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Tiger_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function UndeadEel_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_UndeadEel_1,"Eeliforce","undeadEel",85,75,85,45,35,MinionType.TYPE_UNDEAD,MinionType.TYPE_WATER);
         _loc1_.m_minionIconPositioningX = -26;
         _loc1_.m_minionIconPositioningY = 3;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.pound_t3);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.water_slam_t1,MinionMoveID.rancid_bite_t1,MinionMoveID.energizing_inspiration_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.UndeadEel_Water();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.UndeadEel_Undead();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.UndeadEel_Inspire();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function AntEater_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_AntEater_1,"Bab-8r","robotAnteater1",35,57,30,25,35,MinionType.TYPE_ROBOT);
         _loc1_.m_minionIconPositioningX = 20;
         _loc1_.m_minionIconPositioningY = 3;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_EASY;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 35;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.twin_missile_t1,MinionMoveID.charge_pass_t1,MinionMoveID.invigorate_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.AntEater_Robot();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.AntEater_Electric();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.AntEater_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function AntEater_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_AntEater_2,"Ant-8r","robotAnteater",55,70,40,35,45,MinionType.TYPE_ROBOT);
         _loc1_.m_minionIconPositioningX = 9;
         _loc1_.m_minionIconPositioningY = -2;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.twin_missile_t1,MinionMoveID.charge_pass_t1,MinionMoveID.invigorate_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.AntEater_Robot();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.AntEater_Electric();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.AntEater_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Armadillo_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_Armadillo_1,"Chidilla","normalArmadillo1",65,45,30,7,15,MinionType.TYPE_ROBOT);
         _loc1_.m_minionIconPositioningX = 9;
         _loc1_.m_minionIconPositioningY = 3;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 34;
         _loc1_.AddStartingMove(MinionMoveID.spike_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.ore_drill_t1,MinionMoveID.taunt_t2,MinionMoveID.crush_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Armadillo_Robot();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Armadillo_Gaurd();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Armadillo_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Armadillo_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_Armadillo_2,"Armordilla","normalArmadillo",85,55,40,10,25,MinionType.TYPE_ROBOT);
         _loc1_.m_minionIconPositioningX = -1;
         _loc1_.m_minionIconPositioningY = -14;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.spike_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.ore_drill_t1,MinionMoveID.taunt_t2,MinionMoveID.crush_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Armadillo_Robot();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Armadillo_Gaurd();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Armadillo_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Cheetah_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_cheetah_1,"Elecat","energyCheetah1",25,35,40,25,50,MinionType.TYPE_ENERGY);
         _loc1_.m_minionIconPositioningX = 21;
         _loc1_.m_minionIconPositioningY = 9;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.m_evolutionLevel = 25;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.AddStartingMove(MinionMoveID.spark_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.charge_blast_t1,MinionMoveID.charge_pass_t1,MinionMoveID.agile_inspiration_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Cheetah_Electric();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Cheetah_Support();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Cheetah_Inspire();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Cheetah_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_cheetah_2,"Cheecha","energyCheetah2",30,40,50,30,70,MinionType.TYPE_ENERGY);
         _loc1_.m_minionIconPositioningX = 5;
         _loc1_.m_minionIconPositioningY = -3;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 39;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.AddStartingMove(MinionMoveID.spark_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.charge_blast_t1,MinionMoveID.charge_pass_t1,MinionMoveID.agile_inspiration_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Cheetah_Electric();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Cheetah_Support();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Cheetah_Inspire();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Cheetah_stage3() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_cheetah_3,"Lightina","energyCheetah3",35,45,65,35,95,MinionType.TYPE_ENERGY);
         _loc1_.m_minionIconPositioningX = 14;
         _loc1_.m_minionIconPositioningY = 7;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.AddStartingMove(MinionMoveID.spark_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.charge_blast_t1,MinionMoveID.charge_pass_t1,MinionMoveID.agile_inspiration_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Cheetah_Electric();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Cheetah_Support();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Cheetah_Inspire();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function DeathCall2Robot_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_DC2Guy_1,"Domisteam","robotDeathCall",50,35,80,35,75,MinionType.TYPE_ROBOT);
         _loc1_.m_minionIconPositioningX = 9;
         _loc1_.m_minionIconPositioningY = 2;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.pound_t2);
         _loc1_.AddStartingMove(MinionMoveID.death_call_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.death_call_t2,MinionMoveID.tire_t1,MinionMoveID.crush_t2);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.DC2Guy_DeathCall();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.DC2Guy_Debuffs();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.DC2Guy_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function DogEel_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_DogEel_1,"Dogler","waterDog1",40,30,35,25,35,MinionType.TYPE_ENERGY,MinionType.TYPE_DEMONIC);
         _loc1_.m_minionIconPositioningX = 11;
         _loc1_.m_minionIconPositioningY = 5;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_EASY;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 37;
         _loc1_.AddStartingMove(MinionMoveID.spark_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.blinding_jolt_t1,MinionMoveID.demonic_force_t1,MinionMoveID.mirror_skin_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.DogEel_Electric();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.DogEel_Demonic();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.DogEel_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function DogEel_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_DogEel_2,"Houndler","waterDog2",55,40,45,35,45,MinionType.TYPE_ENERGY,MinionType.TYPE_DEMONIC);
         _loc1_.m_minionIconPositioningX = 8;
         _loc1_.m_minionIconPositioningY = 2;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_EASY;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.spark_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.blinding_jolt_t1,MinionMoveID.demonic_force_t1,MinionMoveID.mirror_skin_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.DogEel_Electric();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.DogEel_Demonic();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.DogEel_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Goo_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_Goo_1,"Slime","normalSlime1",40,55,25,25,30,MinionType.TYPE_NORMAL);
         _loc1_.m_minionIconPositioningX = 10;
         _loc1_.m_minionIconPositioningY = 6;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_EASY;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.m_evolutionLevel = 33;
         _loc1_.AddStartingMove(MinionMoveID.tackle_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.ashen_reminder_t1,MinionMoveID.poison_tooth_t1,MinionMoveID.slow_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Goo_Undead();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Goo_Normal();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Goo_DeBuffs();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Goo_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_Goo_2,"Gigaslime","normalSlime2",60,70,35,35,35,MinionType.TYPE_NORMAL);
         _loc1_.m_minionIconPositioningX = -15;
         _loc1_.m_minionIconPositioningY = 6;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_EASY;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 39;
         _loc1_.AddStartingMove(MinionMoveID.tackle_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.ashen_reminder_t1,MinionMoveID.poison_tooth_t1,MinionMoveID.slow_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Goo_Undead();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Goo_Normal();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Goo_DeBuffs();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Goo_stage3() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_Goo_3,"Destroslime","normalSlime3",80,95,45,45,45,MinionType.TYPE_NORMAL);
         _loc1_.m_minionIconPositioningX = -15;
         _loc1_.m_minionIconPositioningY = 6;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_EASY;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.tackle_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.ashen_reminder_t1,MinionMoveID.poison_tooth_t1,MinionMoveID.slow_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Goo_Undead();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Goo_Normal();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Goo_DeBuffs();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Griffen_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_Griffen_1,"Beakif","flyingGriffin1",40,30,45,30,55,MinionType.TYPE_FLYING,MinionType.TYPE_ENERGY);
         _loc1_.m_minionIconPositioningX = 15;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 34;
         _loc1_.AddStartingMove(MinionMoveID.peck_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.cutting_wind_t1,MinionMoveID.thunderstorm_t1,MinionMoveID.agile_inspiration_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Griffen_Flying();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Griffen_Electric();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Griffen_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Griffen_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_Griffen_2,"Eaglin","flyingGriffin2",65,40,65,45,75,MinionType.TYPE_FLYING,MinionType.TYPE_ENERGY);
         _loc1_.m_minionIconPositioningX = -18;
         _loc1_.m_minionIconPositioningY = -6;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.peck_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.cutting_wind_t1,MinionMoveID.thunderstorm_t1,MinionMoveID.agile_inspiration_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Griffen_Flying();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Griffen_Electric();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Griffen_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function HummingBird_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_HummingBird_1,"Amliflier","robotHummingbird",45,35,60,30,80,MinionType.TYPE_ROBOT,MinionType.TYPE_FLYING);
         _loc1_.m_minionIconPositioningX = -2;
         _loc1_.m_minionIconPositioningY = -7;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.peck_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.steel_spike_t1,MinionMoveID.hurricane_t1,MinionMoveID.mirror_skin_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.HummingBird_Robot();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.HummingBird_Flying();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.HummingBird_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function JellyFish_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_JellyFish_1,"Jellyjolt","energyJellyfish1",10,35,65,40,45,MinionType.TYPE_WATER,MinionType.TYPE_ENERGY);
         _loc1_.m_minionIconPositioningX = 7;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 33;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.waterjet_t1,MinionMoveID.overload_t1,MinionMoveID.reflect_damage_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.JellyFish_Water();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.JellyFish_Electric();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.JellyFish_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function JellyFish_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_JellyFish_2,"Hydravolt","energyJellyfish2",20,50,85,60,65,MinionType.TYPE_WATER,MinionType.TYPE_ENERGY);
         _loc1_.m_minionIconPositioningX = -11;
         _loc1_.m_minionIconPositioningY = -3;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.waterjet_t1,MinionMoveID.overload_t1,MinionMoveID.reflect_damage_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.JellyFish_Water();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.JellyFish_Electric();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.JellyFish_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function RoboShark_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_RoboShark_1,"Megalatron","robotShark",80,55,70,50,45,MinionType.TYPE_WATER,MinionType.TYPE_ROBOT);
         _loc1_.m_minionIconPositioningX = 11;
         _loc1_.m_minionIconPositioningY = -25;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.poison_tooth_t2);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.fresh_stream_t1,MinionMoveID.solder_t1,MinionMoveID.twin_missile_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.RoboShark_Water();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.RoboShark_Gaurd();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.RoboShark_Robot();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Scorpion_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_Scorpion_1,"Shoktail","energyScorpion1",45,40,30,20,42,MinionType.TYPE_ENERGY,MinionType.TYPE_EARTH);
         _loc1_.m_minionIconPositioningX = 12;
         _loc1_.m_minionIconPositioningY = -5;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_EASY;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.m_evolutionLevel = 33;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.AddStartingMove(MinionMoveID.spark_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.overload_t1,MinionMoveID.rock_throw_t1,MinionMoveID.spike_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Scorpion_Electric();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Scorpion_Ground();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Scorpion_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Scorpion_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_Scorpion_2,"Emperun","energyScorpion2",60,50,40,30,55,MinionType.TYPE_ENERGY,MinionType.TYPE_EARTH);
         _loc1_.m_minionIconPositioningX = 2;
         _loc1_.m_minionIconPositioningY = -41;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 42;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.AddStartingMove(MinionMoveID.spark_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.overload_t1,MinionMoveID.rock_throw_t1,MinionMoveID.spike_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Scorpion_Electric();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Scorpion_Ground();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Scorpion_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Scorpion_stage3() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_Scorpion_3,"Empawrath","energyScorpion3",75,60,60,40,65,MinionType.TYPE_ENERGY,MinionType.TYPE_EARTH);
         _loc1_.m_minionIconPositioningX = 2;
         _loc1_.m_minionIconPositioningY = -41;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.AddStartingMove(MinionMoveID.spark_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.overload_t1,MinionMoveID.rock_throw_t1,MinionMoveID.spike_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Scorpion_Electric();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Scorpion_Ground();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Scorpion_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function WaterHorse_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_waterHorse_1,"Dracolt","waterKirin",60,50,75,60,85,MinionType.TYPE_WATER,MinionType.TYPE_ENERGY);
         _loc1_.m_minionIconPositioningX = 6;
         _loc1_.m_minionIconPositioningY = 0;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.spike_t2);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.waterjet_t1,MinionMoveID.overload_t1,MinionMoveID.reflect_damage_t2);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterHorse_Water();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterHorse_Electric();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterHorse_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Chameleon_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_chameleon_1,"Chameleon","plantLizard",50,45,65,45,40,MinionType.TYPE_PLANT,MinionType.TYPE_DINO);
         _loc1_.m_minionIconPositioningX = 13;
         _loc1_.m_minionIconPositioningY = 9;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.grassblade_t1,MinionMoveID.prehistoric_bite_t1,MinionMoveID.tire_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Chameleon_Grass();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Chameleon_Dino();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Chameleon_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Harpy_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_harpy_1,"Harwing","flyingHarpy",25,40,60,60,75,MinionType.TYPE_DEMONIC,MinionType.TYPE_FLYING);
         _loc1_.m_minionIconPositioningX = 1;
         _loc1_.m_minionIconPositioningY = -7;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_EASY;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.peck_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.cutting_wind_t1,MinionMoveID.demonic_bargain_t1,MinionMoveID.wildfire_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Harpy_Flying();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Harpy_Demonic();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Harpy_Fire();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function HolyFox_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_holyfox_1,"Firox","holyFox",35,40,60,60,70,MinionType.TYPE_FIRE,MinionType.TYPE_HOLY);
         _loc1_.m_minionIconPositioningX = 10;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.tackle_t1);
         _loc1_.AddStartingMove(MinionMoveID.sear_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.purge_t1,MinionMoveID.intense_flame_t1,MinionMoveID.mending_inspiration_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.HolyFox_Holy();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.HolyFox_Fire();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.HolyFox_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function RoboBull_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_robobull_1,"Titoro","robotBull",50,35,80,20,65,MinionType.TYPE_ROBOT,MinionType.TYPE_FIRE);
         _loc1_.m_minionIconPositioningX = 4;
         _loc1_.m_minionIconPositioningY = -11;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.reckless_dash_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.download_t1,MinionMoveID.fire_shot_t1,MinionMoveID.mirror_coating_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.RoboBull_Robot();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.RoboBull_Fire();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.RoboBull_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function TikiMonkey_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_tikiMonkey_1,"Vudu","fireMonkey1",20,25,45,35,40,MinionType.TYPE_FIRE);
         _loc1_.m_minionIconPositioningX = 17;
         _loc1_.m_minionIconPositioningY = -6;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 30;
         _loc1_.AddStartingMove(MinionMoveID.tackle_t1);
         _loc1_.AddStartingMove(MinionMoveID.sear_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.blaze_t1,MinionMoveID.chosen_earth_t1,MinionMoveID.mirror_skin_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.TikiMonkey_Fire();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.TikiMonkey_Buffs();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.TikiMonkey_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function TikiMonkey_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_tikiMonkey_2,"Hudu","fireMonkey2",40,35,55,45,65,MinionType.TYPE_FIRE);
         _loc1_.m_minionIconPositioningX = 5;
         _loc1_.m_minionIconPositioningY = 6;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.tackle_t1);
         _loc1_.AddStartingMove(MinionMoveID.sear_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.blaze_t1,MinionMoveID.chosen_earth_t1,MinionMoveID.mirror_skin_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.TikiMonkey_Fire();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.TikiMonkey_Buffs();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.TikiMonkey_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Tortoise_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_tortoise_1,"Tortastone","earthTortoiseWhite",100,25,15,20,5,MinionType.TYPE_EARTH);
         _loc1_.m_minionIconPositioningX = 3;
         _loc1_.m_minionIconPositioningY = 9;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.platinum_t1,MinionMoveID.perseverance_t1,MinionMoveID.hulk_inspiration_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Tortoise_Armor();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Tortoise_Health();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Tortoise_Buffs();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function LandShark_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_landShark_1,"Wafin","waterLandShark",40,40,40,40,60,MinionType.TYPE_WATER);
         _loc1_.m_minionIconPositioningX = 11;
         _loc1_.m_minionIconPositioningY = 5;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.tire_t1,MinionMoveID.roar_t1,MinionMoveID.waterjet_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.LandShark_Support();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.LandShark_Mixed();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.LandShark_Damage();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Racoon_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_racoon_1,"Tatail","normalRaccoon1",30,40,35,25,40,MinionType.TYPE_NORMAL);
         _loc1_.m_minionIconPositioningX = 11;
         _loc1_.m_minionIconPositioningY = 6;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 20;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.soak_t1,MinionMoveID.sear_t1,MinionMoveID.spark_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Racoon_Water();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Racoon_Fire();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Racoon_Electric();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Racoon_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_racoon_2,"Kleptoon","normalRaccoon2",40,50,50,35,65,MinionType.TYPE_NORMAL);
         _loc1_.m_minionIconPositioningX = 4;
         _loc1_.m_minionIconPositioningY = -2;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.soak_t1,MinionMoveID.sear_t1,MinionMoveID.spark_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Racoon_Water();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Racoon_Fire();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Racoon_Electric();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function TRex_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_tRex_1,"Rexabee","dinoRex1",35,25,38,5,20,MinionType.TYPE_DINO);
         _loc1_.m_minionIconPositioningX = 17;
         _loc1_.m_minionIconPositioningY = 8;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.m_evolutionLevel = 25;
         _loc1_.AddStartingMove(MinionMoveID.wild_tackle_t1);
         _loc1_.AddStartingMove(MinionMoveID.prehistoric_bite_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.inner_force_t1,MinionMoveID.deadly_inspiration_t1,MinionMoveID.hulk_inspiration_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.TRex_Dino();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.TRex_Buffs();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.TRex_Debuffs();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function TRex_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_tRex_2,"Tenasauras","dinoRex2",60,30,65,10,35,MinionType.TYPE_DINO);
         _loc1_.m_minionIconPositioningX = 12;
         _loc1_.m_minionIconPositioningY = 10;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 42;
         _loc1_.AddStartingMove(MinionMoveID.wild_tackle_t1);
         _loc1_.AddStartingMove(MinionMoveID.prehistoric_bite_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.inner_force_t1,MinionMoveID.deadly_inspiration_t1,MinionMoveID.hulk_inspiration_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.TRex_Dino();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.TRex_Buffs();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.TRex_Debuffs();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function TRex_stage3() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_tRex_3,"Rexathor","dinoRex3",80,35,85,15,45,MinionType.TYPE_DINO);
         _loc1_.m_minionIconPositioningX = 8;
         _loc1_.m_minionIconPositioningY = -18;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.wild_tackle_t1);
         _loc1_.AddStartingMove(MinionMoveID.prehistoric_bite_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.inner_force_t1,MinionMoveID.deadly_inspiration_t1,MinionMoveID.hulk_inspiration_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.TRex_Dino();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.TRex_Buffs();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.TRex_Debuffs();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function WaterBird_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_waterBird_1,"Chirpla","flyingSongbird1",5,25,40,25,45,MinionType.TYPE_FLYING);
         _loc1_.m_minionIconPositioningX = 19;
         _loc1_.m_minionIconPositioningY = 10;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.m_evolutionLevel = 21;
         _loc1_.AddStartingMove(MinionMoveID.peck_t1);
         _loc1_.AddStartingMove(MinionMoveID.soak_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.soak_t2,MinionMoveID.flurry_t1,MinionMoveID.slow_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterBird_Water();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterBird_Flying();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterBird_Support();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function WaterBird_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_waterBird_2,"Airmony","flyingSongbird2",10,30,55,30,60,MinionType.TYPE_FLYING,MinionType.TYPE_WATER);
         _loc1_.m_minionIconPositioningX = 10;
         _loc1_.m_minionIconPositioningY = 5;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 36;
         _loc1_.AddStartingMove(MinionMoveID.peck_t1);
         _loc1_.AddStartingMove(MinionMoveID.soak_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.soak_t2,MinionMoveID.flurry_t1,MinionMoveID.slow_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterBird_Water();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterBird_Flying();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterBird_Support();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function WaterBird_stage3() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_waterBird_3,"Falcona","flyingSongbird3",15,35,75,35,85,MinionType.TYPE_FLYING,MinionType.TYPE_WATER);
         _loc1_.m_minionIconPositioningX = -7;
         _loc1_.m_minionIconPositioningY = 7;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.peck_t1);
         _loc1_.AddStartingMove(MinionMoveID.soak_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.soak_t2,MinionMoveID.flurry_t1,MinionMoveID.slow_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterBird_Water();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterBird_Flying();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterBird_Support();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function WaterSeal_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_waterSeal_1,"Sealo","waterSeal1",50,45,40,20,20,MinionType.TYPE_ICE,MinionType.TYPE_WATER);
         _loc1_.m_minionIconPositioningX = -2;
         _loc1_.m_minionIconPositioningY = 0;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.m_evolutionLevel = 24;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.waterjet_t1,MinionMoveID.hailstone_t1,MinionMoveID.invigorate_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterSeal_Water();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterSeal_Ice();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterSeal_Support();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function WaterSeal_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_waterSeal_2,"Sealast","waterSeal2",75,60,55,30,30,MinionType.TYPE_ICE,MinionType.TYPE_WATER);
         _loc1_.m_minionIconPositioningX = 2;
         _loc1_.m_minionIconPositioningY = 0;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.waterjet_t1,MinionMoveID.hailstone_t1,MinionMoveID.invigorate_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterSeal_Water();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterSeal_Ice();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterSeal_Support();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function WaterGrassHorse_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_healingHorse_1,"Foramare","waterHorse",60,75,60,75,45,MinionType.TYPE_PLANT,MinionType.TYPE_WATER);
         _loc1_.m_minionIconPositioningX = 6;
         _loc1_.m_minionIconPositioningY = -6;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.overflow_t1,MinionMoveID.swift_mend_t1,MinionMoveID.spore_blast_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterGrassHorse_Water();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterGrassHorse_Grass();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.WaterGrassHorse_Damage();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function GroundAttacker_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_groundAttacker_1,"Betehorn","earthBeetle1",37,30,45,20,30,MinionType.TYPE_EARTH,MinionType.TYPE_NORMAL);
         _loc1_.m_minionIconPositioningX = 4;
         _loc1_.m_minionIconPositioningY = 5;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.m_evolutionLevel = 20;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.AddStartingMove(MinionMoveID.rock_throw_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.stone_fall_t1,MinionMoveID.rancid_bite_t1,MinionMoveID.tackle_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundAttacker_Ground();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundAttacker_Mixed();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundAttacker_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function GroundAttacker_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_groundAttacker_2,"Betestone","earthBeetle2",50,35,60,25,40,MinionType.TYPE_EARTH,MinionType.TYPE_NORMAL);
         _loc1_.m_minionIconPositioningX = -18;
         _loc1_.m_minionIconPositioningY = -16;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_HARD;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 50;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.AddStartingMove(MinionMoveID.rock_throw_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.stone_fall_t1,MinionMoveID.rancid_bite_t1,MinionMoveID.tackle_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundAttacker_Ground();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundAttacker_Mixed();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundAttacker_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function GroundAttacker_stage3() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_groundAttacker_3,"Betehulk","earthBeetle3",85,40,85,30,45,MinionType.TYPE_EARTH,MinionType.TYPE_NORMAL);
         _loc1_.m_minionIconPositioningX = -31;
         _loc1_.m_minionIconPositioningY = -4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.AddStartingMove(MinionMoveID.rock_throw_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.stone_fall_t1,MinionMoveID.rancid_bite_t1,MinionMoveID.tackle_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundAttacker_Ground();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundAttacker_Mixed();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundAttacker_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function GroundMole_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_groundMole_1,"Tremole","earthMole1",45,25,25,10,10,MinionType.TYPE_EARTH);
         _loc1_.m_minionIconPositioningX = 5;
         _loc1_.m_minionIconPositioningY = 34;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.m_evolutionLevel = 19;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.AddStartingMove(MinionMoveID.rock_throw_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.stone_fall_t1,MinionMoveID.perseverance_t1,MinionMoveID.reflect_damage_t2);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundMole_Damage();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundMole_Gaurd();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundMole_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function GroundMole_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_groundMole_2,"Seizemole","earthMole2",75,30,30,12,15,MinionType.TYPE_EARTH);
         _loc1_.m_minionIconPositioningX = -7;
         _loc1_.m_minionIconPositioningY = 9;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 32;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.AddStartingMove(MinionMoveID.rock_throw_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.stone_fall_t1,MinionMoveID.perseverance_t1,MinionMoveID.reflect_damage_t2);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundMole_Damage();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundMole_Gaurd();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundMole_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function GroundMole_stage3() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_groundMole_3,"Sumole","earthMole3",90,35,40,15,20,MinionType.TYPE_EARTH);
         _loc1_.m_minionIconPositioningX = -12;
         _loc1_.m_minionIconPositioningY = 8;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.AddStartingMove(MinionMoveID.rock_throw_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.stone_fall_t1,MinionMoveID.perseverance_t1,MinionMoveID.reflect_damage_t2);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundMole_Damage();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundMole_Gaurd();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundMole_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function HolyMantis_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_holyMantris_1,"Holymantis","holyMantis",30,50,25,87,60,MinionType.TYPE_PLANT,MinionType.TYPE_HOLY);
         _loc1_.m_minionIconPositioningX = 11;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.AddStartingMove(MinionMoveID.nourish_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.serenity_t1,MinionMoveID.holy_light_t1,MinionMoveID.mending_inspiration_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.HolyMantis_Grass();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.HolyMantis_Holy();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.HolyMantis_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function IceTree_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_iceTree_1,"Shrumpy","iceTree1",40,35,40,25,30,MinionType.TYPE_PLANT,MinionType.TYPE_ICE);
         _loc1_.m_minionIconPositioningX = 4;
         _loc1_.m_minionIconPositioningY = 23;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_EASY;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 19;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.tree_slam_t1,MinionMoveID.sleet_t1,MinionMoveID.nourish_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.IceTree_Grass();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.IceTree_Ice();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.IceTree_Healing();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function IceTree_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_iceTree_2,"Eldrest","iceTree2",65,50,55,35,35,MinionType.TYPE_PLANT,MinionType.TYPE_ICE);
         _loc1_.m_minionIconPositioningX = 4;
         _loc1_.m_minionIconPositioningY = -26;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.tree_slam_t1,MinionMoveID.sleet_t1,MinionMoveID.nourish_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.IceTree_Grass();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.IceTree_Ice();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.IceTree_Healing();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function IceBird_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_iceBird_1,"Archick","flyingOwl1",20,35,30,35,45,MinionType.TYPE_FLYING,MinionType.TYPE_ICE);
         _loc1_.m_minionIconPositioningX = 21;
         _loc1_.m_minionIconPositioningY = 15;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_EASY;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.m_evolutionLevel = 24;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.AddStartingMove(MinionMoveID.peck_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.icy_blast_t1,MinionMoveID.flurry_t1,MinionMoveID.ice_shield_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.IceBird_Ice();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.IceBird_Flying();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.IceBird_Reflect();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function IceBird_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_iceBird_2,"Arcticowl","flyingOwl2",30,45,65,50,70,MinionType.TYPE_FLYING,MinionType.TYPE_ICE);
         _loc1_.m_minionIconPositioningX = 18;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.AddStartingMove(MinionMoveID.peck_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.icy_blast_t1,MinionMoveID.flurry_t1,MinionMoveID.ice_shield_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.IceBird_Ice();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.IceBird_Flying();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.IceBird_Reflect();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function DemonicCat_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_demonic_cat_1,"Kittyvile","demonicCat1",15,25,50,30,55,MinionType.TYPE_DEMONIC);
         _loc1_.m_minionIconPositioningX = 4;
         _loc1_.m_minionIconPositioningY = 7;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 23;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.evil_eye_t1,MinionMoveID.blood_press_t1,MinionMoveID.reflect_damage_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.DemonicCat_Buffs();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.DemonicCat_Demonic();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.DemonicCat_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function DemonicCat_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_demonic_cat_2,"Pumafiend","demonicCat2",25,35,70,40,75,MinionType.TYPE_DEMONIC);
         _loc1_.m_minionIconPositioningX = -3;
         _loc1_.m_minionIconPositioningY = 2;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.evil_eye_t1,MinionMoveID.blood_press_t1,MinionMoveID.reflect_damage_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.DemonicCat_Buffs();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.DemonicCat_Demonic();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.DemonicCat_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function GrassGorilla_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_grassGorilla_1,"Chimilla","plantGorilla1",35,25,40,15,25,MinionType.TYPE_PLANT,MinionType.TYPE_NORMAL);
         _loc1_.m_minionIconPositioningX = 19;
         _loc1_.m_minionIconPositioningY = -2;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_EASY;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 14;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.AddStartingMove(MinionMoveID.roar_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.tree_slam_t1,MinionMoveID.hulk_inspiration_t1,MinionMoveID.grind_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GrassGorilla_Grass();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GrassGorilla_Support();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GrassGorilla_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function GrassGorilla_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_grassGorilla_2,"Cactilla","plantGorilla2",60,40,65,25,35,MinionType.TYPE_PLANT,MinionType.TYPE_NORMAL);
         _loc1_.m_minionIconPositioningX = 4;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.AddStartingMove(MinionMoveID.roar_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.tree_slam_t1,MinionMoveID.hulk_inspiration_t1,MinionMoveID.grind_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GrassGorilla_Grass();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GrassGorilla_Support();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GrassGorilla_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function FlyingGrassSuperMinion_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_flyingGrassSuperMinion_1,"Mayataz","featheredSerpent",70,60,75,65,75,MinionType.TYPE_FLYING,MinionType.TYPE_PLANT);
         _loc1_.m_minionIconPositioningX = -21;
         _loc1_.m_minionIconPositioningY = -10;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.tackle_t3);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.spore_blast_t1,MinionMoveID.hurricane_t1,MinionMoveID.reckless_dash_t3);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FlyingGrassSuperMinion_Grass();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FlyingGrassSuperMinion_Flying();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FlyingGrassSuperMinion_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function FirePig_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_fire_pig_1,"Zapig","energyBoar1",30,45,40,10,40,MinionType.TYPE_FIRE,MinionType.TYPE_ENERGY);
         _loc1_.m_minionIconPositioningX = 14;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.m_evolutionLevel = 10;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.AddStartingMove(MinionMoveID.burn_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.fire_ram_t1,MinionMoveID.static_pummel_t1,MinionMoveID.tackle_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FirePig_fire();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FirePig_electric();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FirePig_normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function FirePig_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_fire_pig_2,"Electroboar","energyBoar2",35,55,50,15,50,MinionType.TYPE_FIRE,MinionType.TYPE_ENERGY);
         _loc1_.m_minionIconPositioningX = 15;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_evolutionLevel = 29;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.AddStartingMove(MinionMoveID.burn_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.fire_ram_t1,MinionMoveID.static_pummel_t1,MinionMoveID.tackle_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FirePig_fire();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FirePig_electric();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FirePig_normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function FirePig_stage3() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_fire_pig_3,"Tazorback","energyBoar3",40,65,60,20,60,MinionType.TYPE_FIRE,MinionType.TYPE_ENERGY);
         _loc1_.m_minionIconPositioningX = 9;
         _loc1_.m_minionIconPositioningY = -15;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.AddStartingMove(MinionMoveID.burn_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.fire_ram_t1,MinionMoveID.static_pummel_t1,MinionMoveID.tackle_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FirePig_fire();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FirePig_electric();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FirePig_normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function GrassSnake_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_grassSnake_1,"Sapent","plantViper1",25,25,35,20,35,MinionType.TYPE_PLANT);
         _loc1_.m_minionIconPositioningX = 15;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_EASY;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.m_evolutionLevel = 14;
         _loc1_.AddStartingMove(MinionMoveID.poison_tooth_t1);
         _loc1_.AddStartingMove(MinionMoveID.razor_vine_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.grassblade_t1,MinionMoveID.slow_t1,MinionMoveID.tackle_t2);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GrassSnake_Grass();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GrassSnake_Debuffs();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GrassSnake_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function GrassSnake_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_grassSnake_2,"Cobrapent","plantViper2",40,35,40,30,45,MinionType.TYPE_PLANT);
         _loc1_.m_minionIconPositioningX = 15;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_EASY;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 32;
         _loc1_.AddStartingMove(MinionMoveID.poison_tooth_t1);
         _loc1_.AddStartingMove(MinionMoveID.razor_vine_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.grassblade_t1,MinionMoveID.slow_t1,MinionMoveID.tackle_t2);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GrassSnake_Grass();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GrassSnake_Debuffs();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GrassSnake_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function GrassSnake_stage3() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_grassSnake_3,"Quickapent","plantViper3",65,50,55,40,60,MinionType.TYPE_PLANT);
         _loc1_.m_minionIconPositioningX = 15;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.poison_tooth_t1);
         _loc1_.AddStartingMove(MinionMoveID.razor_vine_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.grassblade_t1,MinionMoveID.slow_t1,MinionMoveID.tackle_t2);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GrassSnake_Grass();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GrassSnake_Debuffs();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GrassSnake_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function FireBear_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_fire_bear_1,"Cubble","earthBear1",55,35,50,10,20,MinionType.TYPE_FIRE,MinionType.TYPE_EARTH);
         _loc1_.m_minionIconPositioningX = 19;
         _loc1_.m_minionIconPositioningY = 9;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 28;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.AddStartingMove(MinionMoveID.sear_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.fire_bash_t1,MinionMoveID.taunt_t2,MinionMoveID.crush_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireBear_fire();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireBear_guard();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireBear_normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function FireBear_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_fire_bear_2,"Blazebar","earthBear2",80,40,70,15,20,MinionType.TYPE_FIRE,MinionType.TYPE_EARTH);
         _loc1_.m_minionIconPositioningX = 1;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.AddStartingMove(MinionMoveID.claw_t1);
         _loc1_.AddStartingMove(MinionMoveID.sear_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.fire_bash_t1,MinionMoveID.taunt_t2,MinionMoveID.crush_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireBear_fire();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireBear_guard();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireBear_normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function FireFrog_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_fire_frog_1,"Tadcoal","fireToad1",35,30,40,35,30,MinionType.TYPE_FIRE);
         _loc1_.m_minionIconPositioningX = 21;
         _loc1_.m_minionIconPositioningY = 6;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_EASY;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.m_evolutionLevel = 23;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.AddStartingMove(MinionMoveID.sear_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.touch_fire_t1,MinionMoveID.fire_shot_t1,MinionMoveID.energizing_inspiration_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireFrog_Direct();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireFrog_Group();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireFrog_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function FireFrog_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_fire_frog_2,"Volcanoad","fireToad2",50,32,48,40,32,MinionType.TYPE_FIRE);
         _loc1_.m_minionIconPositioningX = 12;
         _loc1_.m_minionIconPositioningY = 10;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_EASY;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 34;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.AddStartingMove(MinionMoveID.sear_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.touch_fire_t1,MinionMoveID.fire_shot_t1,MinionMoveID.energizing_inspiration_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireFrog_Direct();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireFrog_Group();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireFrog_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function FireFrog_stage3() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_fire_frog_3,"Eruptoad","fireToad3",65,35,55,45,35,MinionType.TYPE_FIRE);
         _loc1_.m_minionIconPositioningX = 10;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.AddStartingMove(MinionMoveID.sear_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.touch_fire_t1,MinionMoveID.fire_shot_t1,MinionMoveID.energizing_inspiration_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireFrog_Direct();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireFrog_Group();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireFrog_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function FireDino_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_raptor_1,"Toregg","fireRaptor1",20,25,38,5,40,MinionType.TYPE_DINO,MinionType.TYPE_FIRE);
         _loc1_.m_minionIconPositioningX = 16;
         _loc1_.m_minionIconPositioningY = 12;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.m_evolutionLevel = 27;
         _loc1_.AddStartingMove(MinionMoveID.claw_t2);
         _loc1_.AddStartingMove(MinionMoveID.prehistoric_bite_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.reckless_grasp_t1,MinionMoveID.fire_blast_t1,MinionMoveID.energize_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireRaptor_Dino();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireRaptor_Fire();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireRaptor_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function FireDino_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_raptor_2,"Smouldor","fireRaptor2",35,30,65,10,60,MinionType.TYPE_DINO,MinionType.TYPE_FIRE);
         _loc1_.m_minionIconPositioningX = 14;
         _loc1_.m_minionIconPositioningY = 5;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 45;
         _loc1_.AddStartingMove(MinionMoveID.claw_t2);
         _loc1_.AddStartingMove(MinionMoveID.prehistoric_bite_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.reckless_grasp_t1,MinionMoveID.fire_blast_t1,MinionMoveID.energize_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireRaptor_Dino();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireRaptor_Fire();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireRaptor_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function FireDino_stage3() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_raptor_3,"Flamator","fireRaptor3",45,35,85,15,80,MinionType.TYPE_DINO,MinionType.TYPE_FIRE);
         _loc1_.m_minionIconPositioningX = 11;
         _loc1_.m_minionIconPositioningY = 4;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.claw_t2);
         _loc1_.AddStartingMove(MinionMoveID.prehistoric_bite_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.reckless_grasp_t1,MinionMoveID.fire_blast_t1,MinionMoveID.energize_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireRaptor_Dino();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireRaptor_Fire();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireRaptor_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function EarthPlant_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_ground_plant_1,"Octaleaf","plantSquid1",35,40,25,40,25,MinionType.TYPE_PLANT);
         _loc1_.m_minionIconPositioningX = 15;
         _loc1_.m_minionIconPositioningY = 11;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_EASY;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.m_evolutionLevel = 21;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.AddStartingMove(MinionMoveID.razor_vine_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.regrowth_t1,MinionMoveID.mud_blast_t1,MinionMoveID.tire_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundPlant_Healing();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundPlant_Earth();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundPlant_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function EarthPlant_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_ground_plant_2,"Octagrass","plantSquid2",40,55,35,50,30,MinionType.TYPE_PLANT);
         _loc1_.m_minionIconPositioningX = 5;
         _loc1_.m_minionIconPositioningY = -11;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 33;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.AddStartingMove(MinionMoveID.razor_vine_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.regrowth_t1,MinionMoveID.mud_blast_t1,MinionMoveID.tire_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundPlant_Healing();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundPlant_Earth();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundPlant_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function EarthPlant_stage3() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_ground_plant_3,"Octatree","plantSquid3",45,70,45,60,35,MinionType.TYPE_PLANT);
         _loc1_.m_minionIconPositioningX = -5;
         _loc1_.m_minionIconPositioningY = -11;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.pound_t1);
         _loc1_.AddStartingMove(MinionMoveID.razor_vine_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.regrowth_t1,MinionMoveID.mud_blast_t1,MinionMoveID.tire_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundPlant_Healing();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundPlant_Earth();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.GroundPlant_Normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Worm_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_worm_1,"Wormif","earthWorm1",30,30,35,15,35,MinionType.TYPE_EARTH,MinionType.TYPE_NORMAL);
         _loc1_.m_minionIconPositioningX = -2;
         _loc1_.m_minionIconPositioningY = 8;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.m_evolutionLevel = 25;
         _loc1_.AddStartingMove(MinionMoveID.tackle_t1);
         _loc1_.AddStartingMove(MinionMoveID.rock_slide_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.infes_t1,MinionMoveID.earthquake_t1,MinionMoveID.grind_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Worm_undead();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Worm_earth();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Worm_normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Worm_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_worm_2,"Rottar","earthWorm2",50,35,55,20,40,MinionType.TYPE_EARTH,MinionType.TYPE_NORMAL);
         _loc1_.m_minionIconPositioningX = -5;
         _loc1_.m_minionIconPositioningY = 9;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_HARD;
         _loc1_.m_numberOfGems = 2;
         _loc1_.m_numberOfLockedGems = 1;
         _loc1_.m_evolutionLevel = 37;
         _loc1_.AddStartingMove(MinionMoveID.tackle_t1);
         _loc1_.AddStartingMove(MinionMoveID.rock_slide_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.infes_t1,MinionMoveID.earthquake_t1,MinionMoveID.grind_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Worm_undead();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Worm_earth();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Worm_normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Worm_stage3() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_worm_3,"Riffra","earthWorm3",70,40,70,25,60,MinionType.TYPE_EARTH,MinionType.TYPE_NORMAL);
         _loc1_.m_minionIconPositioningX = -8;
         _loc1_.m_minionIconPositioningY = 7;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.tackle_t1);
         _loc1_.AddStartingMove(MinionMoveID.rock_slide_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.infes_t1,MinionMoveID.earthquake_t1,MinionMoveID.grind_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Worm_undead();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Worm_earth();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Worm_normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Titan1_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_titan_1,"Sobek","titan1",65,75,100,50,60,MinionType.TYPE_TITAN);
         _loc1_.m_minionIconPositioningX = -10;
         _loc1_.m_minionIconPositioningY = 6;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.titan_slash_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.titan_slam_t1,MinionMoveID.waterjet_t1,MinionMoveID.destabilize_t2);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Titan1_Titan();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Titan1_Water();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Titan1_Earth();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function Titan2_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_titan_2,"Seiryu","titan2",85,70,85,80,75,MinionType.TYPE_TITAN);
         _loc1_.m_minionIconPositioningX = 3;
         _loc1_.m_minionIconPositioningY = -17;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_VERY_HARD;
         _loc1_.m_numberOfGems = 3;
         _loc1_.m_numberOfLockedGems = 0;
         _loc1_.AddStartingMove(MinionMoveID.titan_slash_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.dominate_t1,MinionMoveID.taunt_t2,MinionMoveID.titan_light_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Titan2_Titan();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Titan2_Guard();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Titan2_Healer();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function BattleMod_stage1() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_battleModMinion_1,"BMod 1","generalRoom_healStone",10,10,10,10,10,MinionType.TYPE_NORMAL);
         _loc1_.m_minionIconPositioningX = -2;
         _loc1_.m_minionIconPositioningY = 8;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.AddStartingMove(MinionMoveID.tackle_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.infes_t1,MinionMoveID.earthquake_t1,MinionMoveID.grind_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Worm_undead();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Worm_earth();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Worm_normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function BattleMod_stage2() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_battleModMinion_2,"BMod 2","generalRoom_healStone",40,40,40,40,40,MinionType.TYPE_NORMAL);
         _loc1_.m_minionIconPositioningX = -2;
         _loc1_.m_minionIconPositioningY = 8;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.AddStartingMove(MinionMoveID.tackle_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.infes_t1,MinionMoveID.earthquake_t1,MinionMoveID.grind_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Worm_undead();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Worm_earth();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Worm_normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function BattleMod_stage3() : void
      {
         var _loc2_:MinionTalentTree = null;
         var _loc1_:BaseMinion = this.CM(MinionDexID.DEX_ID_battleModMinion_3,"BMod 3","generalRoom_healStone",100,100,100,100,100,MinionType.TYPE_NORMAL);
         _loc1_.m_minionIconPositioningX = -2;
         _loc1_.m_minionIconPositioningY = 8;
         _loc1_.m_expGainRate = ExpGainRates.EXP_GAIN_RATE_NORMAL;
         _loc1_.m_numberOfGems = 1;
         _loc1_.m_numberOfLockedGems = 2;
         _loc1_.AddStartingMove(MinionMoveID.tackle_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.infes_t1,MinionMoveID.earthquake_t1,MinionMoveID.grind_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Worm_undead();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Worm_earth();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.Worm_normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
      
      private function CreateTestingMinion() : void
      {
         var _loc1_:BaseMinion = null;
         var _loc2_:MinionTalentTree = null;
         var _loc3_:int = 0;
         _loc1_ = this.CM(MinionDexID.DEX_ID_testing_minion,"Test Minion","earthBear2",100,100,100,100,100,MinionType.TYPE_FIRE,MinionType.TYPE_EARTH);
         _loc1_.m_minionIconPositioningX = 0;
         _loc1_.m_minionIconPositioningY = 0;
         _loc1_.m_expGainRate = 1;
         _loc1_.m_numberOfGems = 3;
         _loc3_ = 0;
         while(_loc3_ < 5)
         {
            _loc1_.AddStartingMove(MinionMoveID.mystic_ice_t1 + _loc3_);
            _loc3_++;
         }
         _loc1_.AddStartingMove(MinionMoveID.burn_t1);
         _loc1_.SetSpeacilizaionMoves(MinionMoveID.fire_bash_t1,MinionMoveID.taunt_t2,MinionMoveID.crush_t1);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireBear_fire();
         _loc1_.SetTalentTree(0,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireBear_guard();
         _loc1_.SetTalentTree(1,_loc2_);
         _loc2_ = Singleton.staticData.m_baseTalentTreesList.FireBear_normal();
         _loc1_.SetTalentTree(2,_loc2_);
      }
   }
}
