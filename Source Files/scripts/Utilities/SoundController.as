package Utilities
{
   import States.BackgroundMusicTracks;
   import com.greensock.TweenLite;
   import flash.media.Sound;
   import flash.media.SoundTransform;
   
   public class SoundController
   {
      
      private static var doorEntryHum_fadeout:Class = SoundController_doorEntryHum_fadeout;
      
      private static var tower_runningWater:Class = SoundController_tower_runningWater;
      
      private static var battle_lose:Class = SoundController_battle_lose;
      
      private static var battle_victory:Class = SoundController_battle_victory;
      
      private static var menu_buyingItem:Class = SoundController_menu_buyingItem;
      
      private static var menu_onPress:Class = SoundController_menu_onPress;
      
      private static var menu_tickSound:Class = SoundController_menu_tickSound;
      
      private static var menu_tutorialOpen:Class = SoundController_menu_tutorialOpen;
      
      private static var tower_doorUnlock:Class = SoundController_tower_doorUnlock;
      
      private static var tower_eggeryDoorClosing:Class = SoundController_tower_eggeryDoorClosing;
      
      private static var tower_eggsGoingIntoTheGround:Class = SoundController_tower_eggsGoingIntoTheGround;
      
      private static var tower_fireplace:Class = SoundController_tower_fireplace;
      
      private static var tower_gemPickup:Class = SoundController_tower_gemPickup;
      
      private static var tower_gettingMap:Class = SoundController_tower_gettingMap;
      
      private static var tower_keyPickup:Class = SoundController_tower_keyPickup;
      
      private static var tower_moneyPickup:Class = SoundController_tower_moneyPickup;
      
      private static var tower_teleport:Class = SoundController_tower_teleport;
      
      private static var tower_openingChest:Class = SoundController_tower_openingChest;
      
      private static var tower_healstone:Class = SoundController_tower_healstone;
      
      private static var battle_levelUp:Class = SoundController_battle_levelUp;
      
      private static var doorEntryHum:Class = SoundController_doorEntryHum;
      
      private static var battle_whoosh:Class = SoundController_battle_whoosh;
      
      private static var battle_whoosh_falling_deepSound:Class = SoundController_battle_whoosh_falling_deepSound;
      
      private static var battle_whoosh_falling_object:Class = SoundController_battle_whoosh_falling_object;
      
      private static var battle_whoosh_highPitch:Class = SoundController_battle_whoosh_highPitch;
      
      private static var battle_whoosh_magic1:Class = SoundController_battle_whoosh_magic1;
      
      private static var battle_whoosh_magic2:Class = SoundController_battle_whoosh_magic2;
      
      private static var battle_whoosh_magic3:Class = SoundController_battle_whoosh_magic3;
      
      private static var battle_whoosh_magic4:Class = SoundController_battle_whoosh_magic4;
      
      private static var battle_whoosh_misslePass:Class = SoundController_battle_whoosh_misslePass;
      
      private static var battle_whoosh_punch:Class = SoundController_battle_whoosh_punch;
      
      private static var battle_whoosh_swipe:Class = SoundController_battle_whoosh_swipe;
      
      private static var battle_whoosh_sword_swipe:Class = SoundController_battle_whoosh_sword_swipe;
      
      private static var battle_whoosh_wind:Class = SoundController_battle_whoosh_wind;
      
      private static var battle_hit_slap_normal:Class = SoundController_battle_hit_slap_normal;
      
      private static var battle_hit_slap_quick:Class = SoundController_battle_hit_slap_quick;
      
      private static var battle_hit_splat:Class = SoundController_battle_hit_splat;
      
      private static var battle_hit_thump_bounce:Class = SoundController_battle_hit_thump_bounce;
      
      private static var battle_hit_thump_knock:Class = SoundController_battle_hit_thump_knock;
      
      private static var battle_hit_thump_normal:Class = SoundController_battle_hit_thump_normal;
      
      private static var battle_hit_thump_splat:Class = SoundController_battle_hit_thump_splat;
      
      private static var battle_fireBall:Class = SoundController_battle_fireBall;
      
      private static var battle_gunFire:Class = SoundController_battle_gunFire;
      
      private static var battle_spark:Class = SoundController_battle_spark;
      
      private static var battle_rockHittingGround:Class = SoundController_battle_rockHittingGround;
      
      private static var battle_freezeExplosion:Class = SoundController_battle_freezeExplosion;
      
      private static var battle_blood3:Class = SoundController_battle_blood3;
      
      private static var battle_dinoRoar:Class = SoundController_battle_dinoRoar;
      
      private static var battle_blood1:Class = SoundController_battle_blood1;
      
      private static var battle_roar:Class = SoundController_battle_roar;
      
      private static var battle_ghostWispher:Class = SoundController_battle_ghostWispher;
      
      private static var battle_ghostWispher2:Class = SoundController_battle_ghostWispher2;
      
      private static var battle_demonicGrowl:Class = SoundController_battle_demonicGrowl;
      
      private static var battle_electric_bolt:Class = SoundController_battle_electric_bolt;
      
      private static var battle_flamethrower:Class = SoundController_battle_flamethrower;
      
      private static var battle_swipe:Class = SoundController_battle_swipe;
      
      private static var battle_magic1:Class = SoundController_battle_magic1;
      
      private static var battle_bubbles:Class = SoundController_battle_bubbles;
      
      private static var battle_misc1:Class = SoundController_battle_misc1;
      
      private static var battle_waterSplash:Class = SoundController_battle_waterSplash;
      
      private static var battle_wingsFlapping:Class = SoundController_battle_wingsFlapping;
      
      private static var battle_metalImpact:Class = SoundController_battle_metalImpact;
      
      private static var battle_metalImpact2:Class = SoundController_battle_metalImpact2;
      
      private static var battle_rayGun:Class = SoundController_battle_rayGun;
      
      private static var battle_glassBreaking:Class = SoundController_battle_glassBreaking;
      
      private static var battle_earthquake:Class = SoundController_battle_earthquake;
      
      private static var battle_earthquake2:Class = SoundController_battle_earthquake2;
      
      private static var battle_buff:Class = SoundController_battle_buff;
      
      private static var battle_debuff:Class = SoundController_battle_debuff;
      
      private static var battle_charging:Class = SoundController_battle_charging;
      
      private static var battle_exhausted:Class = SoundController_battle_exhausted;
       
      
      private var battleTrack:Class;
      
      private var electricTrack:Class;
      
      private var fireTrack:Class;
      
      private var forestTrack:Class;
      
      private var undeadTrack:Class;
      
      private var riverTrack:Class;
      
      private var titleTrack:Class;
      
      public var m_currTrackID:int;
      
      private var m_loopableBackgroundTracks:Vector.<LoopableSound>;
      
      private var m_backgroundTrackPosition:Number;
      
      public function SoundController()
      {
         this.battleTrack = SoundController_battleTrack;
         this.electricTrack = SoundController_electricTrack;
         this.fireTrack = SoundController_fireTrack;
         this.forestTrack = SoundController_forestTrack;
         this.undeadTrack = SoundController_undeadTrack;
         this.riverTrack = SoundController_riverTrack;
         this.titleTrack = SoundController_titleTrack;
         super();
         this.m_currTrackID = BackgroundMusicTracks.MUSIC_NONE;
         this.m_loopableBackgroundTracks = new Vector.<LoopableSound>(9);
         var _loc1_:Array = new Array(this.forestTrack,this.fireTrack,this.electricTrack,this.undeadTrack,this.battleTrack,this.titleTrack,this.riverTrack,tower_fireplace,tower_runningWater);
         var _loc2_:int = 0;
         while(_loc2_ < this.m_loopableBackgroundTracks.length)
         {
            this.m_loopableBackgroundTracks[_loc2_] = new LoopableSound();
            this.m_loopableBackgroundTracks[_loc2_].LoadMp3(_loc1_[_loc2_]);
            _loc2_++;
         }
         this.m_loopableBackgroundTracks[BackgroundMusicTracks.MUSIC_GRASS_LEVEL].m_soundAdjustmentAmount = 0.5;
         this.m_loopableBackgroundTracks[BackgroundMusicTracks.MUSIC_FIRE_LEVEL].m_soundAdjustmentAmount = 0.63;
         this.m_loopableBackgroundTracks[BackgroundMusicTracks.MUSIC_ELECTRIC_LEVEL].m_soundAdjustmentAmount = 0.5;
         this.m_loopableBackgroundTracks[BackgroundMusicTracks.MUSIC_UNDEAD_LEVEL].m_soundAdjustmentAmount = 0.5;
         this.m_loopableBackgroundTracks[BackgroundMusicTracks.MUSIC_BATTLE].m_soundAdjustmentAmount = 0.25;
         this.m_loopableBackgroundTracks[BackgroundMusicTracks.MUSIC_TITLE].m_soundAdjustmentAmount = 0.6;
      }
      
      public function PlayExtraBackgroundTrack(param1:int) : void
      {
         this.m_loopableBackgroundTracks[param1].m_paused = false;
      }
      
      public function TurnOffExtraBackgroundTrack(param1:int) : void
      {
         this.m_loopableBackgroundTracks[param1].m_paused = true;
      }
      
      public function ChangeMusicTrack(param1:int) : void
      {
         if(param1 == BackgroundMusicTracks.MUSIC_HALLWAY)
         {
            param1 = Singleton.dynamicData.m_prevBackgroundMusic;
         }
         var _loc2_:Number = 0;
         if(this.m_currTrackID != BackgroundMusicTracks.MUSIC_NONE)
         {
            _loc2_ = this.m_loopableBackgroundTracks[this.m_currTrackID].m_backgroundSoundVolume;
            this.m_loopableBackgroundTracks[this.m_currTrackID].m_paused = true;
         }
         if(param1 != BackgroundMusicTracks.MUSIC_NONE)
         {
            this.m_loopableBackgroundTracks[param1].m_paused = false;
            this.m_loopableBackgroundTracks[param1].m_backgroundSoundVolume = _loc2_;
         }
         this.m_currTrackID = param1;
      }
      
      public function FadeCurrentMusic(param1:Number = 1, param2:Number = 0.5) : void
      {
         if(this.m_currTrackID == BackgroundMusicTracks.MUSIC_NONE || this.m_currTrackID == BackgroundMusicTracks.MUSIC_HALLWAY)
         {
            return;
         }
         this.FadeMusic(this.m_loopableBackgroundTracks[this.m_currTrackID],param1,param2);
      }
      
      public function FadeMusic(param1:LoopableSound, param2:Number = 1, param3:Number = 0.5) : void
      {
         TweenLite.to(param1,param3,{"m_backgroundSoundVolume":param2});
      }
      
      public function SetCurrBackgroundMusicVolume(param1:Number) : void
      {
         if(this.m_currTrackID == BackgroundMusicTracks.MUSIC_NONE)
         {
            return;
         }
         this.m_loopableBackgroundTracks[this.m_currTrackID].m_backgroundSoundVolume = param1;
      }
      
      public function SetBackgroundMusicVolume(param1:Number, param2:int) : void
      {
         if(this.m_currTrackID == BackgroundMusicTracks.MUSIC_NONE)
         {
            return;
         }
         this.m_loopableBackgroundTracks[param2].m_backgroundSoundVolume = param1;
      }
      
      public function PlaySound(param1:String, param2:Number = 1) : Sound
      {
         if(!Singleton.dynamicData.m_isSoundOn)
         {
            return null;
         }
         var _loc3_:Class = SoundController[param1] as Class;
         var _loc4_:Sound = new _loc3_() as Sound;
         if(param2 != 1)
         {
            _loc4_.play(0,0,new SoundTransform(param2));
         }
         else
         {
            _loc4_.play();
         }
         return _loc4_;
      }
   }
}
