package Utilities
{
   import States.BackgroundMusicTracks;
   import com.greensock.TweenLite;
   import flash.media.Sound;
   import flash.media.SoundTransform;
   
   public class SoundController
   {
      
      private static var doorEntryHum_fadeout:Class;
      
      private static var tower_runningWater:Class;
      
      private static var battle_lose:Class;
      
      private static var battle_victory:Class;
      
      private static var menu_buyingItem:Class;
      
      private static var menu_onPress:Class;
      
      private static var menu_tickSound:Class;
      
      private static var menu_tutorialOpen:Class;
      
      private static var tower_doorUnlock:Class;
      
      private static var tower_eggeryDoorClosing:Class;
      
      private static var tower_eggsGoingIntoTheGround:Class;
      
      private static var tower_fireplace:Class;
      
      private static var tower_gemPickup:Class;
      
      private static var tower_gettingMap:Class;
      
      private static var tower_keyPickup:Class;
      
      private static var tower_moneyPickup:Class;
      
      private static var tower_teleport:Class;
      
      private static var tower_openingChest:Class;
      
      private static var tower_healstone:Class;
      
      private static var battle_levelUp:Class;
      
      private static var doorEntryHum:Class;
      
      private static var battle_whoosh:Class;
      
      private static var battle_whoosh_falling_deepSound:Class;
      
      private static var battle_whoosh_falling_object:Class;
      
      private static var battle_whoosh_highPitch:Class;
      
      private static var battle_whoosh_magic1:Class;
      
      private static var battle_whoosh_magic2:Class;
      
      private static var battle_whoosh_magic3:Class;
      
      private static var battle_whoosh_magic4:Class;
      
      private static var battle_whoosh_misslePass:Class;
      
      private static var battle_whoosh_punch:Class;
      
      private static var battle_whoosh_swipe:Class;
      
      private static var battle_whoosh_sword_swipe:Class;
      
      private static var battle_whoosh_wind:Class;
      
      private static var battle_hit_slap_normal:Class;
      
      private static var battle_hit_slap_quick:Class;
      
      private static var battle_hit_splat:Class;
      
      private static var battle_hit_thump_bounce:Class;
      
      private static var battle_hit_thump_knock:Class;
      
      private static var battle_hit_thump_normal:Class;
      
      private static var battle_hit_thump_splat:Class;
      
      private static var battle_fireBall:Class;
      
      private static var battle_gunFire:Class;
      
      private static var battle_spark:Class;
      
      private static var battle_rockHittingGround:Class;
      
      private static var battle_freezeExplosion:Class;
      
      private static var battle_blood3:Class;
      
      private static var battle_dinoRoar:Class;
      
      private static var battle_blood1:Class;
      
      private static var battle_roar:Class;
      
      private static var battle_ghostWispher:Class;
      
      private static var battle_ghostWispher2:Class;
      
      private static var battle_demonicGrowl:Class;
      
      private static var battle_electric_bolt:Class;
      
      private static var battle_flamethrower:Class;
      
      private static var battle_swipe:Class;
      
      private static var battle_magic1:Class;
      
      private static var battle_bubbles:Class;
      
      private static var battle_misc1:Class;
      
      private static var battle_waterSplash:Class;
      
      private static var battle_wingsFlapping:Class;
      
      private static var battle_metalImpact:Class;
      
      private static var battle_metalImpact2:Class;
      
      private static var battle_rayGun:Class;
      
      private static var battle_glassBreaking:Class;
      
      private static var battle_earthquake:Class;
      
      private static var battle_earthquake2:Class;
      
      private static var battle_buff:Class;
      
      private static var battle_debuff:Class;
      
      private static var battle_charging:Class;
      
      private static var battle_exhausted:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            doorEntryHum_fadeout = SoundController_doorEntryHum_fadeout;
            if(!(_loc2_ && _loc2_))
            {
               tower_runningWater = SoundController_tower_runningWater;
               if(!(_loc2_ && SoundController))
               {
                  battle_lose = SoundController_battle_lose;
                  if(!(_loc2_ && _loc2_))
                  {
                     battle_victory = SoundController_battle_victory;
                     menu_buyingItem = SoundController_menu_buyingItem;
                     menu_onPress = SoundController_menu_onPress;
                     if(_loc1_)
                     {
                        menu_tickSound = SoundController_menu_tickSound;
                        menu_tutorialOpen = SoundController_menu_tutorialOpen;
                        if(!_loc2_)
                        {
                           tower_doorUnlock = SoundController_tower_doorUnlock;
                           if(_loc1_ || _loc2_)
                           {
                              tower_eggeryDoorClosing = SoundController_tower_eggeryDoorClosing;
                              if(!_loc2_)
                              {
                                 tower_eggsGoingIntoTheGround = SoundController_tower_eggsGoingIntoTheGround;
                                 if(!(_loc2_ && SoundController))
                                 {
                                    tower_fireplace = SoundController_tower_fireplace;
                                    if(!(_loc2_ && SoundController))
                                    {
                                       tower_gemPickup = SoundController_tower_gemPickup;
                                       if(_loc1_ || SoundController)
                                       {
                                          tower_gettingMap = SoundController_tower_gettingMap;
                                          tower_keyPickup = SoundController_tower_keyPickup;
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             tower_moneyPickup = SoundController_tower_moneyPickup;
                                             tower_teleport = SoundController_tower_teleport;
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                tower_openingChest = SoundController_tower_openingChest;
                                                if(_loc1_ || _loc1_)
                                                {
                                                   tower_healstone = SoundController_tower_healstone;
                                                   battle_levelUp = SoundController_battle_levelUp;
                                                   §§goto(addr156);
                                                }
                                                §§goto(addr285);
                                             }
                                             §§goto(addr314);
                                          }
                                          §§goto(addr343);
                                       }
                                       §§goto(addr285);
                                    }
                                    §§goto(addr261);
                                 }
                                 §§goto(addr229);
                              }
                              addr156:
                              doorEntryHum = SoundController_doorEntryHum;
                              battle_whoosh = SoundController_battle_whoosh;
                              battle_whoosh_falling_deepSound = SoundController_battle_whoosh_falling_deepSound;
                              battle_whoosh_falling_object = SoundController_battle_whoosh_falling_object;
                              battle_whoosh_highPitch = SoundController_battle_whoosh_highPitch;
                              if(!_loc2_)
                              {
                                 battle_whoosh_magic1 = SoundController_battle_whoosh_magic1;
                                 battle_whoosh_magic2 = SoundController_battle_whoosh_magic2;
                                 battle_whoosh_magic3 = SoundController_battle_whoosh_magic3;
                                 battle_whoosh_magic4 = SoundController_battle_whoosh_magic4;
                                 battle_whoosh_misslePass = SoundController_battle_whoosh_misslePass;
                                 battle_whoosh_punch = SoundController_battle_whoosh_punch;
                                 battle_whoosh_swipe = SoundController_battle_whoosh_swipe;
                                 if(_loc1_ || SoundController)
                                 {
                                    battle_whoosh_sword_swipe = SoundController_battle_whoosh_sword_swipe;
                                    addr211:
                                    battle_whoosh_wind = SoundController_battle_whoosh_wind;
                                    battle_hit_slap_normal = SoundController_battle_hit_slap_normal;
                                    battle_hit_slap_quick = SoundController_battle_hit_slap_quick;
                                    battle_hit_splat = SoundController_battle_hit_splat;
                                    battle_hit_thump_bounce = SoundController_battle_hit_thump_bounce;
                                    battle_hit_thump_knock = SoundController_battle_hit_thump_knock;
                                    addr229:
                                    battle_hit_thump_normal = SoundController_battle_hit_thump_normal;
                                    if(_loc1_ || _loc1_)
                                    {
                                       battle_hit_thump_splat = SoundController_battle_hit_thump_splat;
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          battle_fireBall = SoundController_battle_fireBall;
                                          battle_gunFire = SoundController_battle_gunFire;
                                          battle_spark = SoundController_battle_spark;
                                          battle_rockHittingGround = SoundController_battle_rockHittingGround;
                                          addr261:
                                          battle_freezeExplosion = SoundController_battle_freezeExplosion;
                                          addr264:
                                          battle_blood3 = SoundController_battle_blood3;
                                          battle_dinoRoar = SoundController_battle_dinoRoar;
                                          if(_loc1_)
                                          {
                                          }
                                          §§goto(addr370);
                                       }
                                       battle_blood1 = SoundController_battle_blood1;
                                       if(!_loc2_)
                                       {
                                          battle_roar = SoundController_battle_roar;
                                          addr280:
                                          battle_ghostWispher = SoundController_battle_ghostWispher;
                                          if(!_loc2_)
                                          {
                                             addr285:
                                             battle_ghostWispher2 = SoundController_battle_ghostWispher2;
                                             battle_demonicGrowl = SoundController_battle_demonicGrowl;
                                             if(_loc1_ || _loc1_)
                                             {
                                                battle_electric_bolt = SoundController_battle_electric_bolt;
                                                if(!_loc2_)
                                                {
                                                   battle_flamethrower = SoundController_battle_flamethrower;
                                                   battle_swipe = SoundController_battle_swipe;
                                                   if(!_loc2_)
                                                   {
                                                      battle_magic1 = SoundController_battle_magic1;
                                                      addr314:
                                                      battle_bubbles = SoundController_battle_bubbles;
                                                      §§goto(addr317);
                                                   }
                                                   addr317:
                                                   battle_misc1 = SoundController_battle_misc1;
                                                   §§goto(addr320);
                                                }
                                                §§goto(addr359);
                                             }
                                             addr320:
                                             battle_waterSplash = SoundController_battle_waterSplash;
                                             addr323:
                                             battle_wingsFlapping = SoundController_battle_wingsFlapping;
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                battle_metalImpact = SoundController_battle_metalImpact;
                                                if(_loc1_ || _loc2_)
                                                {
                                                   addr343:
                                                   battle_metalImpact2 = SoundController_battle_metalImpact2;
                                                   addr346:
                                                   battle_rayGun = SoundController_battle_rayGun;
                                                   battle_glassBreaking = SoundController_battle_glassBreaking;
                                                   addr359:
                                                   battle_earthquake = SoundController_battle_earthquake;
                                                }
                                             }
                                             battle_earthquake2 = SoundController_battle_earthquake2;
                                             battle_buff = SoundController_battle_buff;
                                             if(_loc2_)
                                             {
                                             }
                                             §§goto(addr370);
                                          }
                                       }
                                       §§goto(addr314);
                                    }
                                    §§goto(addr370);
                                 }
                                 addr370:
                                 battle_debuff = SoundController_battle_debuff;
                                 §§goto(addr373);
                              }
                              addr373:
                              battle_charging = SoundController_battle_charging;
                              battle_exhausted = SoundController_battle_exhausted;
                              return;
                           }
                           §§goto(addr280);
                        }
                        §§goto(addr264);
                     }
                     §§goto(addr211);
                  }
                  §§goto(addr346);
               }
               §§goto(addr323);
            }
         }
         §§goto(addr314);
      }
      
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.battleTrack = SoundController_battleTrack;
            if(_loc4_)
            {
               this.electricTrack = SoundController_electricTrack;
               this.fireTrack = SoundController_fireTrack;
            }
            this.forestTrack = SoundController_forestTrack;
            if(_loc4_)
            {
               this.undeadTrack = SoundController_undeadTrack;
               this.riverTrack = SoundController_riverTrack;
               this.titleTrack = SoundController_titleTrack;
               if(!(_loc3_ && Boolean(this)))
               {
                  super();
                  addr50:
                  this.m_currTrackID = BackgroundMusicTracks.MUSIC_NONE;
               }
               this.m_loopableBackgroundTracks = new Vector.<LoopableSound>(9);
               addr61:
               var _loc1_:Array = new Array(this.forestTrack,this.fireTrack,this.electricTrack,this.undeadTrack,this.battleTrack,this.titleTrack,this.riverTrack,tower_fireplace,tower_runningWater);
               var _loc2_:int = 0;
               while(true)
               {
                  if(_loc2_ >= this.m_loopableBackgroundTracks.length)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        addr128:
                        this.m_loopableBackgroundTracks[BackgroundMusicTracks.MUSIC_GRASS_LEVEL].m_soundAdjustmentAmount = 0.5;
                        if(_loc4_ || _loc3_)
                        {
                           this.m_loopableBackgroundTracks[BackgroundMusicTracks.MUSIC_FIRE_LEVEL].m_soundAdjustmentAmount = 0.63;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              break;
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr188);
                     }
                     break;
                  }
                  this.m_loopableBackgroundTracks[_loc2_] = new LoopableSound();
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     this.m_loopableBackgroundTracks[_loc2_].LoadMp3(_loc1_[_loc2_]);
                     if(!_loc3_)
                     {
                        continue;
                     }
                     §§goto(addr128);
                  }
                  break;
                  §§goto(addr128);
               }
               this.m_loopableBackgroundTracks[BackgroundMusicTracks.MUSIC_ELECTRIC_LEVEL].m_soundAdjustmentAmount = 0.5;
               if(_loc4_)
               {
                  addr172:
                  this.m_loopableBackgroundTracks[BackgroundMusicTracks.MUSIC_UNDEAD_LEVEL].m_soundAdjustmentAmount = 0.5;
                  this.m_loopableBackgroundTracks[BackgroundMusicTracks.MUSIC_BATTLE].m_soundAdjustmentAmount = 0.25;
                  if(_loc4_)
                  {
                     addr188:
                     this.m_loopableBackgroundTracks[BackgroundMusicTracks.MUSIC_TITLE].m_soundAdjustmentAmount = 0.6;
                  }
                  return;
               }
               §§goto(addr188);
            }
            §§goto(addr50);
         }
         §§goto(addr61);
      }
      
      public function PlayExtraBackgroundTrack(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.m_loopableBackgroundTracks[param1].m_paused = false;
         }
      }
      
      public function TurnOffExtraBackgroundTrack(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Boolean(param1))
         {
            this.m_loopableBackgroundTracks[param1].m_paused = true;
         }
      }
      
      public function ChangeMusicTrack(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            §§push(param1);
            if(_loc3_ || _loc2_)
            {
               if(§§pop() == BackgroundMusicTracks.MUSIC_HALLWAY)
               {
                  if(_loc3_)
                  {
                     §§push(Singleton.dynamicData.m_prevBackgroundMusic);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop());
                        if(_loc3_ || _loc2_)
                        {
                           addr51:
                           param1 = §§pop();
                           addr52:
                           §§push(0);
                        }
                        var _loc2_:Number = §§pop();
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           §§push(this.m_currTrackID);
                           if(!_loc4_)
                           {
                              §§push(BackgroundMusicTracks.MUSIC_NONE);
                              if(_loc3_ || Boolean(param1))
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    if(!(_loc4_ && Boolean(param1)))
                                    {
                                       _loc2_ = this.m_loopableBackgroundTracks[this.m_currTrackID].m_backgroundSoundVolume;
                                    }
                                    this.m_loopableBackgroundTracks[this.m_currTrackID].m_paused = true;
                                    if(!_loc4_)
                                    {
                                       §§goto(addr114);
                                    }
                                    §§goto(addr120);
                                 }
                                 addr114:
                                 §§goto(addr117);
                              }
                              addr117:
                              §§goto(addr115);
                           }
                           addr115:
                           if(param1 != BackgroundMusicTracks.MUSIC_NONE)
                           {
                              if(!_loc4_)
                              {
                                 addr120:
                                 this.m_loopableBackgroundTracks[param1].m_paused = false;
                                 this.m_loopableBackgroundTracks[param1].m_backgroundSoundVolume = _loc2_;
                                 if(_loc3_)
                                 {
                                 }
                              }
                              §§goto(addr137);
                           }
                           this.m_currTrackID = param1;
                           addr137:
                           return;
                        }
                        §§goto(addr120);
                     }
                  }
               }
               §§goto(addr52);
            }
         }
         §§goto(addr51);
      }
      
      public function FadeCurrentMusic(param1:Number = 1, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || Boolean(param2))
         {
            §§push(this.m_currTrackID);
            if(_loc4_ || _loc3_)
            {
               §§push(BackgroundMusicTracks.MUSIC_NONE);
               if(!(_loc3_ && Boolean(param2)))
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr53);
                        }
                     }
                     §§goto(addr73);
                  }
                  addr53:
                  §§pop();
                  if(_loc4_ || Boolean(this))
                  {
                     addr73:
                     addr72:
                     addr70:
                     if(this.m_currTrackID == BackgroundMusicTracks.MUSIC_HALLWAY)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr76);
                        }
                     }
                     this.FadeMusic(this.m_loopableBackgroundTracks[this.m_currTrackID],param1,param2);
                  }
                  return;
               }
               §§goto(addr72);
            }
            §§goto(addr70);
         }
         addr76:
      }
      
      public function FadeMusic(param1:LoopableSound, param2:Number = 1, param3:Number = 0.5) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            TweenLite.to(param1,param3,{"m_backgroundSoundVolume":param2});
         }
      }
      
      public function SetCurrBackgroundMusicVolume(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.m_currTrackID == BackgroundMusicTracks.MUSIC_NONE)
            {
               if(_loc2_ || Boolean(this))
               {
                  return;
               }
            }
            this.m_loopableBackgroundTracks[this.m_currTrackID].m_backgroundSoundVolume = param1;
         }
      }
      
      public function SetBackgroundMusicVolume(param1:Number, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || Boolean(param2))
         {
            if(this.m_currTrackID == BackgroundMusicTracks.MUSIC_NONE)
            {
               if(!_loc3_)
               {
                  return;
               }
            }
         }
         this.m_loopableBackgroundTracks[param2].m_backgroundSoundVolume = param1;
      }
      
      public function PlaySound(param1:String, param2:Number = 1) : Sound
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(!Singleton.dynamicData.m_isSoundOn)
            {
               if(!(_loc6_ && Boolean(this)))
               {
                  §§goto(addr26);
               }
            }
            var _loc3_:Class = SoundController[param1] as Class;
            var _loc4_:Sound = new _loc3_() as Sound;
            if(!(_loc6_ && Boolean(param1)))
            {
               if(param2 != 1)
               {
                  if(_loc5_ || Boolean(param2))
                  {
                     addr72:
                     _loc4_.play(0,0,new SoundTransform(param2));
                     if(_loc6_)
                     {
                     }
                  }
               }
               else
               {
                  _loc4_.play();
               }
               return _loc4_;
            }
            §§goto(addr72);
         }
         addr26:
         return null;
      }
   }
}
